local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest_OneRoadUp","Assets/Lua/Story/MC02/Day25/World/MC02_25_00_03_Forest_OneRoadUp.unity")end;function init()
refresh()end
function refresh()Sound.playBGM("SB0076",1,0)
Field.setEncountRange(30.0,40.0)Field.setEncountLabel("RandomEncount.MC02_25")
SetPeriodText("Defeat the enemies and keep moving forward!")SetAutoModePointName("GatePoint_2")
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
TouchEvent("GatePoint_2",function()
Field.playerGetOut("GatePoint_2",Vec(2))Exit_World()end)end end
function StartWorld()Field.playerComeIn("GatePoint_1",Vec(-2))
Field.changeAnimation("Player","FieldStand")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Be on the lookout for any Cancers.]],"VC_MC02_25_00_04_World_00000_RKayamori",
nil)Field.finishEvent()end