local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest_MountaunSideUp","Assets/Lua/Story/MC02/Day24/World/MC02_24_12_01_Forest_MountaunSideUp.unity")end;function init()
refresh()end
function refresh()
Sound.playBGM("EN_Voice_Insects_Summer01_Loop",0,1)Sound.playENV("EN_Forest_Evening_Loop")
Field.setActiveWithTag("Gate",false)SetAutoModePointName("Blocker")
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
ReachEvent("Blocker",function()Yield(MC02_24_11_03)Sound.stopAllENV()
Exit_World()end)end end
function StartWorld()Field.playerComeIn("GatePoint_1",Vec(-2))
Field.changeAnimation("Player","FieldIdleAction")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Nothing better than the cool night air.]],"VC_MC02_24_12_02_World_00000_RKayamori",
nil)
Adv.kayamoriTalk([[What a beautiful view. It never ends, does it?]],"VC_MC02_24_12_02_World_00001_RKayamori",nil)Field.finishEvent()end
function MC02_24_11_03()Field.startEvent()
Field.setTalkCamera("Player")Field.turnToWait("Player",45,0.3)Wait(0.5)
Adv.kayamoriTalk([[Time for a quick breather.]],"VC_MC02_24_12_02_World_00002_RKayamori",
nil)Wait(0.3)Field.moveBy("Player",Vec(3,0,3),3)
Wait(1)end