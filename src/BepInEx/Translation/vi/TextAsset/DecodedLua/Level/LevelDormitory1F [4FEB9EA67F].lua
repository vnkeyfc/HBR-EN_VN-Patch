local w0qyLbH;function init()refresh()end
function refresh()
local nsgji=Domain.getCurrentStorySeasonType()local bClTIa=false
if Domain.getDivingChapter()=="AC31"and
Game.isEventStory()then bClTIa=true end
if nsgji==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif nsgji==
StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"elseif bClTIa then w0qyLbH="_PowerOutage"else w0qyLbH=""end;TouchEvent("MainStreetGate",GoToMainStreet)
TouchEvent("31ARoomGate",GoTo31ARoom)
if
Game.isStory()and Domain.getLatestMainStoryOrder()>=90 then TouchEvent("RooftopGate",GoToRoofTop)end;local rDzL7SVO=Field.getFieldEventState()
if rDzL7SVO=="FromMainStreet"then
StartEvent(FromMainStreet)elseif rDzL7SVO=="FromRoofTop"then StartEvent(FromRoofTop)end end
function FromMainStreet()PlayerLock("FromMainStreet")
Log("--- メイン通りから来ました")Field.playerComeIn("StartPoint",Vec(0,0,-1))
Field.resetFieldEventState()PlayerUnLock("FromMainStreet")end
function GoToMainStreet()
local BW0WFP=Adv.gateQuestion("",[[Đi đến đường chính|Ở lại]])if BW0WFP==1 then return end
Field.setFieldEventState("FromDormitory1F")
Field.playerGetOut("StartPoint",Vec(0,0,-5),1,0.2)
Exit_FieldAndChange("MainStreet"..w0qyLbH,"DormitoryPoint")end
function GoTo31ARoom()
local X8=Adv.gateQuestion([[Nghỉ ở phòng ký túc xá?]],[[Ừ (Kết thúc giờ giải lao)|Không]])
if X8 ==0 then
if Quest.isHasAnyActive()then
local JQT=UI.showMessageDialog([[A socialization is still in progress. Are you sure you want to end your free time? Socialization progress will be reset.]],1,"SYSTEM")if JQT=="cancel"then return end end;Field.playerGetOut("31ARoomPoint",Vec(0,0,2))
Exit_World()end end
function GoToRoofTop()
local AtYtR=Adv.gateQuestion("",[[Đi đến tầng mái|Ở lại]])if AtYtR==1 then return end
Field.setFieldEventState("FromDormitory1F")
Field.moveToComputedMoveTime("Player",Vec(-0.200,0.000,4.000),1)Wait(1)Transition.start()
if
w0qyLbH==""or w0qyLbH=="_Autumn"or w0qyLbH=="_PowerOutage"then
Exit_FieldAndChange("RoofTop","StartPoint")else
Exit_FieldAndChange("RoofTop"..w0qyLbH,"StartPoint")end end
function FromRoofTop()PlayerLock("FromRoofTop")
Log("--- メイン通りから来ました")Field.playerComeIn("RooftopPoint",Vec(0,0,2))
Field.resetFieldEventState()PlayerUnLock("FromRoofTop")end