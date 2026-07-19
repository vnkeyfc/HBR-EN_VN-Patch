local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day10/World/MC02_10_06_03.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SI0001")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then Field.createFollower("YIzumi")
Field.createFollower("EAoi")Field.createFollower("Byakko")
StartEvent(function()
Yield(StartWorld)Sound.stopAllENV()Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)
Field.resetPosition("CenterPoint")Field.resetFollowerPosition("Player")Wait(1)
Field.startEvent()Field.moveBy("Camera",Vec(1.5),0)Field.setCameraFov(
Field.getCameraFov()*0.7,0)Field.setCameraAngleH(
Field.getCameraAngleH()-20,0)
Field.moveOnRoute("Camera","GatePoint_1",4)Field.moveOnRoute("Player","GatePoint_1",4)Wait(1)
Adv.fadeIn(1)Wait(2)
Transition.setSymbolEncountTransition(true)Transition.start()Wait(1)Adv.fadeOut(0)end