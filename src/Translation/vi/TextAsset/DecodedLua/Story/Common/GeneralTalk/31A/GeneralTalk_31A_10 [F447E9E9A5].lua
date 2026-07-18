function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)TouchEventGeneralTalk("KAsakura",TalkToKAsakura)
ReachEventNoLock("TTojo",TalkToTTojo)TouchEventGeneralTalk("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({A,"000202"})
Adv.talk(A,[[There's a bunch of facilities here that I haven't been to yet.]],"VC_GeneralTalk_31A_10_00000_YIzumi")end)end
function TalkToKAsakura()local w0qyLbH=Adv.characterAsync("KAsakura")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({w0qyLbH,"000203"})
Adv.faceChange(w0qyLbH,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talk(w0qyLbH,[[I'd like to write a song about Narbies one day.]],"VC_GeneralTalk_31A_10_00001_KAsakura")end)end
function TalkToTTojo()EmptyEvent("TTojo")
if
IsActive("TTojo")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("TTojo",[[Being out in nature\nhas a relaxing effect, wouldn't you agree?]],3,nil,nil,nil,"VC_GeneralTalk_31A_10_00002_TTojo")
Field.talkByGayaBalloonJustOnce("TKunimi",[[A perfect respite\nfor our training-battered selves!]],3,nil,nil,nil,"VC_GeneralTalk_31A_10_00003_TKunimi")end end
function TalkToMAikawa()local nsgji=Adv.characterAsync("MAikawa")
Field.startGeneralTalk("MAikawa",FaceToFaceMode.Face,function()
Layout.show({nsgji,"000201"})
Adv.talk(nsgji,[[What the heck's their purpose in life?]],"VC_GeneralTalk_31A_10_00004_MAikawa")end)end