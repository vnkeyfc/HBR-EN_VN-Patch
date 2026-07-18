local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Dormitory1F","Assets/Lua/Story/MC02/Day09/World/MC02_09_11_00.unity")end
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
Adv.kayamoriTalkMonolog([[(May as well cool off on the rooftop for a bit.)]],"VC_Z_900600052_RKayamori")Field.finishEvent()end;function FinishWorld()
Field.playerGetOut("StartPoint",Vec(-2,0,10))end