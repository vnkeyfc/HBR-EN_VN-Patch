local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day04/World/MC02_04_06_00_MainStreet.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0022",1,2)
SetPeriodText("Head to the arena!")ShowMapDestinationIcon("ArenaGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerLeft","SchoolPoint",[[Don't wanna get yelled at... Better hurry to the arena!]],"VC_MC02_04_06_00_World_00000_RKayamori")
Field.returnToWayPoint("BlockerRight","ArenaPoint",[[Don't wanna get yelled at... Better hurry to the arena!]],"VC_MC02_04_06_00_World_00000_RKayamori")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then EmptyEvent("IMinase")EmptyEvent("SMinase")
EmptyEvent("EAoi")TouchEvent("YIzumi",TalkToYIzumi)
TouchEvent("TTojo",TalkToTTojo)TouchEvent("KAsakura",TalkToKAsakura)
TouchEvent("MAikawa",TalkToMAikawa)TouchEvent("TKunimi",TalkToTKunimi)
TouchEvent("ArenaGate",function()
Yield(FinishWorld)Exit_World()end)end end
function StartWorld()Field.resetPosition("SchoolPoint")local bClTIa=
Field.getWaypointPosition("SchoolPoint")+Vec(0,0,4)
Field.setPosition("Player",bClTIa)Field.moveByWait("Player",Vec(0,0,-2),2)
Field.startEvent()Field.setTalkCamera("Player")
Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Another day, another training session.]],"VC_MC02_04_06_00_World_00002_RKayamori",nil)
Adv.kayamoriTalk([[I need some stimulation to break up all this monotony!]],"VC_MC02_04_06_00_World_00003_RKayamori",nil)
Adv.kayamoriTalk([[Just gotta get through today's training with a perfect score, and then, after school—]],"VC_MC02_04_06_00_World_00004_RKayamori",nil)Field.setLookAtTarget("Player","IMinase")Adv.kayamoriTalk([[Huh?]],"VC_MC02_04_06_00_World_00005_RKayamori",
nil)
Transition.start()Field.finishEvent(0)EmptyEvent("IMinase")
EmptyEvent("SMinase")EmptyEvent("EAoi")
Field.setCameraCompositionEx(Vec(63.400,1.300,64.600),Vec(0.000,330.000,0.000),30.00)Wait(1)Field.setLookAtTarget("Player","IMinase")
Transition.finish()
Field.setCameraCompositionEx(Vec(63.400,1.300,64.600),Vec(0.000,0.000,0.000),35.00,5)
Field.talkByGayaBalloonNoPlayable("IMinase",[[Training's such a pain in the ass...]],1.5,nil,nil,nil,"VC_MC02_04_06_00_World_00006_IMinase")
Field.talkByGayaBalloonNoPlayable("SMinase",[[Let's just get this over with, meow.]],1.5,nil,nil,nil,"VC_MC02_04_06_00_World_00007_SMinase")Field.setLookAtTarget("Player","EAoi")Wait(0.3)
Field.talkByGayaBalloonNoPlayable("EAoi",[[Focus... Keep it together...]],2,
nil,nil,nil,"VC_MC02_04_06_00_World_00008_EAoi")Wait(0.5)Transition.start()
Field.resetPosition("SchoolPoint")Field.disableLookAt("Player")
Field.setCameraCompositionEnabled(false)Field.turnTo("Player",90,0)Wait(2)
Transition.finish()Wait(1)
Adv.kayamoriTalk([[They were...]],"VC_MC02_04_06_00_World_00009_RKayamori",nil)end
function TalkToYIzumi()local rDzL7SVO=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"000201"})
Adv.talk(rDzL7SVO,[[What's wrong? Let's get going already.]],"VC_MC02_04_06_00_World_00010_YIzumi")Field.disableLookAt("YIzumi")end)end
function TalkToTTojo()local BW0WFP=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"000302"})
Adv.talk(BW0WFP,[[......]],"VC_MC02_04_06_00_World_00011_TTojo")Layout.show({BW0WFP,"040003"})
Adv.talk(BW0WFP,[[That group that passed by just now—I think I've seen them before... or maybe not.]],"VC_MC02_04_06_00_World_00012_TTojo")Field.disableLookAt("TTojo")end)end
function TalkToKAsakura()local X8=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({X8,"000201"})
Adv.talk(X8,[[Did you sleep well last night?]],"VC_MC02_04_06_00_World_00013_KAsakura")
local JQT=Adv.question([[I...]],[[Slept well|Couldn't sleep]],0)
if JQT==0 then
Adv.talkWithIcon("RKayamori",[[I slept pretty well, yeah.]],"VC_MC02_00330_v001_RKayamori")Layout.show({X8,"000202"})
Adv.talk(X8,[[Good. Then training will be a breeze.]],"VC_MC02_04_06_00_World_00014_KAsakura")elseif JQT==1 then
Adv.talkWithIcon("RKayamori",[[I couldn't sleep at all.]],"VC_MC02_00331_v001_RKayamori")Layout.show({X8,"020003"})
Adv.talk(X8,[[Uh-oh. Please try not to hurt yourself in training today.]],"VC_MC02_04_06_00_World_00015_KAsakura")end;Field.disableLookAt("KAsakura")end)end
function TalkToMAikawa()local AtYtR=Adv.characterAsync("MAikawa","Default")
Field.startTalk("MAikawa",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"000201"})
Adv.talk(AtYtR,[[Wonder how many sessions we got left.]],"VC_MC02_04_06_00_World_00016_MAikawa")Field.disableLookAt("MAikawa")end)end
function TalkToTKunimi()local ND2BCh3=Adv.characterAsync("TKunimi","Default")
Field.startTalk("TKunimi",FaceToFaceMode.Auto,function()
Layout.show({ND2BCh3,"110202"})
Adv.talk(ND2BCh3,[[No time to rest between band practice and training. We're so popular!]],"VC_MC02_04_06_00_World_00017_TKunimi")Field.disableLookAt("TKunimi")end)end
function FinishWorld()Sound.stopBGM(5)Field.goToArena(nil,true)end