function init()refresh()end
function refresh()if not IsGateEventDelayed()then
StartEventExpeditionGate()end
WorldEndButtonEvent(Expedition.confirmFinishExpedition,true)local A=FieldLabel()local w0qyLbH=AreaName()
if





























A=="MC01_CaveB1"or A=="MC01_CaveB2"or A=="MC01_CaveB3"or A=="MC01_CaveB4"or A=="MC02_Patrol01"or
A=="MC03_Patrol02"or A=="JA01_001"or A=="JA01_002"or A=="JA01_003"or A=="JA01_004"or A=="JA01_005"or A=="JA02_001"or A=="JA02_002"or A=="JA02_003"or A=="JA02_004"or A=="JA02_005"or A=="JA03_001"or A=="JA03_002"or A=="JA03_003"or A=="JA03_004"or A=="JA03_005"or A=="AC08_Exp001_001"or A=="AC08_Exp002_001"or A=="AC11_Exp001_001"or A=="AC11_Exp001_002"or A=="AC11_Exp001_003"or A=="AC11_Exp001_004"or A=="AC15_Exp001_001"or A=="AC15_Exp001_002"or A=="AC15_Exp001_003"or A=="AC15_Exp001_004"or A=="AC20_Exp001_001"or A=="AC20_Exp002_001"or A=="AC20_Exp003_001"then Sound.reverbCave(ReverbValue.Cave)elseif
















A=="MC01_Patrol"or A==
"MC03_Patrol01"or A=="AC01_Exp001_003"or A=="JAC01_Exp002_001"or A=="JM01_011"or A=="JM01_012"or A==
"JM01_013"or
A=="JM01_014"or A=="JM01_015"or A=="JM01_016"or A=="JM01_017"or A=="JM01_018"or A=="JM01_019"or A=="JM01_011"or A=="JM01_012"or A=="JM01_013"or A=="JM01_014"or A=="JM01_015"or A=="JM01_016"or A=="JM01_017"or A=="JM01_018"or A=="JM01_019"then Sound.reverbCave(ReverbValue.Underpass)elseif
A=="AC01_Exp001_001"or A=="AC01_Exp001_002"then if
w0qyLbH=="Area01"or w0qyLbH=="Area02"then Sound.reverbCave(ReverbValue.Reservoir)else
Sound.reverbCave(ReverbValue.Underpass)end elseif
A=="JAC01_Exp001_001"then
if
w0qyLbH=="Area01"or w0qyLbH=="Area02"or w0qyLbH=="Area05"then Sound.reverbCave(ReverbValue.Reservoir)else
Sound.reverbCave(ReverbValue.Underpass)end elseif A=="AC23_Exp001_001"or A=="MC05A_day01_01"then
Sound.reverbCave(ReverbValue.AbandonedLab)else Sound.reverbCave(0)end;local nsgji=Field.getActiveScenePath()
Log("LevelExpedition: scenePath = "..nsgji)
if




