function init()refresh()end
function refresh()
ReachEventNoLock("MTsukishiro",TalkToMTsukishiro)TouchEventGeneralTalk("SKura",TalkToSKura)
ReachEventNoLock("CSugahara",TalkToCSugahara)ReachEventNoLock("MKiryu",TalkToMKiryu)
EmptyEvent("YShirakawa")
TouchEventGeneralTalk("HOgasawara",TalkToHOgasawara)end
function TalkToMTsukishiro()EmptyEvent("MTsukishiro")
Field.talkByGayaBalloonJustOnce("MTsukishiro",[[Here, of all places?]],
nil,nil,nil,nil,"VC_GeneralTalk_30G_02_00000_MTsukishiro")end
function TalkToSKura()local A=Adv.characterAsync("SKura","Default")
Field.startGeneralTalk("SKura",FaceToFaceMode.Auto,function()
Layout.show(A)
Adv.talk(A,[[In this world, you never know when you'll be parted from your friends. Live free of regrets.]],"VC_GeneralTalk_30G_02_00001_SKura")end)end
function TalkToCSugahara()EmptyEvent("CSugahara")
Field.talkByGayaBalloonJustOnce("CSugahara",[[Ha. Look at this sorry rabble.]],
nil,nil,nil,nil,"VC_GeneralTalk_30G_02_00002_CSugahara")end
function TalkToMKiryu()EmptyEvent("MKiryu")
if
IsActive("MKiryu")and IsActive("YShirakawa")then
Field.talkByGayaBalloonJustOnce("MKiryu",[[There seem to be more Narbies than before.]],3,"Normal",0,1,"VC_GeneralTalk_30G_02_00003_MKiryu")Field.setLookAtTarget("YShirakawa","MKiryu")
Field.talkByGayaBalloonJustOnce("YShirakawa",[[Maybe they're reproducing in secret somewhere?]],3,"Normal",0,
-1,"VC_GeneralTalk_30G_02_00004_YShirakawa")end end
function TalkToHOgasawara()
local w0qyLbH=Adv.characterAsync("HOgasawara","Default")
Field.startGeneralTalk("HOgasawara",FaceToFaceMode.Auto,function()Layout.show(w0qyLbH)
Adv.talk(w0qyLbH,[[A genius swordswoman works alone. I'm totally not lonely.]],"VC_GeneralTalk_30G_02_00005_HOgasawara")end)end