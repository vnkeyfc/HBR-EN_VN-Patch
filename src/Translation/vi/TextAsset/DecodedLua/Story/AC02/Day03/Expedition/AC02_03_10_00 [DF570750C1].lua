local rDzL7SVO="Event"..WorldLabel()local BW0WFP;local X8;local JQT;function preload()
ExEventScene("AC02_Exp001_001","Area10","Assets/Lua/Story/AC02/Day03/Expedition/Expedition_AC02_Exp001_001_Area10.unity")end
function init()
Field.setCutInGroupSetting("AC02_Day03",35,true)Expedition.setTitle("Ariake","  ")refresh()end
function refresh()Sound.playBGM("SB0008")
WorldEndButtonEvent(Retire,true)X8=FieldLabel()JQT=AreaName()
Expedition.passAllRoute()Expedition.unlockField("AC02_Exp001_001")
Expedition.openPlacement("TargetPoint.AC02_Exp001_001_Placement.Area10.01")Sound.playENV("EN_Wind_Breeze_Loop")
local AtYtR=GetWorldEventStep(rDzL7SVO)
if AtYtR==0 then
StartEvent_NextWorldEventStep(rDzL7SVO,StartWorld)elseif AtYtR==1 then
Field.setEncountLabel("RandomEncount.AC02_01")Field.setEncountRange(120,180)if JQT=="Area10"then
ReachEvent("BlockerGoalPoint",StoryInGoal)end end end
function Retire()
local ND2BCh3=UI.showMessageDialog([[Suspend the event and return to the home screen?]],1)if ND2BCh3 ==Dialog.OK then Sound.stopBGM(1)
Transition.start()Exit_BadEnd()end end
function ShowFieldTitle()BW0WFP=FieldLabel()local IODBg;local YRDu;if BW0WFP=="AC02_Exp001_001"then
IODBg="Ariake"YRDu="  "end
UI.showLocationTitle(IODBg,YRDu)end
function StartWorld()Adv.fadeOut(0.5)
local CWRiP=Adv.characterAsync("IMinase")local LB0A=Adv.characterAsync("SMinase")
local dl=Adv.characterAsync("SHiguchi")local sKPjQkdn=Adv.characterAsync("KHiiragi")
local HHH9IlJp=Adv.loadBGAsync("Background/Ariake/Ariake_Night")
Field.startNovel(function()
Layout.createStageZoomOut(HHH9IlJp,Position.BG_CENTER,3)
Layout.show({CWRiP,"270201"},{sKPjQkdn,"070201"})Transition.finish()Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,CWRiP,[[This is like...really quiet.]],"VC_AC02_00747_IMinase")
Adv.talkWithFacial("070103",nil,sKPjQkdn,[[I know it's night, but there's an eerie silence to this place.]],"VC_AC02_00748_KHiiragi")
Adv.talkWithFacial("350301",nil,CWRiP,[[It's extra creepy when you say it, you know...]],"VC_AC02_00749_IMinase")Adv.act(sKPjQkdn,"0901")
Adv.actDelay(4.3,sKPjQkdn,"090301")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Oh, don't worry. You won't do anything to everyone. Right?]],"VC_AC02_00750_KHiiragi")Adv.actDelay(0,sKPjQkdn,"090301")
Layout.createStageZoomIn(HHH9IlJp,nil,0.3)Layout.show({CWRiP,"290301"},sKPjQkdn)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,-350,positionY)
Adv.playCutIn("IMinase","Default","Anger",[[Hey, who are you talking to?!\nWe're over here!]],"VC_AC02_00751_IMinase",2,-350)
Layout.createStageFixBg(HHH9IlJp,Position.BG_CENTER)
Adv.act(LB0A,"060203",AdvCharacterMouth.Close,0)Layout.show({LB0A})
Adv.talkWithFacial(nil,nil,LB0A,[[There's no use worrying about that stuff meow. Let's just complete the mission.]],"VC_AC02_00752_SMinase")Layout.createStageZoomIn(HHH9IlJp,nil,0.3)
Layout.show({CWRiP,"290202"},{sKPjQkdn,"000202"})
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.8,-350,positionY)
Adv.playCutIn("IMinase","Default","Anger",[[Yeah, but I can't help it!]],"VC_AC02_00753_IMinase",2,-350)Layout.createStageZoomOut(HHH9IlJp,nil,0.3)
Layout.show(CWRiP,sKPjQkdn)
Adv.talkWithFacial("010103",nil,sKPjQkdn,[[I hope that she'll be happy to receive our charm.]],"VC_AC02_00754_KHiiragi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_RIGHT)Layout.show({dl,"000001"})
Adv.talkWithFacial(nil,nil,dl,[[Anything would make Aoi happy. She's simple-minded.]],"VC_AC02_00755_SHiguchi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_CENTER)Layout.show({CWRiP,"030203"})
Adv.talkWithFacial(nil,nil,CWRiP,[[That's how you see Aoi, huh...]],"VC_AC02_00756_IMinase")
Adv.act(LB0A,"060103",AdvCharacterMouth.Close,0)Layout.show(CWRiP,LB0A)Adv.act(CWRiP,"0303")
Adv.talkWithFacial(
nil,nil,LB0A,[[Come on, let's get going.]],"VC_AC02_00757_SMinase")Transition.start()end)Layout.show()Adv.remove(HHH9IlJp)
Transition.finish()ShowFieldTitle()end
function StoryInGoal()
local uYz2ryy4=UI.showMessageDialog([[Continuing beyond this point will cause the story to progress.\nProceed?]],1)
if uYz2ryy4 ==Dialog.CANCEL then
Field.moveToWaypointWait("Player","SavePoint_2")Field.resetPosition()Field.cancelAutoMove()else
Field.moveBy("Player",Vec(3),3)Wait(1)Adv.fadeOut(1,nil,AdvLayer.BG)
Field.stopTaskKey("Player")
Field.setActive("TargetPoint.AC02_Exp001_001_Placement.Area10.01",false)EmptyEvent("SMinase_1")EmptyEvent("KHiiragi_1")
EmptyEvent("SHiguchi_1")EmptyEvent("Byakko_1")Expedition.showResult()
Field.setCameraCompositionExWithListener(Vec(9.200,1.530,
-6.390),Vec(3.530,18.900,0.000),30.50)Field.resetPosition("BlockerGoalPoint")Wait(0.5)
Sound.playBGM(AdvBGM.Suspense1,1,1)Wait(0.5)Adv.fadeIn(0,nil,AdvLayer.BG)Field.setPosition("Player",Vec(9,0,
-2))Wait(0.5)
Field.moveBy("Player",Vec(2),2)Field.moveByCharaDir("SMinase_1",3)
Transition.finish()Field.waitTaskKey("Player")
local zVPRGDnG=Adv.characterAsync("IMinase")local IKxw=Adv.characterAsync("SMinase")
local w0=Adv.characterAsync("SHiguchi")local UgXzI_C=Adv.characterAsync("KHiiragi")
local MLFLplLe=Adv.characterAsync("Byakko")
Field.showAdvHudWrapper(function()Layout.show({IKxw,"090002"})
Adv.talkWithFacial(nil,
nil,IKxw,[[These Cancers are way too weak, mew.]],"VC_AC02_00758_SMinase")Layout.show({UgXzI_C,"080203"})
Adv.talkWithFacial(nil,nil,UgXzI_C,[[S-Sumomo, come on, don't let your guard down.]],"VC_AC02_00759_KHiiragi")Layout.show({zVPRGDnG,"090201"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Well, they're a bit of a letdown. They only look dangerous on the outside.]],"VC_AC02_00760_IMinase")Layout.show()
Field.setFootstepReachRange("Byakko_1",100,100)Field.moveByCharaDir("Byakko_1",5,1)
Field.waitTaskKey("Byakko_1")
Field.turnToWait("Byakko_1",120,0.2,AnimationMode.None)
Field.setLookAtTarget("KHiiragi_1","Byakko_1",0.3)Field.setLookAtTarget("Player","Byakko_1",0.3)
Field.setLookAtTarget("SMinase_1","Byakko_1",0.3)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.2,0)
Field.setCameraCompositionExWithListener(Vec(8.610,1.470,-6.660),Vec(3.210,18.900,0.000),13.500,0.2)local jwq=Adv.loadCutIn("Byakko","Default","Anger")
Field.changeAnimation("Byakko_1","FieldUnique02",1.2)Wait(0.5)
Adv.showCutIn(jwq,[[Grawrrr!]],"VC_Jamaisvu_00025_v001_Byakko",1.5,0,nil,TalkVoiceType.Bubble)Wait(2)
Adv.talkWithIcon("KHiiragi",[[Even Byakko's having fun!]],"VC_AC02_00762_KHiiragi")
Adv.talkWithIcon("Byakko",[[Vrar...]],"VC_Quest_01080_v003_Byakko")
Field.setCameraCompositionExWithListener(Vec(9.200,1.530,-6.390),Vec(3.530,18.900,0.000),30.50,1)Field.disableLookAt("KHiiragi_1")
Field.disableLookAt("Player")Field.disableLookAt("SMinase_1")Wait(1)
Layout.show({zVPRGDnG,"080201"},{IKxw,"0900"})Adv.actDelay(1.5,zVPRGDnG,"0102")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Huh? Isn't that an ivy sticking out of the ground?]],"VC_AC02_00764_IMinase")
Adv.talkWithFacial("000201",nil,IKxw,[[Mew?]],"VC_AC02_00765_SMinase")Layout.show()
Field.setLookAtTargetWait("SHiguchi_1","Enemy",0.3)Wait(0.3)Layout.show({w0,"000002"})
Adv.talkWithFacial(nil,nil,w0,[[Wait. We better not go any further.]],"VC_AC02_00766_SHiguchi")Layout.show({zVPRGDnG,"030201"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Why? We finally found what we were looking for.]],"VC_AC02_00767_IMinase")Layout.show()Sound.stopBGM(0.5)
Field.setLookAtTarget("KHiiragi_1","Enemy",0.6)Wait(1)
Field.turnToTarget("KHiiragi_1","Enemy",0.3)
Adv.playCutInWithAct(UgXzI_C,"070201","KHiiragi","Default","Panic",[[Ichigo, there's a Cancer at 9 o'clock!]],"VC_AC02_00768_KHiiragi")Field.turnToTarget("SMinase_1","Enemy",0.3)
Wait(0.2)Field.turnToTarget("Byakko_1","Enemy",0.3)
Field.turnToTarget("Player","Enemy",0.3)
Adv.act(IKxw,"060203",AdvCharacterMouth.Close,0)Layout.show({zVPRGDnG,"030201"},IKxw)
Adv.talkWithFacial(
nil,nil,zVPRGDnG,[[So what? It's probably some small fry, right?]],"VC_AC02_00769_IMinase")
Adv.talkWithFacial(nil,"060101",IKxw,[[No, Sis, that's no small fry...]],"VC_AC02_00770_SMinase")Adv.fadeOut(1)EmptyEvent("Enemy")local kw3ei0a=false
Routine(function()while true do
Wait(1.3)Sound.play("AS_AriakeBoss_Move")Wait(1.3)if kw3ei0a==true then
break end end end)Layout.createStage()Layout.show()Wait(1)
Field.setCameraCompositionExWithListener(Vec(29.500,3.700,0.000),Vec(0.000,0.000,0.000),27.00)Wait(0.1)
Field.setCameraCompositionExWithListener(Vec(29.500,3.700,0.000),Vec(348.000,0.000,0.000),27.00,6)Wait(0.3)Sound.playBGM(AdvBGM.Danger1,0,0)
Adv.fadeIn(6)Field.waitCameraComposition()kw3ei0a=true
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,0)
Field.setCameraCompositionExWithListenerWait(Vec(29.500,3.700,0.000),Vec(348.000,0.000,0.000),21.00,0.2)
Adv.talkWithIcon("IMinase",[[Wha?! T-That thing's enormous...]],"VC_AC02_00771_IMinase")
Adv.talkWithIcon("SHiguchi",[[Interesting. This is the perfect opponent to let us experience death.]],"VC_AC02_00772_SHiguchi")
Adv.talkWithIcon("KHiiragi",[[W-Wait! Let's step back and observe the situation!]],"VC_AC02_00773_KHiiragi")Transition.start()end)Expedition.trueEnd()Exit_World()end end