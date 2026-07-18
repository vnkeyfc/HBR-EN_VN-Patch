local nsgji="Quest_Lv1_CSugahara"function init()
Log("Called Quest_Lv1_CSugahara")refresh()end;local bClTIa=false
function refresh()
if
Quest.stateUnreceivable(nsgji)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("CSugahara_Quest",nsgji,function()
UI.unreceivableMessageDialog(nsgji)end)end;if Quest.stateReceivable(nsgji)then
Quest.TouchEvent("CSugahara_Quest",nsgji,Receive)end;if Quest.stateStep(nsgji,1)then
StartEvent(Step1)end;if Quest.stateStep(nsgji,2)then
StartEvent(Step2)end
if Quest.stateStep(nsgji,3)then
Field.setPlayerMoveSpeedRate(1,1,1)
if GetLocalFlag("会話順整理フラグ")==0 then
Field.createFollower("CSugahara")SetPeriodText("Go by Tsukasa!")
ShowMapDestinationIcon("TTojo_Quest3")ReachEvent("TTojo_Quest3",Step3_TTojo)
EmptyEvent("TKunimi_Quest")EmptyEvent("KAsakura_Quest")
EmptyEvent("MAikawa_Quest4")EmptyEvent("YIzumi_Quest2")elseif
GetLocalFlag("会話順整理フラグ")==1 then Field.createFollower("CSugahara")
SetPeriodText("Go by Tama!")HideMapDestinationIcon("TTojo_Quest3")
ShowMapDestinationIcon("TKunimi_Quest")ReachEvent("TKunimi_Quest",Step3_TKunimi)
EmptyEvent("TTojo_Quest3")EmptyEvent("KAsakura_Quest")
EmptyEvent("MAikawa_Quest4")EmptyEvent("YIzumi_Quest2")elseif
GetLocalFlag("会話順整理フラグ")==2 then SetPeriodText("Go by Karen!")
HideMapDestinationIcon("TKunimi_Quest")ShowMapDestinationIcon("KAsakura_Quest")
ReachEvent("KAsakura_Quest",Step3_KAsakura)EmptyEvent("TTojo_Quest3")
EmptyEvent("TKunimi_Quest")EmptyEvent("MAikawa_Quest4")
EmptyEvent("YIzumi_Quest2")elseif GetLocalFlag("会話順整理フラグ")==3 then
SetPeriodText("Go by Megumi!")HideMapDestinationIcon("KAsakura_Quest")
ShowMapDestinationIcon("MAikawa_Quest4")ReachEvent("MAikawa_Quest4",Step3_MAikawa)
EmptyEvent("TTojo_Quest3")EmptyEvent("TKunimi_Quest")
EmptyEvent("KAsakura_Quest")EmptyEvent("YIzumi_Quest2")elseif
GetLocalFlag("会話順整理フラグ")==4 then Field.createFollower("CSugahara")
SetPeriodText("Go by Yuki!")EmptyEvent("TTojo_Quest3")
EmptyEvent("TKunimi_Quest")EmptyEvent("KAsakura_Quest")
EmptyEvent("MAikawa_Quest4")HideMapDestinationIcon("MAikawa_Quest4")
ShowMapDestinationIcon("YIzumi_Quest2")ReachEvent("YIzumi_Quest2",Step3_YIzumi)end;Field.setActiveWithTag("Gate",false)
TouchEvent("SchoolGate",function()
local rDzL7SVO=Adv.question([[]],[[Enter the academy building|Stay here]],0,true)
if rDzL7SVO==0 then
Field.playerGetOut("SchoolPoint",Vec(0,0,15),3,1)Exit_FieldAndChange("School1F","StartPoint")end end)
TouchEventAt("School1F","MainStreetGate",function()
local BW0WFP=Adv.question([[]],[[Go to Main Street|Stay here]],0,true)
if BW0WFP==0 then
Field.changeAnimation("SchoolDoor03","DormitoryDoor03Open")
Field.playerGetOut("StartPoint",Vec(0,0,-15),3,0.5)Exit_FieldAndChange("MainStreet","SchoolPoint")end end)
TouchEvent("DormitoryGate",function()
local X8=Adv.question([[]],[[Enter the dormitories|Stay here]],0,true)
if X8 ==0 then
Field.playerGetOut("DormitoryPoint",Vec(-15,0,0),3,1)Exit_FieldAndChange("Dormitory1F","StartPoint")end end)
TouchEvent("MainStreetGate",function()
local JQT=Adv.question([[]],[[Go to Main Street|Stay here]],0,true)
if JQT==0 then
Field.playerGetOut("StartPoint",Vec(0,0,-15),3,0.3,true)Exit_FieldAndChange("MainStreet","DormitoryPoint")end end)
TouchEvent("FriendStreetRightGate",function()
local AtYtR=Adv.question([[]],[[Go to Union Street|Stay here]],0,true)
if AtYtR==0 then
Field.playerGetOut("FriendStreetRightPoint",Vec(0,0,-15),3,0.3)Exit_FieldAndChange("FriendStreet","EndPoint")end end)
TouchEvent("MainStreetRightGate",function()
local ND2BCh3=Adv.question([[]],[[Go to Main Street|Stay here]],0,true)if ND2BCh3 ==0 then
Field.playerGetOut("EndPoint",Vec(15,0,0),3,0.5)
Exit_FieldAndChange("MainStreet","FriendStreetRightPoint")end end)
TouchEvent("FriendStreetLeftGate",function()
local IODBg=Adv.question([[]],[[Go to Union Street|Stay here]],0,true)
if IODBg==0 then
Field.playerGetOut("FriendStreetLeftPoint",Vec(15,0,0),3,0.3)Exit_FieldAndChange("FriendStreet","StartPoint")end end)
TouchEvent("MainStreetLeftGate",function()
local YRDu=Adv.question([[]],[[Go to Main Street|Stay here]],0,true)if YRDu==0 then
Field.playerGetOut("StartPoint",Vec(0,0,-15),3,0.5)
Exit_FieldAndChange("MainStreet","FriendStreetLeftPoint")end end)
TouchEvent("BackStreetGate",function()
local CWRiP=Adv.question([[]],[[Go to the woodway|Stay here]],0,true)
if CWRiP==0 then
Field.playerGetOut("BackStreetPoint",Vec(-15),3,0.2)Exit_FieldAndChange("BackStreet","StartPoint")end end)
TouchEvent("FriendStreetGate",function()
local LB0A=Adv.question([[]],[[Go to Union Street|Stay here]],0,true)if LB0A==0 then
Field.playerGetOut("EndRightPoint",Vec(15),3,0.2)
Exit_FieldAndChange("FriendStreet","BackStreetPoint")end end)
TouchEvent("GraveGate",function()
local dl=Adv.question("",[[Go to the mortuary.|Stay here]],0,true)
if dl==0 then
Field.playerGetOut("CemeteryPoint",Vec(-4.5,0,4.5),3,0.5)Exit_FieldAndChange("Grave","StartPoint")end end)
TouchEventAt("Grave","MainStreetGate",function()
local sKPjQkdn=Adv.question([[]],[[Go to Main Street|Stay here]],0,true)
if sKPjQkdn==0 then
Field.playerGetOut("StartPoint",Vec(3,0,6),3,0.3)Exit_FieldAndChange("MainStreet","CemeteryPoint")end end)end
if Quest.stateStep(nsgji,4)then
Field.setActiveWithTag("HOgasawara",false)Field.setActiveWithTag("MKiryu",false)
Field.setActive("CSugahara",false)Field.setActiveWithTag("Narvy",false)
Field.setActiveWithTag("CSkopovskaya",false)Field.setActiveWithTag("IRedmayne",false)
HideMapDestinationIcon("SchoolRightBenchPoint")StartEvent(Step4)end
if Quest.stateStep(nsgji,5)then StartEvent(Exit_Clear)end
if Quest.stateCleard(nsgji)then StartEvent(Exit_World)end
if Quest.stateBathStep(nsgji)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(nsgji)Quest.refreshState()end
function Receive()
Field.setRouteWandererEnabled("CSugahara_Quest",false)local HHH9IlJp=Field.getPosition("Player")
local uYz2ryy4=Adv.characterAsync("RKayamori")local zVPRGDnG=Adv.characterAsync("CSugahara")
Field.startTalk("CSugahara_Quest",FaceToFaceMode.Auto,function()
Layout.show({uYz2ryy4,"110301"},{zVPRGDnG,"000101"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hey, what're you up?]],"VC_Quest_Lv1_CSugahara_Quest_00000_RKayamori")
Adv.talkWithFacial("090101",nil,zVPRGDnG,[[I'm simply out for a stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00001_CSugahara")local IKxw=Quest.receive(nsgji)
if IKxw==QuestWindow.Receive then
Transition.start()return function()Quest.refreshState()end else
Transition.start()
return function()
Field.cancelQuest("CSugahara_Quest",HHH9IlJp,false,function()
Field.setRouteWandererEnabled("CSugahara_Quest",true)bClTIa=true end)end end end)end
function Step1()Adv.fadeOut(0)
Field.setActiveWithTag("Gaya",false)Field.prepareEventCharacter("CSugahara_Quest")
Field.setRouteWandererEnabled("CSugahara_Quest",false)local w0=Adv.characterAsync("RKayamori")
local UgXzI_C=Adv.characterAsync("CSugahara")Field.turnToWait("Player",0,0)
Field.setPosition("CSugahara_Quest",Field.getByTargetPosition("Player",1,45,true))Sound.playBGM("SB0040")
Field.startTalk("CSugahara_Quest",FaceToFaceMode.Auto,function()
Transition.finish()Adv.fadeIn(0.5)
Layout.show({w0,"000301"},{UgXzI_C,"000101"})
Adv.talkWithFacial(nil,nil,w0,[[Just, like, a walk? Is that supposed to be fun?]],"VC_Quest_Lv1_CSugahara_Quest_00002_RKayamori")
Adv.talkWithFacial("090101",nil,UgXzI_C,[[There's nothing more fulfilling than exercising the freedom to display myself to the world, exactly as I am]],"VC_Quest_Lv1_CSugahara_Quest_00003_CSugahara")
Adv.talkWithFacial("000302",nil,w0,[[Ahhh. So like one of those marching bands you see in shopping districts.]],"VC_Quest_Lv1_CSugahara_Quest_00004_RKayamori")
Adv.talkWithFacial("290101",nil,UgXzI_C,[[How dare you compare me to <i>those</i> people!]],"VC_Quest_Lv1_CSugahara_Quest_00005_CSugahara")
Adv.talkWithFacial("000001",nil,w0,[[That's kind of rude to the performers.]],"VC_Quest_Lv1_CSugahara_Quest_00006_RKayamori")
Adv.talkWithFacial("070102",nil,UgXzI_C,[[Oh my, let me explain...]],"VC_Quest_Lv1_CSugahara_Quest_00007_CSugahara")Adv.act(w0,"000301")
Adv.talkWithFacial("090102",nil,UgXzI_C,[[What I garb myself in is a fashion known as "lolita." It's a very established style.]],"VC_Quest_Lv1_CSugahara_Quest_00008_CSugahara")
Adv.talkWithFacial("080301",nil,w0,[[Now that you mention it, even your uniform skirt looks different...]],"VC_Quest_Lv1_CSugahara_Quest_00009_RKayamori")
Adv.talkWithFacial("090102",nil,UgXzI_C,[[Precisely! It's fashion, you see.]],"VC_Quest_Lv1_CSugahara_Quest_00010_CSugahara")
Adv.talkWithFacial("170301",nil,w0,[[But aren't these combat outfits provided by the military? Are we even allowed to mess with them? Will that not impact their functionality?]],"VC_Quest_Lv1_CSugahara_Quest_00011_RKayamori")
Adv.talkWithFacial("090002",nil,UgXzI_C,[[Worry you not, I have confirmed that this degree of alteration will not affect combat functionality.]],"VC_Quest_Lv1_CSugahara_Quest_00012_CSugahara")
Adv.talkWithFacial("110301",nil,w0,[[Oh, cool. That explains why I see so many weird-looking outfits around here.]],"VC_Quest_Lv1_CSugahara_Quest_00013_RKayamori")
Adv.talkWithFacial("000101",nil,UgXzI_C,[[May I resume my stroll now?]],"VC_Quest_Lv1_CSugahara_Quest_00014_CSugahara")
Adv.talkWithFacial("110001",nil,w0,[[Yeah, but I wanna come too.]],"VC_Quest_Lv1_CSugahara_Quest_00015_RKayamori")
Adv.talkWithFacial("000101",nil,UgXzI_C,[[Whatever for?]],"VC_Quest_Lv1_CSugahara_Quest_00016_CSugahara")
Adv.talkWithFacial("110301",nil,w0,[[So we can bond more.]],"VC_Quest_Lv1_CSugahara_Quest_00017_RKayamori")Adv.actDelay(0,UgXzI_C,"000102")
Adv.actDelay(1,UgXzI_C,"070102")
Adv.actDelay(4,UgXzI_C,"090102",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Very well. I take that to mean you're interested in lolita fashion too?!]],"VC_Quest_Lv1_CSugahara_Quest_00018_CSugahara")
Adv.actDelay(0,UgXzI_C,"090102",AdvCharacterMouth.Close)
Adv.talkWithFacial("000002",nil,w0,[[Not even a little bit.]],"VC_Quest_Lv1_CSugahara_Quest_00019_RKayamori")
Adv.act(UgXzI_C,"030101",AdvCharacterMouth.Mouth01,0.4)Adv.act(w0,"080302")
Adv.playCutIn("CSugahara","Default","Anger","YOU GOT MY HOPES UP!!!","VC_Quest_Lv1_CSugahara_Quest_00020_CSugahara",1.5,350,
nil)
Adv.playCutIn("CSugahara","Default","Anger","I THOUGHT YOU WERE ONE OF US!!!","VC_Quest_Lv1_CSugahara_Quest_00021_CSugahara",1.5,350,nil)
Adv.playCutIn("CSugahara","Default","Anger","AHH! I GOT EXCITED FOR NOTHING!!!","VC_Quest_Lv1_CSugahara_Quest_00022_CSugahara",1.8,350,nil)
Adv.talkWithFacial("000301",nil,w0,[[Calm down.]],"VC_Quest_Lv1_CSugahara_Quest_00023_RKayamori")
Adv.talkWithFacial("070101",nil,UgXzI_C,[[Are you insinuating that I overreacted?]],"VC_Quest_Lv1_CSugahara_Quest_00024_CSugahara")
Adv.talkWithFacial("000302",nil,w0,[[You're no ordinary girl.]],"VC_Quest_Lv1_CSugahara_Quest_00025_RKayamori")
Adv.talkWithFacial("090002",nil,UgXzI_C,[[Those are words of praise for a lolita! I'll kindly take that as a compliment, thank you.]],"VC_Quest_Lv1_CSugahara_Quest_00026_CSugahara")
Adv.talkWithFacial("110301",nil,w0,[[So, I can go with you on your stroll, right?]],"VC_Quest_Lv1_CSugahara_Quest_00027_RKayamori")
Adv.talkWithFacial("090101",nil,UgXzI_C,[[Very well, let us be off. You may take the lead. Take me wherever you please.]],"VC_Quest_Lv1_CSugahara_Quest_00028_CSugahara")
Adv.talkWithFacial(nil,nil,w0,[[Verily, it shall be so.]],"VC_Quest_Lv1_CSugahara_Quest_00029_RKayamori")Transition.start()Layout.show()end)Wait(1)Sound.returnFieldBGM()
SetLocalFlag("会話順整理フラグ",0)Quest.clearStep(nsgji)Quest.refreshState()end;function Step2()Transition.start()
Exit_FieldAndChange("MainStreet","HeliportPoint",nil,function()
Quest.clearStep(nsgji)end)end
function Step3_TTojo()
local MLFLplLe=Adv.characterAsync("TTojo")local jwq=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest3",FaceToFaceMode.Auto,function()
Layout.show({MLFLplLe,"080203"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Did something happen?]],"VC_Quest_Lv1_CSugahara_Quest_00030_TTojo")Layout.show()Layout.show({jwq,"110201"})
Adv.talkWithFacial(
nil,nil,jwq,[[We are simply partaking in a lovely stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00031_RKayamori")Layout.show()
Layout.show({MLFLplLe,"000201"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Alright, then.]],"VC_Quest_Lv1_CSugahara_Quest_00032_TTojo")Transition.start()Layout.show()
IncLocalFlag("会話順整理フラグ")Quest.refreshState()end)end
function Step3_TKunimi()local kw3ei0a=Adv.characterAsync("TKunimi")
local EspneS5=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({kw3ei0a,"000201"})
Adv.talkWithFacial("080201",nil,kw3ei0a,[[What is it, Ruka? Do you need some help?]],"VC_Quest_Lv1_CSugahara_Quest_00033_TKunimi")Layout.show()
Layout.show({EspneS5,"110201"})
Adv.talkWithFacial(nil,nil,EspneS5,[[We are simply partaking in a lovely stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00031_RKayamori")Layout.show()
Layout.show({kw3ei0a,"000201"})
Adv.talkWithFacial("040201",nil,kw3ei0a,[[A...stroll?]],"VC_Quest_Lv1_CSugahara_Quest_00035_TKunimi")Transition.start()Layout.show()
IncLocalFlag("会話順整理フラグ")Quest.refreshState()end)end
function Step3_KAsakura()local LZeg0=Adv.characterAsync("KAsakura")
local OJZ=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({LZeg0,"000201"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Hi, Ruka. What's up?]],"VC_Quest_Lv1_CSugahara_Quest_00036_KAsakura")Layout.show()Layout.show({OJZ,"110201"})
Adv.talkWithFacial(
nil,nil,OJZ,[[We are simply partaking in a lovely stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00031_RKayamori")Layout.show()Layout.show({LZeg0,"050201"})
Adv.talkWithFacial(
nil,nil,LZeg0,[[Alright, if you say so.]],"VC_Quest_Lv1_CSugahara_Quest_00038_KAsakura")Transition.start()Layout.show()
IncLocalFlag("会話順整理フラグ")Quest.refreshState()end)end
function Step3_MAikawa()local nmuj=Adv.characterAsync("RKayamori")
local bP=Adv.characterAsync("MAikawa")
Field.changeAnimation("MAikawa_Quest4","FieldIdle")
Field.startTalk("MAikawa_Quest4",FaceToFaceMode.Auto,function()
Layout.show({bP,"080201"})
Adv.talkWithFacial(nil,nil,bP,[[What? We bein' attacked or somethin'?]],"VC_Quest_Lv1_CSugahara_Quest_00039_MAikawa")Layout.show()Layout.show({nmuj,"110201"})
Adv.talkWithFacial(
nil,nil,nmuj,[[We are simply partaking in a lovely stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00031_RKayamori")Layout.show()Layout.show({bP,"150201"})
Adv.talkWithFacial(
nil,nil,bP,[[What the heck is up with ya?]],"VC_Quest_Lv1_CSugahara_Quest_00041_MAikawa")Transition.start()Layout.show()
IncLocalFlag("会話順整理フラグ")
Field.changeAnimation("MAikawa_Quest4","FieldUnique01")Quest.refreshState()end)end
function Step3_YIzumi()local b4IqQW=Adv.characterAsync("RKayamori")
local iuGb=Adv.characterAsync("YIzumi")local koZU=Field.getWaypointPosition("SquarePoint")
Field.startTalk("YIzumi_Quest2",FaceToFaceMode.Face,function()
Layout.show({iuGb,"080201"})
Adv.talkWithFacial(nil,nil,iuGb,[[What's up? Is it an emergency?]],"VC_Quest_Lv1_CSugahara_Quest_00042_YIzumi")Layout.show({b4IqQW,"110201"})
Adv.talkWithFacial(nil,nil,b4IqQW,[[We are simply partaking in a lovely stroll.]],"VC_Quest_Lv1_CSugahara_Quest_00031_RKayamori")Layout.show()Layout.show({iuGb,"060201"})
Adv.talkWithFacial(
nil,nil,iuGb,[[You've finally lost it, haven't you?]],"VC_Quest_Lv1_CSugahara_Quest_00044_YIzumi")Transition.start()Layout.show()
Field.turnTo("Player",180,0)Wait(0.5)Field.resetPosition("SquarePoint")
Field.initPlayerPosition(koZU)Quest.clearStep(nsgji)end)Wait(1)Quest.refreshState()end
function Step4()Adv.fadeOut(0)local C=Adv.characterAsync("RKayamori")
local nmJGp_=Adv.characterAsync("CSugahara")
local h0v3PIV=Field.getWaypointPosition("SquarePoint")+Vec(-1,0,0)
local Uc=Field.getWaypointPosition("SquarePoint")+Vec(-1,0,2)local JSkUQL=Field.getWaypointPosition("SquarePoint")
Field.setActiveWithTag("Gaya",false)Field.turnTo("Player",180,0)Wait(0.5)
Field.resetPosition("SquarePoint")Field.initPlayerPosition(JSkUQL)
Field.moveTo("Player",h0v3PIV,0)Field.moveTo("Follower/CSugahara",Uc,0)
Field.setFollowerAutoMoveEnabled(false)Field.changeAnimation("Player","FieldRun")
Field.changeAnimation("Follower/CSugahara","FieldRun")Field.waitTaskKey("Player")
Field.waitTaskKey("Follower/CSugahara")Transition.finish()
Field.moveBy("Player",Vec(0,0,-5),1.3)Field.moveCameraTarget("Player",1.3)Field.moveBy("Follower/CSugahara",Vec(0,0,
-5.5),1.5)
Adv.fadeIn(0.5)Wait(1.5)Field.waitTaskKey("Follower/CSugahara")
Field.startTalk("Follower/CSugahara",FaceToFaceMode.Auto,function()
Layout.show({C,"110301"},{nmJGp_,"030001"})
Adv.talkWithFacial(nil,nil,C,[[I actually had a lot of fun. How about you?]],"VC_Quest_Lv1_CSugahara_Quest_00045_RKayamori")Adv.act(C,"080301")
Adv.playCutIn("CSugahara","Default","Anger",[[HOW WAS THAT A STROLL?!!!]],"VC_Quest_Lv1_CSugahara_Quest_00046_CSugahara",1.8,350,
nil)
Adv.talkWithFacial("080301",nil,C,[[Huh?]],"VC_Quest_Lv1_CSugahara_Quest_00047_RKayamori")
Adv.playCutIn("CSugahara","Default","Anger","WHY WERE WE RUNNING THE ENTIRE TIME?\nA STROLL SHOULD BE GRACEFUL!!!\nMY OUTFIT WAS TOTALLY WASTED!!!","VC_Quest_Lv1_CSugahara_Quest_00048_CSugahara",1.8,350,
nil)
Adv.talkWithFacial("000302",nil,C,[[What do you want me to do about it?]],"VC_Quest_Lv1_CSugahara_Quest_00049_RKayamori")
Adv.act(nmJGp_,"030101",AdvCharacterMouth.Mouth01,0.4)
Field.setCameraFov(Field.getCameraFov()*0.8,0.3,1,0.2)Adv.scale(C,1.1,0.2,1,1)
Adv.scale(nmJGp_,1.1,0.2,1,1)
Routine(function()
local PTUZ2v=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.3)Adv.remove(PTUZ2v)end)
Adv.playCutIn("CSugahara","Default","Anger","YOU'RE THE ONE AT FAULT HERE!!!","VC_Quest_Lv1_CSugahara_Quest_00050_CSugahara",1.8,350,nil)
Field.setCameraFov(Field.getCameraFov()*1.25,0.3,1,0.2)Adv.scale(C,1,0.2,1,1)Adv.scale(nmJGp_,1,0.2,1,1)
Adv.actDelay(1.45,nmJGp_,"000101")
Adv.actDelay(2.10,nmJGp_,"290101",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,nmJGp_,[[WHY DO YOU THINK WE GOT ASKED "What's the rush?" BY EVERYONE WE PASSED BY?!]],"VC_Quest_Lv1_CSugahara_Quest_00051_CSugahara")
Adv.actDelay(0,nmJGp_,"290101",AdvCharacterMouth.Close)
Adv.talkWithFacial("290101",nil,nmJGp_,[[Some of them seemed to think we had lost our minds completely!]],"VC_Quest_Lv1_CSugahara_Quest_00052_CSugahara")
Adv.talkWithFacial("000302",nil,C,[[What do you want me to do about it?]],"VC_Quest_Lv1_CSugahara_Quest_00053_RKayamori")
Adv.talkWithFacial("290103",nil,nmJGp_,[[It's your fault!!! How dare you drag me into your absurdity?!]],"VC_Quest_Lv1_CSugahara_Quest_00054_CSugahara")
Adv.talkWithFacial("110001",nil,C,[[Megumin and Yukkie can be a little harsh with their jokes.]],"VC_Quest_Lv1_CSugahara_Quest_00055_RKayamori")
Field.setCameraFov(Field.getCameraFov()*0.8,0.3,1,0.2)Adv.scale(C,1.1,0.2,1,1)
Adv.scale(nmJGp_,1.1,0.2,1,1)
Routine(function()
local qlZeO3Pr=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.3)Adv.remove(qlZeO3Pr)end)
Adv.playCutIn("CSugahara","Default","Anger","They were legitimately concerned!!!","VC_Quest_Lv1_CSugahara_Quest_00056_CSugahara",1.8,350,nil)
Field.setCameraFov(Field.getCameraFov()*1.25,0.3,1,0.2)Adv.scale(C,1,0.2,1,1)Adv.scale(nmJGp_,1,0.2,1,1)
Adv.talkWithFacial("000302",
nil,C,[[You're a real roller coaster of emotions, aren't you, Suga?]],"VC_Quest_Lv1_CSugahara_Quest_00057_RKayamori")
Adv.talkWithFacial("290101",nil,nmJGp_,[[Huh?! Is it that strange to witness a lolita going berserk?! I bet it is! Lolitas are known for their elegance and decorum!]],"VC_Quest_Lv1_CSugahara_Quest_00058_CSugahara")
Adv.talkWithFacial(nil,nil,nmJGp_,[[Just remember this! Even lolitas can get pissed!!!]],"VC_Quest_Lv1_CSugahara_Quest_00059_CSugahara")
Adv.talkWithFacial(nil,nil,C,[[I'm totally lost, but sure.]],"VC_Quest_Lv1_CSugahara_Quest_00060_RKayamori")
Adv.talkWithFacial("290003",nil,nmJGp_,[[You little—!!!]],"VC_Quest_Lv1_CSugahara_Quest_00061_CSugahara")Adv.fadeOutWithShield(1)end)Field.setFollowerAutoMoveEnabled(true)
Quest.clearStep(nsgji)Quest.refreshState()end
function BathEvent()
local fG9zS=Bath.startBathTimeEvent("CSugahara",BathInviteMode.Active,function(WiXG,QgyWztK)
Adv.talkWithFacial(nil,nil,WiXG,[[(Maybe I should invite Suga to join me for a soak.)]],"VC_Quest_00207_v002_RKayamori")
local Oo6ecUO=Bath.BathQuestion("CSugahara",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,WiXG,[[Hey Suga, wanna go to the baths with me?]],"VC_Quest_00208_v002_RKayamori")
Adv.talkWithFacial(nil,nil,QgyWztK,[[Certainly. Allow me to demonstrate that even without the clothes, my heart remains fully clad in lolita.]],"VC_Quest_00209_v002_CSugahara")
Adv.talkWithFacial(nil,nil,WiXG,[[Not sure what you mean by that, but let's get going!]],"VC_Quest_00210_v002_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,WiXG,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return Oo6ecUO end)
if fG9zS==0 then
Bath.startBathTimeNovel("CSugahara",nil,"Wash",function(b6SL0yka,hEk,E8o,TdqFo)
Sound.play("AS_Echo_HandTub")Wait(2)
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Wow, Suga, you're so slim!]],"VC_Quest_Lv1_CSugahara_Quest_00065_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[You may be surprised to know that I work quite hard to maintain a figure suitable for a lolita.]],"VC_Quest_Lv1_CSugahara_Quest_00066_CSugahara")
Adv.talkWithFacial(nil,nil,hEk,[[But I'm starting to look more rugged with all this muscle recently. It's concerning.]],"VC_Quest_Lv1_CSugahara_Quest_00067_CSugahara")Wait(0.5)Sound.play("AS_Wash_Bath")Wait(2)
Adv.talkWithFacial(nil,nil,hEk,[[By the way, what is this "Suga" you keep saying?]],"VC_Quest_Lv1_CSugahara_Quest_00068_CSugahara")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Suga's your name, Suga.]],"VC_Quest_Lv1_CSugahara_Quest_00069_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[You've been referring to <i>me</i> that way?! Hardly a befitting name for a lolita...]],"VC_Quest_00212_v002_CSugahara")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[I think it's a pretty good balance with your salty attitude.]],"VC_Quest_Lv1_CSugahara_Quest_00071_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[And whose fault is it that I get salty?!]],"VC_Quest_Lv1_CSugahara_Quest_00072_CSugahara")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Miss Kayamori's.]],"VC_Quest_Lv1_CSugahara_Quest_00073_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[If you're aware of it, you could at least endeavor to choose your words more carefully.]],"VC_Quest_Lv1_CSugahara_Quest_00074_CSugahara")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[But you're so funny when you're salty, Suga!]],"VC_Quest_Lv1_CSugahara_Quest_00075_RKayamori")
Adv.talkWithFacial(nil,nil,hEk,[[How dare you make a lolita expend unnecessary energy?!]],"VC_Quest_Lv1_CSugahara_Quest_00076_CSugahara")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[See, isn't this funny?]],"VC_Quest_Lv1_CSugahara_Quest_00077_RKayamori")Sound.play("AS_Wash_Bath_Hard")
Adv.talkWithFacial(nil,nil,hEk,[[You little—!!!]],"VC_Quest_Lv1_CSugahara_Quest_00078_CSugahara")end)end;Exit_World()end