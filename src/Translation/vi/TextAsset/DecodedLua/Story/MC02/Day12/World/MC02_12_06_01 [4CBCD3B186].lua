local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day12/World/MC02_12_06_01.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then EmptyEvent("EAoi")EmptyEvent("SHiguchi")
EmptyEvent("KHiiragi")
StartEvent(function()Yield(StartWorld)Sound.stopAllENV()Exit_World()end)end end
function StartWorld()
Field.setCameraCompositionEx(Vec(56.000,1.400,-7.300),Vec(6.000,15.000,0.000),30.00)Field.playerComeIn("GatePoint_2Left",Vec(2))
Field.startTalk("EAoi",FaceToFaceMode.None,function()
Adv.kayamoriTalk([[Today's the last part of Phase Three. Let's show 'em what we're made of!]],"VC_MC02_00616_v001_RKayamori")Adv.fadeOut(1)end)Sound.playBGM("SI0001",1,0)
Field.setCameraCompositionEnabled(false)Field.resetPosition("CenterPoint")
Field.createFollower("EAoi")Field.createFollower("SHiguchi")
Field.createFollower("KHiiragi")Field.resetFollowerPosition("Player")Wait(1)
Field.startEvent()
Field.setCameraFov(Field.getCameraFov()*0.7,0)
Field.setCameraAngleH(Field.getCameraAngleH()+40,0)Field.moveOnRoute("Camera","GatePoint_1",4)
Field.moveOnRoute("Player","GatePoint_1",4)Sound.playBGM("SI0001")Wait(1)Adv.fadeIn(1)Wait(2)
Transition.setSymbolEncountTransition(true)Transition.start()Wait(1)end