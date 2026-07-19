local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_01_MainStreet.unity")
EventScene("FriendStreet","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_01_FriendStreet.unity")
EventScene("BackStreet","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_01_BackStreet.unity")end
function init()if GetLocalFlag("最初")==0 then
Field.setFootstepEnabled(false)end;refresh()end
function refresh()Field.setActiveWithTag("Gate",false)
Field.setActive("MainStreetRightGate",true)Field.setActive("FriendStreetRightGate",true)
Field.setActive("BackStreetGate",true)Field.setActive("MainStreetLeftGate",true)
Field.setActive("FriendStreetGate",true)Field.setActive("FriendStreetLeftGate",true)
Field.hideTagCharacters("Narvy")Field.hideTagCharacters("Soldier")
Field.hideTagCharacters("Mob")Field.createFollower("RKayamori")
Field.createFollower("YIzumi")Expedition.setAutoPlayEnabled(false)
HideFastTravelButton()EmptyEvent("CSugahara")EmptyEvent("HOgasawara")
EmptyEvent("AKanzakiGayatalk01")EmptyEvent("AKanzakiGayatalk02")
EmptyEvent("AKanzakiGayatalk03")EmptyEvent("AKanzakiGayatalk04")
EmptyEvent("AKanzakiGayatalk05")EmptyEvent("AKanzakiGayatalk06")
EmptyEvent("AKanzakiBlocker01")EmptyEvent("AKanzakiGaya01")
EmptyEvent("AKanzakiGaya02")EmptyEvent("AKanzakiGaya03")
EmptyEvent("AKanzakiGaya04")EmptyEvent("AKanzakiGaya05")
EmptyEvent("AKanzakiGaya06")EmptyEvent("AKanzakiGaya07")
EmptyEvent("AKanzakiGaya08")EmptyEvent("AKanzakiGaya09")
EmptyEvent("AKanzakiGaya11")EmptyEvent("AKanzakiGaya12")
EmptyEvent("AKanzakiGaya13")EmptyEvent("AKanzakiGaya21")
EmptyEvent("AKanzakiGaya22")EmptyEvent("AKanzakiGaya23")
Sound.playBGM("SB0125",0,0)
if MatchField("FriendStreet")then
Sound.playENV("EN_Air_Outdoor_Loop")else Sound.stopAllENV(0.5)end;local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then SetPeriodText("Go to the studio!")
ShowMapDestinationIcon("StudioGate")ReachEventNoLock("CSugahara",AC25Gayatalk30G_02)
ReachEventNoLock("AKanzakiGayatalk01",AC25GayatalkAkanzaki01)
ReachEventNoLock("AKanzakiGayatalk02",AC25GayatalkAkanzaki02)
ReachEventNoLock("AKanzakiGayatalk03",AC25GayatalkAkanzaki03)
ReachEventNoLock("AKanzakiGayatalk04",AC25GayatalkAkanzaki04)
ReachEventNoLock("AKanzakiGayatalk05",AC25GayatalkAkanzaki05)ReachEvent("Blocker_1",StopAKanzaki01)
ReachEvent("Blocker_2",StopAKanzaki02)ReachEvent("Blocker_3",StopAKanzaki03)
TouchEvent("StudioGate",function()
Wait(0.1)Field.playerGetOut("StudioPoint",Vec(0,0,2))
Transition.start()Sound.stopBGM(1)Sound.stopAllENV(1)Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)local bClTIa=Adv.characterAsync("EAoi")
Field.showAdvHudWrapper(function()
Field.setFootstepEnabled(true)
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2),nil,true)Adv.fadeIn()SetLocalFlag("最初",1)
Field.waitTaskKey("Player")Field.changeCameraToEvent()
Field.setTalkCamera("Player")Wait(0.5)Layout.showEx({bClTIa,"070201"})
Adv.talkWithFacial(
nil,nil,bClTIa,[[We need to reach the studio without being caught!]],"VC_AC25_v001_00389_EAoi")Layout.showEx()end)Field.changeCameraToPlayable()end
function AC25GayatalkAkanzaki01()
if
GetLocalFlag("AC25GayatalkAkanzaki01再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki01再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk01",[[No signs of them here.]],
nil,nil,nil,nil,"VC_AC25_v001_00391_AKanzaki")end end
function AC25GayatalkAkanzaki02()
if
GetLocalFlag("AC25GayatalkAkanzaki02再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki02再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk02",[[Maybe I'll take the chance to practice some ninjutsu.]],
nil,nil,nil,nil,"VC_AC25_v001_00392_AKanzaki")end end
function AC25GayatalkAkanzaki03()
if
GetLocalFlag("AC25GayatalkAkanzaki03再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki03再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk03",[[I can't stand out in a place like this.]],
nil,nil,nil,nil,"VC_AC25_v001_00393_AKanzaki")end end
function AC25GayatalkAkanzaki04()
if
GetLocalFlag("AC25GayatalkAkanzaki04再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki04再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk04",[[I want to go play already.]],
nil,nil,nil,nil,"VC_AC25_v001_00394_AKanzaki")end end
function AC25GayatalkAkanzaki05()
if
GetLocalFlag("AC25GayatalkAkanzaki05再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki05再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk05",[[Agh, the can got all bent when I dropped it!\nSomeone, swap with me!]],
nil,nil,nil,nil,"VC_AC25_v001_00395_AKanzaki")
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk06",[[GAAAHHH!!!\nThe smell is going to stick!!!]],nil,nil,nil,nil,"VC_AC25_v001_00396_AKanzaki")end end
function StopAKanzaki01()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("EAoiblocker")Field.prepareEventCharacterV3("RKayamoriblocker")
Field.prepareEventCharacterV3("YIzumiblocker")
Field.showAdvHudWrapper(function()Field.startEventScriptCamera()
Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(87.050,1.200,65.120),Vec(0.000,0.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(103.700,3.200,65.120),Vec(0.000,0.000,0.000),30.00,3,1,0)Wait(2)
local rDzL7SVO=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint01",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint02",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint01",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint02",0.7)Wait(2)end end)Field.waitCameraComposition()
Adv.talkWithIcon("EAoi",[[There's a Kanzaki...we need to find a different path!]],"VC_AC25_v001_00390_EAoi")Adv.fadeOut()StopRoutine(rDzL7SVO)
Field.hideTagCharacters("blocker01")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)
local BW0WFP=Field.moveOnRoute("Player","FriendStreetRightPoint")Wait(0.1)Adv.fadeIn()Field.waitTask(BW0WFP)
Field.resetPosition()Field.cancelAutoMove()end)end
function StopAKanzaki02()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("AKanzakiBlocker02")Field.prepareEventCharacterV3("EAoiblocker02")
Field.prepareEventCharacterV3("RKayamoriblocker02")Field.prepareEventCharacterV3("YIzumiblocker02")
Field.showAdvHudWrapper(function()
Field.startEventScriptCamera()Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(3.700,1.200,-
22.440),Vec(0.000,270.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(3.700,1.200,
-30.240),Vec(0.000,270.000,0.000),30.00,2.5,1,0)Wait(2)
local X8=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint21",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint22",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint21",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint22",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There's a Kanzaki...we need to find a different path!]],"VC_AC25_v001_00390_EAoi")Adv.fadeOut()StopRoutine(X8)
Field.hideTagCharacters("blocker02")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)local JQT=Field.moveBy("Player",Vec(0,0,2),2)
Adv.fadeIn()Field.waitTask(JQT)Field.resetPosition()
Field.cancelAutoMove()end)end
function StopAKanzaki03()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("AKanzakiBlocker03")Field.prepareEventCharacterV3("EAoiblocker03")
Field.prepareEventCharacterV3("RKayamoriblocker03")Field.prepareEventCharacterV3("YIzumiblocker03")
Field.showAdvHudWrapper(function()
Field.startEventScriptCamera()Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(41.330,-4.800,
-19.940),Vec(0.000,0.000,0.000),30.00)Field.waitCameraComposition()Wait(0.1)
Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(26.570,-4.800,-19.940),Vec(0.000,0.000,0.000),30.00,2.5,1,0)Wait(2)
local AtYtR=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint31",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint32",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint31",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint32",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There's another Kanzaki here! I need to stay out of sight...!]],"VC_Z_903800308_EAoi")Adv.fadeOut()StopRoutine(AtYtR)
Field.hideTagCharacters("blocker03")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)
local ND2BCh3=Field.moveOnRoute("Player","ShopBenchPointLeft")Adv.fadeIn()Field.waitTask(ND2BCh3)
Field.resetPosition()Field.cancelAutoMove()end)end
function AC25Gayatalk30G_02()
if GetLocalFlag("AC25Gayatalk30G_02再生済")==0 then
SetLocalFlag("AC25Gayatalk30G_02再生済",1)
Field.talkByGayaBalloonNoPlayable("CSugahara",[[21 Idol Points...\nShe's growing quite steadily.]],nil,nil,nil,nil,"VC_AC25_v001_00397_CSugahara")
Field.talkByGayaBalloonNoPlayable("HOgasawara",[[Perhaps she'll be the one...]],nil,nil,nil,nil,"VC_AC25_v001_00398_HOgasawara")end end