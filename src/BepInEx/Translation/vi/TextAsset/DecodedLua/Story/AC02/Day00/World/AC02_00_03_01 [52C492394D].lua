local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("FriendStreet","Assets/Lua/Story/AC02/Day00/World/AC02_00_03_01_FriendStreet.unity")end
function init()refresh()end
function refresh()Sound.playEmptyBGM()
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
Field.setActive("Player",false)Field.hideTagCharacters("Mob")
StartEvent(function()
Yield(StoryNarvy)Exit_World()end)end end
function StoryNarvy()Adv.fadeOut(0)
local bClTIa=Adv.characterAsync("IMinase")
Field.showAdvHudWrapper(function()Wait(3)
Field.faceToFaceEx("IMinase","NarvyC",nil,0,0)
Field.setCameraCompositionExWithListener(Vec(50.000,-4.000,34.400),Vec(19.000,281.000,0.000),11.00)Adv.fadeIn(4)
Field.setCameraCompositionExWithListener(Vec(50.000,-4.000,34.400),Vec(19.000,281.000,0.000),30.00,25)Wait(2)
Adv.talkWithFacial(nil,nil,bClTIa,[[She was always apologetic about everything, and always hanging her head with a gloomy face.]],"VC_AC02_00142_IMinase")
Adv.talkWithFacial(nil,nil,bClTIa,[[That's even though she'd been chosen as the leader of Squad 31-B and was getting great results in battles.]],"VC_AC02_00143_IMinase")
Adv.talkWithFacial(nil,nil,bClTIa,[[Even then, she always wore that gloomy look on her face.]],"VC_AC02_00144_IMinase")
Adv.talkWithFacial(nil,nil,bClTIa,[[It seemed strange to us. Why did she always seem so self-deprecating?]],"VC_AC02_00145_IMinase")Adv.whiteOut(3)Field.stopCameraComposition()
Wait(3.3)end)end