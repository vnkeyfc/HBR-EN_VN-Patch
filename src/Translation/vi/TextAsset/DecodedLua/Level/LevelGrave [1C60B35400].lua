local w0qyLbH;function init()TouchEvent("MainStreetGate",GoToMainStreet)
refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"else w0qyLbH=""end;local bClTIa=Field.getFieldEventState()if bClTIa=="FromMainStreet"then
StartEventAt("Grave",FromMainStreet)end end
function FromMainStreet()PlayerLock("FromMainStreet")
Log("--- メイン通りから来ました")Field.playerComeIn("StartPoint",Vec(1,0,2))
Field.resetFieldEventState()PlayerUnLock("FromMainStreet")end
function GoToMainStreet()
local rDzL7SVO=Adv.gateQuestion("",[[Go to Main Street|Stay here]])if rDzL7SVO==1 then return end
Field.setFieldEventState("FromGrave")Field.playerGetOut("StartPoint",Vec(1,0,2))
Exit_FieldAndChange(
"MainStreet"..w0qyLbH,"CemeteryPoint")end