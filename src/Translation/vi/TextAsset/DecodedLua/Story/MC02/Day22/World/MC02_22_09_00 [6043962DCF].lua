local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day22/World/MC02_22_09_00_MainStreet.unity")
EventScene("BackStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/BackStreet_Gaya_MC02.unity")
EventScene("ClockTowerRoof","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/ClockTowerRoof_Gaya_MC02.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/Dormitory1F_Gaya_MC02.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/FriendStreet_Gaya_MC02.unity")
EventScene("Grave","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/Grave_Gaya_MC02.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/MainStreet_Gaya_MC02.unity")
EventScene("School1F","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/School1F_Gaya_MC02.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY22_23/MainStreet_General.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY22_23/FriendStreet_General.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY22_23/Dormitory1F_General.unity")
EventScene("ClockTowerRoof","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY22_23/ClockTowerRoof_General.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/MainStreet_Quest.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/FriendStreet_Quest.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/Dormitory1F_Quest.unity")
EventScene("School1F","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/School1F_Quest.unity")
EventScene("Grave","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/Grave_Quest.unity")
EventScene("ClockTowerRoof","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/ClockTowerRoof_Quest.unity")
EventScene("BackStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/BackStreet_Quest.unity")end;function init()refresh()end
function refresh()
FieldSound.requestFieldBGM()Field.setActiveWithTag("Gate",false)
FastTravelButtonEvent()InitScript("Lua/Story/Common/Gate")
InitScript("Lua/Story/Common/Activity/MC02/Activity")GayaTalkFromMaster()GeneralTalkFromMaster()
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
LinneEvent("KHiiragi",[[Ruka, can I talk to you for a minute?]],KHiiragiMessage,nil,nil,true)
StartEvent_NextWorldEventStep(w0qyLbH,function()Yield(CallingFromKHiiragi)Wait(1)end)elseif nsgji==1 then Field.turnTo("Player",135,0)
Field.resetPosition("CafeteriaPoint")
StartEvent_NextWorldEventStep(w0qyLbH,KHiiragiEvent)elseif nsgji==2 then QuestEventFromMaster()
StartEvent(function()
NextWorldEventStep(w0qyLbH,false)Yield(StartFreeTime)end)elseif nsgji==3 then QuestEventFromMaster()end end
function CallingFromKHiiragi()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Wait(1)Sound.play("SY_Dencho_Calling")
Adv.kayamoriTalk([[Hm?]],"VC_field_custom_00030_RKayamori")UI.linne()end
function KHiiragiMessage(bClTIa)Linne.Wait(bClTIa,2)
if Domain.canUseNickName("KHiiragi")then
Adv.talkWithIcon("RKayamori",[[(Kozie wants to talk... I can't leave her hanging.)]],"VC_MC02_00966_v001_RKayamori")else
Adv.talkWithIcon("RKayamori",[[(Hiiragi wants to talk... I can't leave her hanging.)]],"VC_MC02_00967_v001_RKayamori")end;RemoveLinneEvent("KHiiragi")isNotResume=true end
function KHiiragiEvent()if not isNotResume then Adv.fadeOut(0)end
local rDzL7SVO=Adv.characterAsync("RKayamori")local BW0WFP=Adv.characterAsync("KHiiragi")
Transition.setOutdoor("","")Transition.start()
Field.setCameraCompositionEx(Vec(144.500,4.500,70.000),Vec(3.000,15.000,0.000),30.00)Field.setActive("Player",false)
Field.setActiveWithTag("Mob",false)Field.setActiveWithTag("Gaya",false)
EmptyEvent("KHiiragi_Event")EmptyEvent("RKayamori")Wait(2)local X8=Vec(145.2,3,75)
local JQT=Field.computeMoveTime("RKayamori",X8,1)Field.moveTo("RKayamori",X8,JQT)
Transition.finish()if not isNotResume then Adv.fadeIn(0.5)end
Field.waitTaskKey("RKayamori")Sound.playEmptyBGM(1)
Field.setCameraCompositionExWait(Vec(144.500,4.500,70.000),Vec(3.000,15.000,0.000),24.00,0.8)
Field.showAdvHudWrapper(function()Layout.show({rDzL7SVO,nil})
if
Domain.canUseNickName("KHiiragi")then
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[What's up, Kozie?]],"VC_MC02_00968_v001_RKayamori")else
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[What's up, Hiiragi?]],"VC_MC02_00969_v001_RKayamori")end;Layout.show()
Field.turnToTargetWait("KHiiragi_Event","RKayamori",0.3)Wait(0.5)
Layout.show({rDzL7SVO,"0003"},{BW0WFP,"020002"})Sound.playBGM(AdvBGM.Back1)
Adv.talkWithFacial(nil,nil,BW0WFP,[[I'm...getting kind of scared as the operation day nears...]],"VC_MC02_00970_v001_KHiiragi")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[That's understandable. It's a huge operation this time.]],"VC_MC02_00971_v001_RKayamori")
Adv.talkWithFacial("0000",nil,BW0WFP,[[Of course, the mission itself will be dangerous, but...]],"VC_MC02_00972_v001_KHiiragi")
Adv.talkWithFacial("070103",nil,BW0WFP,[[I'm more worried about Aoi...]],"VC_MC02_00973_v001_KHiiragi")
Adv.talkWithFacial("0700",nil,rDzL7SVO,[[(Yeah, I figured it might be that...)]],"VC_MC02_00974_v001_RKayamori",true)Adv.act(rDzL7SVO,"0003")
Adv.talkWithFacial("0201",nil,BW0WFP,[[I'm starting to lose confidence in my actions.]],"VC_MC02_00975_v001_KHiiragi")
Adv.talkWithFacial("020102",nil,BW0WFP,[[I spent my days pushing our leader in what ways I could...]],"VC_MC02_00976_v001_KHiiragi")
Adv.talkWithFacial("0200",nil,BW0WFP,[[But I'm still not sure if that was even necessary, let alone correct.]],"VC_MC02_00977_v001_KHiiragi")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Maybe it would have been better to have left Aoi alone and let her remain unsure, cautious, afraid...]],"VC_MC02_00978_v001_KHiiragi")
Adv.talkWithFacial("0202",nil,BW0WFP,[[Because then, 31-B would have failed training over and over, and eventually, we'd be assigned to less dangerous missions.]],"VC_MC02_00979_v001_KHiiragi")
Adv.talkWithFacial("020002",nil,BW0WFP,[[But...that didn't happen in the end.]],"VC_MC02_00980_v001_KHiiragi")
Adv.talkWithFacial("020103",nil,BW0WFP,[[Do you think my choice was correct?]],"VC_MC02_00981_v001_KHiiragi")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[I think that's something you'd have to ask Aoi yourself.]],"VC_MC02_00982_v001_RKayamori")
Adv.talkWithFacial("0001",nil,BW0WFP,[[Why?]],"VC_MC02_00983_v001_KHiiragi")
Adv.talkWithFacial("0703",nil,rDzL7SVO,[[Even if another squad were to take 31-B's place, that would just mean they're the ones thrust into danger instead.]],"VC_MC02_00984_v001_RKayamori")Adv.act(rDzL7SVO,"0700")
Adv.actDelay(4.3,rDzL7SVO,"0703")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[If that were to happen, what would Aoi think? And she's the only one who can give you that answer.]],"VC_MC02_00985_v001_RKayamori")Adv.actDelay(0,rDzL7SVO,"0703")
Adv.talkWithFacial("070001",nil,BW0WFP,[[No...I think I know, even without asking her.]],"VC_MC02_00986_v001_KHiiragi")
Adv.talkWithFacial("0701",nil,BW0WFP,[[She'd think it was all her fault...and retreat further into her shell...]],"VC_MC02_00987_v001_KHiiragi")
if Domain.canUseNickName("KHiiragi")then
Adv.talkWithFacial("0003",nil,rDzL7SVO,[[Kozie, if you think that would be a better result, you should stop her now.]],"VC_MC02_00988_v001_RKayamori")else
Adv.talkWithFacial("0003",nil,rDzL7SVO,[[Hiiragi, if you think that would be a better result, you should stop her now.]],"VC_MC02_00989_v001_RKayamori")end
Adv.talkWithFacial("070002",nil,BW0WFP,[[I understand what you're saying. I'm sorry I asked such a foolish question...]],"VC_MC02_00990_v001_KHiiragi")
Adv.talkWithFacial("0701",nil,BW0WFP,[[I'll just believe that what I did was right...or, at least, I hope so.]],"VC_MC02_00991_v001_KHiiragi")
Adv.talkWithFacial("0101",nil,BW0WFP,[[Thank you, Ruka. I'm glad I could confide in you about this.]],"VC_MC02_00992_v001_KHiiragi")Adv.act(rDzL7SVO,"1103")
if Domain.canUseNickName("KHiiragi")then
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[No prob, I was just lending an ear. You're the one who found your answer, Kozie.]],"VC_MC02_00993_v001_RKayamori")else
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[No prob, I was just lending an ear. You're the one who found your answer, Hiiragi.]],"VC_MC02_00994_v001_RKayamori")end;Transition.start()Layout.hide()end)Field.setCameraCompositionEnabled(false)
Field.setActive("RKayamori",false)Field.setActive("KHiiragi_Event",false)
Field.setActiveWithTag("Mob",true)Field.setActiveWithTag("Gaya",true)
Field.setActive("Player",true)Field.resetPosition("BridgePointLeftLeft")
Field.turnTo("Player",180,0)Sound.returnFieldBGM()Wait(2)
Transition.finish()end;function StartFreeTime()Field.startFreeTime()end