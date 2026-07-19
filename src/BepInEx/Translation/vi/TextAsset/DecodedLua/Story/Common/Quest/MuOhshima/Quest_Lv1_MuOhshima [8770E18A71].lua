local w0qyLbH="Quest_Lv1_MuOhshima"function init()
Log("Called Quest_Lv1_MuOhshima")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("MuOhshima_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then EmptyEvent("MuOhshima_Quest")
Quest.TouchEvent("MuOhshima_Quest",w0qyLbH,Receive)end;if
Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end
if
Quest.stateStep(w0qyLbH,2)then Field.setActive("SMinase_Gaya",false)
Field.setActive("IMinase_Gaya",false)StartEvent(Step2)end
if Quest.stateStep(w0qyLbH,3)then StartEvent(Step3)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Step4)end
if Quest.stateStep(w0qyLbH,5)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()Field.startEvent()
Field.turnToTarget("Player","MuOhshima_Quest",0.3)Wait(0.3)
Adv.kayamoriTalk([[(Well, somebody's running up a storm. What was her name again...)]],"VC_Quest_Lv1_MuOhshima_Quest_00000_RKayamori",
nil)Transition.start()
Field.setCameraCompositionExWithListener(Vec(-1.800,2.000,37.000),Vec(15.000,315.000,0.000),30.00)Field.setLookAtTarget("Player","MuOhshima_Quest")local nsgji=
Field.getWaypointPosition("StairUpperToGravePoint")+Vec(1.5)
Field.setPosition("Player",nsgji)Field.turnToTarget("Player","MuOhshima_Quest",0)
Wait(1)Transition.finish()
Field.talkByGayaBalloonNoPlayable("MuOhshima_Quest",[[*pant* *pant* *pant* *pant*]],
nil,nil,nil,1,"VC_Quest_Lv1_MuOhshima_Quest_00001_MuOhshima")
Adv.kayamoriTalk([[Heeey! Your face is red as a tomato! Are you okay? Uhhh...isn't your name something like the lost continent, Mu?]],"VC_Quest_Lv1_MuOhshima_Quest_00002_RKayamori",
nil)
Adv.miniCutIn("MuOhshima","01",[[Close! It's Muua! Mu stands for six, since I'm the youngest of six sisters.]],"VC_Quest_Lv1_MuOhshima_Quest_00003_MuOhshima",BalloonType.Normal,
nil,nil,nil)
Adv.kayamoriTalk([[Whoa, that's so cool!]],"VC_Quest_Lv1_MuOhshima_Quest_00004_RKayamori",nil)
Adv.miniCutIn("MuOhshima","02",[[I think your name is pretty cool, Ruka.]],"VC_Quest_Lv1_MuOhshima_Quest_00005_MuOhshima",BalloonType.Normal,nil,
nil,nil)
Adv.kayamoriTalk([[Thanks.]],"VC_Quest_Lv1_MuOhshima_Quest_00006_RKayamori",nil)
Adv.miniCutIn("MuOhshima","02",[[Oh, yeah. Ruka, do you wanna go running with me?]],"VC_Quest_Lv1_MuOhshima_Quest_00007_MuOhshima",BalloonType.Normal,
nil,nil,nil)Sound.setResumeBGM("SB0033")
local bClTIa=Quest.receive(w0qyLbH)
if bClTIa==QuestWindow.Receive then Transition.start()
Field.finishEvent()Quest.refreshState()else Transition.start()
Field.cancelQuest("MuOhshima_Quest","CemeteryPointRight",false,function()
Field.finishEvent()end)end end
function Step1()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("MuOhshima")local BW0WFP=Adv.characterAsync("RKayamori")
Field.prepareEventCharacter("MuOhshima_Quest")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setCameraCompositionExWithListener(Vec(-1.800,2.000,37.000),Vec(15.000,315.000,0.000),30.00)
local X8=Field.getWaypointPosition("StairUpperToGravePoint")+Vec(1.5)Field.setPosition("Player",X8)
Field.turnToTarget("Player","MuOhshima_Quest",0)Adv.fadeIn(0.5)Transition.finish()
Sound.playBGM("SB0033",0.5,0)
Adv.kayamoriTalk([[Sure! No reason to turn down a fellow squadron member's invitation. I can tag along.]],"VC_Quest_Lv1_MuOhshima_Quest_00008_RKayamori",
nil)
Adv.miniCutIn("MuOhshima","01",[[Yay! It's always more fun being with someone else, even if it's just running.]],"VC_Quest_Lv1_MuOhshima_Quest_00009_MuOhshima",BalloonType.Normal,
nil,nil,nil)
Adv.kayamoriTalk([[By the way, why're you still exercising while you're chatting? Is it some kinda punishment from the commander?]],"VC_Quest_Lv1_MuOhshima_Quest_00010_RKayamori",
nil)
Field.setRouteWandererEnabled("MuOhshima_Quest",false)
Field.turnToTarget("MuOhshima_Quest","Player",0.3)Wait(0.3)
Field.setLookAtTarget("MuOhshima_Quest","Player")
Field.setCameraFov(Field.getCameraFov()*0.7,1)Wait(1)Layout.createStage()
Adv.act(rDzL7SVO,"010003",AdvCharacterMouth.Mouth03,0)Layout.show(rDzL7SVO)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[No way! That'd be a treat!]],"VC_Quest_Lv1_MuOhshima_Quest_00011_MuOhshima")Layout.show()Layout.createStage()
Layout.show({BW0WFP,"0803"},rDzL7SVO)
Adv.talkWithFacial("0803",nil,BW0WFP,[[Huh?]],"VC_Quest_Lv1_MuOhshima_Quest_00012_RKayamori",nil)
Adv.talkWithFacial("000101",nil,rDzL7SVO,[[Never mind, it's nothing. I'm just doing voluntary training.]],"VC_Quest_Lv1_MuOhshima_Quest_00013_MuOhshima")
Adv.talkWithFacial("170302",nil,BW0WFP,[[Oh really? What kind of course do you usually run?]],"VC_Quest_Lv1_MuOhshima_Quest_00014_RKayamori",nil)Adv.act(rDzL7SVO,"040303")
Adv.actDelay(3.3,rDzL7SVO,"000102")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[There's a few I like, but where would you like to go, Ruka?]],"VC_Quest_Lv1_MuOhshima_Quest_00015_MuOhshima")Adv.actDelay(0,rDzL7SVO,"000102")
Adv.talkWithFacial("0000",nil,BW0WFP,[[Hmm...]],"VC_Quest_Lv1_MuOhshima_Quest_00016_RKayamori",
nil)
local JQT=Adv.question([[Let's go on...]],[[A course with a view|A quiet course|A tough course]])
if JQT==0 then
Adv.talkWithFacial("000302",nil,BW0WFP,[[Let's take a course with a view.]],"VC_Z_900000058_RKayamori")
Adv.talkWithFacial("010002",nil,rDzL7SVO,[[Sounds good. After all, running should be fun.]],"VC_Quest_Lv1_MuOhshima_Quest_00017_MuOhshima")
Adv.talkWithFacial("000301",nil,BW0WFP,[[So where are we going?]],"VC_Quest_Lv1_MuOhshima_Quest_00018_RKayamori",nil)
Adv.talkWithFacial("000103",nil,rDzL7SVO,[[Let's head towards Mosaic Bridge. The breeze there feels really nice.]],"VC_Quest_Lv1_MuOhshima_Quest_00019_MuOhshima")
Adv.talkWithFacial("0400",nil,rDzL7SVO,[[It <i>is</i> kinda short, though...]],"VC_Quest_Lv1_MuOhshima_Quest_00020_MuOhshima")elseif JQT==1 then
Adv.talkWithFacial("000302",nil,BW0WFP,[[Let's take a quiet course.]],"VC_Z_900000059_RKayamori")
Adv.talkWithFacial("010003",nil,rDzL7SVO,[[Yeah, I get that! Sometimes you just wanna run peacefully!]],"VC_Quest_Lv1_MuOhshima_Quest_00021_MuOhshima")
Adv.talkWithFacial("0003",nil,BW0WFP,[[So where are we going?]],"VC_Quest_Lv1_MuOhshima_Quest_00018_RKayamori",nil)
Adv.talkWithFacial("000102",nil,rDzL7SVO,[[The cemetery.]],"VC_Quest_Lv1_MuOhshima_Quest_00023_MuOhshima")
Adv.talkWithFacial("150001",nil,BW0WFP,[[Hold up. Where now?]],"VC_Quest_Lv1_MuOhshima_Quest_00024_RKayamori",nil)
Adv.talkWithFacial("040103",nil,rDzL7SVO,[[You wanted a quiet course, right?]],"VC_Quest_Lv1_MuOhshima_Quest_00025_MuOhshima")
Adv.talkWithFacial("030302",nil,BW0WFP,[[No way! We can't use that as a course! You shouldn't be making noise there at all!]],"VC_Quest_Lv1_MuOhshima_Quest_00026_RKayamori",
nil)
Adv.talkWithFacial("000102",nil,rDzL7SVO,[[Okay, then, let's go to Mosaic Bridge since there's not so many people there.]],"VC_Quest_Lv1_MuOhshima_Quest_00027_MuOhshima")
Adv.talkWithFacial("040003",nil,rDzL7SVO,[[It <i>is</i> kinda short, though...]],"VC_Quest_Lv1_MuOhshima_Quest_00028_MuOhshima")else
Adv.talkWithFacial("000302",nil,BW0WFP,[[Let's take a tough course.]],"VC_Z_900000060_RKayamori")
Adv.talkWithFacial("000101",nil,rDzL7SVO,[[So you're the type of girl who likes to push herself?]],"VC_Quest_Lv1_MuOhshima_Quest_00029_MuOhshima")
Adv.talkWithFacial("170002",nil,BW0WFP,[[Uh, I wouldn't say that exactly...]],"VC_Quest_Lv1_MuOhshima_Quest_00030_RKayamori",nil)
Adv.talkWithFacial("330003",nil,rDzL7SVO,[[I don't hate it either! Actually, to be honest...]],"VC_Quest_Lv1_MuOhshima_Quest_00031_MuOhshima")
Adv.talkWithFacial("170301",nil,BW0WFP,[[Huh? What did you just say?]],"VC_Quest_Lv1_MuOhshima_Quest_00032_RKayamori",nil)
Adv.talkWithFacial("000101",nil,rDzL7SVO,[[How about we take the course up and down slopes in front of the dorms?]],"VC_Quest_Lv1_MuOhshima_Quest_00033_MuOhshima")
Adv.talkWithFacial("0200",nil,BW0WFP,[[That's not even running anymore...]],"VC_Quest_Lv1_MuOhshima_Quest_00034_RKayamori",nil)
Adv.talkWithFacial("000103",nil,rDzL7SVO,[[You think so? Okay, then, since you're a running newbie, let's just go for Mosaic Bridge for today.]],"VC_Quest_Lv1_MuOhshima_Quest_00035_MuOhshima")
Adv.talkWithFacial("0400",nil,rDzL7SVO,[[It <i>is</i> kinda short, though...]],"VC_Quest_Lv1_MuOhshima_Quest_00036_MuOhshima")end
Adv.talkWithFacial("1103",nil,BW0WFP,[[Got it.]],"VC_Quest_Lv1_MuOhshima_Quest_00037_RKayamori",nil)
Adv.talkWithFacial("010002",nil,rDzL7SVO,[[Okay! Let's go!]],"VC_Quest_Lv1_MuOhshima_Quest_00038_MuOhshima")Transition.start()
Field.setCameraCompositionEnabled(false)Field.startEvent()
Field.setActiveWithTag("Mob",false)Field.disableLookAt("MuOhshima_Quest")
Layout.show()Field.changeCameraToPlayable(0)
Field.resetPosition("CemeteryPoint")
Field.setByPlayerPosition("MuOhshima_Quest",Vec(0,0,0.5))Wait(2)
Field.moveOnRoute("MuOhshima_Quest","FriendStreetLeftPoint",3)Wait(0.2)
Field.moveOnRoute("Player","FriendStreetLeftPoint",3)Wait(0.3)Transition.finish()Wait(0.5)
Adv.miniCutIn("MuOhshima","01",[[*pant* *gasp*\nThis hurts so good...]],"VC_Quest_Lv1_MuOhshima_Quest_00039_MuOhshima",BalloonType.Normal,
nil,nil,nil,true)
Transition.setOutdoor("Main Street","Union Street")Transition.start()Field.finishEvent()
Exit_FieldAndChange("FriendStreet","StopPointLeft",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)Field.startEvent()
Field.prepareEventCharacter("SMinase_Quest5")Field.prepareEventCharacter("IMinase_Quest3")
Field.moveOnRoute("SMinase_Quest5","GymPointRight",1)
Field.moveOnRoute("IMinase_Quest3","GymPointRight",1)Field.prepareEventCharacter("MuOhshima_Quest2")
Field.setActiveWithTag("Mob",false)Field.disableLookAt("MuOhshima_Quest2")
Field.changeCameraToPlayable(0)
Field.setByPlayerPosition("MuOhshima_Quest2",Vec(0,0,0.5))
Field.moveOnRoute("MuOhshima_Quest2","EndPoint",3)Wait(0.2)Field.moveOnRoute("Player","EndPoint",3)
Wait(0.3)Transition.finish()Adv.fadeIn(nil,true)
Adv.miniCutIn("MuOhshima","01",[[This feeling of pushing yourself to the limit...\nThis is the best!]],"VC_Quest_Lv1_MuOhshima_Quest_00040_MuOhshima",BalloonType.Normal,
nil,nil,nil,true)
Adv.miniCutIn("MuOhshima","01",[[What if I try holding my breath...]],"VC_Quest_Lv1_MuOhshima_Quest_00041_MuOhshima",BalloonType.Normal,nil,nil,nil,true)
Adv.miniCutIn("MuOhshima","02",[[......]],nil,BalloonType.Normal,nil,nil,1.2,true)
Adv.miniCutIn("MuOhshima","02",[[......]],nil,BalloonType.Normal,nil,nil,1.2,true)
Adv.miniCutIn("MuOhshima","01",[[Pwahh! Wow! I thought I was gonna die!]],"VC_Quest_Lv1_MuOhshima_Quest_00041_MuOhshima_b",BalloonType.Normal,nil,
nil,nil,true)
Transition.setOutdoor("Union Street","Main Street")Transition.start()Field.finishEvent()
Field.stopTaskKey("MuOhshima_Quest2")Field.stopTaskKey("Player")
Exit_FieldAndChange("MainStreet","SquarePoint",nil,function()
Quest.clearStep(w0qyLbH)end)end
function Step3()Adv.fadeOut(0)Field.startEvent()
Field.prepareEventCharacter("MuOhshima_Quest")
Field.setRouteWandererEnabled("MuOhshima_Quest",false)Field.setActiveWithTag("Mob",false)
Field.changeCameraToPlayable(0)Field.resetPosition("SquarePoint")
Field.turnTo("MuOhshima_Quest",40,0)
Field.setPosition("MuOhshima_Quest",Field.getWaypointPosition("SquarePoint"))
Field.setByPlayerPosition("MuOhshima_Quest",Vec(0,0,0.5))
Field.moveOnRoute("MuOhshima_Quest","BridgePointLeft",3)Wait(0.2)
Field.moveOnRoute("Player","BridgePointLeft",3)Wait(0.3)Transition.finish()Adv.fadeIn(nil,true)
Wait(2)
Routine(function()Wait(2.5)
Field.setLookAtTarget("MuOhshima_Quest","Player",0.3)end)
Adv.miniCutIn("MuOhshima","04",[[Go on, tell me to just die!\nRuka, call me a worthless piece of trash!\nCall me a filthy pig!]],"VC_Quest_Lv1_MuOhshima_Quest_00042_MuOhshima",BalloonType.Shout,
nil,true,nil,true)
Transition.setOutdoor("Main Street","Mosaic Bridge")Transition.start()
Exit_FieldAndChange("MainStreet","BridgePointLeft",nil,function()
Quest.clearStep(w0qyLbH)end)end
function Step4()local AtYtR=Adv.fadeOutWithShield(0)
Field.setActiveWithTag("Mob",false)Field.setActive("Player",false)
Field.prepareEventCharacter("MuOhshima_Quest")Field.turnTo("MuOhshima_Quest",45,0)
Field.setRouteWandererEnabled("MuOhshima_Quest",false)
Field.setPosition("MuOhshima_Quest",Field.getWaypointPosition("BridgePointLeft")+Vec(-6,0))
Field.setPosition("Player",Field.getWaypointPosition("BridgePointLeft")+Vec(-6,0))
Field.turnToTargetWait("MuOhshima_Quest","Player",0.3)
Field.faceToFaceEx("Player","MuOhshima_Quest",FaceToFaceMode.Turn)Field.moveCameraTarget("MuOhshima_Quest")
Field.startEvent()Wait(1)Transition.finish(nil,1)Adv.hide(AtYtR,1)
Field.moveBy("Camera",Vec(6,0,0),1)Field.moveBy("MuOhshima_Quest",Vec(6,0,0),1)
Wait(1)
Field.turnToTargetWait("MuOhshima_Quest","Player",0.3)local ND2BCh3=Adv.characterAsync("MuOhshima")
local IODBg=Adv.characterAsync("RKayamori")
local YRDu=Adv.loadBGAsync("Background/MosaicBridge/MosaicBridge_Evening")Adv.waitAsyncInstanceAll()Layout.createStage()
Layout.show({ND2BCh3,"010003"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Phew! Running feels great! Don't you agree, Ruka?]],"VC_Quest_Lv1_MuOhshima_Quest_00043_MuOhshima")Field.setActive("Player",true)Layout.show()
Field.moveBy("Player",Vec(5,0,0),0.7)Wait(0.7)
Field.turnToTarget("Player","MuOhshima_Quest",0.3)Transition.start()
Field.startNovel(function()
Layout.createStageZoomOut(YRDu)
Layout.show({IODBg,"030301"},{ND2BCh3,"010003"})Transition.finish()
Adv.act(IODBg,"0303",AdvCharacterMouth.Mouth03)
Adv.playCutIn("RKayamori","Default","Surprise","Wait, hold up! That was way, way, wayyy too freaky!","VC_Quest_Lv1_MuOhshima_Quest_00044_RKayamori",2,-350)
Adv.act(IODBg,"0303",AdvCharacterMouth.Close)
Adv.talkWithFacial("000101",nil,ND2BCh3,[[Huh? What was?]],"VC_Quest_Lv1_MuOhshima_Quest_00045_MuOhshima")
Adv.talkWithFacial("030301",nil,IODBg,[[You! I got goosebumps! I even thought about trying to run away halfway through!]],"VC_Quest_Lv1_MuOhshima_Quest_00046_RKayamori")
Adv.act(ND2BCh3,"040103",AdvCharacterMouth.Mouth03)
Adv.actDelay(2.8,ND2BCh3,"040301",AdvCharacterMouth.Mouth02)
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Did I say something weird? Hmm, the only thing I can think of is a runner's high.]],"VC_Quest_Lv1_MuOhshima_Quest_00047_MuOhshima",
nil,nil,AdvCharacterMouth.Mouth02)
Adv.actDelay(0,ND2BCh3,"040301",AdvCharacterMouth.Mouth02)
Adv.actDelay(0.3,ND2BCh3,"040101",AdvCharacterMouth.Close)Adv.act(IODBg,"030302")
Adv.actDelay(1.8,IODBg,"070301")
Adv.talkWithFacial(nil,nil,IODBg,[[No way, that was wayyy beyond a runner's high! Are you like...a masochist or something?]],"VC_Quest_Lv1_MuOhshima_Quest_00048_RKayamori")Adv.actDelay(0,IODBg,"070301")
Adv.act(ND2BCh3,"070102")Adv.actDelay(2.8,ND2BCh3,"070002")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[How rude! I hate pain! I just think suffering a little can be kinda nice!]],"VC_Quest_Lv1_MuOhshima_Quest_00049_MuOhshima")
Adv.actDelay(0,ND2BCh3,"070002",AdvCharacterMouth.Close)
Layout.createStageZoomIn(YRDu,Position.BG_CENTER,0.3)
Adv.act(IODBg,"030301",AdvCharacterMouth.Mouth03,0.2)Adv.act(ND2BCh3,"070001")
Layout.show(IODBg,ND2BCh3)Adv.shake(ND2BCh3,0.5,0.1)Adv.shake(IODBg,0.5,0.1)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,-350)
Adv.playCutIn("RKayamori","Default","Surprise","She's totally a masochiiist! Now that run feels all dirtyyy!","VC_Quest_Lv1_MuOhshima_Quest_00050_RKayamori",2,
-300)
Adv.act(IODBg,"030301",AdvCharacterMouth.Close,0.3)Layout.createStageZoomOut(YRDu,nil,0.3)
Layout.show(IODBg,ND2BCh3)
Adv.talkWithFacial("070103",nil,ND2BCh3,[[No, I'm not! It's just the only thing I'm good at is moving around, so I get anxious when I'm slacking off.]],"VC_Quest_Lv1_MuOhshima_Quest_00051_MuOhshima")
Adv.talkWithFacial("070301",nil,IODBg,[[No way, you must have some kind of talent to make it into the Seraph squadron!]],"VC_Quest_Lv1_MuOhshima_Quest_00052_RKayamori")
Adv.talkWithFacial("010001",nil,ND2BCh3,[[I sure hope so, but I don't know what it could be!]],"VC_Quest_Lv1_MuOhshima_Quest_00053_MuOhshima")Adv.actDelay(0.6,IODBg,"0003")
Adv.act(ND2BCh3,"090103",AdvCharacterMouth.Mouth02)
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I was born into a pretty poor family and I wasn't very smart... So I decided a long time ago to just keep running.]],"VC_Quest_Lv1_MuOhshima_Quest_00054_MuOhshima",
nil,nil,AdvCharacterMouth.Mouth02)
Adv.talkWithFacial("000103",nil,ND2BCh3,[[So the day I stop running is the day that I die!]],"VC_Quest_Lv1_MuOhshima_Quest_00055_MuOhshima",nil,nil,AdvCharacterMouth.Mouth01)
Adv.act(ND2BCh3,"000103",AdvCharacterMouth.Close)
Adv.talkWithFacial("0003",nil,IODBg,[[But aren't you supposed to rest some days when your muscles get sore?]],"VC_Quest_Lv1_MuOhshima_Quest_00056_RKayamori")
Adv.talkWithFacial("330102",nil,ND2BCh3,[[No way! Running on sore legs feels even better than normal running!]],"VC_Quest_Lv1_MuOhshima_Quest_00057_MuOhshima",
nil,nil,AdvCharacterMouth.Mouth03)
Layout.createStageZoomIn(YRDu,Position.BG_CENTER,0.3)
Adv.act(IODBg,"030301",AdvCharacterMouth.Mouth01,0.2)Layout.show(IODBg,ND2BCh3)
Adv.shake(ND2BCh3,0.5,0.1)Adv.shake(IODBg,0.5,0.1)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.8,-
350)
Adv.act(IODBg,"0303",AdvCharacterMouth.Mouth03)
Adv.playCutIn("RKayamori","Default","Surprise","She's a masochiiist! A total, complete masochiiist!!!","VC_Quest_Lv1_MuOhshima_Quest_00058_RKayamori",2,-
300)
Adv.act(IODBg,"0303",AdvCharacterMouth.Close)Layout.createStageZoomOut(YRDu,nil,0.3)
Layout.show(IODBg,ND2BCh3)
Adv.talkWithFacial("110301",nil,IODBg,[[But even if you are a masochist, I'll still be you're friend.]],"VC_Quest_Lv1_MuOhshima_Quest_00059_RKayamori")Transition.start(0.5)end)Field.startEvent()Adv.hide(YRDu,0)
Adv.hide(IODBg,0)Adv.hide(ND2BCh3,0)Wait(0.3)
Transition.finish(nil,0.5)
Routine(function()Wait(0.8)Field.disableLookAt("MuOhshima_Quest")Field.moveBy("MuOhshima_Quest",Vec(
-8),2)Wait(0.3)end)
Adv.talkWithFacial("050101",nil,ND2BCh3,[[I'm not a masochist! I am perfectly normaaal!]],"VC_Quest_Lv1_MuOhshima_Quest_00060_MuOhshima")Field.turnTo("Player",-90,0.3)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,-350)
Adv.playCutIn("RKayamori","Default","Surprise","Huh?! She ran away!","VC_Quest_Lv1_MuOhshima_Quest_00061_RKayamori",2,-350)Adv.fadeOutWithShield(1)Field.finishEvent()
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local CWRiP=Bath.startBathTimeEvent("MuOhshima",BathInviteMode.Active,function(LB0A,dl)
Adv.talkWithFacial(nil,nil,LB0A,[[(Maybe I should invite Muua to join me for a soak.)]],"VC_Quest_Lv1_MuOhshima_Quest_00062_v002_RKayamori")
local sKPjQkdn=Bath.BathQuestion("MuOhshima",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,LB0A,[[Hey, Muua, you wanna take a bath with me?]],"VC_Quest_Lv1_MuOhshima_Quest_00063_v002_RKayamori")
Adv.talkWithFacial(nil,nil,dl,[[Sure! It always feels good to rinse off after a hard run!]],"VC_Quest_Lv1_MuOhshima_Quest_00064_v002_MuOhshima")
Adv.talkWithFacial(nil,nil,LB0A,[[Yay!]],"VC_Quest_Lv1_FMikoto_Quest_00067_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,LB0A,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return sKPjQkdn end)
if CWRiP==0 then
Bath.startBathTimeNovel("MuOhshima",nil,"Wash",function(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw)
Sound.playENV("AS_shower_loop")Wait(1)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Aahhh! This shower feels so good!]],"VC_MuOhshima_Lv1_Novel_00000_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Your limbs sure are well-toned.]],"VC_MuOhshima_Lv1_Novel_00001_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[That's cuz I always put my all into my running. My body fat percentage is less than 10%.]],"VC_MuOhshima_Lv1_Novel_00002_MuOhshima")Sound.play("AS_Rubbing_Breasts")Wait(0.3)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[But my chest does tend to get in the way...]],"VC_MuOhshima_Lv1_Novel_00003_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[What a nice problem to have...]],"VC_MuOhshima_Lv1_Novel_00004_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Among us sisters, mine are on the larger side.]],"VC_MuOhshima_Lv1_Novel_00005_MuOhshima")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[But when I complain about this to them, they get upset for some reason.]],"VC_MuOhshima_Lv1_Novel_00006_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Yeah, I can kinda see why they'd be.]],"VC_MuOhshima_Lv1_Novel_00007_RKayamori")Sound.stop("AS_shower_loop")Wait(0.5)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Ok! Now I've showered and washed all the sweat away.]],"VC_MuOhshima_Lv1_Novel_00008_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[So it's on to the bathtub...]],"VC_MuOhshima_Lv1_Novel_00009_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[It's time for an ice bath!]],"VC_MuOhshima_Lv1_Novel_00010_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[What?! You're not taking a hot bath?]],"VC_MuOhshima_Lv1_Novel_00011_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Ice baths help strengthen the blood vessels and relieve fatigue, so they're often recommended for recovering athletes.]],"VC_MuOhshima_Lv1_Novel_00012_MuOhshima")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[And your real reason would be?]],"VC_MuOhshima_Lv1_Novel_00013_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[The way the cold stings my skin feels amazing!]],"VC_MuOhshima_Lv1_Novel_00014_MuOhshima")Sound.play("AS_Echo_Bathsplashes")Wait(0.5)
Adv.talkWithFacial(
nil,nil,HHH9IlJp,[[There it is, you masochist!!!]],"VC_MuOhshima_Lv1_Novel_00015_RKayamori")end)end;Exit_World()end