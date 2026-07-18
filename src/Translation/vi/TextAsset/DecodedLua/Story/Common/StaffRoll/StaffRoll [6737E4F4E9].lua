function preload()
EventScene("WheatField","Assets/Lua/Story/Common/StaffRoll/StaffRoll.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SV0057_Tsujo_End",0,0)
Sound.stopAllENV()
StartEvent(function()Field.setFootstepEnabled(false)
Yield(StartEnding)Exit_World()end)end
function StartEnding()Adv.fadeOut(0)
local A=Adv.loadBG("Background/wfsxkeylogo/wfsxkeylogo")local w0qyLbH=Adv.startStaffRoll()local nsgji;local bClTIa;local rDzL7SVO;local BW0WFP;local X8
local JQT=Domain.getDivingChapter()Field.moveOnRoute("Player","EndPoint",0.4)
Adv.fadeIn(4)Wait(1)
Adv.staffRollTextAuto("Original Concept & Main Scenario","Jun Maeda")Wait(1)
Adv.staffRollTextAuto("Character Design & Original Concept","Yuugen")Wait(1)local AtYtR
if JQT=="MC01"then AtYtR=6.0 elseif JQT=="MC02"then AtYtR=8.5 elseif JQT=="MC03"then AtYtR=8.5 end;nsgji=Adv.staffRollAddCaption([[Cast]])
bClTIa=Adv.staffRollText("Squad 31-A",{"Ruka Kayamori","Tomori Kusunoki","","Vocals: XAI","Yuki Izumi","Ryoko Maekawa","Megumi Aikawa","Anju Inami","Tsukasa Tojo","Yurina Amami","Karen Asakura / Karrie","Yu Serizawa","","Vocals: Konomi Suzuki / Ayumu (Serenity In Murder)","Tama Kunimi","Aoi Koga"})Wait(AtYtR)Adv.removeStaffRollText(bClTIa)Wait(0.5)
bClTIa=Adv.staffRollText("Squad 31-B",{"Erika Aoi","Saki Miyashita","Ichigo Minase","Aimi","Sumomo Minase","Yuyu Shoji","Seika Higuchi","Aya Yamane","Kozue Hiiragi","Ari Ozawa","Byakko!","-"})
rDzL7SVO=Adv.staffRollText("Squad 31-C",{"Bon Ivar Yamawaki","Sayaka Sembongi","Seira Sakuraba","Masumi Tazawa","Miko Tenne","Tamako Miyazaki","Yayoi Bungo","Renka Shirahana","Adelheid Kanzaki","Nene Hieda","Mari Satsuki","Yume Miyamoto"},
nil,-450)Wait(AtYtR)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Wait(0.5)
bClTIa=Adv.staffRollText("Squad 30-G",{"Yuina Shirakawa","Yumiri Hanamori","Monaka Tsukishiro","Sara Matsumoto","Miya Kiryu","Aguri Onishi","Chie Sugawara","Miyari Nemoto","Hisame Ogasahara","Tomomi Mineuchi","Satomi Kura","Mikako Izawa"})
rDzL7SVO=Adv.staffRollText("Squad 31-D",{"Misato Nikaido","Karin Nanami","Iroha Ishii","Yuuki Kuwahara","Fubuki Mikoto","Haruna Asami","Risa Murofushi","Sakura Nakamura","Akari Date","Yuko Ono","Aina Mizuhara","Mio Hoshitani"},
nil,-450)Wait(AtYtR)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Wait(0.5)
bClTIa=Adv.staffRollText("Squad 31-E",{"Ichiko Ohshima","Aoi Hinata","Niina Ohshima","Sayaka Kaneko","Minori Ohshima","Yuki Nakashima","Yotsuha Ohshima","Mari Uchiyama","Isuzu Ohshima","Saima Nakano","Muua Ohshima","Mirii Fukushima"})
rDzL7SVO=Adv.staffRollText("Squad 31-F",{"Mion Yanagi","Maaya Torigoe","Kanata Maruyama","Hiyori Kono","Shiki Hanamura","Kaori Tokisawa","Chiroru Matsuoka","Yui Kojima","Inori Natsume","Sonoka Tsukiyama","Maki Kurosawa","Yuko Kurose"},
nil,-450)Wait(AtYtR)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Wait(0.5)
bClTIa=Adv.staffRollText("Squad 31-X",{"Carole Reaper","Anna Yamaki","Yingxia Li","Shieri Togo","Irene Redmayne","Marika","Vritika Balakrishnan","Yurie Kozakai","Maria de Angelis","Yune Azuki","Charlotta Skopovskaya","Saya Aizawa"})
rDzL7SVO=Adv.staffRollText("HQ",{"Saki Tezuka","Asami Seto","Nanami Nanase","Shu Uchida","Makiko Asami","Miharu Hanai"},
nil,-500)Wait(AtYtR)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Wait(0.5)
bClTIa=Adv.staffRollText("",{"Other","Hiroki Ichinose","","Yuki Konashi","","Erina Suzumori","","Sakurako Toyonaga","","Narumi Yaosaka","","Eri Yamada"})Wait(6)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Adv.removeStaffRollText(nsgji)Wait(1)
Adv.staffRollTextAuto("",{"Original Characters Concept","Na-Ga","","Humuyun","","Maroyaka","","","Scenario Assistants","Kai","","Tomotaka Fujii","","","Scenario Cooperation","Syusei Sakagami","","Hasama","","Shinichi"})Wait(0.5)
Adv.staffRollTextAuto("Scenario Cooperation",{"TeamNGX","Imasina Rio","","","Elephante Ltd.","Ryoichi Seto","","Tuna Harima","","Yuki Ono"})Wait(0.5)
Adv.staffRollTextAuto("",{"Project Crew","Rai Kimoto","","Shun Sayuki","","He Du"})Wait(0.5)
Adv.staffRollTextAuto("",{"Project Manager","Kazuma Takata"})Wait(0.5)
bClTIa=Adv.staffRollText("",{"Lyrics & Composition & Produced by","Jun Maeda","","","Music Development","MANYO"})
rDzL7SVO=Adv.staffRollText("Sound Production",{"AZ CREATIVE","Yoshiki Sakamoto","","Ayano Hotta"},nil,-400)Wait(6)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Wait(0.5)
Adv.staffRollTextAuto("",{"Recording Engineers","MANYO","","Tomotaka Saka","","Takashi Ota","","","Recording Studios","Pastoral Sound","","Sounduno","","VISUALARTS Studio","","","Mixing Engineers","Tomotaka Saka","","Hiroaki Ohgushi"})Wait(0.5)
Adv.staffRollTextAuto("Artist Management",{"INCS toenter Co.,ltd","Mari Fujie","","","TOHO ENTERTAINMENT CO., LTD.","Yosuke Hayajiri","","Seita Takahashi","","Kanami Sato","","","Digital Double Inc.","Shojiro Matsuo"})Wait(0.5)
Adv.staffRollTextAuto("",{"Audio Director","Donmaru","","","Screaming Direction","Freddy","","","Project Management","Donmaru","","Tomotaka Fujii"})Wait(0.5)
if JQT=="MC01"or JQT=="MC02"or JQT=="MC03"then nsgji=Adv.staffRollAddCaption([["Everlasting Night"]],
-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Wait(0.5)end
if
JQT=="MC01"or JQT=="MC02"or JQT=="MC03"or JQT=="MC04"then
nsgji=Adv.staffRollAddCaption([["Indigo in Blue"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Chorus","Noriko Mitose","","Mami Yanagi","","KOCHO","","Ayaka Kitazawa","","ENA","","Hiroaki Takeuchi","","Naoto Fuga","","Ryutaro Oono","Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC01"or JQT=="MC03"or JQT=="MC04"then nsgji=Adv.staffRollAddCaption([["Sad Creature"]],
-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Chorus","Mami Yanagi","","KOCHO","","Ayaka Kitazawa","","ENA","","Hiroaki Takeuchi","","Naoto Fuga","","Ryutaro Oono","Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii","Drums","Masanori Yabuki","Violin","Anzu Suhara"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC02"then
nsgji=Adv.staffRollAddCaption([["White Spell"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Guitar","Kenichi Watanabe"},200,nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if
JQT=="MC01"or JQT=="MC02"or JQT=="MC03"or JQT=="MC04"then
nsgji=Adv.staffRollAddCaption([["Hoshi no Bohyo" ("Celestial Gravestone")]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Chorus","Mami Yanagi","","KOCHO","","Ayaka Kitazawa","","ENA","","Hiroaki Takeuchi","","Naoto Fuga","","Ryutaro Oono","Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC01"then
nsgji=Adv.staffRollAddCaption([["Kimi no Yokogao" ("Your Face in Profile")]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii"},200,nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC01"then
nsgji=Adv.staffRollAddCaption([["Before I Rise"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Violin","Anzu Suhara"},200,nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC01"then
nsgji=Adv.staffRollAddCaption([["Burn My Universe"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Chorus","Mami Yanagi","","KOCHO","","Ayaka Kitazawa","","ENA","","Hiroaki Takeuchi","","Naoto Fuga","","Ryutaro Oono","Piano","kidlit","Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii","Drums","Masanori Yabuki","Violin","Anzu Suhara"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if
JQT=="MC01"or JQT=="MC02"or JQT=="MC03"or JQT=="MC04"then
nsgji=Adv.staffRollAddCaption([["After You Sleep"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","rionos"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Piano","kidlit","Guitar","Kenichi Watanabe","Violin","Anzu Suhara"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC01"then
nsgji=Adv.staffRollAddCaption([["Burn My Soul"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","Minoru Yoshida","Performed by","Ruka Kayamori (Vo.: XAI)","","Karen Asakura (Vo.: Konomi Suzuki)","Scream","Karrie (Ayumu from [Serenity In Murder])"},
nil,nil,-30)
X8=Adv.staffRollText("",{"Bass","Toru Hebiishi","Drums","Hiroki","Various Instruments & Programming","Minoru Yoshida"},400,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC02"then
nsgji=Adv.staffRollAddCaption([["Dance! Dance! Dance!"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","Minoru Yoshida","Performed by","Ruka Kayamori (Vo.: XAI)","","Karen Asakura (Vo.: Konomi Suzuki)","Scream","Karrie (Ayumu from [Serenity In Murder])"},
nil,nil,-30)
X8=Adv.staffRollText("",{"Bass","Toru Hebiishi","Drums","Hiroki","Various Instruments & Programming","Minoru Yoshida"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC03"then
nsgji=Adv.staffRollAddCaption([["Arifureta Battle Song ～Itsumo Sentou wa Mendou da～"\n("Just Another Battle Song—Endless Battle's Such a Drag—")]],
-280,-30,110)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","Minoru Yoshida","Performed by","Ruka Kayamori (Vo.: XAI)","","Karen Asakura (Vo.: Konomi Suzuki)","Scream","Karrie (Ayumu from [Serenity In Murder])","Chorus","Yuki Izumi (Voiced by Ryoko Maekawa)","","Megumi Aikawa (Voiced by Anju Inami)","","Tsukasa Tojo (Voiced by Yurina Amami)","","Tama Kunimi (Voiced by Aoi Koga)"},
nil,nil,-30)
X8=Adv.staffRollText("",{"Bass","Toru Hebiishi","Drums","Hiroki","Various Instruments & Programming","Minoru Yoshida"},200,
nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(0.5)end
if JQT=="MC04"then
nsgji=Adv.staffRollAddCaption([["Chapter 4 Song T.B.D."]],0,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","Minoru Yoshida","Performed by","XAI","","Konomi Suzuki","Scream","Ayumu (Serenity In Murder)"},
nil,nil,-30)Wait(4)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Wait(0.5)end
bClTIa=Adv.staffRollText("",{"Special Thanks","Tatsuki Shiraya","","VISUALARTS ALL STAFF"},nil,nil,
nil,nil)Wait(4)Adv.removeStaffRollText(bClTIa)Wait(0.5)
Adv.staffRollTextAuto("",{"Executive Producers","Takahiro Baba"})Wait(2.0)wfs_time=4.3
nsgji=Adv.staffRollAddCaption([[Wright Flyer Studios]],nil,-30)
Adv.staffRollTextAuto("",{"Lead Game Designers","Ryota Sasagawa","","Naomichi Youda","","Karin Fukuzawa","","","Main Programmer","Norifumi Okumura"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Art Director","Aya Okanda","","","Lead Concept Artists","Takahito Exa","","Chihiro Gomi","","","Lead UI Artist","Jiro Nagasaki"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Game Designers","Aya Yamada","","Yuto Nakaishi","","Naoto Enomoto","","Kazuya Suzuki","","Shinki Unten","","Toshiyuki Aiko","","Ryoichi Tanioka"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Scripters","Yuki Iwami","","Soushi Saitou","","Megumi Takeda","","Ken Iwata","","Takashi Sugiyama","","Aimi Sunaga","","Atsushi Ogawa","","Shohei Takeda","","Kaori Nagasaka","","Kazuaki Ichinohe","","Kazuhiko Kobari"},
nil,nil,nil,wfs_time)Wait(0.5)
BW0WFP=Adv.staffRollText("",{"Client Engineers","Shinya Sato","","Noriaki Kitamatsu","","Fumiya Amano","","Keita Uchida","","Himawari Ichikawa","","Masaya Yabe","","Makoto Nishimura","","Koji Nakamaru","","Eiji Itou","","GODEN TAKESHI","","Tomoya Saida","","Akihiro Noguchi","","Hikari Mori"})
X8=Adv.staffRollText("",{"Ryosuke Nishida","","Masatoshi Takayama","","Takahisa Wada",""},450)Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Adv.removeStaffRollText(X8)Wait(0.5)
Adv.staffRollTextAuto("",{"Server Engineers","Kazuki Itou","","Yoshinori YOSHIDA","","Takakazu Muroi","","Takahiro Fujita","","Kohei Asami","","Ryuichi Sakairi","","Tomoya Mikami","","Kazuki Cho","","","Infrastructure Engineers","Shinji Horiguchi","","Yutaka Matsuzawa","","Yuta Ishimatsu"},
nil,nil,nil,wfs_time)Wait(0.5)
BW0WFP=Adv.staffRollText("",{"Concept Artist","Erina Oshio","","","2D Artists","Aya Kodama","","Yuriko Nemoto","","Yuri Kumaki","","Katoroku","","Aimi Kiryu","","Aiko Yamamoto","","Non Ashimura","","Takaaki Maeda","","Nakamura Serika","","Yuya Suzuki","","Yoshimi Harada"})
X8=Adv.staffRollText("",{"","","","","Keiko Sakurai","","Ryo Ueno","","Leon Higa","","Miyuki Akazai","","Tamiko Miyake",""},450)Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Adv.removeStaffRollText(X8)Wait(0.5)
BW0WFP=Adv.staffRollText("",{"Background Artists","Keigo Kikuchi","","Akinori Kumada","","Makoto Watabe","","Yumi Nakamura","","Masami Iwanaga","","Yuta Kamimura","","Michie Watanabe","","Kanae Yokoyama","","Suduku Ishiwatari","","Kazuyuki Mori","","Satomi Ehara","","Takahiro Yoneda","","Chihiro Yamaguchi"})Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Wait(0.5)
Adv.staffRollTextAuto("",{"3D Artists","Chika Kawaguchi","","Hikaru Chonan","","yu yamamoto","","Sachio Furuya","","kitamura yuusuke"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Cinematic Director","Taju Takemata","","","Animation Director","Keisuke Minami","","","Animation / Cinematics","Kayo Haga","","Toshiyuki Nukanobu","","","Animation","Minori Watanabe","","Hiroyuki Hamada","","","Effects","Niika Akiba","","Yuta Takimoto"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Technical Artists","Takashi Iwamoto","","Yaxuan Mao","","Takahiro Ono","","","UI Artists","Kozue Hiruta","","Fumitaka Hirukawa","","Yasuhiro Otsui","","Nanae Hosokawa","","Kanji Uemura","","Mai Teranishi","","Ly Choi","","Yoshiro Omura"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Sound Designers","Kaori Ohshima","","Takeshi Yamagami","","Kan Inoue","","Masaki Takeuchi","","Yuka Itou","","","Voice Mastering","Studio A-tone"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Marketing Producer","Yoshihide Koizumi","","","Marketing","Misato Igarashi","","Kosuke Kato","","Mai Watanabe","","Ayaki Suzuki","","Anna Noro","","Kotaro Shirai","","Mamiko Yoshioka"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"GameLib Engineers","Rui Nagai","","Taku Omi","","Yong Qin","","Tomoaki Nosaka","","Gijun Han","","Tatsuya Endo","","Masashi Kudo","","","Data Engineers","Masahiro Gunji","","Maya Takatsuka","","","Data Analyst","Takashi Shiratori","","Takuma Sakaki"},
nil,nil,nil,wfs_time)Wait(0.5)
BW0WFP=Adv.staffRollText("",{"Customer Support","Yukito Ono","","Miku Awazu","","Yoshihisa Mitome","","","QA","Masatoshi Nomoto","","Satoshi Horigome","","Daisuke Teshigawara","","Satsuki Suzuki","","Masahiko Yubisui","","Kota Fujiwara"})
X8=Adv.staffRollText("",{"App Review","Kei Saegusa","","Yoko Yamazaki","","Nami Tsurumi","","Maki Oguro"},450)Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Adv.removeStaffRollText(X8)Wait(0.5)
Adv.staffRollTextAuto("",{"Project Management","Daisuke Iwamoto","","Tomoya Inoue","","Ryo Miyase"},
nil,nil,nil,wfs_time)Adv.removeStaffRollText(nsgji)Wait(0.5)nsgji=Adv.staffRollAddCaption([[Promotion]],
nil,-30)
Adv.staffRollTextAuto("",{"AH Project Team","Yuichiro Naganawa","","Shojiro Miyata","","Kodai Fukushima","","Kazutaka Nagasawa","","Ryosuke Kagata","","Yoshifumi Isono","","","IROKOTO, Inc.","Kensuke Hokari","","Ayako Kanahashi","","Nozomi Yamada","","Masashi Otsuka","","Hiroki Kanbayashi"},
nil,nil,nil,wfs_time)Adv.removeStaffRollText(nsgji)Wait(0.5)nsgji=Adv.staffRollAddCaption([[Production Cooperation]],
nil,-30)
BW0WFP=Adv.staffRollText("",{"GREE Business Operations, Inc.","Mariko Tamura","","Hideyuki Asakawa","","Takehiro Takata","","Takako Nishiki","","Hiroki Aihara","","Fumiya Amano","","Yumiko Ninomiya","","Kohei Fujita","","Yuki Tsuruyama","","Kosuke Ebihara","","Yuki Yokota","","Katsuhiro Morofushi","","Osamu Shinmyo"})Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Wait(0.5)
Adv.staffRollTextAuto("",{"Pole To Win, Inc.","I-rori Entertainment Co., Ltd.","ARROWS Corp.","INAZUMA Animation Studio","MUGENUP Inc.","DIGITAL WORKS Entertainment Inc.","Cre-p Co., Ltd.","G-angle co., ltd.","SHIFT Inc.","","CGCG Studio Inc.","","ORENDA Inc.","","Polygon Pictures Inc.","","R.I.S.U. Inc.","","Samurai Pictures Inc.","","GEMBA","","Solid Sphere, Inc.",""},
nil,nil,nil,wfs_time)Adv.removeStaffRollText(nsgji)Wait(0.5)
BW0WFP=Adv.staffRollText("",{"Special Thanks","Yoshikazu Tanaka","","Sanku Shino","","Eiji Araki"})
X8=Adv.staffRollText("",{"naoya tomita","","Tomoya Kuriyama","","Taku Watanabe","","Ken Kamiya","","Motoshi Abe","","Tetsuya Sasano","","Kaori Aoyama","","Yoshiko Okitsu ","","Yamaguchi kae","","Tetsuya Okuwa",""},450)
category_right2=Adv.staffRollText("",{"Yoshiki Yamada","","Hidetoshi Nishizume","","Hao Sun","","Rong Li","","Taketo Nozawa","","Toru Kiyota","","Jungsun Lee","","Yuta Itou","","Tomoyuki Isaka",""},750,
nil,nil,nil,80)Wait(wfs_time)Adv.removeStaffRollText(BW0WFP)
Adv.removeStaffRollText(X8)Adv.removeStaffRollText(category_right2)Wait(0.5)
Adv.staffRollTextAuto("",{"Executive Producers","Yota Yanagihara","","Yuta Maeda","","Daisuke Murano"},
nil,nil,nil,wfs_time)Wait(0.5)
Adv.staffRollTextAuto("",{"Development Manager / Game Design","Shota Shimoda"},
nil,nil,nil,wfs_time)Adv.removeStaffRollText(nsgji)Wait(1.5)
Adv.staffRollTextAuto("Producer","Yohei Kakinuma")Wait(0.5)
Adv.staffRollTextAuto("Director","Katsunori Onuma")
Adv.staffRollTextAuto("",{"Publisher","Yostar","EN Production Cooperation","Vast Visual"})Wait(0.5)Adv.whiteOut(2)Layout.createStage(A)
Layout.show()Wait(2)Adv.whiteIn(1.5)Wait(5)Sound.stopBGM(4)
Adv.fadeOut(4)Adv.finishStaffRoll(w0qyLbH)end