#!/usr/bin/env python3
"""Packs the community patch zip from a checkout of the patch repo and writes the release notes for it.

The zip root is the patch repo's src/ folder: the installer extracts every entry into the game folder as is. Only
files git tracks are packed, minus the dev leftovers listed in EXCLUDED, and the shipped configs are checked for dev
values first. The version comes from today's date in Vietnam: v.DD.MM.YYYY for a stable release, v.DD.MM.YYYY-beta
for a test release, with 1, 2... after "beta" for another one on the same day (v.19.07.2026-beta, -beta1, -beta2), as
the earlier releases did.
"""

import argparse
import fnmatch
import json
import os
import re
import subprocess
import sys
import zipfile
from datetime import datetime, timedelta, timezone

VIETNAM = timezone(timedelta(hours=7))  # no daylight saving time
TRANSLATION = "BepInEx/Translation/vi/"
MARKER = re.compile(r"<!-- package-source: (\S+)@([0-9a-f]{40}) -->")
MAX_FILES_PER_SECTION = 50

REQUIRED = [
    "winhttp.dll",
    "doorstop_config.ini",
    "dotnet/coreclr.dll",
    "BepInEx/core/BepInEx.Unity.IL2CPP.dll",
    "BepInEx/plugins/HBR-VN/HBRTLFixUp.dll",
    "BepInEx/plugins/HBR-VN/HBRTLFixUp.Graphics.dll",
    "BepInEx/config/BepInEx.cfg",
    "BepInEx/config/HBRTLFixUp.cfg",
    "BepInEx/config/HBRTLFixUp.Graphics.cfg",
]

# Never shipped: the dev plugins and their configs, the manifest the installer writes, what BepInEx generates, logs and
# probes, backups, and dump or test output. fnmatch's "*" also matches "/", so "dir/*" covers everything below dir.
EXCLUDED = [
    "BepInEx/plugins/HBRDumper/*",
    "BepInEx/config/HBRTLFixUp.Dumper.cfg",
    "BepInEx/plugins/CinematicUnityExplorer/*",
    "BepInEx/config/com.originalnicodr.cinematicunityexplorer.cfg",
    "BepInEx/plugins/HBR-VN/hbr-vn_manifest.json",
    "BepInEx/cache/*",
    "BepInEx/unity-libs/*",
    "BepInEx/dummy/*",
    "BepInEx/backup/*",
    "*.log",
    "node_dump*.txt",
    "*/node_dump*.txt",
    TRANSLATION + "DumpData/LuaText/_*",
    TRANSLATION + "DumpData/MovieDump/*",
    "*.tmp",
    "*.bak",
    "*.backup_*",
    "*.usm.test",
    "*.modified.usm",
    "*.decrypted.usm",
]
# Only shipped while the shipped HBRTLFixUp.cfg turns movie overrides on.
MOVIE_OVERRIDE = TRANSLATION + "DumpData/MovieOverride/*"

# Changelog sections, by the path under Translation/vi/; anything outside the translation goes to the last one.
SECTIONS = [
    ("Story", ["DumpData/LuaText/"]),
    ("UI", ["Text/", "Overrides/"]),
    ("Texture", ["Texture/"]),
    ("Master data", ["DumpData/MasterData/"]),
    ("Lyrics", ["DumpData/LyricsSubtitle/"]),
    ("Voice nhân vật", ["DumpData/CharacterVoice/"]),
    ("Font", ["Font/"]),
    ("Bản dịch khác", [""]),
]
PLUGIN_SECTION = "Plugin và cấu hình"

INSTALLER_TABLE = """## Phiên bản mới nhất của Patch Installer
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/quon-croissant/HBR-VN-Patch-Installer/releases"><b>Tải xuống</b></a>
    </td>
  </tr>
</table>"""

errors: list[str] = []
warnings: list[str] = []


