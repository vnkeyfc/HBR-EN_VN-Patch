local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day11/World/MC02_11_06_05.unity")end
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
Adv.kayamoriTalk([[Another day down!]],"VC_Z_900600068_RKayamori")end