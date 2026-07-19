function init()Log(Domain.getLatestDayString())
refresh()end
function refresh()
Field.setActive("FriendStreetLeftGate",true)Field.setActive("FriendStreetRightGate",true)
Field.setActive("HeliportGate",true)Field.setActive("MainStreetLeftGate",true)
Field.setActive("MainStreetRightGate",true)Field.setActive("BackStreetGate",true)
Field.setActive("FriendStreetGate",true)
Field.setActive("StudioGate",not Tutorial.isBlocked("blocker.Gallery"))Field.setActive("MainStreetGate",true)
Field.setActive("ShoppingStreetGate",true)Field.setActive("DormitoryGate",false)
Field.setActive("CafeteriaGate",false)Field.setActive("SchoolGate",false)
Field.setActive("ResearchBuildingGate",false)Field.setActive("ShopGate",false)
Field.setActive("31ARoomGate",false)Field.setActive("RooftopGate",false)if
ClockTower.isAvailable()then Field.setActive("ClockTowerGate",true)
TouchEvent("ClockTowerGate",GoToClockTower)end
TouchEvent("HeliportGate",GoToHeliport)if not Tutorial.isBlocked("blocker.Gallery")then
TouchEvent("StudioGate",Studio)end;InitPrism()
FastTravelButtonEventForGarden()
if FieldLabel()=="MainStreet"then
if
GetFlag("Permission.AccessoryCharm")==1 and Garden.Level()>=4 then
Field.setActive("BlockerRight",false)
TouchEvent("ShoppingStreetGate",function()
local w0qyLbH=Adv.question("",[[Go to Flavor Street|Ở lại]],0,true)if w0qyLbH==1 then return end
Field.setFieldEventState("FromMainStreet")Field.playerGetOut("BridgePoint",Vec(5),1,0.2)
Exit_FieldAndChange("ShoppingStreet","StartPoint")end)else if IsExist("JameisvuStop_1")then
Field.setActive("JameisvuStop_1",true)end end
ReachEventNoLock("BlockerRight",function()
if IsActive("JameisvuStop_1")then PlayerLock()
if

GetFlag("Permission.AccessoryCharm")==1 and Garden.Level()>=4 then
UI.showMessageDialog("You've unlocked Flavor Street!")Field.setActive("JameisvuStop_1",false)else
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")
UI.showMessageDialog("Unlock by raising squad's accessories to Lv. 170 or above.")Wait(0.3)
Field.moveOnRouteWait("Player","BridgePointLeftLeft")Field.resetPosition()end;PlayerUnLock()end end)
if Garden.Level()==0 then
ReachEventNoLock("BlockerLeft",function()PlayerLock()
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")Wait(0.3)
Field.moveOnRouteWait("Player","ArenaPointLeft")Field.resetPosition()PlayerUnLock()end)if IsExist("JameisvuStop_2")then
Field.setActive("JameisvuStop_2",true)end else
Field.setActive("BlockerLeft",false)end
if Garden.Level()~=0 then if(ScoreAttack.IsAvailable())then
Field.setActive("GraveGate",true)end;if Garden.isOpenMiniMap("Dormitory1F")then
Field.setActive("DormitoryGate",true)end
if
Garden.isOpenMiniMap("School1F")then Field.setActive("SchoolGate",true)end end
if not Battle.isCleared("Battle.Prism01_01")then
TouchEvent("FriendStreetLeftGate",function()
Field.turnToWait("Player",90,0.3)
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")end,true)if IsExist("JameisvuStop_3")then
Field.setActive("JameisvuStop_3",true)end
TouchEvent("FriendStreetRightGate",function()
Field.turnToWait("Player",180,0.3)
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")end,true)else
TouchEvent("FriendStreetRightGate",function()
local nsgji=Adv.question("",[[Đi đến phố Giao Tình|Ở lại]],0,true)if nsgji==1 then return end
Field.setFieldEventState("FromMainStreetRight")
Field.playerGetOut("FriendStreetRightPoint",Vec(0,0,-5),1,0.2)Exit_FieldAndChange("FriendStreet","EndPoint")end)Field.setActive("BlockerLeft",false)
Field.setActive("JameisvuStop_3",false)
TouchEvent("FriendStreetLeftGate",function()
local bClTIa=Adv.question("",[[Đi đến phố Giao Tình|Ở lại]],0,true)if bClTIa==1 then return end
Field.setFieldEventState("FromMainStreetLeft")
Field.playerGetOut("FriendStreetLeftPoint",Vec(5),1,0.2)Exit_FieldAndChange("FriendStreet","StartPoint")end)end
if GetFlag("Permission.Live")==1 and not
Tutorial.isBlocked("blocker.Live")then
Field.setActive("CafeteriaGate",true)TouchEvent("CafeteriaGate",GoToLive)end end
if FieldLabel()=="FriendStreet"then
if
not Battle.isCleared("Battle.Prism01_01")then
TouchEvent("BackStreetGate",function()Field.turnToWait("Player",270,0.3)
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")end,true)
if IsExist("JameisvuStop")then
local rDzL7SVO=Field.getPosition("BackStreetGate")Field.setPosition("JameisvuStop",rDzL7SVO)Field.moveBy("JameisvuStop",Vec(
-5,3,0),0)
Field.rotateTo("JameisvuStop",Vec(0,90,0))Field.setActive("JameisvuStop",true)end else Field.setActive("JameisvuStop",false)
TouchEvent("BackStreetGate",function()
local BW0WFP=Adv.question("",[[Đi đến ngõ sau|Ở lại]],0,true)if BW0WFP==1 then return end
Field.setFieldEventState("FromFriendStreet")
Field.playerGetOut("BackStreetPoint",Vec(-5),1,0.2)Exit_FieldAndChange("BackStreet","StartPoint")end)end end
if FieldLabel()=="ShoppingStreet"then
if


Domain.maxPartyTotalAccessoryLevel()>=250 and not Tutorial.isBlocked("blocker.GateBoss")and IsOpened("release.gateboss03_thunder")then SetShoppingStreetStopVisible(false)
if
IsExist("JameisvuShoppingStop1_1")then Field.setActive("JameisvuShoppingStop1_1",true)end else SetShoppingStreetStopVisible(true)
if
IsExist("JameisvuShoppingStop1_1")then Field.setActive("JameisvuShoppingStop1_1",false)end end
ReachEventNoLock("BlockerFirst",function()
if IsActive("JameisvuShoppingStop_1")then PlayerLock()
if
IsOpened("release.gateboss03_thunder")then
if Domain.maxPartyTotalAccessoryLevel()>=250 and not
Tutorial.isBlocked("blocker.GateBoss")then
UI.showMessageDialog("Unlocked.")
SetFlag("記憶の庭_オブジェクトリフレッシュ",1)Adv.whiteOut()Field.refreshScripts(true)else
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")
if Domain.maxPartyTotalAccessoryLevel()>=250 then
UI.showMessageDialog("Unlock by clearing Chapter 4—Part 1, Day 6.")else
UI.showMessageDialog("Unlock by raising your Squad's Accessory Level to Lv. 250 or higher.")end;Wait(0.3)
Field.moveOnRouteWait("Player","MiemiePoint")Field.resetPosition()end else
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")Wait(0.3)
Field.moveOnRouteWait("Player","MiemiePoint")Field.resetPosition()end;PlayerUnLock()end end,true)
ReachEventNoLock("BlockerSecond",function()PlayerLock()
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")Wait(0.3)
Field.moveOnRouteWait("Player","PopotanPoint")Field.resetPosition()PlayerUnLock()end)end;local A=GardenExpedition.getState()
if A==
GardenExpeditionState.Playing then StartEvent(ResumeExpedition)end;if ClockTower.ClockTowerLabel()~=""then
StartEvent(ResumeClockTower)end
if
GetFlag("記憶の庭_オブジェクトリフレッシュ")==1 then
StartEvent(function()
SetFlag("記憶の庭_オブジェクトリフレッシュ",0)Adv.whiteIn()end)end end
function SetShoppingStreetStopVisible(X8)if IsExist("JameisvuShoppingStop_1")then
Field.setActive("JameisvuShoppingStop_1",X8)end
if
IsExist("JameisvuShoppingStop_2")then Field.setActive("JameisvuShoppingStop_2",X8)end;if IsExist("JameisvuShoppingStop_3")then
Field.setActive("JameisvuShoppingStop_3",X8)end end
function FastTravelButtonEventForGarden()
if ClockTower.isAvailable()then
FastTravelPointEvent("ClockTowerPoint",function()
Field.gotoFastTravel("Clock Tower","MainStreet","ClockTowerPoint")end,nil,"ClockTower")end
if gardenLv~=0 then
if(ScoreAttack.IsAvailable())then
FastTravelPointEvent("GavePointLeft",function()
Field.gotoFastTravel("Mortuary","Grave","FrontScoreAttackPoint")end,nil,"Cemetery")end end
if not Tutorial.isBlocked("blocker.Gallery")and
Battle.isCleared("Battle.Prism01_01")then
FastTravelPointEvent("StudioPoint",function()
Field.gotoFastTravel("Art Gallery","BackStreet","StudioPoint")end,"Art Gallery","Gallery")end
if not Tutorial.isBlocked("blocker.Expedition")then
FastTravelPointEvent("HeliportPoint",function()
Field.gotoFastTravel("Heliport","MainStreet","HeliportPoint")end,nil,"Heliport")end end
function InitPrism()InitPrismBattle()InitEventPrism()InitJewelPrism()
InitGateBoss()InitLimitBreakPower()end
function InitPrismBattle()
PrismEvent("SquarePointRight","Garden.PrismBattle01","Flashback",true,"Enemy")
if Battle.isCleared("Battle.Prism01_01")then
PrismEvent("NarvySquarePoint","Garden.PrismBattle02","Flashback",true,"Enemy")
PrismEvent("StudioPointRight","Garden.PrismBattle03","Flashback",true,"Enemy")end end
function InitEventPrism()local JQT=SideEvent.CanChallengeActiveEvent()
PrismEvent("EventPrismBattlePoint","Garden.EventPrismBattle01","Event Flashbacks",
JQT and PrismBattle.IsEventPrismVisible("Garden.EventPrismBattle01"))
PrismEvent("EventPrismBattlePoint","Garden.EventPrismBattle02","Event Flashbacks",JQT and
PrismBattle.IsEventPrismVisible("Garden.EventPrismBattle02"))end
function InitJewelPrism()
JewelPrismEvent("Garden.PrismBattleF01","EnemyRuby")
JewelPrismEvent("Garden.PrismBattleF02","EnemySapphire")
JewelPrismEvent("Garden.PrismBattleF04","EnemyPearl")
if Battle.isCleared("Battle.Prism01_01")then
JewelPrismEvent("Garden.PrismBattleF03","EnemyTopaz")
JewelPrismEvent("Garden.PrismBattleF05","EnemyOnyx")end;if GetFlag("Permission.AccessoryCharm")==1 and
Garden.Level()>=4 then
JewelPrismEvent("Garden.PrismBattleF06","EnemyAlexandrite")end end
function InitGateBoss()
if not Tutorial.isBlocked("blocker.GateBoss")then
GateBossPrismEvent("GateBoss.Dormitory01","EnemyOrbFire")
GateBossPrismEvent("GateBoss.Dormitory02","EnemyOrbIce")
GateBossPrismEvent("GateBoss.Dormitory03","EnemyOrbElectric")
GateBossPrismEvent("GateBoss.Dormitory04","EnemyOrbLight")
GateBossPrismEvent("GateBoss.Dormitory05","EnemyOrbDark")
GateBossPrismEvent("GateBoss.School1F01","EnemyOrb2Fire")
GateBossPrismEvent("GateBoss.School1F02","EnemyOrb2Ice")
GateBossPrismEvent("GateBoss.School1F03","EnemyOrb2Electric")
GateBossPrismEvent("GateBoss.School1F04","EnemyOrb2Light")
GateBossPrismEvent("GateBoss.School1F05","EnemyOrb2Dark")
local AtYtR=Domain.maxPartyTotalAccessoryLevel()>=250
GateBossPrismEvent("GateBoss.ShoppingStreet01","EnemyOrb3Fire",AtYtR)
GateBossPrismEvent("GateBoss.ShoppingStreet02","EnemyOrb3Ice",AtYtR)
GateBossPrismEvent("GateBoss.ShoppingStreet03","EnemyOrb3Electric",AtYtR)
GateBossPrismEvent("GateBoss.ShoppingStreet04","EnemyOrb3Light",AtYtR)
GateBossPrismEvent("GateBoss.ShoppingStreet05","EnemyOrb3Dark",AtYtR)GateBossHudEvent()end end;function InitLimitBreakPower()
if
not Tutorial.isBlocked("blocker.LimitBreakPower")then LimitBreakPowerEvent("Garden.LimitBreak")end end
function PrismEvent(ND2BCh3,IODBg,YRDu,CWRiP,LB0A)LB0A=
LB0A or"Enemy"IODBg=IODBg or ND2BCh3;if CWRiP then
FastTravelPointEvent(ND2BCh3,function()
Garden.goToPrismFastTravel(IODBg,YRDu)end,YRDu,LB0A)end
Field.setActive(ND2BCh3,CWRiP)end;function JewelPrismEvent(dl,sKPjQkdn)
PrismEvent(dl,nil,"Gem Flashbacks",not Tutorial.isBlocked("blocker.JewelPrism"),sKPjQkdn)end
function GateBossPrismEvent(HHH9IlJp,uYz2ryy4,zVPRGDnG)if
zVPRGDnG==nil then zVPRGDnG=true end
PrismEvent(HHH9IlJp,nil,"Orb Bosses",
GateBoss.IsAvailable(HHH9IlJp)and zVPRGDnG,uYz2ryy4)end
function GateBossHudEvent()
CS.LuaMethod.GateBossHudEvent(function(IKxw)
Routine(function()PlayerLock()
local w0,UgXzI_C=Garden.GetPlacement(IKxw)
Field.gotoFastTravel(nil,w0,IKxw,0,true,UgXzI_C,nil,true)PlayerUnLock()end)end)end;function LimitBreakPowerEvent(MLFLplLe)
PrismEvent(MLFLplLe,nil,"Delimiter",not Tutorial.isBlocked("blocker.LimitBreakPower"),"LimitBreak")end;function cantUseGate()
Adv.talkNoCharacter("???","It seems you aren't able to go there yet.")end
function GoToHeliport()
if
Tutorial.isBlocked("blocker.Expedition")then
Adv.talkNoCharacter("???","Looks like you can't attempt that just yet.","VC_Jamaisvu_00069_")
UI.showMessageDialog("Unlock by clearing Chapter 3, Day 14.")return elseif GetFlag("Arrival.Heliport")<2 then
SetFlag("Arrival.Heliport",2)end;UI.gardenExpedition()
local jwq=GardenExpedition.getState()
if jwq==GardenExpeditionState.Playing then
Field.setActive("HeliportGate",false)Transition.setFlyGoEx(TimeFrame.Evening)Field.setChaseTarget("Cat",
nil,true)
Field.turnTo("Cat",-45,0.5)
Field.playerGetOut("HeliportPoint",Vec(-5,0,12),1,1.5)PurgeField()
Field.setFieldEventState("FromHeliport")local kw3ei0a=GardenExpedition.getLabel()
GardenExpeditionWorld(kw3ei0a)end end
function GoToLive()
local EspneS5=Adv.gateQuestion("",[[Do a gig|Ở lại]])if EspneS5 ==1 then return end
Field.setChaseTarget("Cat",nil,true)Field.turnTo("Cat",-45,0.5)
Field.playerGetOut("CafeteriaPoint",Vec(-10,0,10),1,2)Field.setFieldEventState("FromCafeteria")
Transition.start()PurgeField()UI.live()
Exit_FieldAndChange("MainStreet","CafeteriaPoint")Transition.finish()end
function ResumeExpedition()Transition.setWhite()
Transition.start(0)Wait(2)PurgeField()
Field.setFieldEventState("FromHeliport")local LZeg0=GardenExpedition.getLabel()
GardenExpeditionWorld(LZeg0,true)end
function ResumeClockTower()Transition.setWhite()
Transition.start(0)Transition.setWhite()Transition.start(0)
Transition.setWhite()ClockTowerWorld("ClockTower.Renewal",nil,true)end
function Studio()Field.setChaseTarget("Cat",nil,true)
Field.turnTo("Cat",0,0.5)
Field.playerGetOut("StudioPoint",Vec(0,0,10),1,2)Field.setEnvironmentBackgroundColor(0,0,0,0)
Field.setEnvironmentCharacterColor(0,0,0,0)
Routine(function()Wait(1)Transition.finish()end)UI.gallery()Adv.fadeIn(1,true)
Field.setEnvironmentBackgroundColor(1,1,1,1)Field.setEnvironmentCharacterColor(1,1,1,1)
Field.playerComeIn("StudioPoint",Vec(0,0,5),1)Field.setCatChaseTarget("Cat","Player",false)end
function GoToClockTower()local OJZ,nmuj=ClockTower.startDialog()
if OJZ=="ClockTower"then Field.setChaseTarget("Cat",
nil,true)
Field.turnTo("Cat",0,0.5)
Field.playerGetOut("ClockTowerPoint",Vec(0,0,10),1,2)Field.setFieldEventState("FromClockTower")
ClockTowerWorld("ClockTower.Renewal",nmuj)end end