def annotate(level: str, message: str) -> None:
    if os.environ.get("GITHUB_ACTIONS") == "true":
        print(f"::{level}::{message}")
    else:
        print(f"{level.upper()}: {message}")


def git(source: str, *args: str) -> str:
    return subprocess.run(["git", "-C", source, *args], check=True, capture_output=True, text=True,
                          encoding="utf-8").stdout


def read_config(path: str) -> dict[tuple[str, str], str]:
    """Reads "Key = Value" lines (BepInEx, XUnity) or "Key=Value" lines (HBRTLFixUp.cfg) by (section, lower-case key)."""
    values: dict[tuple[str, str], str] = {}
    if not os.path.isfile(path):
        return values
    section = ""
    with open(path, encoding="utf-8-sig") as file:
        for raw in file:
            line = raw.strip()
            if not line or line.startswith(("#", ";")):
                continue
            if line.startswith("[") and line.endswith("]"):
                section = line[1:-1].strip()
                continue
            key, sep, value = line.partition("=")
            if sep:
                values[(section, key.strip().lower())] = value.strip()
    return values


def is_true(value: str | None) -> bool:
    return (value or "").strip().lower() == "true"


def check_configs(src: str) -> bool:
    """Stops on dev values that would break the release for everyone, warns on the ones that are a choice."""
    config = os.path.join(src, "BepInEx", "config")
    bepinex = read_config(os.path.join(config, "BepInEx.cfg"))
    graphics = read_config(os.path.join(config, "HBRTLFixUp.Graphics.cfg"))
    patch = read_config(os.path.join(config, "HBRTLFixUp.cfg"))
    xuat = read_config(os.path.join(config, "AutoTranslatorConfig.ini"))

    if is_true(bepinex.get(("Logging.Console", "enabled"))):
        errors.append("BepInEx.cfg: [Logging.Console] Enabled = true mở cửa sổ console cho mọi người dùng; hãy đặt false.")
    for name in ("ResolutionWidth", "ResolutionHeight"):
        value = graphics.get(("Graphics", name.lower()), "0")
        if value not in ("", "0"):
            errors.append(f"HBRTLFixUp.Graphics.cfg: {name} = {value} là độ phân giải của máy dev; hãy đặt 0.")
    shown = graphics.get(("Welcome", "shownforversion"), "")
    if shown:
        errors.append(f"HBRTLFixUp.Graphics.cfg: ShownForVersion = {shown} làm bảng chào mừng không hiện; hãy để trống.")

    if is_true(graphics.get(("Graphics", "enableframeratecontrol"))):
        fps = graphics.get(("Graphics", "targetframerate"), "0")
        warnings.append("HBRTLFixUp.Graphics.cfg: EnableFrameRateControl = true tắt VSync của mọi người dùng"
                        + (" và bỏ giới hạn FPS." if fps in ("", "0") else f", giới hạn {fps} FPS."))
    if is_true(bepinex.get(("Logging.Disk", "writeunitylog"))):
        warnings.append("BepInEx.cfg: WriteUnityLog = true ghi cả log của Unity vào LogOutput.log, "
                        "trong đó có dòng x-player-id (ID tài khoản).")
    if is_true(xuat.get(("Behaviour", "reloadtranslationsonfilechange"))):
        warnings.append("AutoTranslatorConfig.ini: ReloadTranslationsOnFileChange=True chỉ cần khi sửa bản dịch.")
    for key, name in (("enablearchivedspecialevents", "EnableArchivedSpecialEvents"),
                      ("enablecharactervoicesubtitle", "EnableCharacterVoiceSubtitle")):
        if is_true(patch.get(("", key))):
            warnings.append(f"HBRTLFixUp.cfg: {name}=True bật sẵn tính năng thử nghiệm cho mọi người dùng.")

    # The plugin's own default is True, so a missing key also counts as on.
    return patch.get(("", "enablemovieoverride"), "True").lower() != "false"


