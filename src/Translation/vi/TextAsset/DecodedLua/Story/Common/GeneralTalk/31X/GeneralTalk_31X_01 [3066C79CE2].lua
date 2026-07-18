function init()refresh()end
function refresh()
TouchEventGeneralTalk("CReaper",TalkToCReaper)ReachEventNoLock("IRedmayne",TalkToIRedmayne)
TouchEventGeneralTalk("VBalakrishnan",TalkToVBalakrishnan)ReachEventNoLock("MdAngelis",TalkToMdAngelis)
ReachEventNoLock("LShanhua",TalkToLShanhua)ReachEventNoLock("CSkopovskaya",TalkToCSkopovskaya)end
function TalkToCReaper()local A=Adv.characterAsync("CReaper")
Field.startGeneralTalk("CReaper",FaceToFaceMode.Auto,function()
Layout.show(A)
Adv.talk(A,[[Lovin' justice and hatin' evil. Dat's a hero for ya.]],"VC_GeneralTalk_31X_01_00000_CReaper")end)end
function TalkToIRedmayne()EmptyEvent("IRedmayne")
Field.talkByGayaBalloonJustOnce("IRedmayne",[[Oh, what I wouldn't give\nfor a contrived locked-room murder case...]],
nil,nil,nil,nil,"VC_GeneralTalk_31X_01_00001_IRedmayne")end
function TalkToVBalakrishnan()local w0qyLbH=Adv.characterAsync("VBalakrishnan")
Field.startGeneralTalk("VBalakrishnan",FaceToFaceMode.Auto,function()
Layout.show({w0qyLbH,"000201"})
Adv.faceChange(w0qyLbH,"Mouth",AdvCharacterMouth.Mouth02,1)
Adv.talk(w0qyLbH,[[Simply put, the stereoscopic image of the involute curve is... x=a(cosθ+θsinθ)...]],"VC_GeneralTalk_31X_01_00002_VBalakrishnan")end)end
function TalkToMdAngelis()EmptyEvent("MdAngelis")
Field.talkByGayaBalloonJustOnce("MdAngelis",[[Dannazione.\nIt is still surprisingly peaceful here, no?]],
nil,nil,nil,nil,"VC_GeneralTalk_31X_01_00003_MdAngelis")end
function TalkToLShanhua()EmptyEvent("LShanhua")
Field.talkByGayaBalloonJustOnce("LShanhua",[[If we are to strategize on this terrain, let us use the lake.\nYes... we ought to call it the Last Stand.]],
nil,nil,nil,nil,"VC_GeneralTalk_31X_01_00004_LShanhua")end
function TalkToCSkopovskaya()EmptyEvent("CSkopovskaya")
Field.talkByGayaBalloonJustOnce("CSkopovskaya",[[Da, this view reminds me about Lake Baikal...]],
nil,nil,nil,nil,"VC_GeneralTalk_31X_01_00005_CSkopovskaya")end