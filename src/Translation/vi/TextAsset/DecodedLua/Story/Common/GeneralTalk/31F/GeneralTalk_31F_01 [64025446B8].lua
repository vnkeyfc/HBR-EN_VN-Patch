function init()refresh()end
function refresh()EmptyEvent("KMaruyama")
EmptyEvent("MYanagi")TouchEventGeneralTalk("SHanamura",TalkToSHanamura)
ReachEventNoLock("CMatsuoka",TalkToCMatsuoka)TouchEventGeneralTalk("INatsume",TalkToINatsume)
ReachEventNoLock("MKurosawa",TalkToMKurosawa)end
function TalkToSHanamura()local A=Adv.characterAsync("SHanamura")
Field.startGeneralTalk("SHanamura",FaceToFaceMode.None,function()
Layout.show({A,"010201"})
Adv.talk(A,[[I'd like you to choose a pen that's suitable for me.]],"VC_GeneralTalk_31F_01_00000_SHanamura")end)end
function TalkToCMatsuoka()EmptyEvent("CMatsuoka")
Field.talkByGayaBalloonJustOnce("CMatsuoka",[[I'd love to blow this bridge up someday...as a stunt.]],
nil,nil,nil,nil,"VC_GeneralTalk_31F_01_00001_CMatsuoka")end
function TalkToINatsume()local w0qyLbH=Adv.characterAsync("INatsume")
Field.startGeneralTalk("INatsume",FaceToFaceMode.None,function()
Layout.show({w0qyLbH,"040002"})
Adv.talk(w0qyLbH,[[Devotion will amount to nothing, then there will be emptiness.]],"VC_GeneralTalk_31F_01_00002_INatsume")end)end
function TalkToMKurosawa()EmptyEvent("MKurosawa")
if
IsActive("MKurosawa")and
IsActive("KMaruyama")and IsActive("MYanagi")then
Field.talkByGayaBalloonJustOnce("MKurosawa",[[With the right gumption,\neverything's like shootin' fish in a barrel.]],nil,nil,nil,nil,"VC_GeneralTalk_31F_01_00003_MKurosawa")
Field.talkByGayaBalloonJustOnce("KMaruyama",[[Yanagi...translate, please.]],nil,nil,nil,nil,"VC_GeneralTalk_31F_01_00004_KMaruyama")
Field.talkByGayaBalloonJustOnce("MYanagi",[[If you have the proper mindset,\nit's easy to accomplish anything.]],nil,nil,nil,nil,"VC_GeneralTalk_31F_01_00005_MYanagi")end end