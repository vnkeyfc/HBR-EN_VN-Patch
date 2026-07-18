function init()TouchEvent("FriendStreetGate",GoToFriendStreet)
refresh()end
function refresh()
local A=Field.getFieldEventState()if A=="FromFriendStreet"then
StartEventAt("BackStreet",FromFriendStreet)end end
function FromFriendStreet()PlayerLock("FromFriendStreet")
Log("--- ふれあい通りから来ました")Field.setActive("FriendStreetGate",false)
Field.playerComeIn("StartPoint",Vec(2))Field.resetFieldEventState()
Field.setActive("FriendStreetGate",true)PlayerUnLock("FromFriendStreet")end
function GoToFriendStreet()
local w0qyLbH=Adv.gateQuestion("",[[Go to Union Street|Ở lại]])if w0qyLbH==1 then return end
Field.setFieldEventState("FromBackStreet")Field.playerGetOut("EndRightPoint",Vec(5),1,0.2)
Exit_FieldAndChange("FriendStreet","BackStreetPoint")end