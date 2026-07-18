function preload()
EventScene("WheatField","Assets/Lua/Story/AC01/StaffRoll/StaffRoll.unity")end
function init()refresh()end;function refresh()Sound.playBGM("SV0057_Event_End",0,3)
StartEvent(function()
Field.setFootstepEnabled(false)Yield(StartEnding)Exit_World()end)end
function StartEnding()
Adv.fadeOut(0)Wait(3)
local A=Adv.loadBG("Background/wfsxkeylogo/wfsxkeylogo")local w0qyLbH=Adv.startStaffRoll()local nsgji;local bClTIa;local rDzL7SVO;local BW0WFP;local X8;local JQT=9.34
Field.moveOnRoute("Player","EndPoint",0.4)Adv.fadeIn(4)Wait(3)
Adv.staffRollTextAuto("Produced and Developed by",{"","WRIGHT FLYER STUDIOS/VISUAL ARTS/Key"},
-400,nil,-500,10.5)Wait(6.5)nsgji=Adv.staffRollAddCaption([[Cast]])
bClTIa=Adv.staffRollText("",{"Ichigo Minase","Aimi","Erika Aoi","Saki Miyashita"})Wait(JQT)Adv.removeStaffRollText(bClTIa)Wait(1.65)
bClTIa=Adv.staffRollText("",{"Sumomo Minase","Yuyu Shoji","Byakko!","-"})Wait(JQT)Adv.removeStaffRollText(bClTIa)Wait(1.65)
bClTIa=Adv.staffRollText("",{"Seika Higuchi","Aya Yamane","Kozue Hiiragi","Ari Ozawa"})Wait(JQT)Adv.removeStaffRollText(bClTIa)Wait(1.65)
bClTIa=Adv.staffRollText("",{"Ruka Kayamori","Tomori Kusunoki","","Vocals: XAI","Yuki Izumi","Ryoko Maekawa","Megumi Aikawa","Anju Inami"})Wait(JQT)Adv.removeStaffRollText(bClTIa)Wait(1.65)
bClTIa=Adv.staffRollText("",{"Chie Sugawara","Miyari Nemoto","Iroha Ishii","Yuuki Kuwahara"})Wait(JQT)Adv.removeStaffRollText(bClTIa)Wait(1.65)
bClTIa=Adv.staffRollText("",{"Saki Tezuka","Asami Seto","Nanami Nanase","Shu Uchida"})
rDzL7SVO=Adv.staffRollText("",{"Jasmine","Wakana Minami","Other","Eri Yamada","","Erina Suzumori"},
nil,-300)Wait(JQT)Adv.removeStaffRollText(bClTIa)
Adv.removeStaffRollText(rDzL7SVO)Adv.removeStaffRollText(nsgji)Wait(1.65)nsgji=Adv.staffRollAddCaption([["Everlasting Night"]],
-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)Wait(4.5)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Wait(1.65)
nsgji=Adv.staffRollAddCaption([["Indigo in Blue"]],-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","yanaginagi"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Chorus","Noriko Mitose","","Mami Yanagi","","KOCHO","","Ayaka Kitazawa","","ENA","","Hiroaki Takeuchi","","Naoto Fuga","","Ryutaro Oono","Guitar","Kenichi Watanabe","Bass","Yasuyuki Ishii"},200,
nil,-30)Wait(4.5)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(1.65)nsgji=Adv.staffRollAddCaption([["Dance! Dance! Dance!"]],
-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","Minoru Yoshida","Performed by","Ruka Kayamori (Vo.: XAI)","","Karen Asakura (Vo.: Konomi Suzuki)","Scream","Karrie (Ayumu from [Serenity In Murder])"},
nil,nil,-30)
X8=Adv.staffRollText("",{"Bass","Toru Hebiishi","Drums","Hiroki","Various Instruments & Programming","Minoru Yoshida"},200,
nil,-30)Wait(4.5)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(1.65)
nsgji=Adv.staffRollAddCaption([["After You Sleep (for the Blue Ver.)"]],
-280,-30)
BW0WFP=Adv.staffRollTextNarrowLeft("",{"Lyrics by","Jun Maeda","Composed by","Jun Maeda","Arranged by","MANYO","Performed by","rionos"},
nil,nil,-30)
X8=Adv.staffRollTextNarrowLeft("",{"Piano","kidlit","Guitar","Kenichi Watanabe","Violin","Anzu Suhara"},200,
nil,-30)Wait(4.5)Adv.removeStaffRollText(nsgji)
Adv.removeStaffRollText(BW0WFP)Adv.removeStaffRollText(X8)Wait(1.65)
Adv.whiteOut(2)Layout.createStage(A)Layout.show()Wait(2)
Adv.whiteIn(1.5)Wait(5)Adv.fadeOut(4)Sound.stopBGM(0)
Adv.finishStaffRoll(w0qyLbH)end