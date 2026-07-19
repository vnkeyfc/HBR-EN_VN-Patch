function init()refresh()end
function refresh()EmptyEvent("YIzumi")
TouchEventGeneralTalk("KAsakura",TalkToKAsakura)ReachEventNoLock("TTojo",TalkToTTojo)
EmptyEvent("MAikawa")ReachEventNoLock("TKunimi",TalkToTKunimi)end
function TalkToKAsakura()local A=Adv.characterAsync("KAsakura","Default")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({A,"050202"})
Adv.talk(A,[[I was chasing Narbies and ended up here.]],"VC_GeneralTalk_31A_07_00000_KAsakura")end)end
function TalkToTTojo()EmptyEvent("TTojo")
if
IsActive("TTojo")and IsActive("YIzumi")and IsActive("MAikawa")then
Field.talkByGayaBalloonJustOnce("TTojo",[[Did you know that, in our lifetime,\nwe spend an average of 92 days sitting on the toilet?]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_07_00001_TTojo")Field.setLookAtTarget("YIzumi","TTojo")
Field.talkByGayaBalloonJustOnce("YIzumi",[[And what am I supposed to do with that knowledge?]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_07_00002_YIzumi")Field.setLookAtTarget("MAikawa","TTojo")
Field.talkByGayaBalloonJustOnce("MAikawa",[[I don't really get it, but dang.]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_07_00003_MAikawa")end end
function TalkToTKunimi()EmptyEvent("TKunimi")
Field.talkByGayaBalloonJustOnce("TKunimi",[[This training is so rough... It's gonna do me in.]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_07_00004_TKunimi")end