local w0qyLbH="Quest_Lv1_MiOhshima"function init()
Log("Called Quest_Lv1_MiOhshima")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("MiOhshima_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("MiOhshima_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then
Field.createFollower("MiOhshima")Field.setActiveWithTag("Gaya",false)
Field.setActiveWithTag("Narvy",false)StartEvent(Step2)end;if Quest.stateStep(w0qyLbH,3)then
Field.setActiveWithTag("Gaya",false)Field.setActiveWithTag("Narvy",false)
StartEvent(Step3)end
if
Quest.stateStep(w0qyLbH,4)then Field.setActiveWithTag("Gaya",false)
Field.setActiveWithTag("Narvy",false)StartEvent(Step4)end;if Quest.stateStep(w0qyLbH,5)then
Field.setActiveWithTag("Gaya",false)Field.setActiveWithTag("Narvy",false)
StartEvent(Step5)end
if
Quest.stateStep(w0qyLbH,6)then Field.setActiveWithTag("Gaya",false)
Field.setActiveWithTag("Narvy",false)Field.setActiveWithTag("Mob",false)
StartEvent(Step6)end
if Quest.stateStep(w0qyLbH,7)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()Adv.fadeOut(0.5)
local nsgji=Adv.characterAsync("MiOhshima")local bClTIa=Adv.characterAsync("RKayamori")local rDzL7SVO=false
local BW0WFP=Vec(-0.93,0,-1)Field.setPosition("Player",BW0WFP)
Field.turnToTarget("Player","MiOhshima_Quest",0)
Field.changeAnimation("MiOhshima_Quest","FieldUnique01",0)Field.setActiveWithTag("Gaya",false)
Field.setActiveWithTag("Narvy",false)Field.setActiveWithTag("Mob",false)
Field.startEvent()Sound.playEx("AS_Skateboard_Set")
Field.setCameraCompositionEx(Vec(3.960,6.8,-
1.410),Vec(0.000,270.000,0.000),26.40,0)Adv.waitAsyncInstanceAll()Layout.createStage()
Adv.fadeIn(0.5)
local X8=Adv.bubbleAnger(nsgji,[[Outta the way! Comin' through!]],0,Vec(0,100),"VC_Quest_Lv1_MiOhshima_Quest_00000_MiOhshima")Wait(0.5)Adv.fadeOut(0.5)Wait(0.5)
Field.setCameraCompositionEx(Vec(3.210,1.120,-1.410),Vec(0.000,270.000,0.000),26.40,0)Field.waitTaskKey("CameraComposition")
Adv.fadeIn(0.5)local JQT=Sound.playEx("AS_Skateboard_loop")
Field.moveToAct("MiOhshima_Quest",
Field.getPosition("Player")+Vec(-1,0,-1.3),1,"FieldUnique01",nil)Wait(1)Sound.stop(JQT)
Sound.playEx("AS_Skateboard_Stop")
local AtYtR=Field.changeAnimation("MiOhshima_Quest","FieldUnique03",1)Field.waitTask(AtYtR)
Field.turnToTarget("Player","MiOhshima_Quest",0.5)Wait(1.5)Layout.show({bClTIa,"000201"})
Adv.talkWithFacial(
nil,nil,bClTIa,[[Oh, I hear somebody's voice gettin' closer on a skateboard... Is that Minorin?]],"VC_Quest_Lv1_MiOhshima_Quest_00001_RKayamori")Layout.show()
Field.turnToFace("MiOhshima_Quest","Player",FaceToFaceMode.Auto,0.5)Wait(0.5)Layout.show({nsgji,"000201"})
Adv.actDelay(1.6,nsgji,"010201")
Adv.talkWithFacial(nil,nil,nsgji,[[Oh, Kayamori! Hey!]],"VC_Quest_Lv1_MiOhshima_Quest_00002_MiOhshima",nil,nil,AdvCharacterMouth.Mouth03)
Adv.actDelay(0,nsgji,"010201",AdvCharacterMouth.Mouth03)Layout.show()
Layout.show({bClTIa,"110201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[You doing deliveries on your skateboard again?]],"VC_Quest_Lv1_MiOhshima_Quest_00003_RKayamori")Layout.show()Layout.show({nsgji,"000202"})
Adv.talkWithFacial(
nil,nil,nsgji,[[Yup! I'm on my way to grab another shipment. It's been so busy today!]],"VC_Quest_Lv1_MiOhshima_Quest_00004_MiOhshima")local ND2BCh3=Quest.receive(w0qyLbH)
if ND2BCh3 ==QuestWindow.Receive then
Transition.start()rDzL7SVO=true else Transition.start()
Field.cancelQuest("MiOhshima_Quest",BW0WFP,nil,function()
Field.setPosition("MiOhshima_Quest",Vec(
-5.34,-0.16,0.06))
Field.changeAnimation("MiOhshima_Quest","FieldIdle",0)Field.getRotation("MiOhshima_Quest")
Field.finishEvent()end)end;if rDzL7SVO then Quest.refreshState()end end
function Step1()Adv.fadeOut(0)
local IODBg=Adv.characterAsync("MiOhshima")local YRDu=Adv.characterAsync("RKayamori")
local CWRiP=Vec(-0.93,0,-1)Field.prepareEventCharacter("MiOhshima_Quest")
Field.startEvent()Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setCameraCompositionEx(Vec(3.210,1.120,
-1.410),Vec(0.000,270.000,0.000),26.40,0)Field.setPosition("Player",CWRiP)
Field.turnToTarget("Player","MiOhshima_Quest",0)
Field.setPosition("MiOhshima_Quest",Field.getPosition("Player")+Vec(-1,0,-1.3),1,"FieldUnique01")Field.turnToTarget("MiOhshima_Quest","Player",0)
Field.turnToTarget("Player","MiOhshima_Quest",0)Layout.show()Sound.playBGM(AdvBGM.Gag2)
Layout.show({YRDu,"000202"})Adv.fadeIn(0.5)Transition.finish()
Adv.talkWithFacial(nil,nil,YRDu,[[Sounds pretty tough. Do you need a hand?]],"VC_Quest_Lv1_MiOhshima_Quest_00005_RKayamori")Layout.show()
Layout.show({YRDu,"000302"},{IODBg,"080103"})
Adv.talkWithFacial(nil,nil,IODBg,[[From you? I'd appreciate the help, but...can you keep up with my pace?]],"VC_Quest_Lv1_MiOhshima_Quest_00006_MiOhshima")
Adv.talkWithFacial("110302",nil,YRDu,[[Leave it to me!]],"VC_Quest_Lv1_MiOhshima_Quest_00007_RKayamori")
Adv.talkWithFacial("050003",nil,IODBg,[[Well then, I guess you can tag along!]],"VC_Quest_Lv1_MiOhshima_Quest_00008_MiOhshima",nil,nil,AdvCharacterMouth.Mouth02)
Adv.talkWithFacial("010101",nil,IODBg,[[We're going to the munitions store first. Then we gotta deliver the goods to the dorms.]],"VC_Quest_Lv1_MiOhshima_Quest_00009_MiOhshima",
nil,nil,AdvCharacterMouth.Mouth02)Layout.show()Layout.show({YRDu,"110001"})
Adv.talkWithFacial(
nil,nil,YRDu,[[Roger!]],"VC_Quest_Lv1_MiOhshima_Quest_00010_RKayamori")Layout.show()Layout.show({IODBg,"010201"})
Adv.talkWithFacial(
nil,nil,IODBg,[[Okay, let's go!]],"VC_Quest_Lv1_MiOhshima_Quest_00011_MiOhshima")Layout.show()Adv.fadeOut(0.5)Wait(0.5)
Field.disableLookAt("MiOhshima_Quest",0)Field.turnBy("MiOhshima_Quest",180,0)
Field.changeAnimation("MiOhshima_Quest","FieldUnique01",1)Sound.playEx("AS_Skateboard_Set")Adv.fadeIn(0.5)
Wait(1)
local LB0A=Field.changeAnimation("MiOhshima_Quest","FieldUnique04",1)Wait(0.8)local dl=Sound.playEx("AS_Skateboard_loop")
Field.turnToPosition("MiOhshima_Quest",
Field.getPosition("MiOhshima_Quest")+Vec(0,0,-4),0.4,AnimationMode.None)
Field.moveTo("MiOhshima_Quest",Field.getPosition("MiOhshima_Quest")+Vec(0,0,-4),0.5,AnimationMode.None)Field.waitTask(LB0A)
Field.changeAnimation("MiOhshima_Quest","FieldUnique01",1)Wait(0.5)Sound.stop(dl)
Field.turnToTargetWait("Player","MiOhshima_Quest",0.3)Layout.show({YRDu,"080201"})
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(YRDu,0.5,0.1)end)
Adv.playCutIn("RKayamori","Default","Surprise","So fast!","VC_Quest_Lv1_MiOhshima_Quest_00012_RKayamori",3,0,nil)Layout.show()
local sKPjQkdn=Adv.bubbleAnger(IODBg,[[Outta the way! Comin' through!]],9,Vec(-300,150),"VC_Quest_Lv1_MiOhshima_Quest_00013_MiOhshima")Transition.start()Field.finishEvent(0)
Exit_FieldAndChange("FriendStreet","ShopPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local HHH9IlJp=Adv.characterAsync("MiOhshima")local uYz2ryy4=Adv.characterAsync("RKayamori")
Field.setFollowerAutoMoveEnabled(false)
Field.setPosition("Follower/MiOhshima",Vec(37.5,-6.1,-15))
Field.setPosition("Player",Field.getPosition("Follower/MiOhshima")+Vec(-6,0,0))Field.turnTo("Follower/MiOhshima",-169.315,0)
Field.startEvent()Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setCameraCompositionEx(Vec(36.900,
-5.050,-19.200),Vec(0.000,0.000,0.000),30.00,0)Adv.fadeIn(0.5)
Field.moveToAct("Player",
Field.getPosition("Follower/MiOhshima")+Vec(-1,0,0),1,"FieldRun",nil,true)
Field.turnToTarget("Follower/MiOhshima","Player",0.4)Wait(1.5)Layout.show({HHH9IlJp,"000201"})
Adv.talkWithFacial(
nil,nil,HHH9IlJp,[[Oh, you made it, Kayamori! You're so slow.]],"VC_Quest_Lv1_MiOhshima_Quest_00015_MiOhshima")Layout.show()
Layout.show({uYz2ryy4,"150201"})
Routine(function()Adv.moveBy(uYz2ryy4,Vec(0,10),0.5)Wait(0.5)Adv.moveBy(uYz2ryy4,Vec(0,
-10),0.5)Wait(0.5)
Adv.moveBy(uYz2ryy4,Vec(0,10),0.5)Wait(0.5)Adv.moveBy(uYz2ryy4,Vec(0,-10),0.5)
Wait(0.5)end)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[*pant* *pant* I...finally made it...]],"VC_Quest_Lv1_MiOhshima_Quest_00014_RKayamori")Layout.show()Wait(0.5)
Layout.show({HHH9IlJp,"010201"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[I'm done picking up the goods already, so I'm gonna go deliver them!]],"VC_Quest_Lv1_MiOhshima_Quest_00017_MiOhshima")Layout.show()
Layout.show({uYz2ryy4,"080202"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[What, already?!]],"VC_Quest_Lv1_MiOhshima_Quest_00018_RKayamori")Layout.show()
Layout.show({HHH9IlJp,"010202"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Alright, try to keep up!]],"VC_Quest_Lv1_MiOhshima_Quest_00019_MiOhshima")Layout.show()Adv.fadeOut(0.5)Wait(0.5)
Field.disableLookAt("Follower/MiOhshima",0)Field.turnBy("Follower/MiOhshima",180,0)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Sound.playEx("AS_Skateboard_Set")Wait(1)
Adv.fadeIn(0.5)Wait(1)
animeChange=Field.changeAnimation("Follower/MiOhshima","FieldUnique04",1)Wait(0.8)local zVPRGDnG=Sound.playEx("AS_Skateboard_loop")
Field.turnToPosition("Follower/MiOhshima",
Field.getPosition("Follower/MiOhshima")+Vec(4,0,0),0.4,AnimationMode.None)
Field.moveTo("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(4,0,0),0.5,AnimationMode.None)Field.waitTask(animeChange)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(0.5)Sound.stop(zVPRGDnG)
Layout.show({uYz2ryy4,"080201"})
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(uYz2ryy4,0.5,0.1)end)
Adv.playCutIn("RKayamori","Default","Surprise","So fast!","VC_Quest_Lv1_MiOhshima_Quest_00020_RKayamori",3,0,nil)Layout.show()
local IKxw=Adv.bubbleAnger(HHH9IlJp,[[Outta the way! Comin' through!]],3,Vec(300,150),"VC_Quest_Lv1_MiOhshima_Quest_00021_MiOhshima")Adv.fadeOut(0.5)Field.finishEvent(0)
Field.resetPosition("NarvySquarePointLeft")Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3()local w0=Adv.characterAsync("MiOhshima")
local UgXzI_C=Adv.characterAsync("RKayamori")Field.setFollowerAutoMoveEnabled(false)
Field.setPosition("Follower/MiOhshima",Vec(69.3,
-6.1,23.5))
Field.setPosition("Player",Field.getPosition("Follower/MiOhshima")+Vec(-0,0,-1))
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",0)Field.startEvent()
Field.setCameraCompositionEx(Vec(73.635,-5.034,26.380),Vec(0.000,270.000,0.000),30.00,0)Adv.waitAsyncInstanceAll()Layout.createStage()
Wait(1)Adv.fadeIn(0.5)
local MLFLplLe=Sound.playEx("AS_Skateboard_loop")
local jwq=Adv.bubbleAnger(w0,[[Outta the way! Delivery comin' through!]],9,Vec(-300,150),"VC_Quest_Lv1_MiOhshima_Quest_00022_MiOhshima")
Field.moveToAct("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(0,0,3.5),0.5,"FieldUnique01",
nil)Wait(0.5)Sound.stop(MLFLplLe)
Sound.playEx("AS_Skateboard_Stop")
local kw3ei0a=Field.changeAnimation("Follower/MiOhshima","FieldUnique03",1)Field.waitTask(kw3ei0a)
Field.turnToTargetWait("Follower/MiOhshima","Player",0.4)
Field.moveToAct("Player",Field.getPosition("Player")+Vec(0,0,3.5),0.5,"FieldRun",
nil,true)Wait(1)Layout.show({UgXzI_C,"150201"})
Routine(function()
Adv.moveBy(UgXzI_C,Vec(0,10),0.5)Wait(0.5)Adv.moveBy(UgXzI_C,Vec(0,-10),0.5)
Wait(0.5)Adv.moveBy(UgXzI_C,Vec(0,10),0.5)Wait(0.5)Adv.moveBy(UgXzI_C,Vec(0,
-10),0.5)Wait(0.5)end)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[*pant* *pant* You won't get away that easy!]],"VC_Quest_Lv1_MiOhshima_Quest_00023_RKayamori")Layout.show()Wait(0.5)
Layout.show({w0,"010202"})
Adv.talkWithFacial(nil,nil,w0,[[Oh, you kept up this time! Nice job, Kayamori!]],"VC_Quest_Lv1_MiOhshima_Quest_00024_MiOhshima")Layout.show()
Layout.show({UgXzI_C,"070201"})
Adv.talkWithFacial(nil,nil,UgXzI_C,[[This is nothing... I'm still good to go!]],"VC_Quest_Lv1_MiOhshima_Quest_00025_RKayamori")Layout.show()Layout.show({w0,"010002"})
Adv.talkWithFacial(
nil,nil,w0,[[Well, in that case, let's get serious!]],"VC_Quest_Lv1_MiOhshima_Quest_00026_MiOhshima")Layout.show()Adv.fadeOut(0.5)Wait(0.5)
Field.disableLookAt("Follower/MiOhshima",0)Field.turnBy("Follower/MiOhshima",180,0)
Sound.playEx("AS_Skateboard_Set")
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(1)Adv.fadeIn(0.5)Wait(1)
kw3ei0a=Field.changeAnimation("Follower/MiOhshima","FieldUnique04",1)Wait(0.8)
local MLFLplLe=Sound.playEx("AS_Skateboard_loop_fast")
Field.turnToPosition("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(0,0,7),0.4,AnimationMode.None)
Field.moveTo("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(0,0,7),0.5,AnimationMode.None)Field.waitTask(kw3ei0a)
Sound.playEx("AS_Skateboard_Set")
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(0.5)Sound.stop(MLFLplLe)
Layout.show({UgXzI_C,"080201"})
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(UgXzI_C,0.5,0.1)end)
Adv.playCutIn("RKayamori","Default","Surprise","She's so fast?!","VC_Quest_Lv1_MiOhshima_Quest_00027_RKayamori",3,0,nil)Transition.start()Field.finishEvent(0)
Exit_FieldAndChange("MainStreet","BridgePointLeftLeft",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step4()Adv.fadeOut(0)
local EspneS5=Adv.characterAsync("MiOhshima")local LZeg0=Adv.characterAsync("RKayamori")
Field.setFollowerAutoMoveEnabled(false)
Field.setPosition("Follower/MiOhshima",Vec(130,4.11,73.47))
Field.setPosition("Player",Vec(131,2.992,72.283))
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",0)Field.startEvent()
Field.setCameraCompositionEx(Vec(134.300,7.870,66.080),Vec(0.000,0.000,0.000),26.40,0)Adv.waitAsyncInstanceAll()Layout.createStage()
Adv.fadeIn(0.5)
local OJZ=Adv.bubbleAnger(EspneS5,[[Let's gooo!]],0,Vec(0,100),"VC_Quest_Lv1_MiOhshima_Quest_00028_MiOhshima")Wait(0.5)Adv.fadeOut(0.5)Wait(0.5)
Field.setCameraCompositionEx(Vec(134.300,5.000,67.940),Vec(0.000,0.000,0.000),26.40,0)Field.waitTaskKey("CameraComposition")
Adv.fadeIn(0.5)local nmuj=Sound.playEx("AS_Skateboard_loop_fast")
Field.moveToAct("Follower/MiOhshima",
Field.getPosition("Follower/MiOhshima")+Vec(5,0,0),0.5,"FieldUnique01",nil)Wait(0.5)Sound.stop(nmuj)
Sound.playEx("AS_Skateboard_Stop")
local bP=Field.changeAnimation("Follower/MiOhshima","FieldUnique03",1)Field.waitTask(bP)
Field.changeAnimation("Follower/MiOhshima","FieldIdle",1)
Field.moveToAct("Player",Field.getPosition("Player")+Vec(3,0,0),1,"FieldRun",nil,true)Wait(1)
Field.turnToTargetWait("Player","Follower/MiOhshima",0.4)Layout.show({LZeg0,"150201"})
Adv.talkWithFacial(nil,nil,LZeg0,[[It's dangerous to go that fast on the bridge!]],"VC_Quest_Lv1_MiOhshima_Quest_00029_RKayamori")Layout.show()
Layout.show({EspneS5,"050002"})
Adv.actDelay(2.5,EspneS5,"010302",AdvCharacterMouth.Mouth01)
Adv.talk(EspneS5,"Don't sweat it! That aside, look! You gotta check out this view!","VC_Quest_Lv1_MiOhshima_Quest_00030_MiOhshima")
Adv.act(EspneS5,"010302",AdvCharacterMouth.Mouth01)Layout.show()Layout.show({LZeg0,"030201"})
Adv.talkWithFacial(
nil,nil,LZeg0,[[Eyes on the road!]],"VC_Quest_Lv1_MiOhshima_Quest_00031_RKayamori")Layout.show()
Layout.show({EspneS5,"080202"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Oops, you're right! I should speed up a little to settle down.]],"VC_Quest_Lv1_MiOhshima_Quest_00032_MiOhshima")Layout.show()
Field.disableLookAt("Follower/MiOhshima",0.4)Wait(0.4)
local bP=Field.changeAnimation("Follower/MiOhshima","FieldUnique02",1)Field.waitTask(bP)
Sound.playEx("AS_Skateboard_Set")
bP=Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(1)
bP=Field.changeAnimation("Follower/MiOhshima","FieldUnique04",1)Wait(0.8)
local nmuj=Sound.playEx("AS_Skateboard_loop_fast")
Field.turnToPosition("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(4,0,0),0.4,AnimationMode.None)
Field.moveTo("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(4,0,0),0.5,AnimationMode.None)Field.waitTask(bP)
Routine(function()Wait(0.3)
Sound.playEx("AS_Skateboard_Set")end)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(0.4)Sound.stop(nmuj)
Field.turnToTargetWait("Player","Follower/MiOhshima",0.3)Layout.show({LZeg0,"150201"})
Adv.talkWithFacial(nil,nil,LZeg0,[[W-Wait!]],"VC_Quest_Lv1_MiOhshima_Quest_00033_RKayamori")
Adv.talkWithFacial("150002",nil,LZeg0,[[Damn, you're faster than a speeding bullet...]],"VC_Quest_Lv1_MiOhshima_Quest_00034_RKayamori")
Adv.talkWithFacial("070201",nil,LZeg0,[[I'm gonna call you Red Photon Minorin from now on!]],"VC_Quest_Lv1_MiOhshima_Quest_00035_RKayamori")Layout.show()
local OJZ=Adv.bubbleAnger(EspneS5,[[That's so lame, so no thanks!]],3,Vec(300,150),"VC_Quest_Lv1_MiOhshima_Quest_00036_MiOhshima")
local OJZ=Adv.bubbleAnger(EspneS5,[[Oh! Let's take this shortcut.]],3,Vec(300,150),"VC_Quest_Lv1_MiOhshima_Quest_00037_MiOhshima")Transition.start()Field.finishEvent(0)
Exit_FieldAndChange("Grave","Waypoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step5()Adv.fadeOut(0)
local b4IqQW=Adv.loadBGAsync("Background/Cemetery/Cemetery_Evening")local iuGb=Adv.characterAsync("MiOhshima")
local koZU=Adv.characterAsync("RKayamori")Field.setFollowerAutoMoveEnabled(false)
Field.setPosition("Follower/MiOhshima",Vec(6.479,
-0.03,-3.34))
Field.setPosition("Player",Vec(6.479,-0.03,-3.34))
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",0)Field.startEvent()
local C=Sound.playEx("AS_Skateboard_loop_fast")
Field.setCameraCompositionEx(Vec(1.050,1.200,1.860),Vec(0.000,180.000,0.000),26.40,0)Adv.waitAsyncInstanceAll()Layout.createStage()
Adv.fadeIn(0.5)
Field.moveToAct("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(-11,0,0),1,"FieldUnique01",
nil)Wait(1)Wait(0.5)Sound.stop(C)Adv.fadeOut(0.5)
Field.finishEvent(0)
Field.startNovel(function()local C=Sound.playEx("AS_Skateboard_loop",0.7)
Layout.createStageFixBg(b4IqQW,Position.BG_LEFT)Layout.show({iuGb,"000302"})Adv.fadeIn(0.5)
local nmJGp_=false
local h0v3PIV=Routine(function()while nmJGp_==false do Adv.shake(b4IqQW,0.5,0.05)
Adv.shake(iuGb,1,0.05)Wait(0.5)end end)
Adv.talkWithFacial(nil,nil,iuGb,[[Heads up! Comin' through!]],"VC_Quest_Lv1_MiOhshima_Quest_00038_MiOhshima")nmJGp_=true;StopRoutine(h0v3PIV)if nmJGp_ then Adv.stopShake(b4IqQW)
Adv.stopShake(iuGb)end
Layout.createStageFixBg(b4IqQW,Position.BG_RIGHT)Layout.show({koZU,"070201"})
Adv.talkWithFacial(nil,nil,koZU,[[Hey, this is bad karma! Don't ride your skateboard around the graves!]],"VC_Quest_Lv1_MiOhshima_Quest_00039_RKayamori")
Layout.createStageFixBg(b4IqQW,Position.BG_LEFT)Layout.show({iuGb,"070002"})nmJGp_=false
h0v3PIV=Routine(function()while
nmJGp_==false do Adv.shake(b4IqQW,0.5,0.05)Adv.shake(iuGb,0.5,0.05)
Wait(0.5)end end)
Adv.talkWithFacial(nil,nil,iuGb,[[Rest in peace... Rest in peace...]],"VC_Quest_Lv1_MiOhshima_Quest_00040_MiOhshima")nmJGp_=true;StopRoutine(h0v3PIV)if nmJGp_==true then
Adv.stopShake(b4IqQW)Adv.stopShake(iuGb)end
Layout.createStageFixBg(b4IqQW,Position.BG_RIGHT)Layout.show({koZU,"080201"})
Adv.talkWithFacial(nil,nil,koZU,[[She's praying <i>and</i> riding with her eyes closed!]],"VC_Quest_Lv1_MiOhshima_Quest_00041_RKayamori")
Layout.createStageFixBg(b4IqQW,Position.BG_LEFT)Layout.show({iuGb,"070202"})nmJGp_=false
h0v3PIV=Routine(function()while
nmJGp_==false do Adv.shake(b4IqQW,0.5,0.05)Adv.shake(iuGb,0.5,0.05)
Wait(0.5)end end)
Adv.talkWithFacial(nil,nil,iuGb,[[Prayer delivery complete. Next!]],"VC_Quest_Lv1_MiOhshima_Quest_00042_MiOhshima")nmJGp_=true;StopRoutine(h0v3PIV)if nmJGp_==true then
Adv.stopShake(b4IqQW)Adv.stopShake(iuGb)end
Adv.swelling(iuGb,200,0,1.2,0.3,1)Sound.volume(C,0,1.5)Wait(1.5)Sound.stop(C)
Layout.createStageFixBg(b4IqQW,Position.BG_RIGHT)Layout.show({koZU,"070202"})
local Uc=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")nmJGp_=false
h0v3PIV=Routine(function()Adv.shake(b4IqQW,1,0.05)
Adv.shake(koZU,0.5,0.1)Adv.scale(b4IqQW,1.27,0.2,1,1)
Adv.scale(koZU,1.1,0.2,1,1)Wait(1.5)
if nmJGp_==false then Adv.stopShake(b4IqQW)
Adv.stopShake(koZU)Adv.scale(b4IqQW,1.25,0.4,1,1)
Adv.scale(koZU,1,0.4,1,1)Adv.remove(Uc)nmJGp_=true end end)
Adv.talkWithFacial(nil,nil,koZU,[[You can do prayer delivery?!]],"VC_Quest_Lv1_MiOhshima_Quest_00043_RKayamori")StopRoutine(h0v3PIV)
if nmJGp_==false then Adv.stopShake(b4IqQW)
Adv.stopShake(koZU)Adv.scale(b4IqQW,1.25,0.4,1,1)
Adv.scale(koZU,1,0.4,1,1)Adv.remove(Uc)end;Transition.start()end)Adv.hide(b4IqQW)
Exit_FieldAndChange("MainStreet","DormitoryPoint",nil,function()
Quest.clearStep(w0qyLbH)end)end
function Step6()Adv.fadeOut(0)
local JSkUQL=Adv.characterAsync("MiOhshima")local PTUZ2v=Adv.characterAsync("RKayamori")
Field.setFollowerAutoMoveEnabled(false)
Field.setPosition("Follower/MiOhshima",Vec(-13.26,-0.6,-9.69))
Field.setPosition("Player",Vec(-5.93,-0.219,-4))
Field.changeAnimation("Follower/MiOhshima","FieldIdle",1,0)Wait(0.3)Field.turnBy("Player",260,0)
Field.turnTo("Follower/MiOhshima",90,0,AnimationMode.None)Field.startEvent()
Field.setCameraCompositionEx(Vec(-2.130,0.940,-9.510),Vec(0.000,270.000,0.000),26.40,0)Adv.waitAsyncInstanceAll()Layout.createStage()
Adv.fadeIn(0.5)
Field.moveToAct("Player",Field.getPosition("Player")+Vec(0,-0.002,-5),0.8,"FieldRun",
nil,true)Wait(1)Layout.show({PTUZ2v,"150001"})
Routine(function()
Adv.moveBy(PTUZ2v,Vec(0,10),1)Wait(1)Adv.moveBy(PTUZ2v,Vec(0,-10),1)Wait(1)
Adv.moveBy(PTUZ2v,Vec(0,10),1)Wait(1)Adv.moveBy(PTUZ2v,Vec(0,-10),1)Wait(1)end)
Adv.talkWithFacial(nil,nil,PTUZ2v,[[*huff* *wheeze*]],"VC_Quest_Lv1_MiOhshima_Quest_00044_RKayamori")Layout.show()Wait(1)
Field.turnToTargetWait("Player","Follower/MiOhshima",0.5)Wait(1)Layout.show({PTUZ2v,"150201"})
Adv.talkWithFacial(nil,
nil,PTUZ2v,[[Huh? You waited for me, Minorin?]],"VC_Quest_Lv1_MiOhshima_Quest_00045_RKayamori")Layout.show()
Field.faceToFace("Follower/MiOhshima",0.5)Wait(0.5)Layout.show({JSkUQL,"010202"})
Adv.talkWithFacial(
nil,nil,JSkUQL,[[Nah, I just finished the deliveries to the dorms.]],"VC_Quest_Lv1_MiOhshima_Quest_00046_MiOhshima")Layout.show()
Layout.show({PTUZ2v,"150202"})
Adv.talkWithFacial(nil,nil,PTUZ2v,[[No way... I couldn't keep up with you at all.]],"VC_Quest_Lv1_MiOhshima_Quest_00047_RKayamori")Layout.show()
Layout.show({JSkUQL,"010202"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[Well, I gotta make my next delivery.]],"VC_Quest_Lv1_MiOhshima_Quest_00048_MiOhshima")
Adv.talkWithFacial("050001",nil,JSkUQL,[[It was a pleasure working with you. Thanks for the help!]],"VC_Quest_Lv1_MiOhshima_Quest_00049_MiOhshima")Layout.show()
Field.disableLookAt("Follower/MiOhshima",0.4)Wait(0.4)Sound.playEx("AS_Skateboard_Set")
local qlZeO3Pr=Field.changeAnimation("Follower/MiOhshima","FieldUnique02",1)Field.waitTask(qlZeO3Pr)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(1.5)Layout.show({PTUZ2v,"150001"})
Adv.actDelay(2.6,PTUZ2v,"080201",AdvCharacterMouth.Mouth03)
Adv.talk(PTUZ2v,"Yeah, keep it up... Wait, huh? Minorin?","VC_Quest_Lv1_MiOhshima_Quest_00050_RKayamori")
Adv.act(PTUZ2v,"080201",AdvCharacterMouth.Mouth03)Layout.show()local fG9zS=Adv.fadeOutWithShield(1)
local WiXG=Adv.bubbleAnger(JSkUQL,[[Let's gooo!]],0,Vec(0,100),"VC_Quest_Lv1_MiOhshima_Quest_00051_MiOhshima")Wait(0.5)Sound.playEx("AS_Skateboard_Set")
Adv.hide(fG9zS,1)
Field.setCameraCompositionEx(Vec(-0.710,0.900,-9.510),Vec(0.000,270.000,0.000),26.40,1,0.5,1.5)
qlZeO3Pr=Field.changeAnimation("Follower/MiOhshima","FieldUnique04",1)Wait(0.8)local QgyWztK=Sound.playEx("AS_Skateboard_loop")
Field.turnToPosition("Follower/MiOhshima",Vec(
-5.93,-0.22,-10),0.4,AnimationMode.None)
Field.moveTo("Follower/MiOhshima",Vec(-5.93,-0.22,-10),0.5,AnimationMode.None)Field.waitTask(qlZeO3Pr)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(0.5)Sound.stop(QgyWztK)
Sound.playEx("AS_Skateboard_Stop")
local qlZeO3Pr=Field.changeAnimation("Follower/MiOhshima","FieldUnique03",1)Field.waitTask(qlZeO3Pr)
Field.changeAnimation("Follower/MiOhshima","FieldIdle",1)
Field.turnToTarget("Player","Follower/MiOhshima",0.3)Wait(1.5)Layout.show({PTUZ2v,"030201"})
local Oo6ecUO=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")local b6SL0yka=false;local hEk=Field.getCameraFov()
local E8o=Routine(function()
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(PTUZ2v,0.5,0.1)
Field.setCameraFov(Field.getCameraFov()*0.8,0.2,1,1)Adv.scale(PTUZ2v,1.1,0.2,1,1)Wait(1.5)
if b6SL0yka==false then
Adv.stopShake(PTUZ2v)Field.setCameraFov(hEk,0.4,1,1)
Adv.scale(PTUZ2v,1,0.4,1,1)Adv.remove(Oo6ecUO)b6SL0yka=true end end)
Adv.talkWithFacial(nil,nil,PTUZ2v,[[She's going uphill on a skateboard?! That's against the laws of physics!]],"VC_Quest_Lv1_MiOhshima_Quest_00052_RKayamori")StopRoutine(E8o)
if b6SL0yka==false then Adv.stopShake(PTUZ2v)
Field.setCameraFov(hEk,0.4,1,1)Adv.scale(PTUZ2v,1,0.4,1,1)Adv.remove(Oo6ecUO)end;Layout.show()
Field.turnToTargetWait("Follower/MiOhshima","Player",0.3)Layout.show({JSkUQL,"010202"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[I guess common sense doesn't apply to delivery people!]],"VC_Quest_Lv1_MiOhshima_Quest_00053_MiOhshima")Layout.show()
Layout.show({PTUZ2v,"070002"})
Adv.talkWithFacial(nil,nil,PTUZ2v,[[So cool...]],"VC_Quest_Lv1_MiOhshima_Quest_00054_RKayamori")
Adv.talkWithFacial("030201",nil,PTUZ2v,[[But still weird!]],"VC_Quest_Lv1_MiOhshima_Quest_00055_RKayamori")Layout.show()
Layout.show({JSkUQL,"050002"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[Well, see you next time!]],"VC_Quest_Lv1_MiOhshima_Quest_00056_MiOhshima")Layout.show()Adv.fadeOut(0.5)Wait(0.5)
Field.disableLookAt("Follower/MiOhshima",0)Field.turnBy("Follower/MiOhshima",180,0)
Routine(function()
Wait(0.3)Sound.playEx("AS_Skateboard_Set")end)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Wait(1)Adv.fadeIn(0.5)Wait(1)
qlZeO3Pr=Field.changeAnimation("Follower/MiOhshima","FieldUnique04",1)Wait(0.8)local QgyWztK=Sound.playEx("AS_Skateboard_loop")
Field.turnToPosition("Follower/MiOhshima",
Field.getPosition("Follower/MiOhshima")+Vec(0,0,-7),0.4,AnimationMode.None)
Field.moveTo("Follower/MiOhshima",Field.getPosition("Follower/MiOhshima")+Vec(0,0,-7),0.5,AnimationMode.None)Field.waitTask(qlZeO3Pr)
Field.changeAnimation("Follower/MiOhshima","FieldUnique01",1)Sound.playEx("AS_Skateboard_Set")Wait(0.8)
Sound.stop(QgyWztK)Wait(0.5)Layout.show({PTUZ2v,"070002"})
Adv.actDelay(2.7,PTUZ2v,"070202")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[And she's gone... That's our Red Photon Minorin.]],"VC_Quest_Lv1_MiOhshima_Quest_00057_RKayamori")
Adv.actDelay(0,PTUZ2v,"070202",AdvCharacterMouth.Close)Layout.show()
local WiXG=Adv.bubbleAnger(JSkUQL,[[Stop calling me thaaat!]],9,Vec(-300,150),"VC_Quest_Lv1_MiOhshima_Quest_00058_MiOhshima")Field.turnBy("Player",-90,0.4)Wait(1)
Layout.show({PTUZ2v,"000201"})
Adv.talkWithFacial(nil,nil,PTUZ2v,[[If there's something I need delivering, I'll be asking her for sure!]],"VC_Quest_Lv1_MiOhshima_Quest_00059_RKayamori")Layout.show()Adv.fadeOutWithShield(1)
Field.finishEvent()Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local TdqFo=Bath.startBathTimeEvent("MiOhshima",BathInviteMode.Active,function(ykLF0,cilhu)
Adv.talkWithFacial(nil,nil,ykLF0,[[(Maybe I should invite Minorin to come for a soak.)]],"VC_Quest_Lv1_MiOhshima_Quest_00060_RKayamori")
local eVfN=Bath.BathQuestion("MiOhshima",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,ykLF0,[[Hey, Minorin, wanna go to the baths together?]],"VC_Quest_Lv1_MiOhshima_Quest_00061_RKayamori")
Adv.talkWithFacial(nil,nil,cilhu,[[Sure. I finished my deliveries for today, so I'll join ya.]],"VC_Quest_Lv1_MiOhshima_Quest_00062_MiOhshima")
Adv.talkWithFacial(nil,nil,ykLF0,[[Yay!]],"VC_Quest_Lv1_FMikoto_Quest_00067_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,ykLF0,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return eVfN end)
if TdqFo==0 then
Bath.startBathTimeNovel("MiOhshima",nil,"Wash",function(LBIJ,CSSp,CBZIwYHI,x1vCS0)
Sound.playEx("AS_jump_into_the_water")Wait(1)
Adv.talkWithFacial(nil,nil,CSSp,[[Ahhh... It feels so good to soak in such a huge bath.]],"VC_Quest_Lv1_MiOhshima_Quest_00065_MiOhshima")
Adv.talkWithFacial(nil,nil,LBIJ,[[(How does Minorin keep so much energy in those skinny limbs?)]],"VC_Quest_Lv1_MiOhshima_Quest_00066_RKayamori")Sound.playEx("AS_Echo_Headwater")
Adv.talkWithFacial(nil,nil,CSSp,[[Geez, Kayamori! You're staaaring.]],"VC_Quest_Lv1_MiOhshima_Quest_00067_MiOhshima")
Adv.talkWithFacial(nil,nil,LBIJ,[[Can I touch them a little?]],"VC_Quest_Lv1_MiOhshima_Quest_00068_RKayamori")
Adv.talkWithFacial(nil,nil,CSSp,[[Huh? Well, sure... But it's a little embarrassing.]],"VC_Quest_Lv1_MiOhshima_Quest_00069_MiOhshima")Sound.playEx("AS_Echo_Bathsplashes")Wait(0.5)
Adv.talkWithFacial(
nil,nil,CSSp,[[But to keep things fair, I can touch yours, yeah? Okay, go ahead.]],"VC_Quest_Lv1_MiOhshima_Quest_00070_MiOhshima")Wait(0.5)Sound.playEx("AS_Rubbing_Breasts")
Wait(0.3)
Adv.talkWithFacial(nil,nil,LBIJ,[[Why are you pushing out your chest like that?]],"VC_Quest_Lv1_MiOhshima_Quest_00071_RKayamori")
Adv.talkWithFacial(nil,nil,CSSp,[[You wanted to touch, didn't you?]],"VC_Quest_Lv1_MiOhshima_Quest_00072_MiOhshima")
Adv.talkWithFacial(nil,nil,LBIJ,[[I was thinking more like your arms or legs.]],"VC_Quest_Lv1_MiOhshima_Quest_00073_RKayamori")
Adv.talkWithFacial(nil,nil,CSSp,[[Uh... Damn, this is so embarrassing. I thought you wanted to touch my boobies, since it's kinda obligatory when two girls hit the bath together.]],"VC_Quest_Lv1_MiOhshima_Quest_00074_MiOhshima")end)end;Exit_World()end