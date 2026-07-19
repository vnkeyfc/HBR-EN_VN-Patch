function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day14/World/MC02_14_06_04.unity")end
function init()refresh()end;function refresh()Sound.playBGM("SI0001")
Field.setActive("Player",false)
StartEvent(function()Yield(StartWorld)Exit_World()end)end
function StartWorld()
Adv.fadeOut(0)
Field.setCameraCompositionExWithListener(Vec(53.800,1.000,-6.700),Vec(358.700,345.000,0.000),30.00)Wait(0.1)
Field.setCameraCompositionExWithListener(Vec(-10.000,1.000,-6.700),Vec(358.700,345.000,0.000),30.00,14.3)Field.moveOnRoute("RKayamori","Goal",3)
Field.moveOnRoute("YIzumi","Goal",3)Field.moveOnRoute("EAoi","Goal",3)
Field.moveOnRoute("SMinase","Goal",3)Field.moveOnRoute("IMinase","Goal",3)
Field.moveOnRoute("Byakko","Goal",3)Wait(1)Adv.fadeIn(0.5)Wait(4)
Transition.setSymbolEncountTransition(true)Transition.start()
Field.setCameraCompositionEnabled()Field.stopTaskAll()end