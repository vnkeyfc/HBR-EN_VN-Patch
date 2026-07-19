local w0qyLbH=require'xlua.util'
StartEventExistAt=function(nsgji,bClTIa,rDzL7SVO)
if not MatchField(nsgji)then return end;StartEventExist(bClTIa,rDzL7SVO)end
StartEventExist=function(BW0WFP,X8)if IsExist(BW0WFP)then Routine(X8)end end
ReachEventAt=function(JQT,AtYtR,ND2BCh3)HideSameTagCharacter(AtYtR)
if not MatchField(JQT)then return end;ReachEvent(AtYtR,ND2BCh3)end
ReachEvent=function(IODBg,YRDu)HideSameTagCharacter(IODBg)
return
CS.LuaMethod.ReachEvent(parent,IODBg,function()if(YRDu)then
Routine(function()
local CWRiP=GenerateUniqueName("ReachEvent",IODBg)PlayerLock(CWRiP)Yield(YRDu)PlayerUnLock(CWRiP)end)end end,false)end
ReachEventWild=function(LB0A,dl,sKPjQkdn)sKPjQkdn=sKPjQkdn or nil;HideSameTagCharacter(LB0A)
return
CS.LuaMethod.ReachEvent(parent,LB0A,function()
if
(dl)then
Routine(function()local HHH9IlJp=GenerateUniqueName("ReachEvent",LB0A)
PlayerLock(HHH9IlJp,false)Field.waitFreeMoveState("Player","Idling")
Field.changeAnimation("Player","FieldIdle")Yield(dl)PlayerUnLock(HHH9IlJp)
if sKPjQkdn~=nil then sKPjQkdn()end end)end end,false)end
ReachEventNoLockAt=function(uYz2ryy4,zVPRGDnG,IKxw)HideSameTagCharacter(zVPRGDnG)if
not MatchField(uYz2ryy4)then return end;return ReachEventNoLock(zVPRGDnG,IKxw)end
ReachEventNoLock=function(w0,UgXzI_C)HideSameTagCharacter(w0)return
CS.LuaMethod.ReachEvent(parent,w0,function()
if(UgXzI_C)then Routine(function()
Yield(UgXzI_C)end)end end,false)end
HideSameTagCharacter=function(MLFLplLe)
CS.LuaMethod.SetActiveAtSameTagCharacterExcluded(parent,MLFLplLe,false)end
TouchEventInternal=function(jwq,kw3ei0a,EspneS5)HideSameTagCharacter(jwq)
return
CS.LuaMethod.TouchEvent(parent,jwq,function()
if
(kw3ei0a)then
Routine(function()local LZeg0=GenerateUniqueName("TouchEvent",jwq)
PlayerLock(LZeg0)
if Field.getObjectType(jwq)~="Gate"then Adv.TapSkipOff()end
if not EspneS5 then local OJZ=Field.getPosition(jwq)
if Field.getObjectType(jwq)==
"Gate"then
local nmuj=Field.getGateDirection(jwq)*5
if type(kw3ei0a)=="string"then
Field.turnToPosition("Player",OJZ+nmuj,0.3)else Field.turnToPositionWait("Player",OJZ+nmuj,0.3)end else Field.turnToPosition("Player",OJZ,0.3)end end;Yield(kw3ei0a)PlayerUnLock(LZeg0)end)end end,
field~=nil)end
TouchEvent=function(bP,b4IqQW,iuGb)Field.setBalloonType(bP,"Normal")
TouchEventInternal(bP,b4IqQW,iuGb)end
TouchEventGeneralTalk=function(koZU,C)
if
GetLocalFlag(koZU.."_汎用会話TAP済")==0 then
TouchEvent(koZU,function()Yield(C)
SetLocalFlag(koZU.."_汎用会話TAP済",1)end)else EmptyEvent(koZU)end end
TouchEventGeneralTalkAt=function(nmJGp_,h0v3PIV,Uc)
if
GetLocalFlag(nmJGp_.."_"..h0v3PIV.."_汎用会話TAP済")==0 then
TouchEventAt(nmJGp_,h0v3PIV,function()Yield(Uc)
SetLocalFlag(nmJGp_.."_"..h0v3PIV..
"_汎用会話TAP済",1)end)else EmptyEvent(h0v3PIV)end end
TouchEventNoTurn=function(JSkUQL,PTUZ2v)TouchEvent(JSkUQL,PTUZ2v,true)end
TouchQuestEvent=function(qlZeO3Pr,fG9zS,WiXG,QgyWztK)
if Quest.getState(fG9zS)==QuestState.Ongoing then
Field.setBalloonType(qlZeO3Pr,"QuestOngoing")elseif
Quest.isReceivable(fG9zS)and Quest.isActiveCondition(fG9zS)then Field.setBalloonType(qlZeO3Pr,"Quest")else
Field.setBalloonType(qlZeO3Pr,"QuestUnReceivable")end;TouchEventInternal(qlZeO3Pr,WiXG,QgyWztK)end
TouchEventAt=function(Oo6ecUO,b6SL0yka,hEk,E8o)HideSameTagCharacter(b6SL0yka)if
not MatchField(Oo6ecUO)then return end;TouchEvent(b6SL0yka,hEk,E8o)end
TouchEventMultiAt=function(TdqFo,ykLF0,cilhu)HideSameTagCharacter(ykLF0)if not MatchField(TdqFo)then
return end;TouchEventMulti(ykLF0,cilhu)end
TouchEventMulti=function(eVfN,LBIJ)Field.setBalloonType(eVfN,"Normal")
HideSameTagCharacter(eVfN)
return
CS.LuaMethod.TouchEvent(parent,eVfN,function()
local CSSp=CS.LuaMethod.GetUniqLocalFlag(parent,eVfN)if(CSSp>=#LBIJ)then CSSp=#LBIJ-1 end
local CBZIwYHI=LBIJ[CSSp+1]
if(CBZIwYHI)then
Routine(function()
local x1vCS0=GenerateUniqueName("TouchEventMulti",eVfN)PlayerLock(x1vCS0)Yield(CBZIwYHI)
CS.LuaMethod.IncrementUniqLocalFlag(parent,eVfN)PlayerUnLock(x1vCS0)end)end end,
field~=nil)end
EmptyEventAt=function(Herp,TNczSeT)HideSameTagCharacter(TNczSeT)if not MatchField(Herp)then
return end;return EmptyEvent(TNczSeT)end
EmptyEvent=function(Sb)HideSameTagCharacter(Sb)return
CS.LuaMethod.DisableEvent(parent,Sb,false)end
WorldEndButtonEvent=function(_OwI,GBDhi2D,XDYs)
_OwI=_OwI or
function()PlayerLock()
local JyOmN=UI.showMessageDialog([[Bỏ qua thời điểm hiện tại và chuyển đến mốc thời gian tiếp theo?]],1)if JyOmN==Dialog.OK then if XDYs then Sound.stopAllENV()end
Exit_World()end end;return
CS.LuaMethod.ShowWorldEndButton(function()if(_OwI)then
Routine(function()PlayerLock()Yield(_OwI)
PlayerUnLock()end)end end,GBDhi2D)end
HideWorldEndButton=function()return CS.LuaMethod.HideWorldEndButton()end
FastTravelButtonEvent=function()local Gu2sqpyD=Domain.getCurrentStorySeasonType()
local N_Pk;local G_v887o0
if Gu2sqpyD==StorySeasonType.AutumnSummer then N_Pk="_Autumn"
G_v887o0="_AutumnSummer"elseif Gu2sqpyD==StorySeasonType.LateAutumn then N_Pk="_LateAutumn"
G_v887o0="_LateAutumn"else N_Pk=""G_v887o0=""end
FastTravelPointEvent("FrontDormitoryPoint",function()
Field.gotoFastTravel("Phía trước Ký túc xá","MainStreet"..N_Pk,"DormitoryPoint")end)
FastTravelPointEvent("CafeteriaPoint",function()
Field.gotoFastTravel("Nhà ăn","MainStreet"..N_Pk,"CafeteriaPoint")end)
FastTravelPointEvent("FrontSchoolPoint",function()
Field.gotoFastTravel("Phía trước Khu học xá","MainStreet"..N_Pk,"SchoolPoint")end)
FastTravelPointEvent("ArenaPoint",function()
Field.gotoFastTravel("Đường trước Đấu trường","MainStreet"..N_Pk,"ArenaPoint")end)
FastTravelPointEvent("ClockTowerPoint",function()
Field.gotoFastTravel("Tháp đồng hồ","MainStreet"..N_Pk,"ClockTowerPoint")end)
FastTravelPointEvent("DormitoryEntrancePoint",function()
Field.gotoFastTravel("Lối vào Ký túc xá","Dormitory1F"..G_v887o0,"StartPoint")end)
FastTravelPointEvent("LoungePoint",function()
Field.gotoFastTravel("Nơi sinh hoạt chung","Dormitory1F"..G_v887o0,"EndLoungePoint")end)
if
Game.isStory()and Domain.getLatestMainStoryOrder()>=90 then
FastTravelPointEvent("RoofTopPoint",function()
Field.gotoFastTravel("Sân thượng Ký túc xá","RoofTop"..G_v887o0,"StartPoint")end)end
FastTravelPointEvent("PurchasePoint",function()
Field.gotoFastTravel("Căn tin","School1F"..G_v887o0,"PurchasePoint")end)
FastTravelPointEvent("SchoolEntrancePoint",function()
Field.gotoFastTravel("Lối vào Khu học xá","School1F"..G_v887o0,"StartPoint")end)
FastTravelPointEvent("LibraryFrontPoint",function()
Field.gotoFastTravel("Thư viện","School1F"..G_v887o0,"LibraryPoint")end)
FastTravelPointEvent("ShopPoint",function()
Field.gotoFastTravel("Tạp hoá","FriendStreet"..N_Pk,"ShopPoint")end)
FastTravelPointEvent("NarvySquarePoint",function()
Field.gotoFastTravel("Quảng trường Narby","FriendStreet"..N_Pk,"NarvySquarePoint")end)
FastTravelPointEvent("StudioPoint",function()
Field.gotoFastTravel("Studio","BackStreet"..G_v887o0,"StudioPoint")end)
FastTravelPointEvent("GravePoint",function()
Field.gotoFastTravel("Đài tưởng niệm","Grave"..G_v887o0,"GravePoint")end)
FastTravelPointEvent("ClockTowerRoofPoint",function()
Field.gotoFastTravel("Đài quan sát Tháp đồng hồ","ClockTowerRoof"..G_v887o0,"StartPoint",90,false,0,0.340)end)
FastTravelPointEvent("MiemiePoint",function()
Field.gotoFastTravel("Spa Miemie","ShoppingStreet"..G_v887o0,"MiemieGatePoint")end)
FastTravelPointEvent("Battle9Point",function()
Field.gotoFastTravel("Rạp chiếu dã chiến số 9","ShoppingStreet"..G_v887o0,"PopotanPoint")end)
FastTravelPointEvent("FountainPoint",function()
Field.gotoFastTravel("Quảng trường đài phun nước","ShoppingStreet"..G_v887o0,"FountainPoint")end)end
FastTravelPointEvent=function(oiM7BRAl,s4,EF,wYFDyw8)
return
CS.LuaMethod.ShowFastTravelPoint(parent,oiM7BRAl,function(JyI)if(s4)then
Routine(function()PlayerLock()
Yield(s4)PlayerUnLock()JyI:End()end)end end,EF,wYFDyw8)end
FastTravelPointEventAt=function(hncZR4my,KqeVtj,LD,Q,QKTF34q3)
return
CS.LuaMethod.ShowFastTravelPoint(parent,hncZR4my,KqeVtj,function(z)if(LD)then
Routine(function()PlayerLock()
Yield(LD)PlayerUnLock()z:End()end)end end,Q,QKTF34q3)end;HideFastTravelPoint=function(UD61M)
return CS.LuaMethod.HideFastTravelPoint(UD61M)end
ShowFastTravelButton=function()return
CS.LuaMethod.ShowFastTravelButton()end
HideFastTravelButton=function()return CS.LuaMethod.HideFastTravelButton()end
ShowMapQuestIconAt=function(Kmr_vDN,VJw9J2c,Q5oEQY)
return CS.LuaMethod.ShowMapQuestIconAt(Kmr_vDN,VJw9J2c,Q5oEQY)end
ShowMapQuestIcon=function(eVzQHT,bdl6box_)
return CS.LuaMethod.ShowMapQuestIcon(eVzQHT,bdl6box_)end
ShowMapMemoryStoryIconAt=function(o,RMqe,c6H01I5a)
return CS.LuaMethod.ShowMapMemoryStoryIconAt(o,RMqe,c6H01I5a)end
ShowMapMemoryStoryIcon=function(CuoodPvK,e1iM)
return CS.LuaMethod.ShowMapMemoryStoryIcon(CuoodPvK,e1iM)end
ShowMapActivityIcon=function(bN32Fa,Ub)
return CS.LuaMethod.ShowMapActivityIcon(parent,bN32Fa,Ub)end
ShowMapDestinationIconAt=function(fQEH,_om)
return CS.LuaMethod.ShowMapDestinationIcon(fQEH,_om)end
ShowMapDestinationIcon=function(kEI4)
return CS.LuaMethod.ShowMapDestinationIcon(kEI4)end
ShowMapDestinationIconOverride=function(DSsD0,jRQUk)return
CS.LuaMethod.ShowMapDestinationIconOverride(DSsD0,jRQUk)end;HideMapDestinationIcon=function(M)
return CS.LuaMethod.HideMapDestinationIcon(M)end
ShowMapMusicNoteIcon=function(p_I)return
CS.LuaMethod.ShowMapMusicNoteIcon(p_I)end
ShowMapPieceIcon=function(ka)return CS.LuaMethod.ShowMapPieceIcon(ka)end
HideMapPieceIcon=function(OAvmrJ)return CS.LuaMethod.HideMapPieceIcon(OAvmrJ)end
ShowMapDuelIconAt=function(i,BBJcTiAS,m7jWgGw)
return CS.LuaMethod.ShowMapDuelIconAt(i,BBJcTiAS,m7jWgGw)end
ShowMapDuelIcon=function(cq,Mk3)return CS.LuaMethod.ShowMapDuelIcon(cq,Mk3)end
ShowMapFaceIconAt=function(jUhLQEm,Ed4qx,ZrR2o)
return CS.LuaMethod.ShowMapFaceIconAt(jUhLQEm,Ed4qx,ZrR2o)end
ShowMapFaceIcon=function(_g,_NgROQrI)
return CS.LuaMethod.ShowMapFaceIcon(_g,_NgROQrI)end
ShowMapPlaceLabel=function(_E8uiG0)
return CS.LuaMethod.ShowMapPlaceLabel(_E8uiG0)end
UpdateMapPins=function()return CS.LuaMethod.UpdateMapPins()end
SetAutoModePointName=function(SK)return CS.LuaMethod.SetAutoModePointName(SK)end
StartEventAt=function(J7K570R,fDGKa)if not MatchField(J7K570R)then return end
StartEvent(fDGKa)end
StartEvent=function(Q,ZukFflVc)
local oJgQv=GenerateUniqueName("StartEvent",WorldLabel().. (field or""),true)
Routine(function()local J8T=false;PlayerLock(oJgQv)
CS.LuaMethod.StartEvent(parent,function(Hc)
Routine(function()Yield(Q)
Hc:Finish()J8T=true end)end)while not J8T do Wait(0.1)end;PlayerUnLock(oJgQv)if ZukFflVc then
Field.refreshScripts(true)end end)end
StartEventNoLockAt=function(yu,IbCB)if not MatchField(yu)then return end
StartEventNoLock(IbCB)end
StartEventNoLock=function(ipjC14vX)Routine(ipjC14vX)end
StartEventExpeditionGate=function()
StartEvent(function()
CoroutineYield(CS.LuaMethod.StartEventExpeditionGate(parent))end)end
TouchEventSetBalloon=function(zr8xFL0,_QfE,hV8urDO,a)a=a or"Normal"
Field.setBalloonType(zr8xFL0,a)TouchEventInternal(zr8xFL0,_QfE,hV8urDO)end
ScoreAttackAccessPointObjectAt=function(jv,v)if not MatchField(jv)then return end
CS.LuaMethod.ScoreAttackAccessPointObject(parent,v,false)end
StartVariableChallengeBattle=function(tA_,XRbckaF,ruef,rMVr1Ks)rMVr1Ks=rMVr1Ks or nil
Routine(function()
if tA_~=""then local zyXWQodW=""local VmovH=0
Transition.start()PurgeField()
zyXWQodW,VmovH=VariableChallengeBattleStart(tA_,function()
Sound.playBattleBGM("SB0004")Battle.waitPreResult()
Sound.playBattleBGM("SB0010")Battle.waitPostResult()end,function()if
rMVr1Ks~=nil then rMVr1Ks()end end)Exit_FieldAndChange(XRbckaF,ruef)
Transition.finish()end end)end