function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)EmptyEvent("KAsakura")
ReachEventNoLock("TTojo",TalkToTTojo)ReachEventNoLock("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({A,"000203"})
Adv.talk(A,[[Definitively wasn't eavesdropping on the commander's conversation, nope.]],"VC_GeneralTalk_31A_05_00000_YIzumi")end)end
function TalkToKAsakura()local w0qyLbH=Adv.characterAsync("KAsakura","Default")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({w0qyLbH,"000201"})
Adv.talk(w0qyLbH,[[Do you have any tips on how to make your legs look nice?]],"VC_GeneralTalk_31A_05_00001_KAsakura")end)end
function TalkToTTojo()EmptyEvent("TTojo")
Field.talkByGayaBalloonJustOnce("TTojo",[[Wearing shoes that fit properly is key.]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_05_00002_TTojo")TouchEventGeneralTalk("KAsakura",TalkToKAsakura)end
function TalkToMAikawa()EmptyEvent("MAikawa")
if
IsActive("MAikawa")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("MAikawa",[[Y'all, my psychic powers could blow the gym up\nquicker'n a hiccup.]],3,"Anger",nil,nil,"VC_GeneralTalk_31A_05_00003_MAikawa")
Field.talkByGayaBalloonJustOnce("TKunimi",[[I wanna see that!\nBut then we'll lose a place to train!]],3,"Normal",0,1,"VC_GeneralTalk_31A_05_00004_TKunimi")end end