local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("CountryTownArena1","Assets/Lua/Story/MC02/Day18/World/MC02_18_06_01.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0008")
Sound.playENV("EN_Arena_Startup_Loop")Field.setActiveWithTag("Gate",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent(function()Yield(StartWorld)Sound.stopAllENV()
Exit_World()end)end end
function StartWorld()Field.resetPosition("GatePoint_2Left")
Field.faceToFace("YIzumi",0)
Field.setCameraCompositionEx(Vec(58.800,1.500,-8.000),Vec(5.000,354.000,0.000),30.00)Wait(0.5)local bClTIa=Adv.characterAsync("RKayamori")
local rDzL7SVO=Adv.characterAsync("YIzumi")
Field.showAdvHudWrapper(function()Wait(1)
Layout.show({bClTIa,"110202"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Ha ha! This time'll be easy as pie.]],"VC_MC02_00801_v001_RKayamori")Layout.show({rDzL7SVO,"130203"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Careful, you don't want to jinx anything.]],"VC_MC02_00802_v001_YIzumi")Layout.show()Field.turnToWait("YIzumi",-90,0.4)
Wait(1)Layout.show({rDzL7SVO,"000201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[See? We're already under attack.]],"VC_Z_900600078_YIzumi")Layout.show()
Transition.setSymbolEncountTransition(true)Transition.start()Wait(1)
Sound.playBGM("SI0001")end)end