def packed_files(source: str, movie_override: bool) -> tuple[list[str], list[str]]:
    """Returns the tracked files under src/ to pack and the ones left out, as paths relative to src/."""
    patterns = EXCLUDED if movie_override else EXCLUDED + [MOVIE_OVERRIDE]
    tracked = [path[len("src/"):] for path in git(source, "ls-files", "-z", "--", "src").split("\0") if path]
    packed, skipped = [], []
    for path in sorted(tracked):
        (skipped if is_excluded(path, patterns) else packed).append(path)
    return packed, skipped


def is_excluded(path: str, patterns: list[str]) -> bool:
    return any(fnmatch.fnmatchcase(path, pattern) for pattern in patterns)


def next_version(date: datetime, suffix: str, existing: set[str]) -> tuple[str, str]:
    """Returns the tag and the zip name for today's next release: stable with no suffix, or a test release."""
    stable = f"v.{date:%d.%m.%Y}"
    base = stable + (f"-{suffix}" if suffix else "")
    numbers = [m.group(1) for tag in existing if (m := re.fullmatch(re.escape(base) + r"(\d*)", tag))]
    counter = ""
    if numbers:
        if not suffix:
            # The installer ranks "v.DD.MM.YYYY-1" below "v.DD.MM.YYYY", so a second one would never be picked.
            errors.append(f"Hôm nay đã có bản ổn định {stable}. Installer xếp mọi tag có hậu tố của cùng ngày thấp "
                          "hơn tag này, nên mỗi ngày chỉ tạo được một bản ổn định; hãy tạo bản beta, hoặc đợi sang ngày mai.")
        counter = str(max(int(n or 0) for n in numbers) + 1)
    tag = base + counter
    if suffix and stable in existing:
        warnings.append(f"Hôm nay đã có bản ổn định {stable}: installer coi bản đó mới hơn {tag}, "
                        "nên người dùng installer sẽ không nhận được bản thử nghiệm này.")
    return tag, f"HBR-VN-{date:%d%m%Y}{suffix}{counter}.zip"


def previous_point(source: str, source_repo: str, compare_from: str,
                   previous_release: dict | None) -> tuple[str | None, str | None]:
    """Returns the source commit to compare against and, when known, the release tag it belongs to."""
    if compare_from:
        return compare_from, None
    if previous_release:
        found = MARKER.search(previous_release.get("body") or "")
        if found and found.group(1).lower() == source_repo.lower():
            return found.group(2), previous_release.get("tag_name")
    # No release made by this workflow yet: the source repo's newest tag, which the earlier releases created.
    try:
        tag = git(source, "describe", "--tags", "--abbrev=0", "HEAD").strip()
        return tag, tag
    except subprocess.CalledProcessError:
        return None, None


def changed_files(source: str, since: str) -> list[tuple[str, str, str | None]]:
    """Returns (status, path, old path for a rename) for src/, paths relative to src/."""
    out = git(source, "diff", "--name-status", "-M", "-z", since, "HEAD", "--", "src").split("\0")
    changes, i = [], 0
    while i < len(out) and out[i]:
        status = out[i][0]
        if status in "RC":
            old, new = out[i + 1], out[i + 2]
            changes.append((status, new[len("src/"):], old[len("src/"):]))
            i += 3
        else:
            changes.append((status, out[i + 1][len("src/"):], None))
            i += 2
    return changes


def section_of(path: str) -> tuple[str, str]:
    """Returns the changelog section and the path to show (under Translation/vi/ for translation files)."""
    if not path.startswith(TRANSLATION):
        return PLUGIN_SECTION, path
    rest = path[len(TRANSLATION):]
    for title, prefixes in SECTIONS:
        if any(rest.startswith(prefix) for prefix in prefixes):
            return title, rest
    return SECTIONS[-1][0], rest


