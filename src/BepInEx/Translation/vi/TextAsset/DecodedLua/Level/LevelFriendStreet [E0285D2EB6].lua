local nsgji;local bClTIa
function init()
TouchEvent("MainStreetLeftGate",GoToMainStreetLeft)
TouchEvent("MainStreetRightGate",GoToMainStreetRight)TouchEvent("BackStreetGate",GoToBackStreet)
refresh()end
function refresh()local rDzL7SVO=Domain.getCurrentStorySeasonType()
local BW0WFP=false;if
Domain.getDivingChapter()=="AC31"and Game.isEventStory()then BW0WFP=true end
if rDzL7SVO==
StorySeasonType.AutumnSummer then nsgji="_Autumn"bClTIa="_AutumnSummer"elseif rDzL7SVO==
StorySeasonType.LateAutumn then nsgji="_LateAutumn"bClTIa="_LateAutumn"elseif BW0WFP then
nsgji="_PowerOutage"bClTIa="_PowerOutage"else nsgji=""bClTIa=""end;local X8=Field.getFieldEventState()
if X8 =="FromMainStreetLeft"then
StartEvent(FromMainStreetLeft)elseif X8 =="FromMainStreetRight"then StartEvent(FromMainStreetRight)elseif X8 ==
"FromBackStreet"then StartEvent(FromBackStreet)end end
function FromMainStreetLeft()PlayerLock("FromMainStreetLeft")
Log("--- メイン通り左から来ました")Field.playerComeIn("StartPoint",Vec(0,0,-2))
Field.resetFieldEventState()PlayerUnLock("FromMainStreetLeft")end
function FromMainStreetRight()PlayerLock("FromMainStreetRight")
Log("--- メイン通り右から来ました")Field.playerComeIn("EndPoint",Vec(2))
Field.resetFieldEventState()PlayerUnLock("FromMainStreetRight")end
function FromBackStreet()PlayerLock("FromBackStreet")
Log("--- 裏通りから来ました")Field.playerComeIn("BackStreetPoint",Vec(-2))
Field.resetFieldEventState()PlayerUnLock("FromBackStreet")end
function GoToMainStreetLeft()
local JQT=Adv.gateQuestion("",[[Đi đến đường chính|Ở lại]])if JQT==1 then return end
Field.setFieldEventState("FromFriendStreetLeft")
Field.playerGetOut("StartPoint",Vec(0,0,-5),1,0.2)
Exit_FieldAndChange("MainStreet"..nsgji,"FriendStreetLeftPoint")end
function GoToMainStreetRight()
local AtYtR=Adv.gateQuestion("",[[Đi đến đường chính|Ở lại]])if AtYtR==1 then return end
Field.setFieldEventState("FromFriendStreetRight")Field.playerGetOut("EndPoint",Vec(5),1,0.2)
Exit_FieldAndChange(
"MainStreet"..nsgji,"FriendStreetRightPoint")end
function GoToBackStreet()
local ND2BCh3=Adv.gateQuestion("",[[Đi đến ngõ sau|Ở lại]])if ND2BCh3 ==1 then return end
Field.setFieldEventState("FromFriendStreet")
Field.playerGetOut("BackStreetPoint",Vec(-5),1,0.2)
Exit_FieldAndChange("BackStreet"..bClTIa,"StartPoint")end