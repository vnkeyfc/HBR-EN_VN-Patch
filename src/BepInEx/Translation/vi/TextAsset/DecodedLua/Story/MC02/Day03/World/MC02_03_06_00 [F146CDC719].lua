local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day03/World/MC02_03_06_00_MainStreet.unity")end;function init()
Sound.playBGM("SB0022",1,2)refresh()end
function refresh()
SetPeriodText("Head to the arena!")ShowMapDestinationIcon("ArenaGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerLeft","CafeteriaPoint",[[I'm feeling like skipping training and taking a nap...but nah, I'd rather stay on the commander's good side.]],"VC_MC02_03_06_00_World_00000_RKayamori")
Field.returnToWayPoint("BlockerRight","ArenaPoint",[[I'm feeling like skipping training and taking a nap...but nah, I'd rather stay on the commander's good side.]],"VC_MC02_03_06_00_World_00000_RKayamori")ReachEventNoLock("MAikawa",TalkToMAikawa)
TouchEvent("YIzumi",TalkToYIzumi)TouchEvent("TTojo",TalkToTTojo)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)else
Routine(function()
Field.moveOnRouteWait("KAsakura","NPC_ArenaPoint",1.0)Field.setActive("KAsakura",false)end)
TouchEvent("ArenaGate",function()Yield(FinishWorld)Exit_World()end)end end
function StartWorld()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[All done eating. Training calls!]],"VC_MC02_03_06_00_World_00002_RKayamori",
nil)
Adv.kayamoriTalk([[We were meeting up at the arena, right?]],"VC_MC02_03_06_00_World_00003_RKayamori",nil)Field.finishEvent()
local bClTIa=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({bClTIa,"000201"})
Adv.talk(bClTIa,[[Today marks another round of training. Let's get going.]],"VC_MC02_03_06_00_World_00006_KAsakura")end)end
function TalkToYIzumi()EmptyEvent("YIzumi")
Field.setRouteWandererEnabled("YIzumi",false)local rDzL7SVO=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"040201"})
Adv.talk(rDzL7SVO,[[Our next operation is some serious stuff. We need to really focus on training.]],"VC_MC02_03_06_00_World_00004_YIzumi")end)Field.setRouteWandererEnabled("YIzumi",true)end
function TalkToTTojo()local BW0WFP=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"0702"})
Adv.talk(BW0WFP,[[You're late. Let's hurry up and get in the arena.]],"VC_MC02_03_06_00_World_00005_TTojo")end)end
function TalkToMAikawa()EmptyEvent("MAikawa")
Field.talkByGayaBalloon("MAikawa",[[Tama, forget all about what they said last night.\nJust one big misunderstandin'.]],2,
nil,nil,nil,"VC_MC02_03_06_00_World_00007_MAikawa")Field.setLookAtTarget("TKunimi","MAikawa")
Field.talkByGayaBalloon("TKunimi",[[The way you keep refuting it is starting to sound suspicious...]],2,
nil,nil,nil,"VC_MC02_03_06_00_World_00008_TKunimi")Field.disableLookAt("TKunimi")Wait(10)
Field.talkByGayaBalloon("TKunimi",[[I don't get it...as a former captain, I feel like I should be more respected.]],2,
nil,nil,nil,"VC_MC02_03_06_00_World_00009_TKunimi")
Field.talkByGayaBalloon("MAikawa",[[Don't worry, you got us all beat when it comes ta uniqueness.]],2,nil,nil,nil,"VC_MC02_03_06_00_World_00010_MAikawa")end
function FinishWorld()Sound.stopBGM(5)Field.goToArena(nil,true)end