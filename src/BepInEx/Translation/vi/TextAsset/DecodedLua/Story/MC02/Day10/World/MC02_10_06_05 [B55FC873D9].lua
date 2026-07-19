local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day10/World/MC02_10_06_05.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent(function()Yield(StartWorld)Sound.stopAllENV()
Exit_World()end)end end
function StartWorld()Field.startEvent()
Field.resetPosition("GatePoint_2")Field.moveCameraTarget("Player",0)Field.setCameraFov(
Field.getCameraFov()*0.6,0)Field.setCameraAngleH(
Field.getCameraAngleH()-20,0)
Field.playerComeIn("GatePoint_2",Vec(3))Field.changeAnimation("Player","FieldIdleAction")
Wait(0.5)
Adv.kayamoriTalk([[We finally made it!]],"VC_Z_900600067_RKayamori")end