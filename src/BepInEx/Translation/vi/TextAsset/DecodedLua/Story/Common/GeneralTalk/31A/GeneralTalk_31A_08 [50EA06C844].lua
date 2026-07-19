function init()refresh()end
function refresh()EmptyEvent("YIzumi")
ReachEventNoLock("KAsakura",TalkToKAsakura)TouchEventGeneralTalk("TTojo",TalkToTTojo)
ReachEventNoLock("MAikawa",TalkToMAikawa)TouchEventGeneralTalk("TKunimi",TalkToTKunimi)end
function TalkToKAsakura()EmptyEvent("KAsakura")
if
IsActive("KAsakura")and IsActive("YIzumi")then
Field.talkByGayaBalloonJustOnce("KAsakura",[[Do they have corn dogs?]],nil,nil,nil,1,"VC_GeneralTalk_31A_08_00000_KAsakura")
Field.talkByGayaBalloonJustOnce("YIzumi",[[The menu's ridiculously large, so I bet they do.]],3,"Normal",0,1,"VC_GeneralTalk_31A_08_00001_YIzumi")end end
function TalkToTTojo()local A=Adv.characterAsync("TTojo")
Field.startGeneralTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({A,"070201"})
Adv.talk(A,[[Narbies... They're the unsolved mystery of our time.]],"VC_GeneralTalk_31A_08_00002_TTojo")end)end
function TalkToMAikawa()EmptyEvent("MAikawa")
Field.talkByGayaBalloonJustOnce("MAikawa",[[......]],nil,nil,nil,nil,"VC_GeneralTalk_31A_08_00003_MAikawa")end
function TalkToTKunimi()local w0qyLbH=Adv.characterAsync("TKunimi")
Field.startGeneralTalk("TKunimi",FaceToFaceMode.Face,function()
Layout.show({w0qyLbH,"180202"})
Adv.talk(w0qyLbH,[[Megumi's sleeping standing up!!]],"VC_GeneralTalk_31A_08_00004_TKunimi")end)end