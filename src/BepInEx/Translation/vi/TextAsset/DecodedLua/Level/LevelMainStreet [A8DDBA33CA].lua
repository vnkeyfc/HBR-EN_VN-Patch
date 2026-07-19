local nsgji;local bClTIa
function init()
TouchEvent("DormitoryGate",GoToDormitory1F)
TouchEvent("FriendStreetLeftGate",GoToFriendStreetLeft)
TouchEvent("FriendStreetRightGate",GoToFriendStreetRight)TouchEvent("SchoolGate",GoToSchool1F)
TouchEvent("ShoppingStreetGate",GoToShoppingStreet)TouchEvent("GraveGate",GoToGrave)
TouchEvent("ClockTowerGate",GoToClockTowerRoof)local rDzL7SVO=Domain.getDivingChapter()if Game.isStory()and
(
Domain.getLatestMainStoryOrder()>=105 or rDzL7SVO=="AC35")then
TouchEvent("CafeteriaGate",GoToCafeteriaHole)end
if




































Domain.getDivingChapter()=="MC03"or Domain.getDivingChapter()=="MC04"or Domain.getDivingChapter()=="MC04B"or Domain.getDivingChapter()=="AC04"or Domain.getDivingChapter()=="AC05"or Domain.getDivingChapter()=="AC06"or Domain.getDivingChapter()=="AC07"or Domain.getDivingChapter()=="AC08"or Domain.getDivingChapter()=="AC09"and
Domain.getDivingDay()==8 or Domain.getDivingChapter()=="AC10"or Domain.getDivingChapter()=="AC11"or Domain.getDivingChapter()=="AC12"or Domain.getDivingChapter()=="AC14"or Domain.getDivingChapter()=="AC15"or Domain.getDivingChapter()=="AC16"or Domain.getDivingChapter()=="AC17"or Domain.getDivingChapter()=="AC18"or Domain.getDivingChapter()=="AC19"or Domain.getDivingChapter()=="AC20"or Domain.getDivingChapter()=="AC21"or Domain.getDivingChapter()=="AC22"or Domain.getDivingChapter()=="AC23"or Domain.getDivingChapter()=="AC24"or Domain.getDivingChapter()=="AC25"or Domain.getDivingChapter()=="AC27"or Domain.getDivingChapter()=="AC28"or Domain.getDivingChapter()=="AC29"or Domain.getDivingChapter()=="AC32"or Domain.getDivingChapter()=="AC33"or Domain.getDivingChapter()=="AC34"or Domain.getDivingChapter()=="AC38"or Domain.getDivingChapter()=="AC40"or Domain.getDivingChapter()=="AC41"or Domain.getDivingChapter()=="MC05A"or Domain.getDivingChapter()=="CC04"or Domain.getDivingChapter()=="AC42"or Domain.getDivingChapter()=="AC43"then SetLocalFlag("Season.CherryBlossom",0)else
SetLocalFlag("Season.CherryBlossom",1)end;refresh()end
function refresh()local BW0WFP=Domain.getCurrentStorySeasonType()local X8=false
if
Domain.getDivingChapter()=="AC31"and Game.isEventStory()then X8=true end
if BW0WFP==StorySeasonType.AutumnSummer then nsgji="_Autumn"
bClTIa="_AutumnSummer"elseif BW0WFP==StorySeasonType.LateAutumn then nsgji="_LateAutumn"
bClTIa="_LateAutumn"elseif X8 then nsgji="_PowerOutage"bClTIa="_PowerOutage"else nsgji=""bClTIa=""end;local JQT=Field.getFieldEventState()
if JQT=="FromDormitory1F"then
StartEvent(FromDormitory1F)elseif JQT=="FromSchool1F"then StartEvent(FromSchool1F)elseif
JQT=="FromShoppingStreet"then StartEvent(FromShoppingStreet)elseif JQT=="FromFriendStreetLeft"then
StartEvent(FromFriendStreetLeft)elseif JQT=="FromFriendStreetRight"then
StartEvent(FromFriendStreetRight)elseif JQT=="FromHeliport"then StartEvent(FromHeliport)elseif JQT=="FromArena"then
StartEvent(FromArena)elseif JQT=="FromClockTower"then StartEvent(FromClockTower)elseif JQT=="FromGrave"then
StartEvent(FromGrave)elseif JQT=="FromArena"then StartEvent(FromArena)elseif JQT=="FromResearchBuilding"then
StartEvent(FromResearchBuilding)elseif JQT=="FromCafeteria"then StartEvent(FromCafeteria)elseif
JQT=="FromCafeteriaHole"then StartEvent(FromCafeteriaHole)end end
function FromDormitory1F()PlayerLock("FromDormitory1F")
Log("--- 宿舎1Fから来ました")
if GetFlag("宿舎1Fから来ました")==0 then
Field.initPlayerPosition(Field.getWaypointPosition("SlopeLowerPoint"))Field.startEvent(nil,false)
Field.moveCameraTargetWait("Player",0)Field.setupEnterFormation("SlopeUpperPoint")
Field.moveOnRoute("Player","SlopeUpperPoint")local AtYtR=Field.moveOnRoute("Camera","SlopeUpperPoint")
Wait(2.2)Transition.start()Field.stopTaskKey("Player")
Field.stopTask(AtYtR)Field.resetPosition("DormitoryPoint")
Field.finishEvent(0)Wait(1)SetFlag("宿舎1Fから来ました",1)end
Field.playerComeIn("DormitoryPoint",Vec(-2),1,true)Transition.finish()Field.waitTaskKey("Player")
Field.resetFieldEventState()PlayerUnLock("FromDormitory1F")end
function FromSchool1F()PlayerLock("FromSchool1F")
Log("--- 学舎1Fから来ました")Field.playerComeIn("SchoolPoint",Vec(0,0,2))
Field.resetFieldEventState()PlayerUnLock("FromSchool1F")end
function FromShoppingStreet()PlayerLock("FromShoppingStreet")
Log("--- フレーバー通りから来ました")Field.playerComeIn("BridgePoint",Vec(2))
Field.resetFieldEventState()PlayerUnLock("FromShoppingStreet")end
function FromFriendStreetLeft()PlayerLock("FromFriendStreetLeft")
Log("--- ふれあい通り左から来ました")
Field.playerComeIn("FriendStreetLeftPoint",Vec(2))Field.resetFieldEventState()
PlayerUnLock("FromFriendStreetLeft")end
function FromFriendStreetRight()PlayerLock("FromFriendStreetRight")
Log("--- ふれあい通り右から来ました")
Field.playerComeIn("FriendStreetRightPoint",Vec(0,0,-2))Field.resetFieldEventState()
PlayerUnLock("FromFriendStreetRight")end
function FromHeliport()PlayerLock("FromHeliport")
Log("--- ヘリポートから来ました")
if GetFlag("Dive.Garden")==1 then
Transition.setFlyReturn(TimeFrame.Evening)Transition.start()Wait(3)
Field.playerComeIn("HeliportPoint",Vec(-1.5,0,3),nil,true)Transition.finish()Field.waitTaskKey("Player")
Field.setCatChaseTarget("Cat","Player",false)else
Field.playerComeIn("HeliportPoint",Vec(-1.5,0,3))end;Field.resetFieldEventState()
PlayerUnLock("FromHeliport")end
function FromArena()PlayerLock("FromArena")
Log("--- アリーナから来ました")Field.playerComeIn("ArenaPoint",Vec(0,0,2))
Field.resetFieldEventState()PlayerUnLock("FromArena")end
function FromResearchBuilding()PlayerLock("FromResearchBuilding")
Log("--- 研究所から来ました")
Field.playerComeIn("ResearchBuildingPoint",Vec(0,0,3))Field.resetFieldEventState()
PlayerUnLock("FromResearchBuilding")end
function FromClockTower()PlayerLock("FromClockTower")
Log("--- 時計塔から来ました")Transition.finish()
Field.playerComeIn("ClockTowerPoint",Vec(0,0,2))if GetFlag("Dive.Garden")==1 then
Field.setCatChaseTarget("Cat","Player",false)end
Field.resetFieldEventState()PlayerUnLock("FromClockTower")end
function FromGrave()PlayerLock("FromGrave")
Log("--- 葬儀場から来ました")Transition.finish()
Field.playerComeIn("CemeteryPoint",Vec(-2,0,2))Field.resetFieldEventState()
PlayerUnLock("FromGrave")end
function FromArena()PlayerLock("FromArena")
Log("--- アリーナから来ました")Transition.finish()
Field.playerComeIn("ArenaPoint",Vec(0,0,2))Field.resetFieldEventState()
PlayerUnLock("FromArena")end
function GoToFriendStreetLeft()
local ND2BCh3=Adv.gateQuestion("",[[Đi đến Phố Giao Tình|Ở lại]])if ND2BCh3 ==1 then return end
Field.setFieldEventState("FromMainStreetLeft")
Field.playerGetOut("FriendStreetLeftPoint",Vec(5),1,0.2)
Exit_FieldAndChange("FriendStreet"..nsgji,"StartPoint")end
function GoToFriendStreetRight()
local IODBg=Adv.gateQuestion("",[[Đi đến Phố Giao Tình|Ở lại]])if IODBg==1 then return end
Field.setFieldEventState("FromMainStreetRight")
Field.playerGetOut("FriendStreetRightPoint",Vec(0,0,-5),1,0.2)
Exit_FieldAndChange("FriendStreet"..nsgji,"EndPoint")end
function GoToSchool1F()
local YRDu=Adv.gateQuestion("",[[Đi vào Khu học xá|Ở lại]])if YRDu==1 then return end
Field.setFieldEventState("FromMainStreet")
Field.playerGetOut("SchoolPoint",Vec(0,0,5),1,0.2)
Exit_FieldAndChange("School1F"..bClTIa,"StartPoint")end
function GoToShoppingStreet()
local CWRiP=Adv.gateQuestion("",[[Đi đến Phố Hương Vị|Ở lại]])if CWRiP==1 then return end
Field.setFieldEventState("FromMainStreet")Field.playerGetOut("BridgePoint",Vec(5),1,0.2)
Exit_FieldAndChange(
"ShoppingStreet"..bClTIa,"StartPoint")end
function GoToDormitory1F()
local LB0A=Adv.gateQuestion("",[[Đi đến Ký túc xá|Ở lại]])if LB0A==1 then return end
Field.goToDormitory1F(function()
Field.setFieldEventState("FromMainStreet")
Exit_FieldAndChange("Dormitory1F"..bClTIa,"StartPoint")end)end
function GoToGrave()
local dl=Adv.gateQuestion("",[[Đi đến Đài tưởng niệm|Ở lại]])if dl==1 then return end
Field.playerGetOut("CemeteryPoint",Vec(-15,0,15))Field.setFieldEventState("FromMainStreet")Exit_FieldAndChange(
"Grave"..bClTIa,"StartPoint")end
function GoToClockTowerRoof()
local sKPjQkdn=Adv.gateQuestion("",[[Đi đến Đài quan sát ở Tháp đồng hồ|Ở lại]])if sKPjQkdn==1 then return end
Field.playerGetOut("ClockTowerPoint",Vec(0,0,2))Field.setFieldEventState("FromMainStreet")
Exit_FieldAndChange(
"ClockTowerRoof"..bClTIa,"StartPoint")end
function FromCafeteria()PlayerLock("FromCafeteria")
Log("--- カフェから来ました")Transition.finish()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))if GetFlag("Dive.Garden")==1 then
Field.setCatChaseTarget("Cat","Player",false)end
Field.resetFieldEventState()PlayerUnLock("FromCafeteria")end
function FromCafeteriaHole()PlayerLock("FromCafeteriaHole")
Log("--- カフェから来ました")Transition.finish()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.resetFieldEventState()
PlayerUnLock("FromCafeteriaHole")end
function GoToCafeteriaHole()
local HHH9IlJp=Adv.gateQuestion("",[[Đi vào Nhà ăn|Ở lại]])if HHH9IlJp==1 then return end
Field.playerGetOut("CafeteriaPoint",Vec(-2,0,2),1,0.2)Field.setFollowerAutoMoveEnabled(false)
Field.setFieldEventState("FromMainStreetToCafeteriaHole")
if
nsgji==""or nsgji=="_Autumn"or nsgji=="_PowerOutage"then
Exit_FieldAndChange("CafeteriaHoleDefault","MainStreetPoint")elseif nsgji=="_LateAutumn"then
Exit_FieldAndChange("CafeteriaHole","MainStreetPoint")else
Exit_FieldAndChange("CafeteriaHole"..nsgji,"MainStreetPoint")end end