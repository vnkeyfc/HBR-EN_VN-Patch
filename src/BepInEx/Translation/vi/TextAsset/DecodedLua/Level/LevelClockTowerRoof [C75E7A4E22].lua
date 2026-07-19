local w0qyLbH;function init()TouchEvent("MainStreetGate",GoToMainStreet)
Field.resetFollowerPosition("Player",0.340)refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"else w0qyLbH=""end;local bClTIa=Field.getFieldEventState()if bClTIa=="FromMainStreet"then
StartEventAt("ClockTowerRoof",FromMainStreet)end end
function FromMainStreet()PlayerLock("FromMainStreet")
Log("--- メイン通りから来ました")Field.setFollowerFormationZScale("Player",0.080)Field.playerComeIn("StartPoint",Vec(0,0,
-0.70))
Field.resetFieldEventState()Field.setFollowerFormationZScale("Player",1.00)
PlayerUnLock("FromMainStreet")end
function GoToMainStreet()
local rDzL7SVO=Adv.gateQuestion("",[[Go to Main Street|Stay here]])if rDzL7SVO==1 then return end
Field.setFieldEventState("FromClockTower")Field.playerGetOut("StartPoint",Vec(0,0,-1))
Exit_FieldAndChange(
"MainStreet"..w0qyLbH,"ClockTowerPoint")end