local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("FriendStreet_Autumn","Assets/Lua/Story/AC33/Day01/World/AC33_01_03_02_FriendStreet.unity")
EventScene("MainStreet_Autumn","Assets/Lua/Story/AC33/Day01/World/AC33_01_03_02_MainStreet.unity")
EventScene("Dormitory1F_AutumnSummer","Assets/Lua/Story/AC33/Day01/World/AC33_01_03_02_Dormitory1F.unity")end;function init()Sound.playBGM("SB0011")
Sound.playENV("EN_Air_Outdoor_Loop")refresh()end
function refresh()
SetPeriodText("Head to the common room!")EmptyEvent("MuOhshima")
Field.setActiveWithTag("Gate",false)Field.setActive("MainStreetRightGate",true)
Field.setActive("FriendStreetRightGate",true)Field.setActive("MainStreetLeftGate",true)
Field.setActive("FriendStreetLeftGate",true)Field.setActive("MainStreetGate",true)
Field.setActive("DormitoryGate",true)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
Field.returnToWayPoint("Blocker_FriendStreet","StopPointRight",[[Not this way, meow!]],"VC_AC33_00107_SMinase","SMinase")
Field.returnToWayPoint("Blocker_CafeLeft","SquarePoint",[[Not this way, meow!]],"VC_AC33_00107_SMinase","SMinase")
Field.returnToWayPoint("Blocker_Dormitory","BigBathPoint",[[Not this way, meow!]],"VC_AC33_00107_SMinase","SMinase")ReachEventNoLock("IMinase",GayaIMinase)
ReachEventNoLock("RKayamori",GayaRKayamori)ReachEventNoLock("CSugahara",GayaCSugahara)
ReachEventNoLock("AMizuhara",GayaAMizuhara)ShowMapDestinationIcon("Blocker_Event")
ReachEvent("Blocker_Event",function()
Sound.stopENV("EN_Air_Outdoor_Loop")
Field.playerGetOut("WaterFallPointRight",Vec(2,0,0))
Exit_World(function()Field.disableLookAt("IMinase",0.5)end)end)end end
function StartWorld()Adv.fadeOut(0)
Field.playerComeIn("NarvySquarePoint",Vec(-2,0,0),nil,true)Field.setCameraNearClip(0.10)Adv.fadeIn(0.5,true)
Field.waitTaskKey("Player")Field.startEvent()Field.setTalkCamera("Player")
Wait(0.5)
Field.changeAnimationWait("Player","FieldItemStart",1,1)Wait(1)
Field.changeAnimation("Player","FieldItemLoop",1,1)Wait(0.3)
Adv.talkWithIcon("SMinase",[[The request is from Ohshima...who? They need to write their names in hiragana, meow.]],"VC_AC33_00105_SMinase")
Adv.talkWithIcon("SMinase",[[She's waiting for me in the common room, meow. Guess I'd better get going, meow.]],"VC_AC33_00106_SMinase")
Field.changeAnimationWait("Player","FieldItemEnd",1,1)Field.resetCameraClipRange()
Field.resetPosition()Field.finishEvent()end
function GayaIMinase()Field.setLookAtTarget("IMinase","Player",0.3)
Field.talkByGayaBalloonJustOnce("IMinase",[[......]],
nil,nil,nil,nil,"VC_AC33_00108_IMinase")end
function GayaCSugahara()
Field.setLookAtTarget("CSugahara","Player",0.3)
Field.talkByGayaBalloonJustOnce("CSugahara",[[22 lolita points. My, it has gone up a tad bit.]],nil,nil,nil,nil,"VC_AC33_00111_CSugahara")Field.disableLookAt("CSugahara",0.5)end
function GayaRKayamori()
Field.setLookAtTarget("RKayamori","Player",0.3)
Field.talkByGayaBalloonJustOnce("RKayamori",[[Oh crap, I just had an idea!]],nil,nil,1,nil,"VC_AC33_00109_RKayamori")Field.disableLookAt("RKayamori",0.5)end
function GayaAMizuhara()
Field.talkByGayaBalloonJustOnce("AMizuhara",[[I'll try mixing my bait with chocolate!\nShould keep the fish fresh longer.]],nil,nil,nil,nil,"VC_AC33_00110_AMizuhara")end