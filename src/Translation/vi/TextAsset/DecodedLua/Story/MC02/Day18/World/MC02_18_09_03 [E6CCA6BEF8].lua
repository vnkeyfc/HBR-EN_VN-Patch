local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("BackStreet","Assets/Lua/Story/MC02/Day18/World/MC02_18_09_03_BackStreet.unity")
EventScene("FriendStreet","Assets/Lua/Story/MC02/Day18/World/MC02_18_09_03_FriendStreet.unity")end
function init()Sound.playBGM("SB0078",1,2)refresh()end
function refresh()SetPeriodText("Find Aoi!")
ShowMapDestinationIcon("GymGate")HideWorldEndButton()
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then if FieldLabel()=="BackStreet"then
TouchEvent("YIzumi",TalkToYIzumi)ReachEventNoLock("Karen",GayaTalkKaren)
Field.setActive("FriendStreetGate",true)end
if
FieldLabel()=="FriendStreet"then EmptyEvent("IMinase")
TouchEvent("SMinase",TalkToSMinase)TouchEvent("KHiiragi",TalkToKHiiragi)
TouchEvent("SHiguchi",TalkToSHiguchi)TouchEvent("GymGate",Exit_GoToGym)end end end
function StartWorld()Field.playerComeIn("StudioPoint",Vec(0,0,2))
Field.changeAnimation("Player","FieldIdleAction")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Whoo, we got some good practice in today... I guess it's a good time to head back.]],"VC_MC02_19_10_00_World_00000_RKayamori",
nil)Wait(1)
Field.changeAnimation("Player","FieldStand")
Adv.kayamoriTalk([[(Hm? Where'd Aoi go? That's not great. Maybe I should go look for her.)]],"VC_MC02_19_10_00_World_00001_RKayamori",nil)Field.finishEvent()end
function TalkToYIzumi()EmptyEvent("YIzumi")
Field.setRouteWandererEnabled("YIzumi",false)local bClTIa=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({bClTIa,"000201"})
Adv.talk(bClTIa,[[Aoi? She was here just now, wasn't she?]],"VC_MC02_19_10_00_World_00002_YIzumi")end)Field.setRouteWandererEnabled("YIzumi",true)end
function TalkToTTojo()EmptyEvent("TTojo")
Field.setRouteWandererEnabled("TTojo",false)local rDzL7SVO=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"000201"})end)Field.setRouteWandererEnabled("TTojo",true)end;function GayaTalkKaren()
Field.talkByGayaBalloon("Karen",[[Hyeheheh...]],3,nil,nil,nil,"VC_MC02_19_10_00_World_00004_Karen")end
function TalkToSMinase()
EmptyEvent("SMinase")Field.setRouteWandererEnabled("IMinase",false)
Field.setRouteWandererEnabled("SMinase",false)local BW0WFP=Adv.characterAsync("SMinase","Default")
local X8=Adv.characterAsync("IMinase","Default")Field.turnToTarget("IMinase","Player",0.3)
Field.startTalk("SMinase",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"0002"},{X8,"030201"})
Adv.talkWithFacial(nil,nil,X8,[[Aoi? Why would we know where she is?]],"VC_MC02_19_10_00_World_00005_IMinase")
Adv.talk(BW0WFP,[[Meow. She probably just went straight home.]],"VC_MC02_19_10_00_World_00006_SMinase")Field.disableLookAt("IMinase")end)Field.setRouteWandererEnabled("IMinase",true)
Field.setRouteWandererEnabled("SMinase",true)end
function TalkToKHiiragi()local JQT=Adv.characterAsync("KHiiragi","Default")
if
GetLocalFlag("Hiiragi_done")==0 then
Field.startTalkEx("KHiiragi",FaceToFaceMode.None,FaceToFaceMode.Auto,function()
Adv.talk(JQT,[[Oh, I see... That must be terrible...]],"VC_MC02_19_10_00_World_00007_KHiiragi")Wait(0.3)
Field.setLookAtTarget("KHiiragi","Player")Layout.show({JQT,"000201"})
Adv.talk(JQT,[[Huh? Aoi? No, I haven't seen her.]],"VC_MC02_19_10_00_World_00008_KHiiragi")end)SetLocalFlag("Hiiragi_done",1)else
EmptyEvent("KHiiragi")
Field.startTalk("KHiiragi",FaceToFaceMode.Face,function()
Layout.show({JQT,"000201"})
Adv.talk(JQT,[[I haven't seen her.]],"VC_MC02_19_10_00_World_00009_KHiiragi")end)end end
function TalkToSHiguchi()EmptyEvent("SHiguchi")
local AtYtR=Adv.characterAsync("SHiguchi","Default")
Field.startTalk("SHiguchi",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"000201"})
Adv.talk(AtYtR,[[You're asking me if I know where Aoi is?]],"VC_MC02_19_10_00_World_00010_SHiguchi")
Adv.talkWithFacial("090001",nil,AtYtR,[[What a ridiculous question. Look. Don't you see that oh-so-loyal tiger waiting over there?]],"VC_MC02_19_10_00_World_00011_SHiguchi")Field.disableLookAt("SHiguchi")end)end;function Exit_GoToGym()
SetFlag("蒼井を探してジムに入った",1)Field.playerGetOut("GymPoint",Vec(0,0,2))
Exit_World()end