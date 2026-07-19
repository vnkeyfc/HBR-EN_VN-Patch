local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day02/World/MC02_02_06_00_MainStreet.unity")
EventScene("FriendStreet","Assets/Lua/Story/MC02/Day02/World/MC02_02_06_00_FriendStreet.unity")end;function init()refresh()end
function refresh()Sound.playBGM("SB0048",1,2)
SetPeriodText("Chase the tiger!")Field.setActiveWithTag("Gate",false)
Field.setActive("FriendStreetLeftGate",true)
Field.returnToWayPoint("BlockerRight","CafeteriaPoint",[[Nope! I've got a tiger to chase!]],"VC_MC02_02_06_00_World_00000_RKayamori")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
Field.setActive("Player",false)EmptyEvent("RKayamori")EmptyEvent("Byakko")
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then ShowMapDestinationIcon("FriendStreetLeftGate")
Field.createFollower("KAsakura")
ReachEvent_NextWorldEventStep("TKunimi",w0qyLbH,TalkToTKunimi)elseif nsgji==2 then
if FieldLabel()=="MainStreet"then
ShowMapDestinationIcon("FriendStreetLeftGate")else ShowMapDestinationIcon("YIzumi")end;Field.createFollower("KAsakura")
Field.createFollower("TKunimi")
ReachEvent("YIzumi",function()Yield(TalkToYIzumi)Exit_World()end)end end
function StartWorld()local bClTIa=Adv.characterAsync("RKayamori")
Field.setCameraCompositionEx(Vec(27.000,2.000,60.000),Vec(10.600,327.000,0.000),25.00)Wait(1)Adv.waitAsyncInstanceAll()
Field.setLookAtTarget("RKayamori","Byakko",0.2)Wait(0.5)
Routine(function()Wait(0.3)
Field.startCameraQuake(0.05,0.05,0.05,1.2)
local BW0WFP=Adv.effect("Adventure/LineWork/LineWork","ForegroundEffect",nil,Vec(700,-250))Adv.show(BW0WFP,0.3)Wait(0.3)Adv.hide(BW0WFP,0.3)end)
Routine(function()Wait(0.2)
Field.setCameraCompositionExWait(Vec(27.000,2.000,60.000),Vec(10.600,327.000,0.000),45.00,0.3)end)
Field.moveBy("Byakko",Field.convertCameraAxisXZ(-16,0,-2),2)Wait(2)Field.disableLookAt("RKayamori")
Field.turnTo("RKayamori",170,0.3)Layout.createStage()
if Domain.getIntroductionFlag("Byakko")then
Layout.show({bClTIa,"0001"})
Adv.talkWithFacial(nil,nil,bClTIa,[[That tiger looks familiar...]],"VC_MC02_02_06_00_World_00002_RKayamori")else Layout.show({bClTIa,"0801"})
Adv.talkWithFacial(nil,nil,bClTIa,[[What was that?! Better check it out.]],"VC_MC02_02_06_00_World_00003_RKayamori")end;Transition.start(0.5)Layout.show()
Field.setActive("Byakko",false)Field.setActive("RKayamori",false)
Field.setActive("Player",true)EmptyEvent("KAsakura")
Field.resetPosition("CafeteriaPoint")Field.turnTo("Player",-135,0)
Field.setCameraCompositionEx(Vec(31.000,2.400,61.200),Vec(15.000,288.000,0.000),25.00)Wait(2)Transition.finish()
Field.moveToWait("KAsakura",Vec(26.7,0,62.6),1)local rDzL7SVO=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"080101"})
Adv.talk(rDzL7SVO,[[Ruka! A tiger just dashed right by me!]],"VC_MC02_02_06_00_World_00004_KAsakura")Layout.show({rDzL7SVO,"070201"})
Adv.talk(rDzL7SVO,[[What's a tiger doing here? I have to find out!]],"VC_MC02_02_06_00_World_00005_KAsakura")Transition.start()end)Field.turnTo("Player",-135,0)
Field.createFollower("KAsakura")Wait(1)end
function TalkToTKunimi()Field.turnToTarget("Player","TKunimi",0.3)
Transition.start()Field.setPosition("Player",Vec(0,0,18.5))Field.setPosition("Follower/KAsakura",Vec(
-1,0,19))
Field.turnToTarget("Follower/KAsakura","TKunimi",0)
Field.setCameraCompositionEx(Vec(5.800,1.600,19.200),Vec(5.000,260.000,0.000),25.00)Wait(1)Transition.finish()
local X8=Adv.characterAsync("TKunimi","Default")
Field.startTalkEx("TKunimi",FaceToFaceMode.Auto,FaceToFaceMode.None,function()
Layout.show({X8,"080201"})
Adv.talk(X8,[[Huh, a tiger? Well, I did see SOMETHING large and animal-like headed towards Union Street...]],"VC_MC02_02_06_00_World_00006_TKunimi")Layout.show({X8,"070202"})
Adv.talk(X8,[[I don't know what's happening, but I'm coming too! A tiger is no match for yours truly!]],"VC_MC02_02_06_00_World_00007_TKunimi")Transition.start()end)Field.resetPosition("VendingMachinePoint")Field.turnTo("Player",
-180,0)Wait(1)end
function TalkToYIzumi()local JQT=Adv.characterAsync("YIzumi","Default")
Field.turnToTargetAllFollower("YIzumi")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()Layout.show({JQT,"0802"})
Adv.talk(JQT,[[Ruka, what on earth is going on?]],"VC_MC02_02_06_00_World_00008_YIzumi")Layout.show()Field.disableLookAt("YIzumi")
Field.turnToWait("YIzumi",0,0.3)Layout.show({JQT,"0802"})
Adv.talk(JQT,[[A giant creature just ran into the gym...]],"VC_MC02_02_06_00_World_00009_YIzumi")Field.disableLookAt("YIzumi")end)end