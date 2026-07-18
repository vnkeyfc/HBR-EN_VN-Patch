ROUTINE()
local nsgji=Adv.characterAsync("RKayamori","Default")Battle.waitLoadEnd()Sound.playBGM("SI0001",1,0)
Battle.waitPreResult()Battle.startEvent()Sound.stopBGM(1)
local bClTIa=Sound.playENV("EN_Wind_Breeze_Loop")
Field.showAdvHudWrapper(function()Layout.show({nsgji,"000202"})
Adv.talkWithFacial("000202",
nil,nsgji,[[Whew... That's the last of 'em.]],"VC_MC02_00516_v001_RKayamori")Layout.show()end)Sound.stop(bClTIa)Battle.resumeEvent()
Sound.playBGM("SB0010")Exit()