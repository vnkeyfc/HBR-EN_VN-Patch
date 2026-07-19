local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Dormitory1F","Assets/Lua/Story/MC02/Day06/World/MC02_06_11_00_Dormitory1F.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0047",1,2)
SetPeriodText("Go to the roof!")ShowMapDestinationIcon("RooftopGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerRight","StartPointRight",[[(Too far.)]],"VC_MC02_06_11_00_World_00000_RKayamori")
Field.returnToWayPoint("BlockerLeft","BigBathPoint",[[(Not this way.)]],"VC_MC02_06_11_00_World_00001_RKayamori")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
TouchEvent("RooftopGate",function()Yield(FinishWorld)Exit_World()end)end end
function StartWorld()
Field.playerComeIn("BigBathPoint",Vec(0,0,3))Field.changeAnimation("Player","FieldIdleAction")
Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[(Whew, I nearly cooked myself in the bath.)]],"VC_MC02_06_11_00_World_00002_RKayamori",
nil)
Adv.kayamoriTalk([[(I bet it's nice and cool up on the roof.)]],"VC_MC02_06_11_00_World_00003_RKayamori",nil)Field.finishEvent()end;function FinishWorld()
Field.playerGetOut("StartPoint",Vec(-2,0,10))end