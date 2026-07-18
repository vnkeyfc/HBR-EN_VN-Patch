local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/AC02/Day02/World/AC02_02_11_00_MainStreet.unity")
EventScene("School1F","Assets/Lua/Story/AC02/Day02/World/AC02_02_11_00_School1F.unity")end;function init()refresh()end
function refresh()Sound.playBGM("SB0013",1,2)
Field.setActiveWithTag("Gate",false)Field.setActive("SchoolGate",true)
ReachEvent("DormitoryBlockerLeft",function()
if
GetLocalFlag("何回逆方向に行った")==0 then
Adv.talkWithIcon("IMinase",[[I can hear the melon bread calling for me.]],"VC_AC02_00533_IMinase")IncLocalFlag("何回逆方向に行った")elseif
GetLocalFlag("何回逆方向に行った")==1 then
Adv.talkWithIcon("IMinase",[[Yeah, gotta love that crunchy texture on the outside. Come on, let's head to the store.]],"VC_AC02_00534_IMinase")IncLocalFlag("何回逆方向に行った")elseif
GetLocalFlag("何回逆方向に行った")==2 then
Adv.talkWithIcon("IMinase",[[I heard there's some melon breads that look like rugby balls. How's that supposed to resemble a melon, huh?]],"VC_AC02_00535_IMinase")IncLocalFlag("何回逆方向に行った")elseif
GetLocalFlag("何回逆方向に行った")==3 then
Adv.talkWithIcon("IMinase",[[If they're sold out...maybe I'll go full killer-mode like the assassin that I am.]],"VC_AC02_00536_IMinase")IncLocalFlag("何回逆方向に行った")elseif
GetLocalFlag("何回逆方向に行った")==4 then
Adv.talkWithIcon("IMinase",[[I should head to the store already.]],"VC_AC02_00537_IMinase")SetLocalFlag("何回逆方向に行った",0)end;Wait(0.3)
Field.moveOnRouteWait("Player","DormitoryPoint")Field.resetPosition()end)
Field.returnToWayPoint("SchoolPointRightBlocker","SchoolPointRight",[[Aoi didn't go this way.]],"VC_Z_900800049_IMinase","IMinase")
Field.returnToWayPoint("SchoolBlocker","StartPoint",[[Aoi didn't go this way.]],"VC_Z_900800049_IMinase","IMinase")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
SetPeriodText("Head to the store and buy some food!")ShowMapDestinationIcon("Blocker_Step1")
ReachEvent_NextWorldEventStep("Blocker_Step1",w0qyLbH,StoryFrontVendingMachine)elseif nsgji==2 then
Field.returnToWayPoint("DormitoryBlockerLeft","DormitoryPoint",[[Aoi didn't go this way.]],"VC_Z_900800049_IMinase","IMinase")
SetPeriodText("Follow Aoi to the academy building!")ShowMapDestinationIcon("Blocker_Step2")
ReachEvent_NextWorldEventStep("Blocker_Step2",w0qyLbH,StoryFrontVendingMachine2)elseif nsgji==3 then
Field.returnToWayPoint("DormitoryBlockerLeft","DormitoryPoint",[[Aoi didn't go this way.]],"VC_Z_900800049_IMinase","IMinase")
SetPeriodText("Follow Aoi to the academy building!")ShowMapDestinationIcon("Blocker_Step3")
ReachEvent("Blocker_Step3",function()
Yield(StoryFrontPurchase)Sound.playEmptyBGM()Exit_World()end)end end
function StartWorld()Field.playerComeIn("DormitoryPoint",Vec(-3))
Field.startEvent()Field.setTalkCamera("Player")
local bClTIa=Adv.characterAsync("IMinase")Adv.waitAsyncInstanceAll()Layout.createStage()
Layout.show({bClTIa,"0300"})Sound.play("AS_hungry")Wait(1.3)
Adv.talkWithFacial(nil,nil,bClTIa,[[Damn, I'm starving... This is all because Sumomo kept sneakin' a bite off me. I mean, just how hungry was she?]],"VC_AC02_00531_IMinase")
Adv.talkWithFacial("2702",nil,bClTIa,[[Whatever. I'll go buy something at the store.]],"VC_AC02_00532_IMinase")Layout.show()Field.finishEvent()end
function StoryFrontVendingMachine()Adv.fadeOut()EmptyEvent("EAoi_1")
local rDzL7SVO=Adv.characterAsync("IMinase")
Field.showAdvHudWrapper(function()
Field.setCameraCompositionExWithListener(Vec(6.620,2.150,11.450),Vec(6.530,304.000,0.000),21.60)Wait(1)
Field.setCameraCompositionExWithListener(Vec(6.620,2.150,12.450),Vec(6.530,304.000,0.000),21.60,10)Field.moveOnRoute("EAoi_1","SchoolPoint",0.9)
Adv.fadeIn()
Adv.talkWithIcon("IMinase",[[Huh? Is that Aoi?]],"VC_AC02_00538_IMinase")
Adv.talkWithIcon("IMinase",[[Sheesh, where's she going so late at night?]],"VC_AC02_00539_IMinase")Adv.fadeOut()Field.stopTaskKey("EAoi_1")
Field.stopCameraComposition()Field.setCameraCompositionEnabled(false)Wait(0.3)
Adv.fadeIn()Layout.show({rDzL7SVO,"2702"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[ I'm not stalking. I'm just watching over her, okay?]],"VC_AC02_00540_IMinase")Layout.show()end)end
function StoryFrontVendingMachine2()Adv.fadeOut()EmptyEvent("EAoi_1")
local BW0WFP=Adv.characterAsync("IMinase")local X8=Field.getWaypointPosition("SchoolPoint")
Field.showAdvHudWrapper(function()
Field.setPosition("EAoi_1",X8)
Field.setCameraCompositionExWithListener(Vec(59.000,1.600,63.000),Vec(6.000,10.000,0.000),30.00)Wait(1)
Field.setCameraCompositionExWithListener(Vec(59.000,1.600,63.000),Vec(6.000,15.000,0.000),30.00,10)Adv.fadeIn()Wait(1)
Adv.talkWithIcon("EAoi",[[Mm...]],"VC_AC02_00541_EAoi")Field.moveBy("EAoi_1",Vec(0,0,10),10)Wait(2)
Adv.fadeOut()Field.stopTaskKey("EAoi_1")
Field.setActive("EAoi_1",false)Wait(1)Field.setCameraCompositionEnabled(false)
Adv.fadeIn()Layout.show({BW0WFP,"0802"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Not the arena, huh? Yeah, that'd be crazy if she was training at this hour.]],"VC_AC02_00542_IMinase")
Adv.talkWithFacial("0302",nil,BW0WFP,[[Where's she going?]],"VC_AC02_00543_IMinase")Layout.show()end)end
function StoryFrontPurchase()Transition.start()Wait(1)
Sound.playBGM(AdvBGM.Fun2,1,1)EmptyEvent("EAoi_1")EmptyEvent("IMinase_1")
EmptyEvent("MSatsuki_1")Field.setActive("Player",false)
Field.setCameraCompositionExWithListener(Vec(-34.850,1.600,
-4.000),Vec(6.000,0.000,0.000),30.00)local JQT=Field.getWaypointPosition("PurchasePoint")Field.setPosition("EAoi_1",
JQT+Vec(5))
local AtYtR=Field.computeMoveTime("EAoi_1",JQT,1)Field.moveTo("EAoi_1",JQT,AtYtR)
local ND2BCh3=Adv.characterAsync("IMinase")local IODBg=Adv.characterAsync("EAoi")
Field.showAdvHudWrapper(function()
Transition.finish(nil,1)Field.waitTaskKey("EAoi_1")
Field.turnToWait("EAoi_1",0,0.3)Layout.show({IODBg,"0702"})
Adv.talkWithFacial("0702",nil,IODBg,[[Okay, here we are.]],"VC_AC02_00544_EAoi")Adv.fadeOut()Layout.show()
Field.setCameraCompositionExWithListener(Vec(-14.370,1.920,-
3.770),Vec(6.170,19.300,0.000),17.80)Adv.fadeIn()Wait(1)
Layout.show({ND2BCh3,"0802"})Adv.actDelay(5,ND2BCh3,"0000")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[The store? Is she hungry too, maybe? Nah, Aoi's not that type of girl.]],"VC_AC02_00545_IMinase")Adv.act(ND2BCh3,"0802")
Adv.actDelay(2.5,ND2BCh3,"2702")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I can even imagine her say, "It's bad for her digestion if you eat at night!"]],"VC_AC02_00546_IMinase")Adv.actDelay(0,ND2BCh3,"2702")Adv.fadeOut(1)
Layout.show()
Field.setCameraCompositionExWithListener(Vec(-34.850,1.600,-4.000),Vec(6.000,0.000,0.000),30.00)
Field.moveOnRoute("EAoi_1","CommanderRoomPoint",1)Wait(0.1)Adv.fadeIn(1)
Adv.talkWithIcon("IMinase",[[Oh, she's coming back this way.]],"VC_AC02_00547_IMinase")Adv.fadeOut(1)Field.stopTaskKey("EAoi_1")
local YRDu=Field.getWaypointPosition("CommanderRoomPoint")
Field.setPosition("EAoi_1",Field.getWaypointPosition("TeacherRoomPoint"))Wait(1)Field.stopCameraComposition()
Field.setCameraCompositionExWithListener(Vec(
-14.370,1.600,-3.770),Vec(7.050,19.300,0.000),41.80)
Field.moveTo("IMinase_1",Field.getByTargetPosition("IMinase_1",1.5,0),0)Wait(0.1)Field.turnTo("IMinase_1",180,0)
Adv.fadeIn(1)Layout.show()
local CWRiP=Field.computeMoveTime("EAoi_1",YRDu,1)Field.moveTo("EAoi_1",YRDu,CWRiP)Wait(1)
Field.setCameraCompositionExWithListener(Vec(
-11.730,1.600,-3.730),Vec(7.050,19.200,0.000),41.80,4.5)Wait(5)Field.waitTaskKey("EAoi_1")
Layout.show({IODBg,"0102"})
Adv.talkWithFacial("0102",nil,IODBg,[[Okay, I'm all prepared! Now I've just got to do my best!]],"VC_AC02_00548_EAoi")Layout.show()
Field.moveOnRoute("EAoi_1","StartPoint",1)Wait(2)
Field.moveOnRoute("IMinase_1","CourtyardLeftPoint",1)Wait(1.5)Field.stopTaskKey("IMinase_1")Wait(0.1)
Field.turnToWait("IMinase_1",180,0.3)Layout.show({ND2BCh3,"2702"})
Adv.talkWithFacial("2702",nil,ND2BCh3,[[Damn, she's in high spirits...]],"VC_AC02_00549_IMinase")
Adv.talkWithFacial("030003",nil,ND2BCh3,[[Now I'm really intrigued...]],"VC_AC02_00550_IMinase")Layout.show()
Field.moveTo("IMinase_1",Field.getWaypointPosition("CommanderRoomPoint"),5)Wait(1)
Transition.setOutdoor("Academy Building","Cafeteria")Transition.start()Wait(1)
Field.stopTaskKey("EAoi_1")Field.stopTaskKey("IMinase_1")end)end