def changelog(changes: list[tuple[str, str, str | None]], patterns: list[str]) -> tuple[str, bool]:
    """Returns the <details> sections of the changed files and whether any file was removed."""
    sections: dict[str, list[str]] = {}
    removed = False
    for status, path, old in changes:
        if is_excluded(path, patterns):
            continue
        title, shown = section_of(path)
        if status == "A":
            line = f"- Thêm `{shown}`"
        elif status == "D":
            line = f"- Xoá `{shown}`"
            removed = True
        elif status == "R" and old is not None:
            line = f"- Đổi tên `{section_of(old)[1]}` → `{shown}`"
            removed = True
        else:
            line = f"- Cập nhật `{shown}`"
        sections.setdefault(title, []).append(line)

    order = [title for title, _ in SECTIONS] + [PLUGIN_SECTION]
    blocks = []
    for title in order:
        lines = sections.get(title)
        if not lines:
            continue
        shown_lines = lines[:MAX_FILES_PER_SECTION]
        if len(lines) > MAX_FILES_PER_SECTION:
            shown_lines.append(f"- ... và {len(lines) - MAX_FILES_PER_SECTION} file khác")
        blocks.append(f"<details>\n<summary>{title} ({len(lines)} file)</summary>\n\n"
                      + "\n".join(shown_lines) + "\n</details>")
    return "\n\n".join(blocks), removed


