function init()refresh()end
function refresh()EmptyEvent("YBungo")
ReachEventNoLock("BIYamawaki",TalkToBIYamawaki)ReachEventNoLock("MTenne",TalkToMTenne)
ReachEventNoLock("SSakuraba",TalkToSSakuraba)EmptyEvent("MSatsuki")
ReachEventNoLock("AKanzaki",TalkToAKanzaki)
TouchEventGeneralTalkAt("School1F","MSatsuki",TalkToMSatsukiAtSchool1F)end
function TalkToBIYamawaki()EmptyEvent("BIYamawaki")
if IsActive("BIYamawaki")and
IsActive("YBungo")then
Field.talkByGayaBalloonJustOnce("YBungo",[[This world is again heading towards total destruction today,\n<i>snip</i>... Ke he he!]],
nil,"Normal",nil,nil,"VC_GeneralTalk_31C_03_00000_YBungo")
Field.talkByGayaBalloonJustOnce("BIYamawaki",[[Yeah, that vould be nice...]],nil,nil,nil,nil,"VC_GeneralTalk_31C_03_00001_BIYamawaki")end end
function TalkToMTenne()EmptyEvent("MTenne")
Field.talkByGayaBalloonJustOnce("MTenne",[[Can't we use the library as a laboratory?]],3,"Normal",0,1,"VC_GeneralTalk_31C_03_00002_MTenne")end
function TalkToSSakuraba()EmptyEvent("SSakuraba")
if IsActive("SSakuraba")and
IsActive("MSatsuki")then
Field.talkByGayaBalloonJustOnce("SSakuraba",[[According to my divination...there will be heavy snow tomorrow.]],3,
nil,nil,nil,"VC_GeneralTalk_31C_03_00003_SSakuraba")Field.setLookAtTarget("MSatsuki","SSakuraba")
Field.talkByGayaBalloonJustOnce("MSatsuki",[[That's going to reduce the amount of customers! ♪]],3,
nil,nil,nil,"VC_GeneralTalk_31C_03_00004_MSatsuki")end end
function TalkToAKanzaki()EmptyEvent("AKanzaki")
Field.talkByGayaBalloonJustOnce("AKanzaki",[[I wonder if I can camouflage myself among the sakura trees...]],5,
nil,nil,nil,"VC_GeneralTalk_31C_03_00005_AKanzaki")end
function TalkToMSatsukiAtSchool1F()
local A=Adv.characterAsync("MSatsuki","Default")
Field.startGeneralTalk("MSatsuki",FaceToFaceMode.Auto,function()
Layout.show({A,"010202"})
Adv.talk(A,[[Welcome. ♪ Can I help you find something? ♪]],"VC_GeneralTalk_31C_01_00005_MSatsuki")end)end