local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day24/World/MC02_24_00_01_MainStreet.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0004",1,1)
SetPeriodText("Head to the heliport!")ShowMapDestinationIcon("HeliportGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("Blocker","DormitoryPoint",[[Ah, everyone's watching... Let's get to the heliport.]],"VC_MC02_24_00_01_World_00000_RKayamori")
Field.returnToWayPoint("BlockerRight","HeliportPointRight",[[Ah, everyone's watching... Let's get to the heliport.]],"VC_MC02_24_00_01_World_00000_RKayamori")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then Field.setReactionRange("TKunimi",3)
ReachEventNoLock("TKunimi",GayaTalk31A)TouchEvent("SHiguchi",TalkToSHiguchi)
TouchEvent("KHiiragi",TalkToKHiiragi)TouchEvent("SMinase",TalkToSMinase)
TouchEvent("IMinase",TalkToIMinase)TouchEvent("Byakko",TalkToByakko)
TouchEvent("EAoi",TalkToEAoi)
TouchEvent("HeliportGate",function()Yield(FinishWorld)Exit_World()end)end end;function StartWorld()
Field.playerComeIn("DormitoryPointRight",Vec(-2))end;function FinishWorld()
Field.playerGetOut("HeliportPoint",Vec(-3,0,6))end
function GayaTalk31A()EmptyEvent("TKunimi")
Wait(1)
Field.talkByGayaBalloon("YIzumi",[[Today's the day, huh?]],2,nil,nil,nil,"VC_MC02_24_00_01_World_00002_YIzumi")
Field.talkByGayaBalloon("KAsakura",[[I'm getting a bit nervous...]],2,nil,nil,nil,"VC_MC02_24_00_01_World_00003_KAsakura")
Field.talkByGayaBalloon("TTojo",[[We're just going to have to show the fruits of our training.]],2,nil,nil,nil,"VC_MC02_24_00_01_World_00004_TTojo")
Field.talkByGayaBalloon("MAikawa",[[Just leave it to me 'n my psychic powers.]],2,nil,nil,nil,"VC_MC02_24_00_01_World_00005_MAikawa")
Field.talkByGayaBalloon("TKunimi",[[We're ready to commence operation!]],2,nil,nil,nil,"VC_MC02_24_00_01_World_00006_TKunimi")end
function TalkToSHiguchi()EmptyEvent("SHiguchi")
Field.setRouteWandererEnabled("SHiguchi",false)local bClTIa=Adv.characterAsync("SHiguchi","Default")
Field.startTalk("SHiguchi",FaceToFaceMode.Auto,function()
Layout.show({bClTIa,"090002"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Regardless of how this all breaks down, there's sure to be interesting observations to be made. I'm looking forward to it.]],"VC_MC02_24_00_01_World_00007_SHiguchi")end)Field.setRouteWandererEnabled("SHiguchi",true)end
function TalkToKHiiragi()EmptyEvent("KHiiragi")
Field.setRouteWandererEnabled("KHiiragi",false)local rDzL7SVO=Adv.characterAsync("KHiiragi","Default")
Field.startTalk("KHiiragi",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"0702"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[I'm going to trust in our leader... Come what may.]],"VC_MC02_01011_v001_KHiiragi")end)Field.setRouteWandererEnabled("KHiiragi",true)end
function TalkToIMinase()EmptyEvent("IMinase")
Field.setRouteWandererEnabled("IMinase",false)local BW0WFP=Adv.characterAsync("IMinase","Default")
Field.startTalk("IMinase",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"0702"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[We did what we can. All we can do now is believe in her.]],"VC_MC02_24_00_01_World_00009_IMinase")end)Field.setRouteWandererEnabled("IMinase",true)end
function TalkToSMinase()EmptyEvent("SMinase")
Field.setRouteWandererEnabled("SMinase",false)local X8=Adv.characterAsync("SMinase","Default")
Field.startTalk("SMinase",FaceToFaceMode.Auto,function()
Layout.show({X8,"0702"})
Adv.talkWithFacial(nil,nil,X8,[[Leave Aoi to us. You all just focus on what you need to do, meow.]],"VC_MC02_24_00_01_World_00010_SMinase")end)Field.setRouteWandererEnabled("SMinase",true)end
function TalkToByakko()EmptyEvent("Byakko")
Field.setRouteWandererEnabled("Byakko",false)local JQT=Adv.characterAsync("Byakko","Default")
Field.startTalk("Byakko",FaceToFaceMode.Auto,function()
Layout.show({JQT})
Adv.talkWithFacial(nil,nil,JQT,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")end)Field.setRouteWandererEnabled("Byakko",true)end
function TalkToEAoi()EmptyEvent("EAoi")
Field.setRouteWandererEnabled("EAoi",false)local AtYtR=Adv.characterAsync("EAoi","Default")
Field.startTalk("EAoi",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"0702"})
Adv.talkWithFacial(nil,nil,AtYtR,[[I'm ready. Let's go, Ruka.]],"VC_MC02_24_00_01_World_00012_EAoi")end)Field.setRouteWandererEnabled("EAoi",true)end