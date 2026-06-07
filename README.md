<h2 align="center">

<img src=".github/assets/logo.png" style="vertical-align: bottom; width: 50%">
<br><br>
<a href="https://discord.com/invite/vnkeyfc" target="_blank">
    <img src="https://img.shields.io/discord/615594872358961160?color=blue&labelColor=555555&label=discord&logo=discord&style=flat">
</a>
<a href="https://github.com/bepinex/bepinex" target="_blank">
    <img src="https://img.shields.io/badge/-BepInEx-yellow.svg?logo=unity&labelColor=555555&style=flat"> 
</a>
<a href="https://github.com/bbepis/XUnity.AutoTranslator" target="_blank">
    <img src="https://img.shields.io/badge/-AutoTranslator-orange.svg?logo=unity&labelColor=555555&style=flat"> 
</a><br>
<i>Bản vá Việt Hoá cho phiên bản quốc tế của Heaven Burns Red</i>
<br>
<br>
</h2>

⚠️ **CẢNH BÁO:** _Việc sử dụng bản vá này sẽ vi phạm vào điều khoản dịch vụ của game và có thể khiến tài khoản của bạn bị khoá. Chúng tôi sẽ không hoàn toàn chịu trách nhiệm cho những hành vi của bạn khi sử dụng công cụ này._

Đây là bản vá tiếng Việt cho [phiên bản quốc tế của Heaven Burns Red](https://heavenburnsred.yo-star.com/), do WRIGHT FLYER STUDIOS và VISUAL ARTS/Key cùng phát triển, được phát hành toàn quốc bởi Yostar Games. Dự án này tập trung vào việc thực hiện dịch thuật cho phần giao diện và cốt truyện của game sang tiếng Việt, để người chơi tại Việt Nam có thể dễ dàng tiếp cận với tựa game.

_Chúng tôi sẵn lòng đón nhận mọi hỏi đáp và góp ý từ mọi người nhằm phát triển cũng như sửa đổi dự án để phù hợp!_

---

## <img src=".github/assets/ruka.png" width="40" align="absmiddle"> Nội dung
- [Cài đặt](#-cài-đặt)
- [Cập nhật](#-cập-nhật)
- [Gỡ cài đặt](#-gỡ-cài-đặt)
- [Cấu hình & tuỳ chỉnh](#-cấu-hình--tuỳ-chỉnh)

## <img src=".github/assets/yuki.png" width="40" align="absmiddle"> Cài đặt
### Phương án thủ công
1. Hãy chắc chắn rằng bạn đã cài đặt nền tảng PC của [Heaven Burns Red](https://heavenburnsred.yo-star.com/) thông qua Launcher của Yostar, không phải trên nên tảng di động. 
2. Tải [phiên bản mới nhất](https://github.com/vnkeyfc/HBR-EN_Vi-Patch/releases) của bản vá.
3. Giải nén tất cả nội dung trong file zip đến đường dẫn `...\YostarGames\HeavenBurnsRed`
4. Thư mục `HeavenBurnsRed` sẽ trông như thế này

<img src=".github/assets/directory.png">

### Phương án tự động
Dự án cũng tích hợp một chương trình cài đặt bản vá tự động, với các thao tác nút đơn giản và dễ tiếp cận. Tuy nhiên, chương trình vẫn còn đang trong giai đoạn thử nghiệm nên hãy cẩn thận khi sử dụng nó.

Bạn có thể tải chương trình cài đặt ngay [tại đây](#).

**Lưu ý:** _Lần khởi chạy đầu tiên có thể tốn vài phút để vào game, những lần khởi chạy sau sẽ trở lại bình thường._

## <img src=".github/assets/karerin.png" width="40" align="absmiddle"> Cập nhật
Khuyến khích thực hiện xoá bỏ toàn bộ các file liên quan đến bản vá cũ thay vì chỉ thực hiện thay thế chúng.

Chỉ cần xoá đi thư mục `BepInEx` cũ, giải nén file zip và thay thế thư mục tương ứng. 

## <img src=".github/assets/tojo.png" width="40" align="absmiddle"> Gỡ cài đặt
Chỉ cần xoá đi các file và thư mục liên quan đến bản vá mà bạn đã giải nén ở thư mục `HeavenBurnsRed`. Mọi dữ liệu trong game không bị hư hỏng hoặc chỉnh sửa khi cài đặt bản vá, nên bạn có thể yên tâm tự xoá chúng. Game sẽ quay trở về trạng thái khi chưa có bản vá.

Các file và thư mục bạn cần phải xoá bao gồm:
```
BepInEx                       [Thư mục]
dotnet                        [Thư mục]
changelog.txt
doorstop_config.ini
winhttp.dll
.doorstop_version
```
và 1 thư mục `BepInEx` ở ...\%appdata%\Roaming

Trạng thái ban đầu của thư mục `HeavenBurnsRed` sẽ như bức ảnh bên dưới:
<img src=".github/assets/vanila_state.png">

Bạn có thể sử dụng chương trình vá có tích hợp chức năng gỡ cài đặt. Tuy nhiên, chúng tôi không hoàn toàn bảo đảm tính toàn vẹn của dữ liệu game sau khi sử dụng chức năng này. Chúng tôi khuyến khích bạn nên thực hiện thao tác bằng thủ công.

## <img src=".github/assets/megumi.png" width="43" align="absmiddle"> Cấu hình & tuỳ chỉnh
- Dự án sử dụng phiên bản [Bleeding Edge của BepInEx](https://builds.bepinex.dev/projects/bepinex_be) để tích hợp plugin [bbepis/XUnity.AutoTranslator](https://github.com/bbepis/XUnity.AutoTranslator).
- Bạn có thể tìm thấy các file cấu hình ở đây:
  - [BepInEx](https://docs.bepinex.dev/articles/user_guide/configuration.html)
  - [AutoTranslator](https://github.com/bbepis/XUnity.AutoTranslator#configuration)
- Chúng tôi đã tạo thêm một số custom plugin nhằm tối ưu chất lượng bản dịch cũng như trải nghiệm giao diện người dùng của trò chơi.

## <img src=".github/assets/tama.png" width="43" align="absmiddle"> [*Mục cuối nên để gì đây?]
