local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Dormitory1F","Assets/Lua/Story/MC02/Day09/World/MC02_09_11_02_Dormitory1F.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0015",1,2)
SetPeriodText("Return to your room!")ShowMapDestinationIcon("31ARoomGate")
Field.setActiveWithTag("Gate",false)Field.createFollower("EAoi")
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
ReachEvent("Blocker",function()Yield(FinishWorld)Exit_World()end)end end
function StartWorld()Field.playerComeIn("StartPoint",Vec(0,0,3))
Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Guess it's time to call it a day.]],"VC_MC02_09_10_01_World_00000_RKayamori",
nil)Field.finishEvent()end
function FinishWorld()Transition.start()
Field.deleteFollowerAll()Field.startEvent()
local bClTIa=Adv.characterAsync("RKayamori","Default")local rDzL7SVO=Adv.characterAsync("EAoi","Default")
EmptyEvent("EAoi")Field.faceToFace("EAoi",0)
Field.setByWaypointPosition("Player","31ARoomPoint",Vec(0,0,-0.5))Field.setTalkCamera("EAoi",0)Field.setCameraAngleH(
Field.getCameraAngleH()-50,0)
Wait(1)Transition.finish()Wait(1)
Adv.waitAsyncInstanceAll()Layout.createStage()
Layout.show({bClTIa,"110301"},{rDzL7SVO,"010101"})
Adv.talkWithFacial("110301",nil,bClTIa,[[Anyway, I'm glad you're doing okay. Let's give those Cancers what for!]],"VC_MC02_09_10_01_World_00001_RKayamori")
Adv.talkWithFacial("010101",nil,rDzL7SVO,[[Right!]],"VC_MC02_09_10_01_World_00002_EAoi")Layout.show()Wait(0.5)
Field.moveBy("EAoi",Vec(-5),5)Wait(1)local BW0WFP=Vec(-15.6,1.45,0.5)
Field.setLookAtPosition("Player",BW0WFP,0.3)Wait(1.5)Field.disableLookAt("Player")Wait(0.5)
Field.moveBy("Player",Vec(0,0,5),5)end