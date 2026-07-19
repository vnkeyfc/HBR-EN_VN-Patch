local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest","Assets/Lua/Story/MC02/Day24/World/MC02_24_12_00_Forest.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0026",1)
SetPeriodText("Patrol the surrounding area!")SetAutoModePointName("BlockerRight")
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then if GetLocalFlag("異常なし")==0 then
ReachEvent("BlockerLeft",TalkBlockerLeft)end
ReachEvent("BlockerRight",function()
Yield(MC02_24_11_01)Exit_World()end)end end
function StartWorld()Field.playerComeIn("TentPoint",Vec(0,0,3))
Field.changeAnimation("Player","FieldStand")Field.startEvent()Field.setTalkCamera("Player")
Adv.talkWithIcon("RKayamori",[[They told me to keep my guard up, but I can't focus for that long!]],"VC_MC02_01013_v001_RKayamori")
Adv.talkWithIcon("RKayamori",[[Plus, how am I supposed to know if a Cancer is nearby?]],"VC_MC02_24_12_01_World_00001_RKayamori")Field.finishEvent()end
function TalkBlockerLeft()EmptyEvent("BlockerLeft")Field.startEvent()
Field.setTalkCamera("Player")
Adv.talkWithIcon("RKayamori",[[Sweet! All clear.]],"VC_MC02_24_12_01_World_00002_RKayamori")Field.finishEvent()SetLocalFlag("異常なし",1)
Field.refreshScripts()end
function MC02_24_11_01()Field.startEvent()
Field.setTalkCamera("Player")
Adv.talkWithIcon("RKayamori",[[Should I check up there, too?]],"VC_MC02_24_12_01_World_00003_RKayamori")Field.moveBy("Player",Vec(3),3)Wait(1)
Transition.start()Sound.stopBGM(2)end