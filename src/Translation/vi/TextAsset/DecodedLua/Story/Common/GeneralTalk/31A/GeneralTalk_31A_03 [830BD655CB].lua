function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)TouchEventGeneralTalk("KAsakura",TalkToKAsakura)
TouchEventGeneralTalk("TTojo",TalkToTTojo)ReachEventNoLock("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi","Default")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({A,"210203"})
Adv.talk(A,[[The situation's tough enough as it is...why does it keep getting worse?]],"VC_GeneralTalk_31A_03_00000_YIzumi")end)end
function TalkToKAsakura()local w0qyLbH=Adv.characterAsync("KAsakura","Default")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({w0qyLbH,"000202"})
Adv.talk(w0qyLbH,[[I wonder what kind of people the members of 31-C are...]],"VC_GeneralTalk_31A_03_00001_KAsakura")end)end
function TalkToTTojo()local nsgji=Adv.characterAsync("TTojo","Default")
Field.startGeneralTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({nsgji,"080203"})
Adv.talk(nsgji,[[I wasn't aware that "A" was so amazing.]],"VC_GeneralTalk_31A_03_00002_TTojo")end)end
function TalkToMAikawa()EmptyEvent("MAikawa")
if
IsActive("MAikawa")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("MAikawa",[[Those girls in 31-C...\nI tell ya, I'll crush 'em with my psychic powers!]],3,"Anger",nil,nil,"VC_GeneralTalk_31A_03_00003_MAikawa")Field.setLookAtTarget("TKunimi","MAikawa")
Field.talkByGayaBalloonJustOnce("TKunimi",[[What about using those powers\nto crush Cancers?!]],3,"Anger",
nil,nil,"VC_GeneralTalk_31A_03_00004_TKunimi")end end