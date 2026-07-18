local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day11/World/MC02_11_06_01.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then EmptyEvent("YIzumi")
StartEvent(function()Yield(StartWorld)
Sound.stopAllENV()Exit_World()end)end end
function StartWorld()
Field.setCameraCompositionEx(Vec(64.800,1.500,-6.000),Vec(6.000,332.000,0.000),30.00)Field.playerComeIn("GatePoint_2",Vec(2))
local bClTIa=Adv.characterAsync("RKayamori","Default")
Field.showAdvHudWrapper(function()Layout.show({bClTIa,"070202"})
Adv.talkWithFacial(
nil,nil,bClTIa,[[Alright. Keep those reports up, everyone.]],"VC_MC02_00541_v001_RKayamori")Adv.fadeOut(0.5)Layout.hide()EmptyEvent("Enemy")
Field.setCameraCompositionEx(Vec(52.000,4.300,
-16.000),Vec(0.000,340.000,0.000),35.00)Wait(1)
Field.setCameraCompositionEx(Vec(52.000,4.300,-16.000),Vec(0.000,345.000,0.000),35.00,4)Adv.fadeIn(0.5)
Adv.talkWithIcon("YIzumi",[[Yup. Especially with those enemies up ahead.]],"VC_MC02_00542_v001_YIzumi")Transition.setSymbolEncountTransition(true)
Transition.start()Wait(1)Sound.playBGM("SI0001")end)end