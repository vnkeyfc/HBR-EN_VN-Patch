ROUTINE()Adv.shield()
local IKxw=Adv.loadBG("Background/Arena/Arena_Default")local w0=Adv.loadBG("Background/Arena/Arena_Battle")
local UgXzI_C=Adv.loadImage("Still/MC02/Still_MC02_06_06_00_001","ForegroundStill",0,0,1,0,0)
local MLFLplLe=Adv.loadImage("Still/MC02/Still_MC02_06_06_00_001","ForegroundStill",0,0,1,0,0)Adv.showBG(IKxw)local jwq=Adv.character("STezuka")
local kw3ei0a=Adv.character("RKayamori")local EspneS5=Adv.character("YIzumi")
local LZeg0=Adv.character("TTojo")local OJZ=Adv.character("KAsakura")
local nmuj=Adv.character("MAikawa")local bP=Adv.character("TKunimi")
local b4IqQW=Adv.character("EAoi")local iuGb=Adv.character("Byakko")
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_CENTER),iuGb,b4IqQW)local koZU=Adv.character("SHiguchi")
local C=Adv.character("KHiiragi")
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_RIGHT),C,{koZU,"000002"})local nmJGp_=Adv.character("NNanase")
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_CENTER),nmJGp_)local h0v3PIV=Adv.character("IMinase")
local Uc=Adv.character("SMinase")
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_LEFT),{h0v3PIV,"030201"},{Uc,"030201"})local JSkUQL=nil
function ryokai_de_arimasu()
local PTUZ2v=

