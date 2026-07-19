function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)EmptyEvent("KAsakura")
ReachEventNoLock("TTojo",TalkToTTojo)ReachEventNoLock("MAikawa",TalkToMAikawa)
EmptyEvent("TKunimi")end
function TalkToYIzumi()local A=Adv.characterAsync("YIzumi")
Field.startGeneralTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show(A)
Adv.talk(A,[[The military still seems to have a lot of secrets.]],"VC_GeneralTalk_31A_06_00000_YIzumi")end)end
function TalkToKAsakura()local w0qyLbH=Adv.characterAsync("KAsakura","Default")
Field.startGeneralTalk("KAsakura",FaceToFaceMode.Face,function()
Layout.show({w0qyLbH,"000201"})
Adv.talk(w0qyLbH,[[What's the key to staying healthy?]],"VC_GeneralTalk_31A_06_00001_KAsakura")end)end
function TalkToTTojo()EmptyEvent("TTojo")
Field.talkByGayaBalloonJustOnce("TTojo",[[You need to maintain a balanced and varied diet.]],
nil,nil,nil,nil,"VC_GeneralTalk_31A_06_00002_TTojo")TouchEventGeneralTalk("KAsakura",TalkToKAsakura)end
function TalkToMAikawa()EmptyEvent("MAikawa")
if
IsActive("MAikawa")and IsActive("TKunimi")then
Field.talkByGayaBalloonJustOnce("TKunimi",[[Show me how you bend a spoon!]],nil,nil,nil,nil,"VC_GeneralTalk_31A_06_00003_TKunimi")
Field.talkByGayaBalloonJustOnce("MAikawa",[[Get outta here! That ain't no psychic power. That's just a parlor trick!]],nil,nil,nil,nil,"VC_GeneralTalk_31A_06_00004_MAikawa")end end