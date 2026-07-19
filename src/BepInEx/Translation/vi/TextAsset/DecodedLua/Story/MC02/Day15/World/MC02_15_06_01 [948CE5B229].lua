local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day15/World/MC02_15_06_01.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008",1)
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then Field.setActive("Player",false)
StartEvent(function()
Yield(StartWorld)Sound.stopAllENV()Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)
Field.showAdvHudWrapper(function()
Field.setCameraCompositionEx(Vec(58.000,1.500,-8.300),Vec(5.000,350.000,0.000),30.00)Wait(1)
Field.setCameraCompositionEx(Vec(58.000,1.500,-8.300),Vec(5.000,0.000,0.000),30.00,10)Adv.fadeIn(2)
Adv.talkWithIcon("YIzumi",[[Alright. We need full speed and top accuracy.]],"VC_MC02_00725_v001_YIzumi")
Adv.talkWithIcon("RKayamori",[[We wouldn't need to train if we could already do that! Look, the enemy's here!]],"VC_MC02_00726_v001_RKayamori")Transition.setSymbolEncountTransition(true)
Transition.start()Wait(1)end)Sound.playBGM("SI0001")end