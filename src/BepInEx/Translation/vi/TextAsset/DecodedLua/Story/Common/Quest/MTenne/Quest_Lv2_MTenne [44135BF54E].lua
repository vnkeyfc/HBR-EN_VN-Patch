local w0qyLbH="Quest_Lv2_MTenne"function init()Log("Called Quest_Lv2_MTenne")
refresh()end
function refresh()
if Quest.stateUnreceivable(w0qyLbH)then if
Quest.isHasAnyActive()then return end
Quest.TouchEvent("MTenne_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("MTenne_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then
if
GetLocalFlag("仲間の人数")==0 then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step2_YIzumi)
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step2_TTojo)
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step2_KAsakura)
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step2_MAikawa)
TouchQuestEvent("MTenne_Quest",w0qyLbH,Step2_MTenne)
if GetLocalFlag("國見を誘ったか")==0 then
SetPeriodText("Ask someone from 31-A to witness, and talk to Tama Kunimi!")
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step2_TKunimi)else SetPeriodText("Ask someone from 31-A to witness!")
HideMapDestinationIcon("TKunimi_Quest")EmptyEvent("TKunimi_Quest")end else HideMapDestinationIcon("YIzumi_Quest")
HideMapDestinationIcon("TTojo_Quest")HideMapDestinationIcon("KAsakura_Quest")
HideMapDestinationIcon("MAikawa_Quest")
if GetLocalFlag("和泉を誘ったか")==1 then
Field.createFollower("YIzumi")elseif GetLocalFlag("東城を誘ったか")==1 then
Field.createFollower("TTojo")elseif GetLocalFlag("朝倉を誘ったか")==1 then
Field.createFollower("KAsakura")elseif GetLocalFlag("逢川を誘ったか")==1 then
Field.createFollower("MAikawa")end
SetPeriodText("Engage in a battle of wits with Tama Kunimi!")
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step2_TKunimi)end end
if Quest.stateStep(w0qyLbH,3)then
if
GetLocalFlag("和泉を誘ったか")==1 then SetFlag("天音交流Lv2_誰を誘ったか",1)elseif
GetLocalFlag("東城を誘ったか")==1 then
SetFlag("天音交流Lv2_誰を誘ったか",2)elseif GetLocalFlag("朝倉を誘ったか")==1 then
SetFlag("天音交流Lv2_誰を誘ったか",3)elseif GetLocalFlag("逢川を誘ったか")==1 then
SetFlag("天音交流Lv2_誰を誘ったか",4)end
if
GetLocalFlag("天音交流Lv2_step1で天音に話しかけた")==1 then
SetFlag("天音交流Lv2_step1で天音に話しかけた",1)else
SetFlag("天音交流Lv2_step1で天音に話しかけた",0)end;Field.deleteFollower("YIzumi")
Field.deleteFollower("TTojo")Field.deleteFollower("KAsakura")
Field.deleteFollower("MAikawa")StartEvent(Step3)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()Adv.fadeOut(0.5)
local nsgji=Adv.characterAsync("RKayamori")local bClTIa=Adv.characterAsync("MTenne")
local rDzL7SVO=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Evening")local BW0WFP
Field.startNovel(function()
Layout.createStageZoomOut(rDzL7SVO,Position.BG_CENTER)
Layout.show({nsgji,"110301"},{bClTIa,"000201"})Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,nsgji,[[ Hey, Witchy!]],"VC_Quest_00383_v004_RKayamori")
Adv.talkWithFacial("0301",nil,bClTIa,[[You're the witch here.]],"VC_Quest_00384_v004_MTenne")
Adv.talkWithFacial("000302",nil,nsgji,[[I called you that because you're kinda dressed like one.]],"VC_Quest_00385_v004_RKayamori")
Adv.talkWithFacial("0500",nil,bClTIa,[[Yes, I'm well aware.]],"VC_Quest_00386_v004_MTenne")
Adv.talkWithFacial("0301",nil,bClTIa,[[Anyway... I am in the midst of a marvelous brew, so pipe down.]],"VC_Quest_00387_v004_MTenne")BW0WFP=Quest.receive(w0qyLbH)Transition.start()end)if BW0WFP==QuestWindow.Receive then Adv.remove(rDzL7SVO)
Quest.refreshState()else Adv.remove(rDzL7SVO)
Field.cancelQuest("MTenne_Quest")end end
function Step1()Adv.fadeOut(0)Sound.playBGM("SB0040",0,0)
local X8=Adv.characterAsync("RKayamori")local JQT=Adv.characterAsync("MTenne")
local AtYtR=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Evening")
local ND2BCh3=Adv.loadImageAsync("AdvParts/Common/RKayamoriBackward","CharacterForward",-550,-217,1,0)
Field.startNovel(function()
Layout.createStageZoomOut(AtYtR,Position.BG_CENTER,0)Layout.show()Layout.show({JQT,"000201"})Adv.presetBackward(ND2BCh3,
-950,-217,1,0,0)
Adv.moveBy(JQT,Vec(250),0)Adv.moveBy(ND2BCh3,Vec(400),0)
Adv.show(ND2BCh3,0.3)Transition.finish()Adv.fadeIn(0.5)Wait(0.5)
Adv.scale(AtYtR,1.45,1)Adv.scale(ND2BCh3,1.1,1)Adv.scale(JQT,1.1,1)
Adv.talk(X8,[[*stare*]],"VC_Quest_00388_v004_RKayamori")
Adv.talkWithFacial("0002",nil,JQT,[[Hm...]],"VC_Quest_00389_v004_MTenne",true)Adv.scale(AtYtR,1.68,2)Adv.scale(ND2BCh3,1.2,2)
Adv.scale(JQT,1.2,2)
Adv.talk(X8,[[*stare intently*]],"VC_Quest_00390_v004_RKayamori")
Adv.act(JQT,"0300",AdvCharacterMouth.Mouth03)Adv.shakeXY(JQT,0.75,0.1,0.1)
Adv.talkWithFacial("0300",nil,JQT,[[Hm...]],"VC_Quest_00391_v004_MTenne",true,AdvCharacterMouth.Mouth03,AdvCharacterMouth.Mouth03)Adv.scale(AtYtR,1.92,3)Adv.scale(ND2BCh3,1.3,3)
Adv.scale(JQT,1.3,3)
Adv.talk(X8,[[*staring intensifies*]],"VC_Quest_00392_v004_RKayamori")Adv.hide(JQT,0)Adv.hide(ND2BCh3,0)
Layout.createStageFixBg(AtYtR,Position.BG_LEFT_CENTER)Layout.show({JQT,"030203"})
Field.zoomShakeWithEffect(JQT,nil,function()
Adv.playCutIn("MTenne","Default","Anger",[[I can't work like this! Learn some self-restraint!]],"VC_Quest_00393_v004_MTenne",2,0)end)Layout.show()
Layout.createStageFixBg(AtYtR,Position.BG_CENTER)Layout.show({X8,"170302"},{JQT,"030101"})
Adv.act(JQT,"0301",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,X8,[[But you were the one who told me to keep it down.]],"VC_Quest_00394_v004_RKayamori")
Adv.talkWithFacial("0801",nil,JQT,[[I did... Wait, if you've come back, then that means...]],"VC_Quest_00395_v004_MTenne")
Adv.talkWithFacial("0901",nil,JQT,[[Are you wanting to be my test subject again?]],"VC_Quest_00396_v004_MTenne")
Adv.talkWithFacial("110002",nil,X8,[[Nah, this reunion's more like a traffic accident.]],"VC_Quest_00397_v004_RKayamori")Adv.act(JQT,"030103")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.3,350)
Adv.playCutIn("MTenne","Default","Anger",[[Don't compare this to a traffic accident!]],"VC_Quest_00398_v004_MTenne",2,350)Adv.act(X8,"110302")
Adv.talkWithFacial("030101",nil,JQT,[[You have some nerve to act so rudely in the presence of Miko Tenne, the unrivaled alchemist!]],"VC_Quest_00399_v004_MTenne")
Adv.talkWithFacial("110301",nil,X8,[[Hey, I thought alchemists only existed in games and stuff. What do they actually do?]],"VC_Quest_00400_v004_RKayamori")
Adv.talkWithFacial("040002",nil,JQT,[[We are pursuers of mystery! Those who seek the knowledge and the know-how to all manner of phenomena in the universe!]],"VC_Quest_00401_v004_MTenne")
Adv.talkWithFacial("090302",nil,X8,[[Wow! Then how 'bout creating a new life form?!]],"VC_Quest_00402_v004_RKayamori")
Adv.talkWithFacial("030101",nil,JQT,[[You can't just flippantly ask an alchemist to perform the ultimate act!]],"VC_Quest_00403_v004_MTenne")Adv.act(X8,"080301")Adv.actDelay(1.76,X8,"1103")
Adv.talkWithFacial(
nil,nil,X8,[[Hey, you're the one who said you could... I can't believe it, are you even Witchy?]],"VC_Quest_00404_v004_RKayamori")Adv.actDelay(0,X8,"1103")
Adv.talkWithFacial("030103",nil,JQT,[[No! I've told you so <i>many</i> times! It's Tenne!!!]],"VC_Quest_00405_v004_MTenne")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.3,350)
Adv.playCutIn("MTenne","Default","Anger",[[Stop calling me Witchy!]],"VC_Quest_00406_v004_MTenne",2,350)
Adv.talkWithFacial("030101",nil,JQT,[[And another thing, I'm not researching how to create life... I'm trying to attain immortality!]],"VC_Quest_00407_v004_MTenne")
Adv.talkWithFacial("090302",nil,X8,[[Wow! That's very alchemist-like!]],"VC_Quest_00408_v004_RKayamori")Adv.act(JQT,"030103")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.3,350)
Adv.playCutIn("MTenne","Default","Anger",[[That's why I told you I'm an alchemist!\nWhat are you, birdbrained?!]],"VC_Quest_00409_v004_MTenne",2,350)
Adv.talkWithFacial("090001",nil,JQT,[[But I digress. You've come at a perfect time. I've just concocted a potion that will make you smarter.]],"VC_Quest_00410_v004_MTenne")
Adv.talkWithFacial("0803",nil,X8,[[Oh really? That's very interesting.]],"VC_Quest_00411_v004_RKayamori")
Adv.talkWithFacial("090102",nil,JQT,[[Heh heh heh... Welcome, my test subject!]],"VC_Quest_00412_v004_MTenne")
Adv.act(X8,"030302",AdvCharacterMouth.Mouth03)Adv.actDelay(1.32,X8,"0300")
Adv.actDelay(5.1,X8,"0703")
Adv.talkWithFacial(nil,nil,X8,[[Aaah! Last time, the side effects were awful...but I'm still kinda interested.]],"VC_Quest_00413_v004_RKayamori")Adv.actDelay(0,X8,"0703")
Adv.talkWithFacial("0901",nil,JQT,[[If you become smarter, your allies will finally accept you as their leader.]],"VC_Quest_00414_v004_MTenne")
Adv.talkWithFacial("170301",nil,X8,[[Why're you assuming they don't accept me already?]],"VC_Quest_00415_v004_RKayamori")
Adv.talkWithFacial("0700",nil,X8,[[Although... It would be cool if everyone saw me as a genius...]],"VC_Quest_00416_v004_RKayamori")Adv.act(JQT,"090101")Adv.actDelay(3.47,JQT,"0301")
Adv.talkWithFacial(
nil,nil,JQT,[[Then take this potion and gain the acceptance of your peers! Then, report any adverse effects!]],"VC_Quest_00417_v004_MTenne")Adv.actDelay(0,JQT,"0301")
Adv.talkWithFacial("1703",nil,X8,[[Ehh, you're being really pushy about this again.]],"VC_Quest_00418_v004_RKayamori")Transition.start()end)Adv.remove(AtYtR)Layout.show()
Field.showAdvHudWrapper(function()Wait(0.5)
Transition.finish()Sound.returnFieldBGM()
Field.playerComeIn("StairsPoint",Vec(2))
Adv.kayamoriTalk([[The smartest person in the squad...has gotta be Cappy. She probably would have aced her test, if she had put more pressure on her pen.]],"VC_Quest_00419_v004_RKayamori")
Adv.kayamoriTalk([[We'll need a witness, too. I'll go ask someone.]],"VC_Quest_00420_v004_RKayamori")end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step2_MTenne()
SetLocalFlag("天音交流Lv2_step1で天音に話しかけた",1)local IODBg=Adv.characterAsync("MTenne")
Field.startTalk("MTenne_Quest",FaceToFaceMode.Auto,function()
Layout.show({IODBg,"030201"})Adv.act(IODBg,"030201")
Adv.actDelay(2.67,IODBg,"030203")
Adv.talkWithFacial(nil,nil,IODBg,[[Drink this down and go fight in the arena! Then report back to me! Don't make me tell you again!]],"VC_Quest_00421_v004_MTenne")Adv.actDelay(0,IODBg,"030203")end)end
function Step2_YIzumi()local YRDu=Adv.characterAsync("YIzumi")
local CWRiP=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({CWRiP,"110301"},{YRDu,"000101"})
Adv.talkWithFacial(nil,nil,YRDu,[[Did you need something?]],"VC_Quest_00422_v004_YIzumi")
local LB0A=Adv.question([[Invite Yukkie?]],[[Invite|Maybe not]],0,true)
if LB0A~=0 then
Adv.talkWithFacial(nil,nil,CWRiP,[[Never mind.]],"VC_Quest_00423_v004_RKayamori")
Adv.talkWithFacial(nil,nil,YRDu,[[Then why did you bother me?]],"VC_Quest_00424_v004_YIzumi")else Sound.playBGM("SB0040")
Adv.talkWithFacial(nil,nil,CWRiP,[[Come with me. I wanna test my intellect against Cappy.]],"VC_Quest_00425_v004_RKayamori")
Adv.talkWithFacial("0801",nil,YRDu,[[Why? That's one battle that you'll never win.]],"VC_Quest_00426_v004_YIzumi")
Adv.talkWithFacial("070002",nil,CWRiP,[[Please!]],"VC_Quest_00427_v004_RKayamori")
Adv.talkWithFacial("040103",nil,YRDu,[[Fine, I'll come along.]],"VC_Quest_00428_v004_YIzumi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("和泉を誘ったか")Wait(1)end end)Sound.returnFieldBGM()Quest.refreshState()end
function Step2_TTojo()local dl=Adv.characterAsync("TTojo")
local sKPjQkdn=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({sKPjQkdn,"000301"},{dl,"000101"})
Adv.talkWithFacial(nil,nil,dl,[[Do you need something from me?]],"VC_Quest_00429_v004_TTojo")
local HHH9IlJp=Adv.question([[Invite Tsukassie?]],[[Invite|Maybe not]],0,true)
if HHH9IlJp~=0 then
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Never mind.]],"VC_Quest_00423_v004_RKayamori")
Adv.talkWithFacial(nil,nil,dl,[[Oh?]],"VC_Quest_00431_v004_TTojo")else Sound.playBGM("SB0040")
Adv.talkWithFacial("1103",nil,sKPjQkdn,[[Come with me. I wanna test my intellect against Cappy.]],"VC_Quest_00425_v004_RKayamori")
Adv.talkWithFacial("080103",nil,dl,[[Do you really stand a chance in that contest, Ruka?]],"VC_Quest_00433_v004_TTojo")
Adv.talkWithFacial("1101",nil,dl,[[However, you're wise to choose me as your witness.]],"VC_Quest_00434_v004_TTojo")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("東城を誘ったか")Wait(1)end end)Sound.returnFieldBGM()Quest.refreshState()end
function Step2_KAsakura()local uYz2ryy4=Adv.characterAsync("KAsakura")
local zVPRGDnG=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({zVPRGDnG,"110301"},{uYz2ryy4,"010101"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh, hi, Ruka. What're you up to?]],"VC_Quest_00435_v004_KAsakura")
local IKxw=Adv.question([[Invite Karerin?]],[[Invite|Maybe not]],0,true)
if IKxw~=0 then
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Never mind.]],"VC_Quest_00423_v004_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh, okay.]],"VC_Quest_00437_v004_KAsakura")else Sound.playBGM("SB0040")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Come with me. I wanna test my intellect against Cappy.]],"VC_Quest_00425_v004_RKayamori")Adv.act(uYz2ryy4,"080103")
Adv.actDelay(3.26,uYz2ryy4,"280102")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Huh? Wasn't she a warship captain? I don't know if you can outwit her...]],"VC_Quest_00439_v004_KAsakura")Adv.actDelay(0,uYz2ryy4,"280102")
Adv.talkWithFacial("000102",nil,uYz2ryy4,[[But since you seem anxious, I'll be there.]],"VC_Quest_00440_v004_KAsakura")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("朝倉を誘ったか")Wait(1)end end)Sound.returnFieldBGM()Quest.refreshState()end
function Step2_MAikawa()local w0=Adv.characterAsync("MAikawa")
local UgXzI_C=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({UgXzI_C,"110301"},{w0,"000101"})
Adv.talkWithFacial(nil,nil,w0,[[What can I do ya for?]],"VC_Quest_00441_v004_MAikawa")
local MLFLplLe=Adv.question([[Invite Megumin?]],[[Invite|Maybe not]],0,true)
if MLFLplLe~=0 then
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Never mind.]],"VC_Quest_00423_v004_RKayamori")
Adv.talkWithFacial("030101",nil,w0,[[Then why'd ya bother me?]],"VC_Quest_00443_v004_MAikawa")else Sound.playBGM("SB0040")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Come with me. I wanna test my intellect against Cappy.]],"VC_Quest_00425_v004_RKayamori")
Adv.talkWithFacial("0001",nil,w0,[[You hit yer head or somethin'? You really think you've enough brains for that?]],"VC_Quest_00445_v004_MAikawa")Adv.act(w0,"0000")Adv.actDelay(1.29,w0,"0001")
Adv.talkWithFacial(
nil,nil,w0,[[Well, whatever. I'll come just to watch you flail.]],"VC_Quest_00446_v004_MAikawa")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("逢川を誘ったか")Wait(1)end end)Sound.returnFieldBGM()Quest.refreshState()end
function Step2_TKunimi()local jwq=Adv.characterAsync("RKayamori")
local kw3ei0a=Adv.characterAsync("YIzumi")local EspneS5=Adv.characterAsync("TTojo")
local LZeg0=Adv.characterAsync("TKunimi")local OJZ=Adv.characterAsync("KAsakura")
local nmuj=Adv.characterAsync("MAikawa")local bP;local b4IqQW;local iuGb
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Field.setActiveWithTag("Narvy",false)Field.setActiveWithTag("Gaya",false)
if
GetLocalFlag("國見を誘ったか")==0 then Sound.playBGM("SB0040")
Layout.show({jwq,"110302"},{LZeg0,"110101"})
Adv.talkWithFacial(nil,nil,jwq,[[Hey Cappy, I've come to challenge you to a duel of wits!]],"VC_Quest_00447_v004_RKayamori")Adv.act(LZeg0,"0801")
Adv.actDelay(4.71,LZeg0,"1101")
Adv.talkWithFacial(nil,nil,LZeg0,[[I'll accept, but...how do I put this? I don't know how much of a competition it will be.]],"VC_Quest_00448_v004_TKunimi")Adv.actDelay(0,LZeg0,"1101")
Adv.talkWithFacial("090301",nil,jwq,[[I don't plan to lose after challenging you! I got an ace up my sleeve!]],"VC_Quest_00449_v004_RKayamori")Adv.act(LZeg0,"0801")
Adv.actDelay(2.52,LZeg0,"070102")
Adv.talkWithFacial(nil,nil,LZeg0,[[Oh, you're brimming with confidence! Then, let's do this!]],"VC_Quest_00450_v004_TKunimi")Adv.actDelay(0,LZeg0,"070102")
SetLocalFlag("國見を誘ったか",1)end
if GetLocalFlag("仲間の人数")==0 then
Adv.talkWithFacial("110301",nil,jwq,[[I'm gonna get someone to be a witness, so wait here a sec.]],"VC_Quest_00451_v004_RKayamori")
Adv.talkWithFacial("110101",nil,LZeg0,[[Alright.]],"VC_Quest_00452_v004_TKunimi")Transition.start()Layout.show()
Sound.returnFieldBGM()else SetLocalFlag("仲間1が埋まっているか",0)
if
Field.isJoinFollower("YIzumi")==true then bP="YIzumi"
b4IqQW=Adv.characterAsync("YIzumi")IncLocalFlag("仲間1が埋まっているか")end
if Field.isJoinFollower("TTojo")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then bP="TTojo"
b4IqQW=Adv.characterAsync("TTojo")IncLocalFlag("仲間1が埋まっているか")end end
if Field.isJoinFollower("KAsakura")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then bP="KAsakura"
b4IqQW=Adv.characterAsync("KAsakura")IncLocalFlag("仲間1が埋まっているか")end end
if Field.isJoinFollower("MAikawa")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then bP="MAikawa"
b4IqQW=Adv.characterAsync("MAikawa")IncLocalFlag("仲間1が埋まっているか")end end;Layout.show()
Field.moveBy("TKunimi_Quest",Vec(0,0,0.5),0.5)Adv.fadeOut(0.5)Wait(0.5)
Field.stopTaskKey("TKunimi_Quest")Wait(0.1)
Field.moveBy("TKunimi_Quest",Vec(-2,0,6.7),0)
local koZU=Field.getPosition("TKunimi_Quest")+Vec(0.2,0,-1)Field.setPosition("Player",koZU)local C=
Field.getPosition("Player")+Vec(0.3,0,1.2)Field.setPosition(
"Follower/"..bP,C)Wait(1)
Field.setCameraCompositionEx(Vec(-
0.100,1.000,25.660),Vec(0.000,280.000,0.000),29.91)Field.turnToTarget("Player","TKunimi_Quest",1)
Field.turnToTarget("TKunimi_Quest","Player",1)
Field.turnToTarget("Follower/"..bP,"Player",1)Adv.fadeIn(0.5)Wait(0.5)Sound.playEmptyBGM(1)
Layout.show({jwq,"0702"})
Adv.talkWithFacialInMonolog(nil,nil,jwq,[[(Well... Bottoms up!)]],"VC_Quest_00453_v004_RKayamori",true)Layout.show()Field.turnBy("Player",90,0.5)
local nmJGp_=Adv.fadeOutWithShield(0.3)Wait(1)Sound.play("AS_Drink_Liquid",2)
Adv.bubble_ANGRY("se",[[*gulp*]],nil,"VC_Quest_00454_v004_")Adv.hide(nmJGp_,1)Layout.show({jwq,"A00002"})
Wait(0.5)
Adv.talkWithFacial(nil,nil,jwq,[[Pwah-hah!]],"VC_Quest_00455_v004_RKayamori",true)Sound.playBGM("SB0033",0,0)
b4IqQW=Adv.characterAsync(bP)
if bP=="YIzumi"then Adv.act(b4IqQW,"030202")elseif bP=="TTojo"then
Adv.act(b4IqQW,"070203")elseif bP=="KAsakura"then Adv.act(b4IqQW,"080203")elseif bP=="MAikawa"then if
GetFlag("天音交流Lv1_逢川を誘った")~=1 then Adv.act(b4IqQW,"180201")else
Adv.act(b4IqQW,"180201")end end;Layout.show({LZeg0,"180202"},{b4IqQW})Field.setPosition(
"Follower/"..bP,C)
if
GetFlag("天音交流Lv1_國見を誘った")~=1 then
Adv.talkWithFacial(nil,nil,LZeg0,[[That didn't seem like an ordinary energy drink!]],"VC_Quest_Lv1_MTenne_Quest_00083_TKunimi")else
Adv.talkWithFacial(nil,nil,LZeg0,[[Are you drinking more suspicious liquids?]],"VC_Quest_00457_v004_TKunimi")end
if Field.isJoinFollower("YIzumi")==true then
if
GetFlag("天音交流Lv1_和泉を誘った")~=1 then
Adv.talkWithFacial("030202",nil,b4IqQW,[[What the heck is that?! Whatever you just chugged definitely didn't look healthy!]],"VC_Quest_00458_v004_YIzumi",
nil,AdvCharacterMouth.Mouth03)else
Adv.talkWithFacial("030202",nil,b4IqQW,[[What the heck, again?! What you just chugged is definitely not healthy!]],"VC_Quest_00459_v004_YIzumi",nil,AdvCharacterMouth.Mouth03)end elseif Field.isJoinFollower("TTojo")==true then
if
GetFlag("天音交流Lv1_東城を誘った")~=1 then
Adv.talkWithFacial("070203",nil,b4IqQW,[[Is that even legal?!]],"VC_Quest_Lv1_MTenne_Quest_00082_TTojo")else
Adv.talkWithFacial("070203",nil,b4IqQW,[[Again?! Are you really sure that's legal?!]],"VC_Quest_00461_v004_TTojo")end elseif Field.isJoinFollower("KAsakura")==true then
if
GetFlag("天音交流Lv1_朝倉を誘った")~=1 then
Adv.talkWithFacial("080203",nil,b4IqQW,[[What was that?! Ruka, what are you drinking?!]],"VC_Quest_Lv1_MTenne_Quest_00084_KAsakura")else
Adv.talkWithFacial("080203",nil,b4IqQW,[[Again?! Ruka, what have you done?!]],"VC_Quest_00463_v004_KAsakura")end elseif Field.isJoinFollower("MAikawa")==true then
if
GetFlag("天音交流Lv1_逢川を誘った")~=1 then
Adv.talkWithFacial("180201",nil,b4IqQW,[[What the hell, are ya druggin' up for this?!]],"VC_Quest_Lv1_MTenne_Quest_00085_MAikawa")else
Adv.talkWithFacial("180201",nil,b4IqQW,[[Again with the doping?! Seriously?!]],"VC_Quest_00465_v004_MAikawa")end end;Layout.show()Field.turnBy("Player",-90,0.5)
Wait(0.5)
Layout.show({jwq,"090301"},{LZeg0,"180102"})
Adv.act(LZeg0,"180102",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,jwq,[[Cappy! Hit me with the square root of 5!]],"VC_Quest_00466_v004_RKayamori")
Adv.talkWithFacial("070102",nil,LZeg0,[[L-Let's do it!]],"VC_Quest_00467_v004_TKunimi")
local h0v3PIV=Adv.bubbleTalkAsync(jwq,[[1.732050807568877293527446341505872...]],nil,Vec(-300,-100),"VC_Quest_00468_v004_RKayamori")
local Uc=Adv.bubbleTalkAsync(LZeg0,[[2.236067977499789696409173668731...]],nil,Vec(300,-300),"VC_Quest_00469_v004_TKunimi")Wait(4)Adv.hide(h0v3PIV,0.3)Adv.hide(Uc,0.3)
Layout.show()
if bP=="YIzumi"then Adv.act(b4IqQW,"210202")elseif bP=="TTojo"then
Adv.act(b4IqQW,"080202")elseif bP=="KAsakura"then Adv.act(b4IqQW,"080202")elseif bP=="MAikawa"then
Adv.act(b4IqQW,"180202")end;Layout.show(b4IqQW)
if bP=="YIzumi"then
Adv.actDelay(2.27,b4IqQW,"0402")
Adv.talkWithFacial(nil,nil,b4IqQW,[[Ruka's smart?! But they both got totally different answers!]],"VC_Quest_00470_v004_YIzumi")Adv.actDelay(0,b4IqQW,"0402")end
if bP=="TTojo"then Adv.actDelay(1.8,b4IqQW,"0402")
Adv.talkWithFacial(nil,nil,b4IqQW,[[Ruka, what happened?! I don't understand any of this. Your answer was totally different from Kunimi's.]],"VC_Quest_00471_v004_TTojo")Adv.actDelay(0,b4IqQW,"0402")end
if bP=="KAsakura"then Adv.actDelay(2.67,b4IqQW,"2802")
Adv.talkWithFacial(nil,nil,b4IqQW,[[Ruka's looking strangely smart! But Tama gave a completely different answer!]],"VC_Quest_00472_v004_KAsakura")Adv.actDelay(0,b4IqQW,"2802")end
if bP=="MAikawa"then Adv.actDelay(2.15,b4IqQW,"0302")
Adv.talkWithFacial(nil,nil,b4IqQW,[[Ruka's showin' up Tama?! No, Ruka was faster, but her answer's totally different!]],"VC_Quest_00473_v004_MAikawa")Adv.actDelay(0,b4IqQW,"0302")end;Layout.show()
Layout.show({jwq,"090301"},{LZeg0,"000101"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Ruka...]],"VC_Quest_00474_v004_TKunimi")Adv.act(jwq,"090301")Adv.actDelay(2.06,jwq,"0003")
Adv.talkWithFacial(
nil,nil,jwq,[[805253... What's up, Cappy? You conceding?]],"VC_Quest_00475_v004_RKayamori")Adv.actDelay(0,jwq,"0003")
Adv.talkWithFacial(nil,nil,LZeg0,[[That's the square root of 3.]],"VC_Quest_00476_v004_TKunimi")
Adv.act(jwq,"030303",AdvCharacterMouth.Mouth03)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.3,-350)
Adv.playCutIn("RKayamori","Default","Surprise",[[Whaaat?!]],"VC_Quest_00477_v004_RKayamori",2,-350)Transition.start()Layout.show()
Sound.playEmptyBGM()end end)
if GetLocalFlag("仲間の人数")==0 then
Quest.refreshState()else
Exit_FieldAndChange("School1F","ClassRoomBy31A",nil,function()Quest.clearStep(w0qyLbH)end)end end
function Step3()Adv.fadeOut(0)
local JSkUQL=Adv.characterAsync("RKayamori")local PTUZ2v=Adv.characterAsync("MTenne")
local qlZeO3Pr=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Evening")Field.activeEventCharacterWait("MTenne_Quest")
Sound.playBGM(AdvBGM.Gag1)
Field.startNovel(function()Transition.finish()Adv.fadeIn(0.5)
Wait(0.5)
Layout.createStageZoomOut(qlZeO3Pr,Position.BG_CENTER)
Layout.show({JSkUQL,"170302"},{PTUZ2v,"000101"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[So, it just makes you <i>look</i> smart but in reality, something's off.]],"VC_Quest_00478_v004_RKayamori")
Adv.talkWithFacial("040002",nil,PTUZ2v,[[So there is still some room for improvement.]],"VC_Quest_00479_v004_MTenne")
Adv.talkWithFacial(nil,nil,JSkUQL,[[And it gave me an upset stomach again...]],"VC_Quest_00480_v004_RKayamori")
Adv.talkWithFacial("0001",nil,PTUZ2v,[[Who cares about that. It's a trivial point.]],"VC_Quest_00481_v004_MTenne")
Adv.talkWithFacial("0303",nil,JSkUQL,[[It sucked! My life and dignity as a cute teenage girl nearly ended itself!]],"VC_Quest_00482_v004_RKayamori")
Adv.talkWithFacial("0701",nil,PTUZ2v,[[Once I find that of which I seek, all life will cease to end.]],"VC_Quest_00483_v004_MTenne")
Adv.talkWithFacial("030002",nil,JSkUQL,[[So I would just be humiliated forever?!]],"VC_Quest_00484_v004_RKayamori")
Adv.talkWithFacial("0900",nil,PTUZ2v,[[I will call on you again, my test subject.]],"VC_Quest_00485_v004_MTenne")
Adv.talkWithFacial("030301",nil,JSkUQL,[[No way! I'm never doing this again!]],"VC_Quest_00486_v004_RKayamori")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local fG9zS=Bath.startBathTimeEvent("MTenne",BathInviteMode.Active,function(WiXG,QgyWztK)
Adv.talkWithFacial(nil,nil,WiXG,[[(Maybe I should invite Witchy to join me for a soak.)]],"VC_Quest_00487_v004_RKayamori")
local Oo6ecUO=Bath.BathQuestion("MTenne",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,WiXG,[[Witchy, I will wash your back, as an apology for that awful potion.]],"VC_Quest_00488_v004_RKayamori")
Adv.talkWithFacial(nil,nil,QgyWztK,[[I think you have it backwards. But it's no skin off my back, so very well.]],"VC_Quest_00489_v004_MTenne")end,function()
Adv.talkWithFacial(
nil,nil,WiXG,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return Oo6ecUO end)
if fG9zS==0 then
Bath.startBathTimeNovel("MTenne",nil,"Wash",function(b6SL0yka,hEk,E8o,TdqFo)
Sound.play("AS_Echo_Bathsplashes")Wait(1)
local ykLF0=Adv.bubbleSeActNoWait([[*scrub*]],Vec(-300,180,0),"Think",BubbleActMode.Vertical,"default","AS_Wash_Bath")
local cilhu=Adv.bubbleSeActNoWait([[*scrub*]],Vec(200,0,0),"Think",BubbleActMode.Vertical,"default",nil,nil,1)Wait(0.8)
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Your skin tone is really interesting, Witchy.]],"VC_Quest_00491_v004_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[What's with that suggestive tone of voice...]],"VC_Quest_00492_v004_MTenne")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[I mean, you're always dressed head to foot in black.]],"VC_Quest_00493_v004_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[I get nervous about exposing my skin to the sun.]],"VC_Quest_00494_v004_MTenne")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[So that's why your skin stays so white.]],"VC_Quest_00495_v004_RKayamori")
local eVfN=Adv.bubbleSeActNoWait([[*skwsh*]],Vec(150,0,0),"Think",BubbleActMode.Vertical,"default","AS_Wash_Bath")
local LBIJ=Adv.bubbleSeActNoWait([[*skwsh*]],Vec(-250,180,0),"Think",BubbleActMode.Vertical,"default",nil,nil,2)Wait(1.8)Sound.play("AS_Wash_Bath")
Adv.talkWithFacial(nil,nil,hEk,[[The way you're touching me is rather indecent.]],"VC_Quest_00496_v004_MTenne")Sound.play("AS_Echo_Bathsplashes")Wait(1.5)
Adv.talkWithFacial(
nil,nil,b6SL0yka,[[Thorough, you mean?]],"VC_Quest_00497_v004_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[You don't have to wash my front.]],"VC_Quest_00498_v004_MTenne")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Don't worry about it. There's no need to be shy.]],"VC_Quest_00499_v004_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[I can hazard a guess about your uncouth intents.]],"VC_Quest_00500_v004_MTenne")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Oof...]],"VC_Quest_00501_v004_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[And my name is Tenne, not "Witchy"!]],"VC_Z_900300022_MTenne")end)end;Exit_World()end