function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)EmptyEvent("KAsakura")
ReachEventNoLock("TTojo",TalkToTTojo)ReachEventNoLock("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({A,"040203"})
Adv.talk(A,[[I'd rather avoid another tragedy.]],"VC_GeneralTalk_31A_12_00000_YIzumi")end)end
function TalkToTTojo()EmptyEvent("TTojo")
if
IsActive("TTojo")and IsActive("KAsakura")then
Field.talkByGayaBalloonJustOnce("KAsakura",[[The day of the operation is finally here..]],nil,nil,nil,nil,"VC_GeneralTalk_31A_12_00001_KAsakura")
Field.talkByGayaBalloonJustOnce("TTojo",[[Mother, watch over me.]],nil,nil,nil,nil,"VC_GeneralTalk_31A_12_00002_TTojo")end end
function TalkToMAikawa()EmptyEvent("MAikawa")
if
IsActive("MAikawa")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("MAikawa",[[A whole lot's happened,\nbut we gotta give it all we got.]],nil,nil,nil,nil,"VC_GeneralTalk_31A_12_00003_MAikawa")Field.setLookAtTarget("TKunimi","MAikawa")
Field.talkByGayaBalloonJustOnce("TKunimi",[[Let's all return safe, sound, and in one piece!!]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_12_00004_TKunimi")end end