ROUTINE()
local w0qyLbH=Adv.characterAsync("RKayamori","Default")Battle.waitLoadEnd()Sound.playBGM("SI0001",1,0)
Adv.waitAsyncInstanceAll()Battle.waitPreResult()Battle.startEvent()
Sound.stopBGM(2)
Field.showAdvHudWrapper(function()Layout.show({w0qyLbH,"090201"})
Adv.talkWithFacial(
nil,nil,w0qyLbH,[[Aw yeah! Let's keep up the pace and END this!]],"VC_MC02_00727_v001_RKayamori")Layout.show()end)Battle.resumeEvent()Sound.playBGM("SB0010")
Exit()