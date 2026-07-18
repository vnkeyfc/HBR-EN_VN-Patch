function init()refresh()end
function refresh()
ReachEventNoLock("BIYamawaki",TalkToBIYamawaki)EmptyEvent("YBungo")
TouchEventGeneralTalk("MTenne",TalkToMTenne)ReachEventNoLock("SSakuraba",TalkToSSakuraba)
TouchEventGeneralTalk("AKanzaki",TalkToAKanzaki)
TouchEventGeneralTalkAt("School1F","MSatsuki",TalkToMSatsukiAtSchool1F)
TouchEventGeneralTalkAt("Dormitory1F","MSatsuki",TalkToMSatsukiAtDormitory1F)end
function TalkToBIYamawaki()EmptyEvent("BIYamawaki")
if IsActive("BIYamawaki")and
IsActive("YBungo")then
Field.talkByGayaBalloonJustOnce("BIYamawaki",[[You hungry?\nHere, suck on this candy to stave off zhat hunger!]],
nil,nil,nil,nil,"VC_GeneralTalk_31C_01_00000_BIYamawaki")
Field.talkByGayaBalloonJustOnce("YBungo",[[Ohh, it's so sweet and yummy, <i>snip</i>!]],nil,nil,nil,nil,"VC_GeneralTalk_31C_01_00001_YBungo")end end
function TalkToMTenne()local A=Adv.characterAsync("MTenne","Default")
Field.startGeneralTalk("MTenne",FaceToFaceMode.Face,function()
Layout.show({A,"030202"})
Adv.talk(A,[[I'm deciphering an ancient text.\nDo <i>not</i> disturb me!]],"VC_GeneralTalk_31C_01_00002_MTenne")end)end
function TalkToSSakuraba()EmptyEvent("SSakuraba")
Field.talkByGayaBalloonJustOnce("SSakuraba",[[According to my divination...it was meant to be pouring with rain,\nbut it is sunny!]],
nil,nil,nil,nil,"VC_GeneralTalk_31C_01_00003_SSakuraba")end
function TalkToAKanzaki()local w0qyLbH=Adv.characterAsync("AKanzaki","Default")
Field.startGeneralTalk("AKanzaki",FaceToFaceMode.Auto,function()
Adv.talk(w0qyLbH,[[Oh?! You are able to see me?!]],"VC_GeneralTalk_31C_01_00004_AKanzaki")end)end
function TalkToMSatsukiAtSchool1F()
local nsgji=Adv.characterAsync("MSatsuki","Default")
Field.startGeneralTalk("MSatsuki",FaceToFaceMode.Auto,function()
Layout.show({nsgji,"010202"})
Adv.talk(nsgji,[[Welcome. ♪ Can I help you find something? ♪]],"VC_GeneralTalk_31C_01_00005_MSatsuki")end)end
function TalkToMSatsukiAtDormitory1F()
local bClTIa=Adv.characterAsync("MSatsuki","Default")
Field.startGeneralTalk("MSatsuki",FaceToFaceMode.Face,function()
Layout.show({bClTIa,"000201"})
Adv.talk(bClTIa,[[I'm taking a brief rest right now. ♪]],"VC_GeneralTalk_31C_01_00006_MSatsuki")end)end