local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest","Assets/Lua/Story/MC02/Day25/World/MC02_25_00_01_Forest.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0076",1,0)
Sound.playENV("EN_Forest_Dawn_Loop")SetPeriodText("Look around the area!")
SetAutoModePointName("Blocker")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then ReachEvent("Blocker",Receive)end end
function StartWorld()Field.playerComeIn("TentPoint",Vec(0,0,3))
Field.changeAnimation("Player","FieldStand")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Now then, time to do a little patrol around the perimeter...]],"VC_MC02_25_00_00_World_00000_RKayamori",
nil)Field.finishEvent()end
function Receive()Sound.play("SY_Dencho_Calling")
Field.changeAnimation("Player","FieldItemStart")Field.startEvent()Field.setTalkCamera("Player")
Sound.stopAllENV()Exit_World()end