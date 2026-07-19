local w0qyLbH="Event"..WorldLabel()function preload()end
function init()refresh()end
function refresh()Sound.playBGM(AdvBGM.Serious1,1,1)
Field.setActiveWithTag("Gate",false)Field.setActive("MainStreetLeftGate",true)
Field.setActive("MainStreetRightGate",true)Field.setActive("FriendStreetLeftGate",true)
Field.setActive("FriendStreetRightGate",true)SetPeriodText("Prepare and head to the heliport!")
ShowMapDestinationIcon("HeliportGate")
FastTravelPointEvent("ShopPoint",function()
Field.gotoFastTravel("Munitions Store","FriendStreet","ShopPoint")end)
FastTravelPointEvent("HeliportPoint",function()
Field.gotoFastTravel("Heliport","MainStreet","HeliportPoint")end)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then
InitScript("Lua/Story/Common/Activity/Common/ActivityAtShop")TouchEvent("HeliportGate",Exit_GoToHeliport)end end
function StartWorld()Field.playerComeIn("SchoolPoint",Vec(0,0,2))
Field.startEvent()Field.setTalkCamera("Player")
Adv.talkWithIcon("IMinase",[[Well, I've contacted the girls to meet me at the heliport.]],"VC_AC02_00745_IMinase")
Adv.talkWithIcon("IMinase",[[I better prepare adequately since we're leaving the base.]],"VC_AC02_00746_IMinase")Field.finishEvent()end
function Exit_GoToHeliport()
local bClTIa=Adv.gateQuestion([[Go to the heliport?]],[[Head out|Stay put]])
if bClTIa==0 then
Field.playerGetOut("HeliportPoint",Vec(-3,0,8),1,1.5)Sound.stopBGM(1)Transition.setFlyGo()
Transition.start()Exit_World()end end