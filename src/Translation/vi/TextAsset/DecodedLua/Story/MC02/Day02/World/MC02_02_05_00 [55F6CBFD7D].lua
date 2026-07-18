local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day02/World/MC02_02_05_00_MainStreet.unity")end;function init()
Sound.playBGM("SB0022",1,2)refresh()end
function refresh()
SetPeriodText("Go to the cafeteria!")ShowMapDestinationIcon("CafeteriaGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerLeft","CafeteriaPoint",[[Maybe I'll take a nice stroll... No, wait, I'm famished!]],"VC_MC02_02_05_00_World_00000_RKayamori")
Field.returnToWayPoint("BlockerRight","SchoolPoint",[[Maybe I'll take a nice stroll... No, wait, I'm famished!]],"VC_MC02_02_05_00_World_00000_RKayamori")TouchEvent("TTojo",TalkToTTojo)
TouchEvent("KAsakura",TalkToKAsakura)ReachEventNoLock("MAikawa",VendingMachineTalk)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)else Field.createFollower("YIzumi")
TouchEvent("CafeteriaGate",function()
Yield(FinishWorld)Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)Field.setActive("Player",false)
EmptyEvent("RKayamori")EmptyEvent("YIzumi")
Field.setCameraCompositionEx(Vec(61.200,1.600,64.700),Vec(6.000,10.900,0.000),36.00)Wait(0.1)
Field.setCameraCompositionEx(Vec(61.200,1.600,64.700),Vec(6.000,10.900,0.000),30.00,1.5)Adv.fadeIn(1)Field.waitCameraComposition()
local bClTIa=Adv.characterAsync("RKayamori")local rDzL7SVO=Adv.characterAsync("YIzumi")
Field.showAdvHudWrapper(function()
Layout.show({bClTIa,"000002"},{rDzL7SVO,"0001"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Man, training's about to start up again... Kill me now.]],"VC_MC02_02_05_00_World_00002_RKayamori")
Adv.talkWithFacial("0003",nil,bClTIa,[[Today's a rare day off, so I've gotta enjoy it. First, some grub.]],"VC_MC02_02_05_00_World_00003_RKayamori")
if
GetFlag("東城の母親は事故死じゃなかったんだろう？")==1 then
Adv.talkWithFacial("1301",nil,rDzL7SVO,[[Just try not to do anything stupid... I'm sick and tired of cleaning up your messes.]],"VC_MC02_02_05_00_World_00004_YIzumi")end
Adv.talkWithFacial("000103",nil,rDzL7SVO,[[Anyway, let's head to the cafeteria.]],"VC_MC02_02_05_00_World_00005_YIzumi")Transition.start()
Field.setCameraCompositionEnabled(false)Layout.hide()Field.setActive("Player",true)
Field.resetPosition("SchoolPoint")Wait(1)Field.createFollower("YIzumi")Field.setByPlayerPosition("Follower/YIzumi",Vec(0.7,0,
-0.5))Field.turnTo("Player",
-90,0)
Field.turnTo("Follower/YIzumi",-90,0)end)end;function FinishWorld()
Field.playerGetOut("CafeteriaPoint",Vec(-2,0,2))end
function TalkToTTojo()
local BW0WFP=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"070001"})
Adv.talk(BW0WFP,[[It's been one thing after another lately, but right now, there's only one thing on my mind...]],"VC_MC02_02_05_00_World_00006_TTojo")Layout.show({BW0WFP,"010202"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[What should I have for lunch today?]],"VC_MC02_02_05_00_World_00007_TTojo")Field.disableLookAt("TTojo")end)end
function TalkToKAsakura()local X8=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({X8,"000201"})
Adv.talk(X8,[[This upcoming operation seems tough... Let's give our all, Ruka.]],"VC_MC02_02_05_00_World_00008_KAsakura")Field.disableLookAt("KAsakura")end)end
function VendingMachineTalk()EmptyEvent("MAikawa")
Field.talkByGayaBalloon("TKunimi",[[What to choose...what to choose...]],2,
nil,nil,nil,"VC_MC02_02_05_00_World_00009_TKunimi")
Field.talkByGayaBalloon("MAikawa",[[It's already lunchtime.\nJust stick with one.]],2,nil,nil,nil,"VC_MC02_02_05_00_World_00010_MAikawa")end