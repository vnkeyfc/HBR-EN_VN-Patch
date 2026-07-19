function init()refresh()end
function refresh()
ReachEventNoLock("EAoi",TalkToEAoi)EmptyEvent("Byakko")EmptyEvent("IMinase")
ReachEventNoLock("SMinase",TalkToSMinase)TouchEventGeneralTalk("KHiiragi",TalkToKHiiragi)end
function TalkToEAoi()EmptyEvent("EAoi")
if
IsActive("EAoi")and IsActive("Byakko")then
Field.talkByGayaBalloonJustOnce("EAoi",[[There, there. Good kitty.]],nil,nil,nil,nil,"VC_GeneralTalk_31B_02_00000_EAoi")
Field.talkByGayaBalloonJustOnce("Byakko",[[Rawrrr...]],nil,nil,nil,nil,"VC_GeneralTalk_31B_02_00001_Byakko")end end
function TalkToSMinase()EmptyEvent("SMinase")
if
IsActive("SMinase")and IsActive("IMinase")then
Field.talkByGayaBalloonJustOnce("SMinase",[[Is this really how we should be doing things, meow?]],nil,nil,nil,nil,"VC_GeneralTalk_31B_02_00002_SMinase")
Field.talkByGayaBalloonJustOnce("IMinase",[['Course it is.]],nil,nil,nil,nil,"VC_GeneralTalk_31B_02_00003_IMinase")end end
function TalkToKHiiragi()local A=Adv.characterAsync("KHiiragi","Default")
Field.startGeneralTalk("KHiiragi",FaceToFaceMode.Auto,function()
Layout.show({A,"020201"})
Adv.talk(A,[[There's so many...! I can see them so clearly!]],"VC_GeneralTalk_31B_02_00004_KHiiragi")end)end
function TalkToSHiguchi()local w0qyLbH=Adv.characterAsync("SHiguchi","Default")
Field.startGeneralTalk("SHiguchi",FaceToFaceMode.Face,function()
Layout.show({w0qyLbH,"010101"})
Adv.talk(w0qyLbH,[[What do you want from me today?]],"VC_GeneralTalk_31B_02_00005_SHiguchi")end)end