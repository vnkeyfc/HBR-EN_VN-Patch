local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day11/World/MC02_11_06_03.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SI0001")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then Field.createFollower("YIzumi")
Field.createFollower("SHiguchi")Field.createFollower("KHiiragi")
StartEvent(function()
Yield(StartWorld)Sound.stopAllENV()Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)
Field.resetPosition("GatePoint_2Left")Field.resetFollowerPosition("Player")Wait(1)
Field.startEvent()
Field.setCameraFov(Field.getCameraFov()*0.7,0)
Field.setCameraAngleH(Field.getCameraAngleH()+40,0)Field.moveOnRoute("Camera","GatePoint_1",4)
Field.moveOnRoute("Player","GatePoint_1",4)Wait(1)Adv.fadeIn(1)Wait(2)
Transition.setSymbolEncountTransition(true)Transition.start()Wait(1)Adv.fadeOut(0)end