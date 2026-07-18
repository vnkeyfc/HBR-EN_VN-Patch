local w0qyLbH;function init()TouchEvent("MainStreetGate",GoToMainStreet)
refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()local bClTIa=false
if Domain.getDivingChapter()=="AC31"and
Game.isEventStory()then bClTIa=true end
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"elseif bClTIa then w0qyLbH="_PowerOutage"else w0qyLbH=""end;local rDzL7SVO=Field.getFieldEventState()if rDzL7SVO=="FromMainStreet"then
StartEvent(FromMainStreet)end end
function FromMainStreet()PlayerLock("FromMainStreet")
Log("--- メイン通りから来ました")
Field.changeAnimation("SchoolDoor03","SchoolDoor03Close")Field.playerComeIn("StartPoint",Vec(0,0,-1))
Field.resetFieldEventState()PlayerUnLock("FromMainStreet")end
function GoToMainStreet()
local BW0WFP=Field.getWaypointPosition("StartPoint")+Vec(0,0,-10)local X8=1.0
local JQT=Field.computeMoveTime("Player",BW0WFP,X8*1.420)
local AtYtR=Adv.gateQuestion("",[[Go to Main Street|Stay here]])if AtYtR==1 then return end
Field.setFieldEventState("FromSchool1F")Field.moveTo("Player",BW0WFP,JQT)
Field.setFollowerAutoMoveEnabled(true)Wait(0.3)
Field.changeAnimation("SchoolDoor03","DormitoryDoor03Open")Wait(0.2)Transition.start(1)
Exit_FieldAndChangeFast("MainStreet"..w0qyLbH,"SchoolPoint")end