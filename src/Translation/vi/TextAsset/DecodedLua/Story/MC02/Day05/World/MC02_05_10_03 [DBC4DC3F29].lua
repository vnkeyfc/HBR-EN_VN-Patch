local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day05/World/MC02_05_10_03_MainStreet.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0015",1,2)
Field.setActiveWithTag("Gate",false)Field.setActiveWithTag("Mob",false)
Field.setActiveWithTag("Narvy",false)Field.setCharacterFootstepEnabled("EAoi_1",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,function()Yield(StartWorld)Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)EmptyEvent("EAoi")
EmptyEvent("RKayamori")Field.setActive("Player",false)
Field.setLookAtTarget("RKayamori","EAoi",0)Field.turnToTarget("RKayamori","EAoi",0)
Field.setCameraCompositionEx(Vec(76.000,1.320,70.000),Vec(1.000,332.000,0.000),30.00)Adv.fadeIn(1)
local bClTIa=Adv.characterAsync("EAoi","Default")Adv.waitAsyncInstanceAll()Layout.createStage()
Layout.show({bClTIa,"010201"})
Adv.talk(bClTIa,[[It's getting late. Shall we head back?]],"VC_MC02_05_10_03_World_00002_EAoi")Transition.start()Layout.show()
Field.setCameraCompositionEnabled(false)EmptyEvent("EAoi_1")
Field.setActive("RKayamori",false)Field.setActive("Player",true)
Field.resetPosition("SchoolPointRight")Wait(2)Field.startEvent()
Field.moveOnRoute("Player","DormitoryPoint")Field.moveOnRoute("Camera","DormitoryPoint")
Wait(0.3)Field.moveOnRoute("EAoi_1","DormitoryPoint")Field.turnTo("Camera",
-15,0)
Field.setCameraHeight(Field.getCameraHeight()-0.1,0)
Field.setCameraFov(Field.getCameraFov()*0.7,0)Wait(0.5)Transition.finish()Wait(1)
Field.setLookAtTarget("EAoi_1","Player")
Field.talkByGayaBalloonNoPlayable("EAoi_1",[[Ruka...]],2,nil,nil,nil,"VC_MC02_05_10_03_World_00003_EAoi")Wait(0.5)
Field.talkByGayaBalloonNoPlayable("EAoi_1",[[Thank you.]],2,nil,nil,nil,"VC_MC02_05_10_03_World_00004_EAoi")Wait(0.5)
Field.talkByGayaBalloonNoPlayable("EAoi_1",[[For hearing me out.]],2,nil,nil,nil,"VC_MC02_05_10_03_World_00005_EAoi")Wait(0.5)
Field.talkByGayaBalloonNoPlayable("EAoi_1",[[I can't wait to celebrate together!]],2,nil,nil,nil,"VC_MC02_05_10_03_World_00006_EAoi")Field.disableLookAt("EAoi_1")Wait(1)
Adv.fadeOut(2)end