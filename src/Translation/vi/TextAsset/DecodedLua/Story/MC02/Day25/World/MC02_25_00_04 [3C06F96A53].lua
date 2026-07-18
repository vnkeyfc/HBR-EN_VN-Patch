local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("Forest_DeadendRightBranchBackLeftUp","Assets/Lua/Story/MC02/Day25/World/MC02_25_00_04_Forest_DeadendRightBranchBackLeftUp.unity")end;function init()refresh()end
function refresh()
SetPeriodText("Defeat the enemies and keep moving forward!")Field.setEncountRange(30.0,40.0)
Field.setEncountLabel("RandomEncount.MC02_25")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then SetAutoModePointName("Blocker")
ReachEvent_NextWorldEventStep("Blocker",w0qyLbH,GoAround)elseif nsgji==2 then SetAutoModePointName("GatePoint_2")
TouchEvent("GatePoint_2",function()Field.playerGetOut("GatePoint_2",Vec(
-2,0,10))Exit_World()end)end end
function StartWorld()Field.playerComeIn("GatePoint_1",Vec(-2))end
function GoAround()Field.startEvent()
Field.setTalkCamera("Player")
Adv.kayamoriTalk([[There's a boulder in the way. We'll have to go around!]],"VC_MC02_25_00_05_World_00000_RKayamori",nil)Field.moveToWaypoint("Camera","LeftRockPoint",2)
Field.moveToWaypointWait("Player","LeftRockPoint",2)Field.resetPosition()Field.finishEvent()end