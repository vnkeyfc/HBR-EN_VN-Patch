local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day13/World/MC02_13_06_01.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then EmptyEvent("YIzumi")EmptyEvent("IMinase")
EmptyEvent("SMinase")
StartEvent(function()Yield(StartWorld)Sound.stopAllENV()Exit_World()end)end end
function StartWorld()
Field.setCameraCompositionEx(Vec(59.900,1.000,-7.200),Vec(358.700,345.000,0.000),30.00)Field.resetPosition("GatePoint_2Left")
Field.turnTo("Player",180,0)Field.changeAnimation("Player","FieldIdleAction")
Wait(1.5)local bClTIa=Adv.characterAsync("RKayamori","Default")
Field.showAdvHudWrapper(function()
Layout.show({bClTIa,"150002"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Guard duty makes me wanna go to sleep.]],"VC_MC02_00646_v001_RKayamori")Adv.fadeOut(0.5)Layout.hide()
EmptyEvent("CatHorn")
Field.setCameraCompositionEx(Vec(40.500,2.000,-11.000),Vec(355.000,335.000,0.000),30.00)Wait(1)
Field.setCameraCompositionEx(Vec(40.500,2.000,-11.000),Vec(348.000,335.000,0.000),30.00,6)Adv.fadeIn(1)
Adv.talkWithIcon("YIzumi",[[Doesn't look like the enemy's going to let you, though.]],"VC_MC02_00647_v001_YIzumi")
Adv.talkWithIcon("RKayamori",[[Then I'll have to grin and bear it, huh?]],"VC_MC02_00648_v001_RKayamori")Transition.setSymbolEncountTransition(true)
Transition.start()Wait(1)Sound.playBGM("SI0001")Adv.fadeOut(0)end)end