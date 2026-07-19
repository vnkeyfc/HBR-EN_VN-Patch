local w0qyLbH;function init()
TouchEvent("FriendStreetGate",GoToFriendStreet)refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"else w0qyLbH=""end;local bClTIa=Field.getFieldEventState()if bClTIa=="FromFriendStreet"then
StartEventAt("BackStreet",FromFriendStreet)end end
function FromFriendStreet()PlayerLock("FromFriendStreet")
Log("--- ふれあい通りから来ました")Field.setActive("FriendStreetGate",false)
Field.playerComeIn("StartPoint",Vec(2))Field.resetFieldEventState()
Field.setActive("FriendStreetGate",true)PlayerUnLock("FromFriendStreet")end
function GoToFriendStreet()
local rDzL7SVO=Adv.gateQuestion("",[[Go to Union Street|Stay here]])if rDzL7SVO==1 then return end
Field.setFieldEventState("FromBackStreet")Field.playerGetOut("EndRightPoint",Vec(5),1,0.2)
Exit_FieldAndChange(
"FriendStreet"..w0qyLbH,"BackStreetPoint")end