function init()refresh()end
function refresh()
ReachEventNoLock("EAoi",TalkToEAoi)EmptyEvent("Byakko")EmptyEvent("IMinase")
ReachEventNoLock("SMinase",TalkToSMinase)TouchEventGeneralTalk("KHiiragi",TalkToKHiiragi)end
function TalkToEAoi()EmptyEvent("EAoi")
if
IsActive("EAoi")and IsActive("Byakko")then
Field.talkByGayaBalloonJustOnce("EAoi",[[Are you ready, Byakko...?]],nil,nil,nil,nil,"VC_GeneralTalk_31B_03_00000_EAoi")
Field.talkByGayaBalloonJustOnce("Byakko",[[Grawr!]],nil,nil,nil,nil,"VC_GeneralTalk_31B_03_00001_Byakko")end end
function TalkToSMinase()EmptyEvent("SMinase")
if
IsActive("SMinase")and IsActive("IMinase")then
Field.talkByGayaBalloonJustOnce("SMinase",[[Is this really what we should have done, meow?]],nil,nil,nil,nil,"VC_GeneralTalk_31B_03_00002_SMinase")
Field.talkByGayaBalloonJustOnce("IMinase",[[I'm sure it was. Damn sure.]],nil,nil,nil,nil,"VC_GeneralTalk_31B_03_00003_IMinase")end end
function TalkToKHiiragi()local A=Adv.characterAsync("KHiiragi","Default")
Field.startGeneralTalk("KHiiragi",FaceToFaceMode.Auto,function()
Layout.show({A,"070202"})
Adv.talk(A,[[We can do it!]],"VC_GeneralTalk_31B_03_00004_KHiiragi")end)end
function TalkToSHiguchi()local w0qyLbH=Adv.characterAsync("SHiguchi","Default")
Field.startGeneralTalk("SHiguchi",FaceToFaceMode.Face,function()
Layout.show({w0qyLbH,"090202"})
Adv.talk(w0qyLbH,[[I'll be a part of the operation this time. How exciting...]],"VC_GeneralTalk_31B_03_00005_SHiguchi")end)end