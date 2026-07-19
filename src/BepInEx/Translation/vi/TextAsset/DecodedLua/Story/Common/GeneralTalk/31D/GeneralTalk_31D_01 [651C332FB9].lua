function init()refresh()end
function refresh()
ReachEventNoLock("MNikaido",TalkToMNikaido)TouchEventGeneralTalk("IIshii",TalkToIIshii)
EmptyEvent("RMurohushi")ReachEventNoLock("ADate",TalkToADate)
ReachEventNoLock("AMizuhara",TalkToAMizuhara)if GetTimeFrame()==TimeFrame.Evening then
ReachEventNoLock("FMikoto",TalkToFMikoto)end end
function TalkToMNikaido()EmptyEvent("MNikaido")
if IsActive("MNikaido")and
IsActive("RMurohushi")then
Field.talkByGayaBalloonJustOnce("MNikaido",[[The way the Narbies are all lined up...\nlooks just like a Go move.]],
nil,nil,nil,nil,"VC_GeneralTalk_31D_01_00000_MNikaido")
Field.talkByGayaBalloonJustOnce("RMurohushi",[[Hehe, you're a hard worker, aren't you?\nBut, don't overdo it!]],nil,nil,nil,nil,"VC_GeneralTalk_31D_01_00001_RMurohushi")end end
function TalkToIIshii()local A=Adv.characterAsync("IIshii","Default")
Field.startGeneralTalk("IIshii",FaceToFaceMode.Auto,function()
Layout.show(A)
Adv.talk(A,[[What color should we paint the graves to pay our respects properly?]],"VC_GeneralTalk_31D_01_00002_IIshii")end)end
function TalkToFMikoto()EmptyEvent("FMikoto")
Field.talkByGayaBalloonJustOnce("FMikoto",[[This sunset is giving me some serious depressive vibes.]],
nil,nil,nil,nil,"VC_GeneralTalk_31D_01_00003_FMikoto")end
function TalkToADate()EmptyEvent("ADate")
Field.talkByGayaBalloonJustOnce("ADate",[[I want to be like water in a waterfall...\nto be the one who keeps falling.]],
nil,nil,nil,nil,"VC_GeneralTalk_31D_01_00004_ADate")end
function TalkToAMizuhara()EmptyEvent("AMizuhara")
Field.talkByGayaBalloonJustOnce("AMizuhara",[[Helicopters are kinda shaped like a sperm whale.]],
nil,nil,nil,nil,"VC_GeneralTalk_31D_01_00005_AMizuhara")end