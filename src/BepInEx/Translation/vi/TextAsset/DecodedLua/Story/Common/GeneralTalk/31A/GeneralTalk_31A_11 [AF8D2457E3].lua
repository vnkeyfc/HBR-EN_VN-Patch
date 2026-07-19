function init()refresh()end
function refresh()
ReachEventNoLock("YIzumi",TalkToYIzumi)ReachEventNoLock("Karen",TalkToKaren)
TouchEventGeneralTalk("TTojo",TalkToTTojo)EmptyEvent("MAikawa")EmptyEvent("TKunimi")end
function TalkToYIzumi()EmptyEvent("YIzumi")
if
IsActive("TKunimi")and IsActive("YIzumi")then
Field.talkByGayaBalloonJustOnce("TKunimi",[[Can a hacker also hack a calculator?]],3,nil,nil,nil,"VC_GeneralTalk_31A_11_00000_TKunimi")
Field.talkByGayaBalloonJustOnce("YIzumi",[[Maybe, but what'd be the point?]],3,nil,nil,nil,"VC_GeneralTalk_31A_11_00001_YIzumi")end end
function TalkToKaren()EmptyEvent("Karen")
if
IsActive("Karen")and IsActive("MAikawa")then
Field.talkByGayaBalloonJustOnce("Karen",[[Ah! My body thirsts...for BLOOD!]],2,"Anger",nil,nil,"VC_GeneralTalk_31A_11_00002_Karen")
Field.talkByGayaBalloonJustOnce("MAikawa",[[Oh lordy! Ya doin' alright?]],2,"Anger",nil,nil,"VC_GeneralTalk_31A_11_00003_MAikawa")end end
function TalkToTTojo()local A=Adv.characterAsync("TTojo")
Field.startGeneralTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({A,"010201"})
Adv.faceChange(A,"Mouth",AdvCharacterMouth.Mouth03,1)
Adv.talk(A,[[If you switch off your body and mind completely, you can get the most out of your break!]],"VC_GeneralTalk_31A_11_00004_TTojo")end)end