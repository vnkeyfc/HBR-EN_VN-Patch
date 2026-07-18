local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest_PararellUp","Assets/Lua/Story/MC02/Day25/World/MC02_25_00_05_Forest_PararellUp.unity")end;function init()
refresh()end
function refresh()
SetPeriodText("Defeat the enemies and keep moving forward!")SetAutoModePointName("Blocker")
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then EmptyEvent("WireSlasher1")
EmptyEvent("WireSlasher2")EmptyEvent("WireSlasher3")
ReachEvent("Blocker",function()Yield(Encount)
Exit_World()end)end end;function StartWorld()
Field.playerComeIn("GatePoint_1_Lower",Vec(-2))end
function Encount()
Field.turnToTarget("Player","WireSlasher1",0.3)Adv.fadeOut(0.3)local bClTIa=Field.getPlayerPosition()
Field.setActive("Player",false)EmptyEvent("RKayamori")
Field.setPosition("RKayamori",bClTIa)Field.turnToTarget("RKayamori","WireSlasher1",0)
Field.setLookAtTarget("RKayamori","WireSlasher1",0)
Field.setCameraCompositionEx(Vec(11.000,0.900,-6.500),Vec(352.000,8.500,5.000),35.00)Adv.fadeIn(0.3)
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[Up there!]],"VC_MC02_25_00_06_World_00000_RKayamori",nil)Field.trailOut("RKayamori")Wait(0.6)
Field.setCameraCompositionEx(Vec(11.000,0.900,
-6.500),Vec(347.000,8.500,5.000),24.00,0.3)Wait(0.2)
Expedition.showSymbolEncountTransition()Adv.fadeOut(0)
Expedition.hideSymbolEncountTransition()end)end