string.find(nsgji,"Field/Forest/")or string.find(nsgji,"Field/Alpine/")or string.find(nsgji,"Field/Okutama/")or string.find(nsgji,"Field/Kirigamine/")or string.find(nsgji,"Field/NarashinoDome/")or string.find(nsgji,"Field/AwajiForest/")then Field.setFootstepGroundType("Soil")
if
string.find(nsgji,"AwajiForest_Beach")then Field.setFootstepGroundType("Sand")end end;if string.find(nsgji,"Field/AbandonedLab/")or
string.find(nsgji,"Field/YokosukaLab/")then
Field.setFootstepGroundType("Metal")end
if
string.find(nsgji,"Field/ShoppingMall/")then Field.setFootstepGroundType("Concrete")end;if string.find(nsgji,"Field/Desert/")then
Field.setFootstepGroundType("Desert")end end
function IsGateEventDelayed()local bClTIa=FieldLabel()
if bClTIa=="MC05C_day01_01"then return true elseif bClTIa==
"MC05C_day02_01_01"then return true elseif bClTIa=="MC05C_day02_01_02"then return true else return false end end
function OnExpeditionGateEnterEvent(rDzL7SVO,BW0WFP,X8)
Routine(function()local JQT=1.0
local AtYtR=Field.getWaypointPosition(BW0WFP)local ND2BCh3=AtYtR+X8;Field.resetPosition(BW0WFP)
Field.initPlayerPosition(ND2BCh3)Field.turnToPosition("Player",AtYtR,0)
Field.resetFollowerPosition()
local IODBg=Field.computeMoveTime("Player",AtYtR,JQT*1.420)Field.moveToWaypointWait("Player",BW0WFP,IODBg)
rDzL7SVO()end)end
function OnExpeditionGateExitEvent(YRDu,CWRiP,LB0A,dl,sKPjQkdn,HHH9IlJp)
Routine(function()PlayerLock("ExitExpeditionGate")
Field.waitFreeMoveState("Player","Idling")PlayerUnLock("ExitExpeditionGate")
Field.playerGetOut(LB0A,dl,nil,nil,true)if sKPjQkdn~=""or HHH9IlJp~=""then
Adv.addLocalizedString(sKPjQkdn)Adv.addLocalizedString(HHH9IlJp)
Transition.setOutdoor(sKPjQkdn,HHH9IlJp)end
YRDu()CWRiP()end)end
function OnExpeditionGateExitEventWithMetalDoor(uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe)
Routine(function()
Routine(function()Wait(0.3)
Sound.playEx("AS_Metal_Door_open")Wait(0.3)Sound.playEx("AS_Metal_Door_Close")end)Field.playerGetOut(IKxw,w0,nil,nil,true)
if UgXzI_C~=""or
MLFLplLe~=""then Adv.addLocalizedString(UgXzI_C)
Adv.addLocalizedString(MLFLplLe)Transition.setOutdoor(UgXzI_C,MLFLplLe)end;uYz2ryy4()zVPRGDnG()end)end
function OnExpeditionGateExitEventWithTransport(jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj)
Routine(function()PlayerLock("ExitExpeditionGate")
Field.waitFreeMoveState("Player","Idling")PlayerUnLock("ExitExpeditionGate")local bP=1.0
Field.playerTransportGetOut(EspneS5,false,true,Vec(0,0,0),true,
nil,bP,nil)
if OJZ~=""or nmuj~=""then Adv.addLocalizedString(OJZ)
Adv.addLocalizedString(nmuj)Transition.setOutdoor(OJZ,nmuj)end;jwq()kw3ei0a()end)end
function OnExpeditionGateEnterEventWithTransport(b4IqQW,iuGb,koZU)
Routine(function()local C=Field.getWaypointPosition(iuGb)local nmJGp_=
C+koZU;local h0v3PIV="Player"
Field.setActive(h0v3PIV,false)Field.initPlayerPosition(nmJGp_)
Field.turnToPosition(h0v3PIV,C,0)Wait(0.1)local Uc=Field.vector2Length(koZU)
local JSkUQL=Field.getMoveForwardPosition(h0v3PIV,Uc)Field.moveTo(h0v3PIV,JSkUQL)Wait(0.1)
Field.playerTransportGetIn(true)b4IqQW()end)end
function OnExpeditionSavePointEnterEvent(PTUZ2v,qlZeO3Pr,fG9zS)local WiXG=Field.getWaypointPosition(qlZeO3Pr)
Routine(function()
PlayerLock()Field.resetPosition(qlZeO3Pr)
Field.initPlayerPosition(WiXG)Field.turnTo("Player",180,0)PTUZ2v()PlayerUnLock()end)end
function OnExpeditionSavePointExitEvent(QgyWztK,Oo6ecUO,b6SL0yka)Routine(function()QgyWztK()end)end;function OnExpeditionSavePointOpenEvent(hEk)
Routine(function()hEk()Sound.play("AS_Relay_StartUp")end)end
function OnHorizontalExpeditionGateEnterEvent(E8o,TdqFo,ykLF0)
Routine(function()
local cilhu=1.0;local eVfN=Field.getWaypointPosition(TdqFo)local LBIJ=eVfN+ykLF0
Field.resetPosition(TdqFo)
CS.LuaMethod.Field_warpTo(parent,"Player",eVfN)Field.turnToPosition("Player",LBIJ,0)
Field.resetFollowerPosition()
local CSSp=Field.computeMoveTime("Player",LBIJ,cilhu*1.420)local CBZIwYHI=Field.moveTo("Player",LBIJ,CSSp)
Field.waitTask(CBZIwYHI)E8o()end)end
function OnMobHuntEncountEvent(x1vCS0,Herp,TNczSeT,Sb)
Routine(function()Field.turnToTarget("Player",Herp,0.3)
Wait(0.5)
if Field.confirmMobHuntBattle()then
Transition.setSymbolEncountTransition(true)Transition.start()
MobHuntBattle(x1vCS0,function()
Battle.waitPreResult()end,function()Transition.finish()end)Sb()else Sound.reverbMonolog(0.6)
Adv.kayamoriTalkMonolog([[(Let's save fighting for another time.)]],"VC_Z_900600060_RKayamori")Sound.reverbMonolog(0)
local _OwI=Field.getPosition(TNczSeT)local GBDhi2D=Field.computeMoveTime("Player",_OwI)
Field.moveTo("Player",_OwI,GBDhi2D)Wait(1)Transition.start()
Field.stopTaskKey("Player")Field.resetPosition(TNczSeT)Wait(1)
Transition.finish()Sb()end end)end