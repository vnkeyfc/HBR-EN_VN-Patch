local w0qyLbH="Event"..WorldLabel()function preload()end
function init()refresh()end
function refresh()Sound.playBGM("SB0011",1,2)
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent(function()
Yield(StartWorld)Sound.stopBGM(1)Exit_World()end)end end
function StartWorld()Field.playerComeIn("ArenaPoint",Vec(0,0,3))
Field.startEvent()Field.setTalkCamera("Player")
local bClTIa=Adv.characterAsync("IMinase")
Field.showAdvHudWrapper(function()Layout.show({bClTIa,"030201"})
Adv.talkWithFacial("0302",
nil,bClTIa,[[Man, I don't feel any better... It's like I just wasted my energy.]],"VC_AC02_00226_IMinase")
Adv.talkWithFacial("030001",nil,bClTIa,[[Guess I'll just sleep through the morning class.]],"VC_AC02_00227_IMinase")
Adv.talkWithFacial("3501",nil,bClTIa,[[Nah, even if I do, Aoi won't even pretend to care.]],"VC_AC02_00228_IMinase")
Adv.talkWithFacial("030202",nil,bClTIa,[[Damn... This is so annoying!]],"VC_AC02_00229_IMinase")Layout.show()end)Field.finishEvent()
Field.playerGetOut("ArenaPoint",Vec(-5,0,0),1,1)Transition.start(1.5)end