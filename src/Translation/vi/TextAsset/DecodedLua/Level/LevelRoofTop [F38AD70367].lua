local w0qyLbH;function init()refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_AutumnSummer"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"else w0qyLbH=""end
if
Game.isStory()and Domain.getLatestMainStoryOrder()>=90 then TouchEvent("Dormitory1FGate",GoToDormitory1F)end;local bClTIa=Field.getFieldEventState()if bClTIa=="FromDormitory1F"then
StartEvent(FromDormitory1F)end end
function FromDormitory1F()PlayerLock("FromDormitory1F")
Log("--- メイン通りから来ました")Field.playerComeIn("StartPoint",Vec(0,0,2))
Field.resetFieldEventState()PlayerUnLock("FromDormitory1F")end
function GoToDormitory1F()
local rDzL7SVO=Adv.gateQuestion("",[[Đi xuống tầng trệt|Ở lại]])if rDzL7SVO==1 then return end
Field.setFieldEventState("FromRoofTop")
Field.playerGetOut("StartPoint",Vec(0,0,2),1,0.2)
Exit_FieldAndChange("Dormitory1F"..w0qyLbH,"RooftopPoint")end