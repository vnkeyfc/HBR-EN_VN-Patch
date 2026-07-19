local w0qyLbH=require'xlua.util'Garden={}Garden.Setup=function(nsgji)
CS.LuaMethod.Garden_Setup(nsgji)end;Garden.Level=function()return
CS.LuaMethod.Garden_GetLevel()end
Garden.GetNextLevelInfo=function()return
CS.LuaMethod.Garden_GetNextLevelInfo()end
Garden.LevelUp=function()CS.LuaMethod.Garden_LevelUp()end
Garden.GetPlacement=function(bClTIa)local rDzL7SVO;local BW0WFP
CS.LuaMethod.Garden_GetGardenPlacement(bClTIa,function(X8,JQT)rDzL7SVO=X8;BW0WFP=JQT end)return rDzL7SVO,BW0WFP end
Garden.goToPrismFastTravel=function(AtYtR,ND2BCh3)ND2BCh3=ND2BCh3 or"Flashback"
local IODBg,YRDu=Garden.GetPlacement(AtYtR)
Field.gotoFastTravel(ND2BCh3,IODBg,AtYtR,0,true,YRDu)end
Garden.isOpenMiniMap=function(CWRiP)
return CS.LuaMethod.Garden_IsOpenMiniMap(CWRiP)end;PrismBattle={}PrismBattle.ActiveCount=function()
return CS.LuaMethod.PrismBattle_ActiveCount()end
MemoryStory={}
MemoryStory.Clear=function()Adv.fadeOutWithShield()
Field.deleteFollowerAll()Field.setSleep(true)Sound.stopBGM()
CoroutineYield(CS.LuaMethod.MemoryStory_Clear())Field.setSleep(false)end
MemoryStory.stateStep=function(LB0A,dl)
if MemoryStory.getStep(LB0A)~=dl then return false end;return true end
MemoryStory.getStep=function(sKPjQkdn)return GetWorldEventStep(sKPjQkdn)end
MemoryStory.clearStep=function(HHH9IlJp)NextWorldEventStep(HHH9IlJp,false)
CS.LuaMethod.MemoryStory_NextStep()end
MemoryStory.clear=function(uYz2ryy4)Sound.playEmptyBGM(1)
Field.setSleep(true)
CoroutineYield(CS.LuaMethod.MemoryStory_Clear())Field.setSleep(false)end
MemoryStory.refreshState=function()Field.refreshScripts(true)end
MemoryStory.TouchEvent=function(zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe)UgXzI_C=UgXzI_C or false
if UgXzI_C then
ShowMapMemoryStoryIcon(zVPRGDnG,IKxw)else ShowMapDestinationIcon(zVPRGDnG)end;TouchEvent(zVPRGDnG,w0,MLFLplLe)end
MemoryStory.gotoFastTravel=function(jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW)
Field.gotoFastTravelInternal(jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW)end
MemoryStory.IsCleared=function(iuGb)
return CS.LuaMethod.MemoryStory_IsCleared(iuGb)end
MemoryStory.gateEventGoTo=function(koZU,C)local nmJGp_=FieldLabel()local h0v3PIV=[[]]local Uc=[[Đi đến]]local JSkUQL
local PTUZ2v;local qlZeO3Pr;local fG9zS;C=C or TimeFrame.Noon
if koZU=="MainStreetGate"then
qlZeO3Pr="MainStreet"h0v3PIV=[[Đường chính]]
if nmJGp_=="Dormitory1F"then JSkUQL="StartPoint"
PTUZ2v=Vec(0,0,-5)fG9zS="DormitoryPoint"elseif nmJGp_=="ClockTowerRoof"then JSkUQL="StartPoint"
PTUZ2v=Vec(0,0,-1)fG9zS="ClockTowerPoint"elseif nmJGp_=="Grave"then JSkUQL="StartPoint"PTUZ2v=Vec(1,0,2)
fG9zS="CemeteryPoint"elseif nmJGp_=="School1F"then JSkUQL="StartPoint"PTUZ2v=Vec(0,0,-10)
fG9zS="SchoolPoint"elseif nmJGp_=="ShoppingStreet"then JSkUQL="StartPoint"PTUZ2v=Vec(0,0,5)
fG9zS="BridgePoint"end elseif koZU=="FriendStreetLeftGate"then JSkUQL="FriendStreetLeftPoint"
PTUZ2v=Vec(5,0,0)qlZeO3Pr="FriendStreet"fG9zS="StartPoint"h0v3PIV=[[Phố Giao Tình]]elseif koZU==
"FriendStreetRightGate"then JSkUQL="FriendStreetRightPoint"PTUZ2v=Vec(0,0,-5)
qlZeO3Pr="FriendStreet"fG9zS="EndPoint"h0v3PIV=[[Phố Giao Tình]]elseif koZU=="SchoolGate"then
JSkUQL="SchoolPoint"PTUZ2v=Vec(0,0,5)qlZeO3Pr="School1F"fG9zS="StartPoint"
h0v3PIV=[[Khu học xá]]Uc=[[Đi vào]]elseif koZU=="ShoppingStreetGate"then JSkUQL="BridgePoint"
PTUZ2v=Vec(5,0,0)qlZeO3Pr="ShoppingStreet"fG9zS="StartPoint"h0v3PIV=[[Phố Hương Vị]]elseif koZU==
"DormitoryGate"then JSkUQL="DormitoryPoint"PTUZ2v=Vec(-5,0,0)
qlZeO3Pr="Dormitory1F"fG9zS="StartPoint"h0v3PIV=[[Ký túc xá]]Uc=[[Đi vào]]elseif koZU=="GraveGate"then
JSkUQL="CemeteryPoint"PTUZ2v=Vec(-15,0,15)qlZeO3Pr="Grave"fG9zS="StartPoint"
h0v3PIV=[[Đài tưởng niệm]]elseif koZU=="ClockTowerGate"then JSkUQL="ClockTowerPoint"PTUZ2v=Vec(0,0,2)
qlZeO3Pr="ClockTowerRoof"fG9zS="StartPoint"h0v3PIV=[[Đài quan sát Tháp đồng hồ]]elseif
koZU=="FriendStreetGate"then JSkUQL="EndRightPoint"PTUZ2v=Vec(5,0,0)qlZeO3Pr="FriendStreet"
fG9zS="BackStreetPoint"h0v3PIV=[[Phố Giao Tình]]elseif koZU=="MainStreetLeftGate"then JSkUQL="StartPoint"
PTUZ2v=Vec(0,0,-5)qlZeO3Pr="MainStreet"fG9zS="FriendStreetLeftPoint"h0v3PIV=[[Đường chính]]elseif koZU==
"MainStreetRightGate"then JSkUQL="EndPoint"PTUZ2v=Vec(5,0,0)qlZeO3Pr="MainStreet"
fG9zS="FriendStreetRightPoint"h0v3PIV=[[Đường chính]]elseif koZU=="BackStreetGate"then JSkUQL="BackStreetPoint"
PTUZ2v=Vec(-5,0,0)qlZeO3Pr="BackStreet"fG9zS="StartPoint"h0v3PIV=[[Ngõ sau]]end
TouchEvent(koZU,function()
local WiXG=Adv.question([[]],Adv.FormatText([[{1} {0}| Ở lại]],h0v3PIV,Uc),0,true)
if WiXG==0 then
if koZU=="FriendStreetLeftGate"then
Field.setFieldEventState("FromMainStreetLeft")elseif koZU=="FriendStreetRightGate"then
Field.setFieldEventState("FromMainStreetRight")elseif koZU=="MainStreetLeftGate"then
Field.setFieldEventState("FromFriendStreetLeft")elseif koZU=="MainStreetRightGate"then
Field.setFieldEventState("FromFriendStreetRight")else
if nmJGp_=="ClockTowerRoof"then
Field.setFieldEventState("FromClockTower")else Field.setFieldEventState("From"..nmJGp_)end end
if nmJGp_=="School1F"then
Field.playerGetOut("StartPoint",Vec(0,0,-10),1,0.2,true)
Field.changeAnimation("SchoolDoor03","DormitoryDoor03Open")Wait(1)Transition.start()elseif nmJGp_=="ClockTowerRoof"then
Field.playerGetOut(JSkUQL,PTUZ2v)elseif nmJGp_=="ShoppingStreet"then
Field.playerGetOut(JSkUQL,PTUZ2v,1,2)else Field.playerGetOut(JSkUQL,PTUZ2v,1,0.2)end;Exit_FieldAndChange(qlZeO3Pr,fG9zS,C)end end)end;ClockTower={}ClockTower.Level=function()
return CS.LuaMethod.ClockTower_Level(parent)end
ClockTower.SetLevel=function(QgyWztK)
CS.LuaMethod.ClockTower_SetLevel(parent,QgyWztK)end
ClockTower.StartFloorEvent=function()
CoroutineYield(CS.LuaMethod.ClockTower_StartFloorEvent(parent))end
ClockTower.UpFloor=function(Oo6ecUO)if Oo6ecUO==nil then Oo6ecUO=""end;return
CS.LuaMethod.ClockTower_UpFloor(parent,Oo6ecUO)end
ClockTower.DownFloor=function(b6SL0yka)if b6SL0yka==nil then b6SL0yka=""end;return
CS.LuaMethod.ClockTower_DownFloor(parent,b6SL0yka)end
ClockTower.LockFloor=function(hEk)if hEk==nil then hEk=0 end;return
CS.LuaMethod.ClockTower_LockFloor(parent,hEk)end
ClockTower.ClockTowerLabel=function()
return CS.LuaMethod.ClockTower_ClockTowerLabel(parent)end;ClockTower.FloorNum=function()
return CS.LuaMethod.ClockTower_FloorNum(parent)end
ClockTower.Point=function(E8o)if
E8o==nil then E8o="ClockTower.main"end;return
CS.LuaMethod.ClockTower_Point(parent,E8o)end
ClockTower.TopFloorNum=function(TdqFo)if TdqFo==nil then TdqFo="ClockTower.main"end;return
CS.LuaMethod.ClockTower_TopFloorNum(parent,TdqFo)end
ClockTower.LimitFloorNum=function(ykLF0)if ykLF0 ==nil then ykLF0="ClockTower.main"end;return
CS.LuaMethod.ClockTower_LimitFloorNum(parent,ykLF0)end
ClockTower.SaveLatestFloor=function()
return CS.LuaMethod.ClockTower_SaveLatestFloor()end
ClockTower.Name=function()return CS.LuaMethod.ClockTower_Name()end
ClockTower.leaveQuestion=function()Wait(0.3)return
Adv.question(Adv.FormatText([[Rời {0}?]],ClockTower.Name()),[[Rời đi|Ở lại]],0,true)end
ClockTower.startDialog=function()local cilhu=""local eVfN=0
CoroutineYield(CS.LuaMethod.ClockTowerDialog(parent,function(LBIJ,CSSp)cilhu=LBIJ
eVfN=CSSp end))return cilhu,eVfN end
ClockTower.isAvailable=function(CBZIwYHI)
if Tutorial.isBlocked("blocker.ClockTower")then return false end;if CBZIwYHI==nil then CBZIwYHI="ClockTower.Renewal"end;return
CS.LuaMethod.ClockTower_IsAvailable(CBZIwYHI)end
ClockTower.FloorGroupName=function()
local x1vCS0=CS.LuaMethod.ClockTower_FloorGroupName()Adv.addLocalizedString(x1vCS0)return x1vCS0 end
ClockTower.GrantHighScoreReward=function()
PlayerLock("ClockTower_GrantHighScoreReward")
CoroutineYield(CS.LuaMethod.ClockTower_GrantHighScoreReward(parent))PlayerUnLock("ClockTower_GrantHighScoreReward")end
ClockTower.GetPrevFloorGroupNum=function()
return CS.LuaMethod.ClockTower_GetPrevFloorGroupNum()end
ClockTower.GetFloorGroupNum=function()
return CS.LuaMethod.ClockTower_GetFloorGroupNum()end;GardenExpedition={}
GardenExpedition.getLabel=function()return
CS.LuaMethod.GardenExpedition_getLabel()end;GardenExpedition.getState=function()
return CS.LuaMethod.GardenExpedition_getState()end
PrismBattle.IsEventPrismVisible=function(Herp)Herp=
Herp or"Garden.EventPrismBattle01"return
CS.LuaMethod.IsEventPrismBattleAvailable(Herp)end;ScoreAttack={}ScoreAttack.IsAvailable=function()
return CS.LuaMethod.IsScoreAttackAvailable()end
ScoreAttack.IsOpenGardenToScoreAttack=function()return
CS.LuaMethod.IsOpenGardenToScoreAttack()end
ScoreAttack.ResetScoreAttackPlayingLabel=function()
CS.LuaMethod.ResetScoreAttackPlayingLabel()end;Terminal={}
Terminal.GetAndResetOpenHomeType=function()
return CS.LuaMethod.GetAndResetOpenHomeType()end
Terminal.GetHomeFieldLabel=function()local TNczSeT
CS.LuaMethod.GetHomeFieldLabel(function(Sb)TNczSeT=Sb end)return TNczSeT end
Terminal.IsDefaultMode=function()return CS.LuaMethod.Home_IsDefaultMode()end;SideEvent={}
SideEvent.CanChallengeActiveEvent=function()return
CS.LuaMethod.SideEvent_CanChallengeActiveEvent()end
SideEvent.IsExceedTotalTokenCount=function(_OwI)
return CS.LuaMethod.SideEvent_IsExceedTokenCount(_OwI)end;GateBoss={}
GateBoss.IsAvailable=function(GBDhi2D)if GBDhi2D~=nil then return
CS.LuaMethod.IsGateBossAvailable(GBDhi2D)end;return
CS.LuaMethod.IsGateBossAvailable()end
GateBoss.GetTabIndex=function(XDYs)_AssertIsNotNull(XDYs)return
CS.LuaMethod.GateBoss_GetTabIndex(XDYs)end;StoryHardMode={}
StoryHardMode.IsAvailable=function()return
CS.LuaMethod.IsStoryHardModeAvailable()end;StoryHardMode.IsOpened=function()
return CS.LuaMethod.IsStoryHardModeOpened()end
StoryHardMode.GetChallengeConditionMessage=function()return
CS.LuaMethod.GetStoryHardModeConditionMessage()end;Campaign={}Campaign.IsActive=function()
return CS.LuaMethod.IsCampaignActive()end
Campaign.GetCampaignId=function()return
CS.LuaMethod.GetCampaignId()end
Campaign.getCampaignTransitionPoint=function()local JyOmN;local Gu2sqpyD
CS.LuaMethod.GetCampaignTransitionPoint(function(N_Pk,G_v887o0)JyOmN=N_Pk
Gu2sqpyD=G_v887o0 end)return JyOmN,Gu2sqpyD end
Campaign.CampaignRoomWorld=function()
CoroutineYield(CS.LuaMethod.CampaignRoomWorld(parent))end
Campaign.ClearCampaign=function(oiM7BRAl)local oiM7BRAl=oiM7BRAl or""
CS.LuaMethod.ClearCampaign(oiM7BRAl)end
Campaign.GetCurrentDay=function(s4)local s4=s4 or""
return CS.LuaMethod.GetCurrentDay(s4)end
Campaign.ForceHideHomeButton=function(EF)local EF=EF or""
return CS.LuaMethod.ForceHideHomeButton(EF)end
GardenExpedition.getExpeditionMaxFloorNum=function(wYFDyw8)if wYFDyw8 ==nil then return 0 end;return
CS.LuaMethod.Garden_ExpeditionMaxFloorNum(wYFDyw8)end;DimensionBattle={}
DimensionBattle.BriefingRoomWorld=function(JyI,hncZR4my,KqeVtj,LD)
CoroutineYield(CS.LuaMethod.DimensionBattleBriefingRoomWorld(parent,JyI,hncZR4my,KqeVtj,LD))end;DimensionBattle.IsBlock=function()
return CS.LuaMethod.DimensionBattle_IsBlock()end
DimensionBattle.GetChallengeConditionMessage=function()return
CS.LuaMethod.DimensionBattle_GetConditionMessage()end
DimensionBattle.CanChangeHome=function()
return CS.LuaMethod.DimensionBattle_CanChangeHome()end
DimensionBattle.ResetLatestBattleInfo=function()return
CS.LuaMethod.DimensionBattle_ResetLatestBattleInfo()end
DimensionBattle.GetClearedCentralBattleDifficulty=function()return
CS.LuaMethod.DimensionBattle_GetClearedCentralBattleDifficulty()end
DimensionBattle.IsAllClear=function()
return CS.LuaMethod.DimensionBattle_IsAllClear()end
DimensionBattle.GetCatTalkDifficulty=function()return
CS.LuaMethod.DimensionBattle_GetCatTalkDifficulty()end
DimensionBattle.SetCatTalkDifficulty=function(Q)return
CS.LuaMethod.DimensionBattle_SetCatTalkDifficulty(Q)end;DimensionBattle.GetLabel=function()
return CS.LuaMethod.DimensionBattle_GetLabel()end
WaveBattle={}
WaveBattle.ChangeWorld=function(QKTF34q3,z,UD61M,Kmr_vDN)
CoroutineYield(CS.LuaMethod.WaveBattleWorld(parent,QKTF34q3,z,UD61M,Kmr_vDN))end
WaveBattle.isPlaying=function()if not IsOpened("release.waveBattle_start")then
return false end
local VJw9J2c=WaveBattle.getWaveBattleState()if
VJw9J2c==WaveBattleState.None or VJw9J2c==WaveBattleState.Ended then return false end;return true end;WaveBattle.getWaveBattleState=function()
return CS.LuaMethod.GetWaveBattleState()end