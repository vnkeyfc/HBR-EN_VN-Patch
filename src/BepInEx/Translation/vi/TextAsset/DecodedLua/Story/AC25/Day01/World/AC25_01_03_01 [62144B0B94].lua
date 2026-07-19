local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/AC25/Day01/World/AC25_01_03_01_MainStreet.unity")
EventScene("FriendStreet","Assets/Lua/Story/AC25/Day01/World/AC25_01_03_01_FriendStreet.unity")end
function init()if GetLocalFlag("最初")==0 then
Field.setFootstepEnabled(false)end;refresh()end
function refresh()Sound.playBGM("SB0090")
Field.setActiveWithTag("Gate",false)Field.setActive("MainStreetRightGate",true)
Field.setActive("FriendStreetRightGate",true)Field.hideTagCharacters("Narvy")
Field.hideTagCharacters("Soldier")
if MatchField("FriendStreet")then Field.hideTagCharacters("Mob")end;Field.createFollower("RKayamori")
ReachEventNoLock("BlockerA1",function()
PlayerLock()
Adv.talkWithIcon("RKayamori",[[What, you gettin' cold feet? The courtyard is that way!]],"VC_AC25_v001_00119_RKayamori")Wait(0.3)
Field.moveOnRouteWait("Player","HeliportPointRightRight")Field.resetPosition()Field.cancelAutoMove()
PlayerUnLock()end)
ReachEventNoLock("BlockerB",function()PlayerLock()
Adv.talkWithIcon("RKayamori",[[What, you gettin' cold feet? The courtyard is that way!]],"VC_AC25_v001_00119_RKayamori")Wait(0.3)
Field.moveOnRouteWait("Player","BackStreetPoint")Field.resetPosition()Field.cancelAutoMove()
PlayerUnLock()end)
ReachEventNoLock("BlockerA2",function()PlayerLock()
Adv.talkWithIcon("RKayamori",[[What, you gettin' cold feet? The courtyard is that way!]],"VC_AC25_v001_00119_RKayamori")Wait(0.3)
Field.moveOnRouteWait("Player","ArenaPoint")Field.resetPosition()Field.cancelAutoMove()
PlayerUnLock()end)EmptyEvent("CSugahara")EmptyEvent("HOgasawara")
EmptyEvent("BIYamawaki")EmptyEvent("MTenne")EmptyEvent("JSMob01")
EmptyEvent("JSMob02")EmptyEvent("RMurohushi")EmptyEvent("MNikaido")
EmptyEvent("AMizuhara")EmptyEvent("ADate")EmptyEvent("IIshii")
EmptyEvent("FMikoto")EmptyEvent("IMinase")EmptyEvent("SMinase")
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then SetPeriodText("Head to the courtyard!")
ShowMapDestinationIcon("NarvySquareGate")SetAutoModePointName("NarvySquareGate")
ReachEventNoLock("CSugahara",AC25Gayatalk30G)ReachEventNoLock("BIYamawaki",AC25Gayatalk31C)
TouchEvent("NarvySquareGate",function()
Wait(0.1)
Field.playerGetOut("NarvySquarePoint",Vec(-2,0,0))Transition.start()Sound.stopBGM(1)Exit_World()end)end end
function StartWorld()Adv.fadeOut(0)
local bClTIa=Adv.characterAsync("RKayamori")
Field.showAdvHudWrapper(function()Field.setFootstepEnabled(true)Field.playerComeIn("SchoolPoint",Vec(0,0,2),
nil,true)
Adv.fadeIn()SetLocalFlag("最初",1)
Field.waitTaskKey("Player")Field.startEvent()Field.setTalkCamera("Player")
Wait(0.5)Layout.showEx({bClTIa,"110201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[We're gonna have your debut concert in the school courtyard!]],"VC_AC25_v001_00118_RKayamori")Layout.showEx()end)Field.finishEvent()end
function AC25Gayatalk30G()
if GetLocalFlag("AC25Gayatalk30G再生済")==0 then
SetLocalFlag("AC25Gayatalk30G再生済",1)
Field.talkByGayaBalloonNoPlayable("CSugahara",[[Only 5 Idol Points...I'm afraid she still has a ways to go.]],nil,nil,nil,nil,"VC_AC25_v001_00120_CSugahara")
Field.talkByGayaBalloonNoPlayable("HOgasawara",[[Not adequate for us to stan just yet, but the potential is there.]],nil,nil,nil,nil,"VC_AC25_v001_00121_HOgasawara")end end
function AC25Gayatalk31C()
if GetLocalFlag("AC25Gayatalk31C再生済")==0 then
SetLocalFlag("AC25Gayatalk31C再生済",1)
Field.talkByGayaBalloonNoPlayable("BIYamawaki",[[Hehehe, this should be a good spot.]],nil,nil,nil,nil,"VC_AC25_v001_00122_BIYamawaki")
Field.talkByGayaBalloonNoPlayable("MTenne",[[Time to get to work on brewing.]],nil,nil,nil,nil,"VC_AC25_v001_00123_MTenne")end end