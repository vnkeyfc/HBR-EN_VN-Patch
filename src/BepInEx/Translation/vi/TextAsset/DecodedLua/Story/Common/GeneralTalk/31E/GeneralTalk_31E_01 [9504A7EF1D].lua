function init()refresh()end
function refresh()
ReachEventNoLock("IcOhshima",TalkToIcOhshima)ReachEventNoLock("NiOhshima",TalkToNiOhshima)
ReachEventNoLock("MiOhshima",TalkToMiOhshima)ReachEventNoLock("YoOhshima",TalkToYoOhshima)
EmptyEvent("IrOhshima")ReachEventNoLock("MuOhshima",TalkToMuOhshima)end
function TalkToIcOhshima()EmptyEvent("IcOhshima")
Field.talkByGayaBalloonJustOnce("IcOhshima",[[The first Japanese coin was said to have been minted in 708...\nHmm, I see.]],
nil,nil,nil,nil,"VC_GeneralTalk_31E_01_00000_IcOhshima")end
function TalkToNiOhshima()EmptyEvent("NiOhshima")
if IsActive("NiOhshima")and
IsActive("IrOhshima")then
Field.talkByGayaBalloonJustOnce("NiOhshima",[[The best pose for a photo with the clock tower in the background...\nis this it?]],
nil,nil,nil,nil,"VC_GeneralTalk_31E_01_00001_NiOhshima")
Field.talkByGayaBalloonJustOnce("IrOhshima",[[More importantly,\nthis tower seems to be hiding a lock that's worthy of cracking,\ndoesn't it?!]],nil,nil,
nil,nil,"VC_GeneralTalk_31E_01_00002_IrOhshima")end end
function TalkToMiOhshima()EmptyEvent("MiOhshima")
Field.talkByGayaBalloonJustOnce("MiOhshima",[[The shortcut is...straight out that window!]],
nil,nil,nil,nil,"VC_GeneralTalk_31E_01_00003_MiOhshima")end
function TalkToYoOhshima()EmptyEvent("YoOhshima")
Field.talkByGayaBalloonJustOnce("YoOhshima",[[Sombody pleeease develop\nan exercise-less exercise machine...]],3,"Normal",0,
nil,"VC_GeneralTalk_31E_01_00005_YoOhshima")end
function TalkToMuOhshima()EmptyEvent("MuOhshima")
Field.talkByGayaBalloonJustOnce("MuOhshima",[[Haah, whoo!\nRunning endlessly on\na treadmill feels sooo good!]],
nil,"Anger",nil,nil,"VC_GeneralTalk_31E_01_00004_MuOhshima")end