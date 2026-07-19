function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)EmptyEvent("KAsakura",TalkToKAsakura)
ReachEventNoLock("TTojo",TalkToTTojo)ReachEventNoLock("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({A,"130202"})
Adv.talk(A,[[Guess I'll have to start taking drumming seriously...]],"VC_GeneralTalk_31A_09_00000_YIzumi")end)end
function TalkToKAsakura()local w0qyLbH=Adv.characterAsync("KAsakura")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({w0qyLbH,"000201"})
Adv.talk(w0qyLbH,[[Can you give me some tips on maintaining good posture?]],"VC_GeneralTalk_31A_09_00001_KAsakura")end)end
function TalkToTTojo()EmptyEvent("TTojo")
Field.setLookAtTarget("TTojo","KAsakura")
Field.talkByGayaBalloonJustOnce("TTojo",[[When you're checking your mePad,\nhold it at eye level.]],2,"Normal",0,-1,"VC_GeneralTalk_31A_09_00002_TTojo")Field.disableLookAt("TTojo")
TouchEventGeneralTalk("KAsakura",TalkToKAsakura)end
function TalkToMAikawa()EmptyEvent("MAikawa")
if
IsActive("MAikawa")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("MAikawa",[[I done broke that bench press with my mind, y'all.]],2,"Normal",0,1,"VC_GeneralTalk_31A_09_00003_MAikawa")Field.setLookAtTarget("TKunimi","MAikawa")
Field.talkByGayaBalloonJustOnce("TKunimi",[[If you're that strong,\nyou should use your powers on the Cancer, too!!!]],2,"Anger",0,1,"VC_GeneralTalk_31A_09_00004_TKunimi")end end