def write_zip(src: str, files: list[str], path: str) -> None:
    # zipfile marks non-ASCII names as UTF-8, which the installer's ZipFile reads correctly.
    with zipfile.ZipFile(path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for name in files:
            archive.write(os.path.join(src, name), name)
    with zipfile.ZipFile(path) as archive:
        bad = archive.testzip()
        if bad:
            errors.append(f"File zip bị lỗi ở {bad}.")


def main() -> int:
    sys.stdout.reconfigure(encoding="utf-8")  # the messages are Vietnamese; a Windows console is not UTF-8
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", required=True, help="checkout of the patch repo")
    parser.add_argument("--source-repo", required=True, help="owner/name of the patch repo")
    parser.add_argument("--release-repo", required=True, help="owner/name of the repo the release goes to")
    parser.add_argument("--suffix", choices=["beta", "none"], default="beta",
                        help="beta for a test release (pre-release), none for a stable release")
    parser.add_argument("--notes", default="", help="extra changelog items, separated by |")
    parser.add_argument("--compare-from", default="", help="source tag or commit to list the changes from")
    parser.add_argument("--existing-tags", help="file with the release repo's tags and release tags, one per line")
    parser.add_argument("--previous-release", help="JSON of the release repo's latest published release, or null")
    parser.add_argument("--date", help="DD.MM.YYYY instead of today in Vietnam")
    parser.add_argument("--out", required=True)
    args = parser.parse_args()

    source = os.path.abspath(args.source)
    src = os.path.join(source, "src")
    suffix = "" if args.suffix == "none" else args.suffix
    date = datetime.strptime(args.date, "%d.%m.%Y") if args.date else datetime.now(VIETNAM)
    existing = set()
    if args.existing_tags and os.path.isfile(args.existing_tags):
        with open(args.existing_tags, encoding="utf-8") as file:
            existing = {line.strip() for line in file if line.strip()}
    previous_release = None
    if args.previous_release and os.path.isfile(args.previous_release):
        with open(args.previous_release, encoding="utf-8") as file:
            text = file.read().strip()
        # gh --jq prints an empty line, not "null", when there is no release yet.
        previous_release = json.loads(text) if text else None

    tag, asset_name = next_version(date, suffix, existing)
    movie_override = check_configs(src)
    patterns = EXCLUDED if movie_override else EXCLUDED + [MOVIE_OVERRIDE]
    files, skipped = packed_files(source, movie_override)
    for path in REQUIRED:
        if path not in files:
            errors.append(f"Thiếu file bắt buộc trong gói: src/{path}")
    if skipped:
        warnings.append(f"Bỏ {len(skipped)} file dev khỏi gói: " + ", ".join(skipped[:10])
                        + (" ..." if len(skipped) > 10 else ""))

    for message in warnings:
        annotate("warning", message)
    if errors:
        for message in errors:
            annotate("error", message)
        return 1

    sha = git(source, "rev-parse", "HEAD").strip()
    since, since_tag = previous_point(source, args.source_repo, args.compare_from, previous_release)
    changes = changed_files(source, since) if since else []
    details, removed = changelog(changes, patterns)
    unchanged = bool(since) and git(source, "rev-parse", since + "^{commit}").strip() == sha
    if unchanged:
        annotate("warning", f"{args.source_repo}@{sha[:12]} đã được đóng gói ở bản trước; gói này giống hệt bản đó.")

    notes = [f"- {item.strip()}" for item in args.notes.split("|") if item.strip()]
    body = [INSTALLER_TABLE, "", "## Changelog"]
    if notes:
        body += notes + [""]
    if details:
        body += [details]
    elif not notes:
        body += ["- Không có thay đổi nào so với bản trước." if since else "- Bản đóng gói đầu tiên."]
    body += ["", "## Lưu ý khi cập nhật",
             "- Bản cài đặt ghi đè các file config. Nếu trước đó bạn đã chỉnh config, hãy lưu lại tuỳ chỉnh "
             "và thiết lập lại sau khi cập nhật."]
    if removed:
        body.append("- Installer không xoá file cũ: các file đã xoá hoặc đổi tên trong bản này vẫn còn trong thư mục "
                    "game và không còn được dùng.")
    if since and not unchanged:
        same_repo = args.source_repo.lower() == args.release_repo.lower()
        if same_repo and since_tag:
            compare = f"{since_tag}...{tag}"
        else:
            compare = f"{since[:12] if re.fullmatch(r'[0-9a-f]{40}', since) else since}...{sha[:12]}"
        body += ["", f"## **Full Changelog**: https://github.com/{args.source_repo}/compare/{compare}"]
    body += ["", f"<!-- package-source: {args.source_repo}@{sha} -->", ""]

    os.makedirs(args.out, exist_ok=True)
    asset = os.path.join(args.out, asset_name)
    notes_path = os.path.join(args.out, "release-notes.md")
    write_zip(src, files, asset)
    if errors:
        for message in errors:
            annotate("error", message)
        return 1
    with open(notes_path, "w", encoding="utf-8", newline="\n") as file:
        file.write("\n".join(body))

    size_mb = os.path.getsize(asset) / 1024 / 1024
    outputs = {
        "tag": tag,
        "name": f"HBR Vietnamese UI {tag}",
        "asset": asset,
        "notes": notes_path,
        "prerelease": "true" if suffix == "beta" else "false",
        "source_sha": sha,
    }
    if os.environ.get("GITHUB_OUTPUT"):
        with open(os.environ["GITHUB_OUTPUT"], "a", encoding="utf-8") as file:
            file.writelines(f"{key}={value}\n" for key, value in outputs.items())
    if os.environ.get("GITHUB_STEP_SUMMARY"):
        with open(os.environ["GITHUB_STEP_SUMMARY"], "a", encoding="utf-8") as file:
            file.write(f"### {outputs['name']}\n\n"
                       f"| | |\n|---|---|\n"
                       f"| File | `{asset_name}` ({size_mb:.1f} MB, {len(files)} file) |\n"
                       f"| Nguồn | `{args.source_repo}@{sha[:12]}` |\n"
                       f"| So sánh từ | `{since or '-'}` ({len(changes)} file thay đổi) |\n"
                       f"| Bỏ khỏi gói | {len(skipped)} file dev |\n")
    for key, value in outputs.items():
        print(f"{key}: {value}")
    print(f"size: {size_mb:.1f} MB, files: {len(files)}, changes since {since or '-'}: {len(changes)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