GetFlag("了解であります！一回目")+
GetFlag("了解であります！二回目")+
GetFlag("了解であります！三回目")+
GetFlag("了解であります！四回目")+GetFlag("了解であります！五回目")+GetFlag("了解であります！六回目")if
GetFlag("了解であります！最後に見たtimebox確認フラグ")==5 then
PTUZ2v=GetFlag("了解であります！MC02_06_06_00")end
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.show(kw3ei0a)
if PTUZ2v>=5 then
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC02_03_06_01_Novel_00015_RKayamori")
Adv.talkWithFacial("070001",nil,kw3ei0a,[[No... Let's try saying that again.]],"VC_MC02_06_06_00_Novel_00017_RKayamori")
Adv.talkWithFacial("070202",nil,kw3ei0a,[[Super mega perfectly understood!]],"VC_MC02_06_06_00_Novel_00018_RKayamori")
Adv.talkWithFacial("030001",nil,jwq,[[Rather extraneous, but that hardly concerns me.]],"VC_MC02_06_06_00_Novel_00019_STezuka")SetFlag("了解であります！六回目",1)
SetFlag("了解であります！MC02_06_06_00",5)elseif PTUZ2v==4 then
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC02_03_06_01_Novel_00015_RKayamori")
Adv.talkWithFacial("030201",nil,jwq,[[I will choose to place my faith in you once more. Do remember that humanity's fate rests on your shoulders.]],"VC_MC02_03_06_01_Novel_00016_STezuka")
Adv.talkWithFacial("070202",nil,kw3ei0a,[[Understood better than ever, ma'am!]],"VC_MC02_03_06_01_Novel_00017_RKayamori")
Adv.talkWithFacial("030001",nil,jwq,[[Strange phrasing, but that hardly concerns me.]],"VC_MC02_03_06_01_Novel_00018_STezuka")SetFlag("了解であります！五回目",1)
SetFlag("了解であります！MC02_06_06_00",4)elseif PTUZ2v==3 then
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC02_03_06_01_Novel_00015_RKayamori")
Adv.talkWithFacial("030201",nil,jwq,[[Again with your usual lip service, huh? Don't think I don't realize.]],"VC_MC02_03_06_01_Novel_00020_STezuka")
Adv.talkWithFacial("0702",nil,kw3ei0a,[[Not at all, ma'am! I have thoroughly changed my ways!]],"VC_MC02_03_06_01_Novel_00021_RKayamori")
Adv.talkWithFacial("080201",nil,jwq,[[Oh? I surely hope so.]],"VC_MC02_03_06_01_Novel_00022_STezuka")SetFlag("了解であります！四回目",1)
SetFlag("了解であります！MC02_06_06_00",3)elseif PTUZ2v==2 then
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC02_03_06_01_Novel_00015_RKayamori")
Adv.talkWithFacial("030201",nil,jwq,[[Is there a reason you can't maintain that stance?]],"VC_MC02_03_06_01_Novel_00024_STezuka")
Adv.talkWithFacial("070202",nil,kw3ei0a,[[I'll maintain it properly now!]],"VC_MC02_03_06_01_Novel_00025_RKayamori")
Adv.talkWithFacial("030001",nil,jwq,[[I'm looking forward to it.]],"VC_MC02_03_06_01_Novel_00026_STezuka")SetFlag("了解であります！三回目",1)
SetFlag("了解であります！MC02_06_06_00",2)elseif PTUZ2v==1 then
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC02_03_06_01_Novel_00015_RKayamori")
Adv.talkWithFacial("030201",nil,jwq,[[Sucking up will get you nowhere.]],"VC_MC02_03_06_01_Novel_00028_STezuka")
Adv.talkWithFacial("0702",nil,kw3ei0a,[[I wasn't sucking up, I swear!]],"VC_MC02_03_06_01_Novel_00029_RKayamori")
Adv.talkWithFacial("030001",nil,jwq,[[If only I believed you...]],"VC_MC02_03_06_01_Novel_00030_STezuka")SetFlag("了解であります！二回目",1)
SetFlag("了解であります！MC02_06_06_00",1)else
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC01_04_03_00_Novel_00046_RKayamori")
Adv.talkWithFacial("080201",nil,jwq,[[Oh? Were you always this compliant?]],"VC_MC01_04_03_00_Novel_00063_STezuka")
Adv.talkWithFacial("070202",nil,kw3ei0a,[[Yes ma'am!]],"VC_MC01_02_03_00_Novel_00011_RKayamori")
Adv.talkWithFacial("070201",nil,jwq,[[If only you always behaved so well.]],"VC_MC01_02_03_00_Novel_00012_STezuka")
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood!]],"VC_MC01_02_03_00_Novel_00013_RKayamori")SetFlag("了解であります！一回目",1)
SetFlag("了解であります！MC02_06_06_00",0)end;SetFlag("フェーズ2了解であります！",1)
SetFlag("了解であります！最後に見たtimebox確認フラグ",5)end
Layout.createStagePan(IKxw,Position.BG_LEFT,10)Sound.playBGM("SB0017",1,1)Layout.show()Wait(1.5)
Layout.show({jwq,"070201"})Adv.novelInit()
Adv.talkWithFacial(nil,nil,jwq,[[We will now begin training for Phase Two.]],"VC_MC02_06_06_00_Novel_00041_STezuka")Adv.presetStill(UgXzI_C,0,450,1.8,0,0)
Adv.moveLayer(UgXzI_C,"ForegroundStill")Adv.scale(UgXzI_C,2,10)Adv.show(UgXzI_C,1)
Adv.talkWithFacial(nil,nil,jwq,[[Your objective in this phase is to regain control of the route leading to Kashima Shrine.]],"VC_MC02_00434_v001_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[There will be more enemies than in Phase One. If you proceed without a plan, you will find your deflectors depleted in short order.]],"VC_MC02_06_06_00_Novel_00043_STezuka")
Adv.talkWithFacial("080202",nil,kw3ei0a,[[What?! That's terrifying!]],"VC_MC02_06_06_00_Novel_00044_RKayamori")Adv.presetStill(MLFLplLe,600,0,2,0,0)
Adv.moveLayer(MLFLplLe,"ForegroundStill")Adv.moveBy(MLFLplLe,Vec(100,0),10)
Adv.show(MLFLplLe,0.5)Adv.hide(UgXzI_C,1)
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_LEFT),jwq)
Adv.talkWithFacial(nil,nil,jwq,[[To avoid this, you will again practice establishing checkpoints and gradually expanding your area of control.]],"VC_MC02_06_06_00_Novel_00045_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[Over the next three days, consider your surroundings carefully and select areas suitable as checkpoints along the route.]],"VC_MC02_00435_v001_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[While Phase Two is short, it is also intense. Train well.]],"VC_MC02_06_06_00_Novel_00047_STezuka")Adv.hide(MLFLplLe,1)
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.show({kw3ei0a,"070201"})
if
GetFlag("ひとりでブーイング選んだ")==1 then
JSkUQL=Adv.question([[This is too much...]],[[Boo|Understood!]])
if JSkUQL==0 then
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Whaaa? Boo, boooo!]],"VC_MC02_06_06_00_Novel_00048_RKayamori")
Adv.talkWithFacial(nil,nil,jwq,[[Booing will get you nowhere.]],"VC_MC02_03_06_01_Novel_00002_STezuka")
if
GetFlag("二章ひとりでブーイング選んだ")==1 then
Adv.talkWithFacial("020202",nil,kw3ei0a,[[Dang it. I should've booed with Yukkie!]],"VC_MC02_06_06_00_Novel_00050_RKayamori")Layout.show(kw3ei0a,{EspneS5,"130101"})
Adv.act(kw3ei0a,"020302",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial(nil,nil,EspneS5,[[Not happening.]],"VC_MC02_06_06_00_Novel_00051_YIzumi")
Adv.talkWithFacial("170301",nil,kw3ei0a,[[Geez, Yukkie, you're cold today.]],"VC_MC02_06_06_00_Novel_00052_RKayamori")
Adv.talkWithFacial("040003",nil,EspneS5,[[When have I ever been warm?]],"VC_MC02_06_06_00_Novel_00053_YIzumi")
Adv.talkWithFacial("110301",nil,kw3ei0a,[[Still playing hard to get, huh?]],"VC_MC02_06_06_00_Novel_00054_RKayamori")
Adv.talkWithFacial("040003",nil,EspneS5,[[I'm not PLAYING anything.]],"VC_MC02_06_06_00_Novel_00055_YIzumi")
Adv.talkWithFacial("110302",nil,kw3ei0a,[[What about at night?]],"VC_MC02_06_06_00_Novel_00056_RKayamori")
Adv.faceChange(EspneS5,"Cheek",AdvCharacterCheek.CheekOn,0)
Adv.talkWithFacial("210102",nil,EspneS5,[[ESPECIALLY not then!]],"VC_MC02_06_06_00_Novel_00057_YIzumi")
Adv.talkWithFacial(nil,nil,jwq,[[You two. Quit flirting.]],"VC_MC02_06_06_00_Novel_00058_STezuka")
Adv.talkWithFacial("030202",nil,EspneS5,[[Aw, seriously?!]],"VC_MC02_06_06_00_Novel_00059_YIzumi")
Layout.createStageZoomOut(IKxw,Position.CENTER,5)
Layout.show({LZeg0,"120303"},{OJZ,"050102"})
Adv.talk("Karen/Tsukasa",[[Mm...]],"VC_MC02_06_merge_00029")
Layout.createStageZoomOut(IKxw,Position.BG_LEFT,5)
Layout.show({nmuj,"090001"},{bP,"080203"})
Adv.talk("Megumi/Tama",[[Mm...]],"VC_MC02_06_merge_00030")
Adv.faceChange(EspneS5,"Cheek",AdvCharacterCheek.CheekOn,0)
Adv.talkWithFacial("030202",nil,EspneS5,[[What do I keep saying?! Don't look at me like that!]],"VC_MC02_06_06_00_Novel_00064_YIzumi")
Adv.faceChange(EspneS5,"Cheek",AdvCharacterCheek.CheekOff,0)
SetFlag("手塚に和泉とのイチャイチャ指摘された",1)else
Adv.talkWithFacial("020201",nil,kw3ei0a,[[It doesn't work if I do it alone...]],"VC_MC02_03_06_01_Novel_00003_RKayamori")
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show({EspneS5,"000201"})
Layout.show({kw3ei0a,"070301"},EspneS5)
Adv.act(EspneS5,"000101",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial("070301",nil,kw3ei0a,[[But it's not too late! C'mon, Yukkie, boo with me! One...two...]],"VC_MC02_03_06_01_Novel_00004_RKayamori")
Adv.talkWithFacial("170203",nil,kw3ei0a,[[Boo, booo!]],"VC_MC02_03_06_01_Novel_00005_RKayamori")
Adv.talkWithFacial("030201",nil,jwq,[[Like I said, booing will get you nowhere.]],"VC_MC02_03_06_01_Novel_00006_STezuka")
Adv.talkWithFacial("080301",nil,kw3ei0a,[[Yukkie, why didn't you join in?!]],"VC_MC02_03_06_01_Novel_00007_RKayamori")
Adv.talkWithFacial("040103",nil,EspneS5,[[Because if we don't listen carefully, we may very well end up dead.]],"VC_MC02_03_06_01_Novel_00008_YIzumi")
Adv.talkWithFacial("080302",nil,kw3ei0a,[[What? Crap, you're right! You've convinced me!]],"VC_MC02_03_06_01_Novel_00009_RKayamori")
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Okay, all together, then. One...two...]],"VC_MC02_03_06_01_Novel_00010_RKayamori")Layout.createStageFixBg(IKxw,Position.BG_LEFT)
Layout.show({jwq,"2002"})
Routine(function()
local qlZeO3Pr=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Adv.position(qlZeO3Pr,Vec(350,0))Wait(0.5)
Adv.remove(qlZeO3Pr)end)
Adv.playCutIn("STezuka","Default","Anger","ARE YOU A DUM-DUM?!","VC_MC02_02_03_00_Novel_00011_STezuka",2,0)
if GetFlag("第二章くるくるぱー一回目")==0 then
Layout.createStageZoomOut(IKxw,Position.BG_LEFT,10)
Layout.show({EspneS5,"130203"},{nmuj,"030201"})
Adv.talkWithFacial(nil,nil,EspneS5,[[You're so good at pissing her off...]],"VC_MC02_02_03_00_Novel_00012_YIzumi")
Adv.actDelay(1.5,nmuj,"180202",AdvCharacterMouth.Mouth01)
Adv.actDelay(4.3,nmuj,"070201",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,nmuj,[[It's like "are you a dum-dum" is all she ever says now... Normally, it's not something you'd say even once in yer life...]],"VC_MC02_02_03_00_Novel_00013_MAikawa")
Adv.actDelay(0,nmuj,"070201",AdvCharacterMouth.Mouth01)SetFlag("第二章くるくるぱー一回目",1)else
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show({nmuj,"150201"})
Adv.talkWithFacial(nil,nil,nmuj,[[Way to set her off again.]],"VC_MC02_03_06_01_Novel_00014_MAikawa")end
SetFlag("二章ひとりでブーイング選んだ",1)end;SetFlag("フェーズ2了解であります！",0)
SetFlag("了解であります！六回目",0)elseif JSkUQL==1 then
SetFlag("手塚に和泉とのイチャイチャ指摘された",0)ryokai_de_arimasu()end else
local JSkUQL=Adv.question([[This is too much...]],[[Boo with Yukkie|Understood!]],nil)
if JSkUQL==0 then
if
GetFlag("二章和泉と一緒にブーイング選んだ")==1 then
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show({EspneS5,"040201"})
Layout.show({kw3ei0a,"070301"},EspneS5)
Adv.act(EspneS5,"130101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Yukkie, this time for real. 1... 2...]],"VC_MC02_06_06_00_Novel_00000_RKayamori")
Adv.talkWithFacial("170202",nil,kw3ei0a,[[Boo, booo!]],"VC_MC02_06_06_00_Novel_00001_RKayamori")Adv.actDelay(0,kw3ei0a,"070201")
Adv.actDelay(1,kw3ei0a,"070301")
Adv.talkWithFacial(nil,nil,kw3ei0a,[[You left me hanging! C'mon, why didn't you join in?!]],"VC_MC02_06_06_00_Novel_00002_RKayamori")
Adv.actDelay(0,kw3ei0a,"070301",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,EspneS5,[[So I can keep my head. This is important, you know.]],"VC_MC02_06_06_00_Novel_00003_YIzumi")
Adv.talkWithFacial("070301",nil,kw3ei0a,[[Is it, now? Then I may reconsider at a later date.]],"VC_MC02_06_06_00_Novel_00004_RKayamori")
Adv.talkWithFacial("060101",nil,EspneS5,[[It would behoove you to make your decision now.]],"VC_MC02_06_06_00_Novel_00005_YIzumi")
Adv.talkWithFacial("110301",nil,kw3ei0a,[[Fine, I'll listen...but only because it's you, Yukkie.]],"VC_MC02_06_06_00_Novel_00006_RKayamori")
Adv.talkWithFacial("070202",nil,kw3ei0a,[[Teacher! I'm listening!]],"VC_MC02_06_06_00_Novel_00007_RKayamori")
Adv.talkWithFacial("030002",nil,jwq,[[I'm not your teacher, but very well.]],"VC_MC02_06_06_00_Novel_00008_STezuka")else
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show({EspneS5,"040201"})
Layout.show({kw3ei0a,"070301"},EspneS5)
Adv.act(EspneS5,"130101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Yukkie, one...two...]],"VC_MC02_03_06_01_Novel_00036_RKayamori")
Adv.act(kw3ei0a,"170202",AdvCharacterMouth.Mouth01,0.4)
Adv.act(EspneS5,"080202",AdvCharacterMouth.Mouth01,0.4)Adv.playLipSync(kw3ei0a,1.5)
Adv.playLipSync(EspneS5,1.5)
Adv.talkWithFacial(nil,nil,"Ruka/Yuki",[[Boo, booo!]],"VC_MC02_03_merge_00006")
Adv.act(kw3ei0a,"000301",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial("200101",nil,EspneS5,[[Wait, why am I taking part in this?!]],"VC_MC02_03_06_01_Novel_00039_YIzumi")
Adv.talkWithFacial("130101",nil,EspneS5,[[I guess it's my own damn fault for being baited so easily by the countdown...]],"VC_MC02_03_06_01_Novel_00040_YIzumi")
Adv.talkWithFacial(nil,nil,jwq,[[We will not entertain complaints. The fate of humanity is at stake. Know that failure could mean the end of all mankind.]],"VC_MC02_03_06_01_Novel_00041_STezuka")
Adv.talkWithFacial("070201",nil,kw3ei0a,[[Understood.]],"VC_MC02_03_06_01_Novel_00042_RKayamori")
SetFlag("二章和泉と一緒にブーイング選んだ",1)end;SetFlag("フェーズ2了解であります！",0)
SetFlag("了解であります！六回目",0)elseif JSkUQL==1 then ryokai_de_arimasu()end end
Adv.talkWithFacial("070201",0,jwq,[[Upon reaching Point Gamma at Kashima Shrine, it will then be possible to launch an assault into Hadano Basin.]],"VC_MC02_06_06_00_Novel_00077_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[You are tasked with clearing that path.]],"VC_MC02_06_06_00_Novel_00078_STezuka")
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.show({kw3ei0a,"1702"})
Adv.shakeXY(kw3ei0a,0.3,0.1,0)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[I can't remember all that!]],"VC_MC02_06_06_00_Novel_00079_RKayamori")Layout.show(kw3ei0a,{EspneS5,"130101"})
Adv.act(kw3ei0a,"0003",AdvCharacterMouth.Mouth01)
if GetFlag("フェーズ2了解であります！")==1 then
if
GetFlag("フェーズ1了解であります！")==0 then
Adv.talkWithFacial("130101",nil,EspneS5,[[There you go embracing your inner dunce again, in just a matter of seconds.]],"VC_MC02_03_06_01_Novel_00074_YIzumi")else
Adv.talkWithFacial("060103",nil,EspneS5,[[You never change, do you?]],"VC_MC02_06_06_00_Novel_00081_YIzumi")end
if
GetFlag("手塚もはや期待するほうが馬鹿だと思った")==1 then
Adv.talkWithFacial(nil,nil,jwq,[[Izumi, you mustn't humor her by reacting.]],"VC_MC02_06_06_00_Novel_00082_STezuka")
Layout.setup(Layout.createStageFixBg(IKxw,Position.BG_LEFT),{EspneS5,"130201"})Layout.show({EspneS5,"130201"})
Adv.talkWithFacial(nil,nil,EspneS5,[[I'm depressed by myself now.]],"VC_MC02_06_06_00_Novel_00083_YIzumi")end else
Adv.talkWithFacial("060101",nil,EspneS5,[[What are you, five?]],"VC_MC02_06_06_00_Novel_00084_YIzumi")end
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show({jwq,"070201"})
Adv.talkWithFacial(nil,nil,jwq,[[Additionally, you will be training with 31-B again.]],"VC_MC02_06_06_00_Novel_00085_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[31-A, you are to clear a path to the checkpoint. 31-B, your role is to prevent the Cancer from focusing their attacks on 31-A.]],"VC_MC02_06_06_00_Novel_00086_STezuka")
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.show(iuGb,{b4IqQW,"010201"})
Adv.talkWithFacial("010201",
nil,b4IqQW,[[I look forward to working together!]],"VC_MC02_06_06_00_Novel_00087_EAoi")Layout.show({kw3ei0a,"110301"},iuGb,b4IqQW)
Adv.act(b4IqQW,"010101",AdvCharacterMouth.Mouth01)
Adv.act(iuGb,"000101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Oh, you're here! Yeah, let's do this!]],"VC_MC02_06_06_00_Novel_00088_RKayamori")
Adv.talkWithFacial("010103",nil,b4IqQW,[[Let's!]],"VC_MC02_06_06_00_Novel_00089_EAoi")
Adv.talkWithFacial("0001",nil,iuGb,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")
Layout.createStagePanR(IKxw,Position.BG_LEFT,10)
Layout.show({h0v3PIV,"030201"},{Uc,"030201"})
Adv.talkWithFacial(nil,nil,h0v3PIV,[[......]],"VC_MC02_06_06_00_Novel_00091_IMinase")
Adv.talkWithFacial(nil,nil,Uc,[[......]],"VC_MC02_06_06_00_Novel_00092_SMinase")
Layout.createStagePanL(IKxw,Position.BG_CENTER,10)Layout.show(C,koZU)
Adv.talkWithFacial("000002",nil,koZU,[[It's high time a beautiful disaster occurred, don't you think?]],"VC_MC02_06_06_00_Novel_00093_SHiguchi")
Adv.talkWithFacial("020302",nil,C,[[Y-You really shouldn't s-say such d-dreadful things!]],"VC_MC02_06_06_00_Novel_00094_KHiiragi")Layout.createStageFixBg(IKxw,Position.BG_LEFT)
Layout.show(jwq)
Adv.talkWithFacial(nil,nil,jwq,[[Even more than in Phase One, coordination between your two squads is imperative.]],"VC_MC02_06_06_00_Novel_00095_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[You must carefully consider the rate at which you engage the enemy, as well as which targets to prioritize.]],"VC_MC02_06_06_00_Novel_00096_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[Think how you can best defeat the enemy in the least amount of time.]],"VC_MC02_06_06_00_Novel_00097_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[Your training will once more take place in the emulator.]],"VC_MC02_06_06_00_Novel_00098_STezuka")
Adv.talkWithFacial(nil,nil,jwq,[[Nanase.]],"VC_MC02_06_06_00_Novel_00099_STezuka")Layout.show(jwq,nmJGp_)
Adv.act(jwq,"0703",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,nmJGp_,[[Yes.]],"VC_MC02_06_06_00_Novel_00100_NNanase")
Adv.talkWithFacial(nil,nil,nmJGp_,[[Just like in Phase One, your objective is to secure the route leading to the checkpoint.]],"VC_MC02_00436_v001_NNanase")
Adv.talkWithFacial("0702",nil,jwq,[[Including today, you will have three days to clear Phase Two.]],"VC_MC02_06_06_00_Novel_00102_STezuka")Layout.createStageFixBg(w0,Position.BG_LEFT)
Sound.playBGM("SB0008",1,1)Layout.show(jwq,nmJGp_,nil,1)
Adv.talkWithFacial("000203",nil,nmJGp_,[[Now initializing training module. Remember what we taught you.]],"VC_MC02_06_06_00_Novel_00103_NNanase")Transition.setArenaTransition()
Transition.start()Wait(2)Exit_Novel()