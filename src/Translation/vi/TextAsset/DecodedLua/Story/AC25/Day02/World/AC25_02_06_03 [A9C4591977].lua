local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_03_MainStreet.unity")
EventScene("FriendStreet","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_03_FriendStreet.unity")
EventScene("School1F","Assets/Lua/Story/AC25/Day02/World/AC25_02_06_03_School1F.unity")end
function init()if GetLocalFlag("最初")==0 then
Field.setFootstepEnabled(false)end;refresh()end
function refresh()Field.setActiveWithTag("Gate",false)
Field.setActive("MainStreetRightGate",true)Field.setActive("MainStreetLeftGate",true)
Field.setActive("FriendStreetGate",true)Field.setActive("FriendStreetLeftGate",true)
Field.setActive("SchoolGate",true)Field.setActive("MainStreetGate",true)
Field.hideTagCharacters("Narvy")Field.hideTagCharacters("Soldier")
Field.hideTagCharacters("Mob")Field.hideTagCharacters("SchoolShopClerk")
Field.createFollower("IMinase")Field.createFollower("SMinase")
EmptyEvent("CSugahara")EmptyEvent("HOgasawara")
EmptyEvent("AKanzakiGayatalk01")EmptyEvent("AKanzakiGayatalk02")
EmptyEvent("AKanzakiGayatalk03")EmptyEvent("AKanzakiGayatalk04")
EmptyEvent("AKanzakiGayatalk05")EmptyEvent("AKanzakiGayatalk06")
EmptyEvent("AKanzakiGaya01")EmptyEvent("AKanzakiGaya02")
EmptyEvent("AKanzakiGaya03")EmptyEvent("AKanzakiGaya04")
EmptyEvent("AKanzakiGaya05")EmptyEvent("AKanzakiGaya06")
EmptyEvent("AKanzakiGaya07")EmptyEvent("AKanzakiGaya08")
EmptyEvent("AKanzakiGaya11")EmptyEvent("AKanzakiGaya12")
EmptyEvent("AKanzakiGaya13")EmptyEvent("AKanzakiGaya14")
EmptyEvent("AKanzakiGaya15")EmptyEvent("AKanzakiGaya16")
EmptyEvent("AKanzakiGaya17")EmptyEvent("AKanzakiGaya21")
EmptyEvent("AKanzakiGaya22")EmptyEvent("AKanzakiGaya23")
EmptyEvent("AKanzakiGaya24")EmptyEvent("AKanzakiGaya25")
Sound.playBGM("SB0125",0,0)
if MatchField("FriendStreet")then
Sound.playENV("EN_Air_Outdoor_Loop")else Sound.stopAllENV(0.5)end;local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then SetPeriodText("Head to the broadcast room!")
ShowMapDestinationIcon("NoneClassroomGate")local bClTIa=GetLocalFlag("StopKanzaki02")
if bClTIa==0 then
SetAutoModePointName("NoneClassroomGate")elseif bClTIa==1 then
if MatchField("FriendStreet")then
SetAutoModePointName("MainStreetLeftGate")else SetAutoModePointName("NoneClassroomGate")end end;ReachEventNoLock("CSugahara",AC25Gayatalk30G_03)
ReachEventNoLock("AKanzakiGayatalk01",AC25GayatalkAkanzaki01)
ReachEventNoLock("AKanzakiGayatalk02",AC25GayatalkAkanzaki02)
ReachEventNoLock("AKanzakiGayatalk03",AC25GayatalkAkanzaki03)
ReachEventNoLock("AKanzakiGayatalk04",AC25GayatalkAkanzaki04)
ReachEventNoLock("AKanzakiGayatalk05",AC25GayatalkAkanzaki05)ReachEvent("Blocker_1",StopAKanzaki01)
ReachEvent("Blocker_2",StopAKanzaki02)ReachEvent("Blocker_3",StopAKanzaki03)
ReachEvent("Blocker_4",StopAKanzaki04)
TouchEvent("NoneClassroomGate",function()
local rDzL7SVO=Field.computeMoveTime("Player",Vec(-44.24,0,2.56),1.420)
Field.moveTo("Player",Vec(-44.24,0,2.56),rDzL7SVO)Field.setFollowerAutoMoveEnabled(true)Wait(0.5)
Sound.stopBGM(1)Adv.fadeOut(0.5)Field.stopTaskKey("Player")
Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)local BW0WFP=Adv.characterAsync("EAoi")
Field.showAdvHudWrapper(function()
Field.setFootstepEnabled(true)
Field.playerComeIn("BackStreetPoint",Vec(-3,0,0),nil,true)Wait(0.8)Adv.fadeIn()SetLocalFlag("最初",1)
Field.waitTaskKey("Player")Field.changeCameraToEvent()
Field.setTalkCamera("Player")Wait(0.5)Layout.showEx({BW0WFP,"070201"})
Adv.talkWithFacial(
nil,nil,BW0WFP,[[We need to head to the building with the broadcast room.]],"VC_AC25_v001_00419_EAoi")Layout.showEx()end)Field.changeCameraToPlayable()end
function AC25GayatalkAkanzaki01()
if
GetLocalFlag("AC25GayatalkAkanzaki01再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki01再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk01",[[It's not easy being a shadow clone.]],
nil,nil,nil,nil,"VC_AC25_v001_00421_AKanzaki")end end
function AC25GayatalkAkanzaki02()
if
GetLocalFlag("AC25GayatalkAkanzaki02再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki02再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk02",[[I wonder what would happen\nif I made 100 more clones...?]],
nil,nil,nil,nil,"VC_AC25_v001_00422_AKanzaki")end end
function AC25GayatalkAkanzaki03()
if
GetLocalFlag("AC25GayatalkAkanzaki03再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki03再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk03",[[If there were more of us,\nwouldn't we stand out even less...?]],
nil,nil,nil,nil,"VC_AC25_v001_00423_AKanzaki")end end
function AC25GayatalkAkanzaki04()
if
GetLocalFlag("AC25GayatalkAkanzaki04再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki04再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk04",[[I'm going to go for a walk.]],
nil,nil,nil,nil,"VC_AC25_v001_00424_AKanzaki")end end
function AC25GayatalkAkanzaki05()
if
GetLocalFlag("AC25GayatalkAkanzaki05再生済")==0 then SetLocalFlag("AC25GayatalkAkanzaki05再生済",1)
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk05",[[Once we return to being one,\nwill this stench remain...?]],
nil,nil,nil,nil,"VC_AC25_v001_00425_AKanzaki")
Field.talkByGayaBalloonNoPlayable("AKanzakiGayatalk06",[[I don't want to imagine what\nit would smell like if it all combined!]],nil,nil,nil,nil,"VC_AC25_v001_00426_AKanzaki")end end
function StopAKanzaki01()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("EAoiblocker01")Field.prepareEventCharacterV3("IMinaseblocker01")
Field.prepareEventCharacterV3("SMinaseblocker01")
Field.prepareEventCharacterV3("AKanzakiBlocker01")
Field.showAdvHudWrapper(function()Field.startEventScriptCamera()
Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(84.110,1.250,64.350),Vec(0.000,0.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(93.120,1.250,64.350),Vec(0.000,0.000,0.000),30.00,2.5,1,0)Wait(2)
local X8=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint11",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint12",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint11",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker01","LookAtPoint12",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There's a Kanzaki...we need to find a different path!]],"VC_AC25_v001_00420_EAoi")Adv.fadeOut()StopRoutine(X8)
Field.hideTagCharacters("blocker01")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)
local JQT=Field.moveOnRoute("Player","FriendStreetRightPointLeft")Wait(0.1)Adv.fadeIn()Field.waitTask(JQT)
Field.resetPosition()Field.cancelAutoMove()end)end
function StopAKanzaki02()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("EAoiblocker02")Field.prepareEventCharacterV3("IMinaseblocker02")
Field.prepareEventCharacterV3("SMinaseblocker02")
Field.prepareEventCharacterV3("AKanzakiBlocker02")
Field.showAdvHudWrapper(function()Field.startEventScriptCamera()
Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(73.630,-4.670,39.790),Vec(0.000,270.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(73.630,
-4.670,49.340),Vec(0.000,270.000,0.000),30.00,2,1,0)Wait(2)
local AtYtR=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint21",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint22",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint21",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker02","LookAtPoint22",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There are Kanzakis even out here...! We won't be able to get past them...]],"VC_Z_903800309_EAoi")Adv.fadeOut()StopRoutine(AtYtR)
SetAutoModePointName("MainStreetLeftGate")SetLocalFlag("StopKanzaki02",1)
Field.hideTagCharacters("blocker02")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)
local ND2BCh3=Field.moveOnRoute("Player","NarvySquarePointRight")Adv.fadeIn()Field.waitTask(ND2BCh3)
Field.resetPosition()Field.cancelAutoMove()end)end
function StopAKanzaki03()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("EAoiBlocker03")Field.prepareEventCharacterV3("IMinaseBlocker03")
Field.prepareEventCharacterV3("SMinaseBlocker03")
Field.prepareEventCharacterV3("AKanzakiBlocker03")
Field.showAdvHudWrapper(function()Field.startEventScriptCamera()
Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(18.260,1.210,-3.550),Vec(0.000,0.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(29.280,1.210,
-3.550),Vec(0.000,0.000,0.000),30.00,2,1,0)Wait(2)
local IODBg=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint31",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint32",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint31",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker03","LookAtPoint32",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There's another Kanzaki here! I need to stay out of sight...!]],"VC_Z_903800308_EAoi")Adv.fadeOut()StopRoutine(IODBg)
Field.hideTagCharacters("blocker03")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)
local YRDu=Field.moveOnRoute("Player","StairsRightPoint")Adv.fadeIn()Field.waitTask(YRDu)
Field.resetPosition()Field.cancelAutoMove()end)end
function StopAKanzaki04()Adv.fadeOut()Field.hidePartyCharacters()
Field.prepareEventCharacterV3("EAoiBlocker04")Field.prepareEventCharacterV3("IMinaseBlocker04")
Field.prepareEventCharacterV3("SMinaseBlocker04")
Field.prepareEventCharacterV3("AKanzakiBlocker04")
Field.showAdvHudWrapper(function()Field.startEventScriptCamera()
Field.setCameraNearClip(0.10)
Field.setCameraCompositionExWithListener(Vec(-48.800,1.210,-3.330),Vec(0.000,0.000,0.000),30.00)Field.waitCameraComposition()Adv.fadeIn()
Field.setCameraCompositionExWithListener(Vec(
-62.210,1.210,-3.330),Vec(0.000,0.000,0.000),30.00,2,1,0)Wait(2)
local CWRiP=Routine(function()
while(true)do
Field.setLookAtTarget("AKanzakiBlocker04","LookAtPoint41",0.7)Wait(2)
Field.setLookAtTarget("AKanzakiBlocker04","LookAtPoint42",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker04","LookAtPoint41",0.7)Wait(4)
Field.setLookAtTarget("AKanzakiBlocker04","LookAtPoint42",0.7)Wait(2)end end)Field.waitCameraComposition()Wait(0.5)
Adv.talkWithIcon("EAoi",[[There's another Kanzaki here! I need to stay out of sight...!]],"VC_Z_903800308_EAoi")Adv.fadeOut()StopRoutine(CWRiP)
Field.hideTagCharacters("blocker04")Field.resetCameraClipRange()
Field.restorePartyCharacters()Field.changeCameraToPlayable()
Field.setFollowerAutoMoveEnabled(true)local LB0A=Field.moveBy("Player",Vec(2),2)Adv.fadeIn()
Field.waitTask(LB0A)Field.resetPosition()Field.cancelAutoMove()end)end
function AC25Gayatalk30G_03()
if GetLocalFlag("AC25Gayatalk30G_03再生済")==0 then
SetLocalFlag("AC25Gayatalk30G_03再生済",1)
Field.talkByGayaBalloonNoPlayable("CSugahara",[[35 Idol Points...\nHer idol abilities have risen so much in such a short period!]],nil,nil,nil,nil,"VC_AC25_v001_00427_CSugahara")
Field.talkByGayaBalloonNoPlayable("HOgasawara",[[We must see if she is worthy of stanning!]],nil,nil,nil,nil,"VC_AC25_v001_00428_HOgasawara")end end