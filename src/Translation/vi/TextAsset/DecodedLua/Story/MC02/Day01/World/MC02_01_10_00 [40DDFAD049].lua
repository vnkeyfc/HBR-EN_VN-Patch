local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Dormitory1F","Assets/Lua/Story/MC02/Day01/World/MC02_01_10_00_Dormitory1F.unity")end;function init()
Sound.playBGM("SB0078",1,2)refresh()end
function refresh()
SetPeriodText("Head to 31-A's room!")ShowMapDestinationIcon("31ARoomGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerLeft","31BRoomPoint",[[I had a thing to do... Nah, I'll do it tomorrow.]],"VC_MC02_01_10_00_World_00000_RKayamori")TouchEvent("YIzumi",TalkToYIzumi)
TouchEvent("TTojo",TalkToTTojo)TouchEvent("KAsakura",TalkToKAsakura)
TouchEvent("TKunimi",TalkToTKunimi)ReachEventNoLock("BIYamawaki",GayaTalkYamawaki)
ReachEventNoLock("AKanzaki",GayaTalkKanzaki)local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)else
TouchEvent("31ARoomGate",function()Yield(FinishWorld)Exit_World()end)end end
function StartWorld()
Field.playerComeIn("StartPoint",Vec(0,0,-3))Field.startEvent()
Field.setCameraFovWait(Field.getCameraFov()*0.6,1)
Adv.kayamoriTalk([[No use worrying about it.]],"VC_MC02_01_10_00_World_00001_RKayamori",nil)
Adv.kayamoriTalk([[Might as well hit the hay and get a fresh start tomorrow.]],"VC_MC02_01_10_00_World_00002_RKayamori",nil)Field.finishEvent()end;function FinishWorld()
Field.playerGetOut("31ARoomPoint",Vec(0,0,2))end
function TalkToYIzumi()
local bClTIa=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({bClTIa,"000201"})
Adv.talk(bClTIa,[[Whether we can actually rise in the ranks or not is riding on our own efforts.]],"VC_MC02_01_10_00_World_00003_YIzumi")end)end
function TalkToTTojo()local rDzL7SVO=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"000201"})
Adv.talk(rDzL7SVO,[[I have to find out about my mother. No matter what.]],"VC_MC02_01_10_00_World_00004_TTojo")Layout.show({rDzL7SVO,"040203"})
Adv.talk(rDzL7SVO,[[But...something's not quite right. Hmm...]],"VC_MC02_01_10_00_World_00005_TTojo")end)end
function TalkToKAsakura()local BW0WFP=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"280201"})
Adv.talk(BW0WFP,[[We've got a rough road ahead, but...tomorrow's our day off. Have to rest up while we can.]],"VC_MC02_01_10_00_World_00006_KAsakura")end)end
function TalkToTKunimi()local X8=Adv.characterAsync("MAikawa","Default")
local JQT=Adv.characterAsync("TKunimi","Default")
Field.startTalk("TKunimi",FaceToFaceMode.None,function()
Layout.show({X8,"0003"},{JQT,"2201"})
Adv.talkWithFacial(nil,nil,JQT,[[I wonder if we'll have to fight more scary Cancers like that Death Slug...]],"VC_MC02_01_10_00_World_00008_TKunimi")
Adv.talkWithFacial("0100",nil,X8,[[Bring 'em on! I'll blast 'em with my powers, bam.]],"VC_MC02_01_10_00_World_00007_MAikawa")end)end
function GayaTalkYamawaki()EmptyEvent("BIYamawaki")
Field.setLookAtTarget("BIYamawaki","YBungo")
Field.talkByGayaBalloon("BIYamawaki",[[We shall continue to hone our skills, Minion.]],2,nil,nil,1,"VC_MC02_01_10_00_World_00009_BIYamawaki")
Field.talkByGayaBalloon("YBungo",[[No doubt, Master, <i>snip snip</i>!]],2,"Anger",nil,1,"VC_MC02_01_10_00_World_00010_YBungo")
Field.talkByGayaBalloon("YBungo",[[We'll be the baddest baddies in the world, <i>snip snip</i>!]],2,"Anger",nil,1,"VC_MC02_01_10_00_World_00011_YBungo")end
function GayaTalkKanzaki()EmptyEvent("AKanzaki")
Field.talkByGayaBalloon("AKanzaki",[[In the end, we were not able to become Squad 31-A...]],2,
nil,nil,nil,"VC_MC02_01_10_00_World_00012_AKanzaki")Field.setLookAtTarget("MSatsuki","AKanzaki")
Field.talkByGayaBalloon("MSatsuki",[[What's so bad about that? 31-C is all right with me. ♪]],2,
nil,nil,nil,"VC_MC02_01_10_00_World_00013_MSatsuki")
Field.talkByGayaBalloon("SSakuraba",[[Yes... What matters is that we are all safe.]],2,nil,nil,nil,"VC_MC02_01_10_00_World_00014_SSakuraba")
Field.talkByGayaBalloon("MTenne",[[At long last, I can return to my research...]],2,nil,nil,nil,"VC_MC02_01_10_00_World_00015_MTenne")end