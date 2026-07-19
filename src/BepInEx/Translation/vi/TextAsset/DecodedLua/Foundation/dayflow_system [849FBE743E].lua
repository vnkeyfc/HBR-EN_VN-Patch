local w0qyLbH=require'xlua.util'
Timebox=function(nsgji,bClTIa,rDzL7SVO,BW0WFP)
TimeboxCommon(nsgji,bClTIa,rDzL7SVO,BW0WFP,false,false)end
TimeboxWithSwitchPart=function(X8,JQT,AtYtR,ND2BCh3)
TimeboxCommon(X8,JQT,AtYtR,ND2BCh3,true,false)end
TimeboxForceDisableSeparateLabel=function(IODBg,YRDu,CWRiP,LB0A)
TimeboxCommon(IODBg,YRDu,CWRiP,LB0A,false,true)end
TimeboxForcePrev=function(dl,sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG)
TimeboxCommon(dl,HHH9IlJp,uYz2ryy4,zVPRGDnG,false,false,sKPjQkdn)end
TimeboxCommon=function(IKxw,w0,UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5)
if
(not CS.LuaMethod.ResumeTimebox(IKxw))then Log("Skip Timebox :"..IKxw)return end;if not CheckPlayable()then
Log("Not Playable Timebox:"..IKxw)ReturnTerminal()return end;Log(
"Start Timebox :"..IKxw)if(not MLFLplLe)then
Transition.setTime(jwq,kw3ei0a,EspneS5)end;Transition.start()
if CS.LuaMethod.Resume(
IKxw.."bgm")then Sound.playBGM(w0)end;Yield(UgXzI_C)if CS.LuaMethod.TimeboxFailSafeRepeat()then
Yield(UgXzI_C)end
CoroutineYield(CS.LuaMethod.ClearTimebox(parent,IKxw))end
Novel=function(LZeg0,OJZ)if not CS.LuaMethod.Resume(LZeg0)then
Log("Skip Novel:"..LZeg0)return end
if not CheckPlayable()then Log("Not Playable Novel:"..
LZeg0)ReturnTerminal()return end;Field.reset3DSoundState()
Log("Start Novel:"..LZeg0)local nmuj=CS.LuaMethod.SetVerticalLetterBox(parent)
local bP
if type(LZeg0)=="string"then
local b4IqQW=CS.LuaMethod.CallScript(parent,LZeg0)if not OJZ then
bP=CS.LuaMethod.SetRunningNovel(b4IqQW,b4IqQW,nil,true)end
CoroutineYield(CS.LuaMethod.WaitScript(b4IqQW))else _AssertIsFunction(LZeg0)
local iuGb=parent:StartCoroutine(w0qyLbH.cs_generator(LZeg0))if not OJZ then
bP=CS.LuaMethod.SetRunningNovel(parent,nil,iuGb,false)end;CoroutineYield(iuGb)end;Adv.resetPostEffect()Field.reset3DSoundState()
if
not OJZ then CS.LuaMethod.ResetRunningNovel(parent,bP)end
CS.LuaMethod.ResetVerticalLetterBox(parent,nmuj)end
NovelNoLetterBox=function(koZU,C)if not CS.LuaMethod.Resume(koZU)then
Log("Skip Novel:"..koZU)return end
if not CheckPlayable()then Log("Not Playable Novel:"..
koZU)ReturnTerminal()return end;Field.reset3DSoundState()
Log("Start Novel:"..koZU)local nmJGp_
if type(koZU)=="string"then
local h0v3PIV=CS.LuaMethod.CallScript(parent,koZU)if not C then
nmJGp_=CS.LuaMethod.SetRunningNovel(h0v3PIV,h0v3PIV,nil,true)end
CoroutineYield(CS.LuaMethod.WaitScript(h0v3PIV))else _AssertIsFunction(koZU)
local Uc=parent:StartCoroutine(w0qyLbH.cs_generator(koZU))if not C then
nmJGp_=CS.LuaMethod.SetRunningNovel(parent,nil,Uc,false)end;CoroutineYield(Uc)end;Adv.resetPostEffect()Field.reset3DSoundState()if not C then
CS.LuaMethod.ResetRunningNovel(parent,nmJGp_)end end
World=function(JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)fG9zS=fG9zS or TimeFrame.Default
if not
CS.LuaMethod.Resume(JSkUQL)then Log("Skip World:"..JSkUQL)return end;if not CheckPlayable()then
Log("Not Playable World:"..JSkUQL)ReturnTerminal()return end;Log(
"Start World:"..JSkUQL)return
CoroutineYield(CS.LuaMethod.World(parent,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS))end
BattleCommon=function(WiXG,QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ)local CSSp=WiXG;if type(b6SL0yka)=="string"then
CSSp=WiXG.."@"..b6SL0yka end
if
not CS.LuaMethod.Resume(CSSp)then Log("Skip Battle:"..CSSp)
local CBZIwYHI=CS.LuaMethod.GetLastBattleResult(WiXG)return CBZIwYHI.Item1,CBZIwYHI.Item2,CBZIwYHI.Item3 end
if not CheckPlayable()then
Log("Not Playable Battle:"..CSSp)ReturnTerminal()return nil,nil,nil end
return
BattleResume(WiXG,function()Log("Start Battle:"..CSSp)if QgyWztK~=nil then
QgyWztK()end;hEk=hEk or 0;E8o=E8o or 0;eVfN=eVfN or false
LBIJ=LBIJ or false;local x1vCS0=nil;local Herp=nil
if(b6SL0yka)then x1vCS0=Routine(b6SL0yka,true)
Herp=Routine(function()
while true do
CoroutineYield(CS.LuaMethod.BattleWaitContinue())
CoroutineYield(CS.LuaMethod.BattleWaitResetEventHandler())StopRoutine(x1vCS0,b6SL0yka)
x1vCS0=Routine(b6SL0yka,true)CS.LuaMethod.BattleContinueLoadUnlock()end end)else
Herp=Routine(function()
while true do
CoroutineYield(CS.LuaMethod.BattleWaitContinue())CS.LuaMethod.BattleContinueLoadUnlock()end end)end;result=nil;turn=nil;totalTurn=nil
CoroutineYield(CS.LuaMethod.BattleStart(parent,WiXG,function(TNczSeT,Sb,_OwI)result=TNczSeT
turn=Sb;totalTurn=_OwI end,Oo6ecUO,hEk,E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ))StopRoutine(x1vCS0,b6SL0yka)StopRoutine(Herp)
return result,turn,totalTurn end)end
function BattleResume(GBDhi2D,XDYs)result=nil;turn=nil;totalTurn=nil
if
CS.LuaMethod.BattleResume(parent,GBDhi2D,function(JyOmN,Gu2sqpyD,N_Pk)result=JyOmN
turn=Gu2sqpyD;totalTurn=N_Pk end)then
Log("Battle Resume: バトルは終了済みです["..
GBDhi2D.."] result:"..result.." turn:"..
turn.."totalTurn"..totalTurn)return result,turn,totalTurn end;return XDYs()end
BattleWithPartySelect=function(G_v887o0,oiM7BRAl,s4,EF,wYFDyw8)
wYFDyw8=wYFDyw8 or HowToGrant.LuaMainStoryBattle
return
BattleCommon(G_v887o0,function()local JyI=Adv.shield()Transition.finish()
UI.preBattleParty()Transition.start()Adv.remove(JyI)end,false,oiM7BRAl,s4,EF,
nil,wYFDyw8)end
BattleWithoutPartySelect=function(hncZR4my,KqeVtj,LD,Q,QKTF34q3,z)
QKTF34q3=QKTF34q3 or HowToGrant.LuaMainStoryBattle
return BattleCommon(hncZR4my,nil,false,KqeVtj,LD,Q,nil,QKTF34q3,nil,z)end
BattleWithFixedParty=function(UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT)
eVzQHT=eVzQHT or HowToGrant.LuaMainStoryBattle
return BattleCommon(UD61M,nil,true,Kmr_vDN,VJw9J2c,Q5oEQY,nil,eVzQHT)end
BattleWithCustomDeck=function(bdl6box_,o,RMqe,c6H01I5a,CuoodPvK,e1iM)
CuoodPvK=CuoodPvK or HowToGrant.LuaMainStoryBattle
return BattleCommon(bdl6box_,nil,true,o,RMqe,c6H01I5a,nil,CuoodPvK,e1iM)end
BattleWithStoryDeck=function(bN32Fa,Ub,fQEH,_om,kEI4)kEI4=kEI4 or HowToGrant.LuaMainStoryBattle
return BattleCommon(bN32Fa,
nil,false,Ub,fQEH,_om,nil,kEI4,nil,false,true)end
ArenaBattle=function(DSsD0,jRQUk,M,p_I)local ka=true;if(DSsD0)then ka=false
Routine(function()Yield(DSsD0)ka=true end)end;result=nil;turn=nil
if p_I==4 then
CoroutineYield(CS.LuaMethod.ArenaTrainingBattleStart(parent,function(OAvmrJ,i)
result=OAvmrJ;turn=i end,function()Routine(jRQUk)end))else
CoroutineYield(CS.LuaMethod.ArenaBattleStart(parent,function(BBJcTiAS,m7jWgGw)result=BBJcTiAS;turn=m7jWgGw end,function()
Routine(jRQUk)end,M,p_I))if result~="Lose"then while not ka do Wait(0.2)end end end;return result,turn end
PrismBattleStart=function(cq,Mk3,jUhLQEm,Ed4qx,ZrR2o)PlayerLock("PrismBattleStart")local _g=true
if(Ed4qx)then _g=false;Routine(function()
Yield(Ed4qx)_g=true end)end
CoroutineYield(CS.LuaMethod.ShowPrismBattleTips(parent,cq))result=nil;turn=nil
CoroutineYield(CS.LuaMethod.PrismBattleStart(parent,cq,Mk3,jUhLQEm,function(_NgROQrI,_E8uiG0)result=_NgROQrI
turn=_E8uiG0 end,function()if ZrR2o then Routine(ZrR2o)end end))if result~="Lose"then while not _g do Wait(0.2)end end
PlayerUnLock("PrismBattleStart")return result,turn end
ScoreAttackStart=function(SK,J7K570R,fDGKa,Q,ZukFflVc)PlayerLock("ScoreAttackStart")local oJgQv=true
if(Q)then oJgQv=false;Routine(function()
Yield(Q)oJgQv=true end)end
CoroutineYield(CS.LuaMethod.ShowBattleTips(parent,SK))result=nil;turn=nil
CoroutineYield(CS.LuaMethod.ScoreAttackStart(parent,SK,J7K570R,fDGKa,function(J8T,Hc)result=J8T;turn=Hc end,function()if
ZukFflVc then Routine(ZukFflVc)end end))
if result~="Lose"then while not oJgQv do Wait(0.2)end end;PlayerUnLock("ScoreAttackStart")return result,turn end
TrainingBattle=function(yu,IbCB)local ipjC14vX=true;if(IbCB)then ipjC14vX=false
Routine(function()Yield(IbCB)ipjC14vX=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.TrainingBattleStart(parent,yu,function(zr8xFL0,_QfE)
result=zr8xFL0;turn=_QfE end))
if result~="Lose"then while not ipjC14vX do Wait(0.2)end end;return result,turn end
ClockTowerBattle=function(hV8urDO,a,jv)local v=true;if(a)then v=false
Routine(function()Yield(a)v=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.ClockTowerBattleStart(parent,hV8urDO,function(tA_,XRbckaF)
result=tA_;turn=XRbckaF end,function()Routine(jv)end))if result~="Lose"then while not v do Wait(0.2)end end
return result,turn end
ArcadeBattle=function(ruef,rMVr1Ks)local zyXWQodW=true;if(ruef)then zyXWQodW=false
Routine(function()Yield(ruef)zyXWQodW=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.ArcadeBattleStart(parent,function(VmovH,Q)
result=VmovH;turn=Q end,function()Routine(rMVr1Ks)end))
if result~="Lose"then while not zyXWQodW do Wait(0.2)end end;return result,turn end
function OnArcadeBattleEvent(oGjJ)
Routine(function()battleResult=""
Transition.setSymbolEncountTransition()Transition.start()
battleResult,battleTurn=ArcadeBattle(function()
Battle.waitLoadEnd()Battle.waitPreResult()end,function()
Transition.finish()end)oGjJ()end)end
MobHuntBattle=function(G1BiG9x,X3v,fJB)local p96jR=true;if(X3v)then p96jR=false
Routine(function()Yield(X3v)p96jR=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.MobHuntBattleStart(parent,G1BiG9x,function(Cd,oVZ)
result=Cd;turn=oVZ end,function()Routine(fJB)end))
if result~="Lose"then while not p96jR do Wait(0.2)end end;return result,turn end
BattleWithLineInfoReward=function(JCPdH,yt,qejbRWcX,lKi_v)local WClwNvPI=true
if(lKi_v)then WClwNvPI=false;Routine(function()Yield(lKi_v)
WClwNvPI=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.BattleWithLineInfoReward(parent,JCPdH,yt,qejbRWcX,function(Z,F1kNUeep)result=Z
turn=F1kNUeep end))
if result~="Lose"then while not WClwNvPI do Wait(0.2)end end;return result,turn end
VariableChallengeBattleStart=function(VGNf90M,DTra,Kfl)
PlayerLock("VariableChallengeBattleStart")local a6QNS6=true;if(DTra)then a6QNS6=false
Routine(function()Yield(DTra)a6QNS6=true end)end
CoroutineYield(CS.LuaMethod.ShowVariableChallengeBattleTips(parent,VGNf90M))result=nil;turn=nil
CoroutineYield(CS.LuaMethod.VariableChallengeBattleStart(parent,VGNf90M,function(Q,S)result=Q;turn=S end,function()if
Kfl then Routine(Kfl)end end))
if result~="Lose"then while not a6QNS6 do Wait(0.2)end end;PlayerUnLock("VariableChallengeBattleStart")
return result,turn end
ResumeAutoTrainingOfVariableChallenge=function(Wd,__q)local o1isr9N=true;if(Wd)then o1isr9N=false
Routine(function()Yield(Wd)o1isr9N=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.ResumeAutoTrainingOfVariableChallenge(parent,function(f,_a4il)
result=f;turn=_a4il end,function()Routine(__q)end))
if result~="Lose"then while not o1isr9N do Wait(0.2)end end;return result,turn end
ExpeditionWorldWithStoryDeck=function(Fsy,o5EML,gU,JkLOu38,rJeSR)
_ExpeditionWorldInternal(Fsy,o5EML,gU,JkLOu38,rJeSR,false,false,false,true)end
_ExpeditionWorldInternal=function(Qsn1Mp,GT4,rg7e,cWGq,Xe35l,L,x,tnnCl,K)local T06zarEG=false
if not
CS.LuaMethod.Resume(Qsn1Mp,function()T06zarEG=true end)then
Log("Skip Expedition:"..Qsn1Mp)return Expedition.result()end
if not CheckPlayable()then
Log("Not Playable Expedition:"..Qsn1Mp)ReturnTerminal()return nil end;Log("Start Expedition:"..Qsn1Mp)L=L or false;x=x or
false;tnnCl=tnnCl or false;K=K or false
local _pYwz9W=ExpeditionResult.None
CoroutineYield(CS.LuaMethod.Expedition(parent,Qsn1Mp,GT4,rg7e,cWGq,Xe35l,function(pPhf)_pYwz9W=pPhf end,T06zarEG,L,x,tnnCl,K))return _pYwz9W end
ExpeditionWorld=function(UitKjKg,u6NC,QsGa,W8os4zeu,iqGT3,iylQPau,miJYM,I)local Tq9Ac2=false
if not
CS.LuaMethod.Resume(UitKjKg,function()Tq9Ac2=true end)then
Log("Skip Expedition:"..UitKjKg)return Expedition.result()end
if not CheckPlayable()then
Log("Not Playable Expedition:"..UitKjKg)ReturnTerminal()return nil end;Log("Start Expedition:"..UitKjKg)
iylQPau=iylQPau or false;miJYM=miJYM or false;I=I or false
local BIriYV3u=ExpeditionResult.None
CoroutineYield(CS.LuaMethod.Expedition(parent,UitKjKg,u6NC,QsGa,W8os4zeu,iqGT3,function(te)BIriYV3u=te end,Tq9Ac2,iylQPau,miJYM,I,false))return BIriYV3u end
ExpeditionWorldWithFixedParty=function(J4F6,Xx0pC,yX5i,Eq,Pj6PhX)
ExpeditionWorld(J4F6,Xx0pC,yX5i,Eq,Pj6PhX,true,false)end
ExpeditionPartsWorld=function(iT1M,M5,sqDj,iehV7hMo,qHrfq6)Log("Start ExpeditionArea:"..sqDj)if
qHrfq6 ==nil then qHrfq6=TimeFrame.Default end
CoroutineYield(CS.LuaMethod.ExpeditionPartsWorld(parent,iT1M,M5,sqDj,iehV7hMo,qHrfq6))end
ClockTowerWorld=function(v5R,Ys,Q)if not CheckPlayable()then
Log("Not Playable ClockTower:"..v5R)ReturnTerminal()return end;if
Ys==nil then Ys=0 end
CoroutineYield(CS.LuaMethod.ClockTowerWorld(parent,v5R,Ys,Q))end
ResumeMemoryStoryWorld=function()
CoroutineYield(CS.LuaMethod.ResumeMemoryStoryWorld(parent))end
MemoryStoryWorld=function(FaXF0EYn)if not CS.LuaMethod.Resume(FaXF0EYn)then
Log("Skip MemoryStory:"..FaXF0EYn)return end;if not CheckPlayable()then Log(
"Not Playable MemoryStory:"..FaXF0EYn)
ReturnTerminal()return end
CoroutineYield(CS.LuaMethod.ShowMemoryStoryTips(parent,FaXF0EYn))Log("Start MemoryStory:"..FaXF0EYn)
CoroutineYield(CS.LuaMethod.MemoryStoryWorld(parent,FaXF0EYn))end
PatrolWorld=function(DytHsRmu,P)if not CS.LuaMethod.Resume(DytHsRmu)then
Log("Skip Patrol:"..DytHsRmu)return end;if not CheckPlayable()then Log(
"Not Playable Patrol:"..DytHsRmu)
ReturnTerminal()return end
Log("Start Patrol:"..DytHsRmu)
CoroutineYield(CS.LuaMethod.PatrolWorld(parent,DytHsRmu,P))end
GardenExpeditionWorld=function(yRLNI,RHXu4t,CaPMHK)if not CS.LuaMethod.Resume(yRLNI)then
Log("Skip GardenExpedition:"..yRLNI)return end;if not CheckPlayable()then Log(
"Not Playable GardenExpedition:"..yRLNI)
ReturnTerminal()return end
Log("Start GardenExpedition:"..yRLNI)RHXu4t=RHXu4t or false;CaPMHK=CaPMHK or false
CoroutineYield(CS.LuaMethod.GardenExpeditionWorld(parent,yRLNI,RHXu4t,CaPMHK))end
Exit_BadEnd=function()
CoroutineYield(CS.LuaMethod.BadEndReturnTerminal(parent,false))end
Exit_BadEnd_ResetResumeInfo=function()
CoroutineYield(CS.LuaMethod.BadEndReturnTerminal(parent,true))end
UnplayableLatestDayFromNewGame=function()
return CS.LuaMethod.UnplayableLatestStoryFromNewGame()end;ReturnTerminal=function()
CoroutineYield(CS.LuaMethod.ReturnTerminal(parent))end
ExitGarden=function(Ap3zqG5d)
CoroutineYield(CS.LuaMethod.ExitGarden(parent,Ap3zqG5d))end
SetNextReturnTerminal=function(QZOIU)if QZOIU==nil then QZOIU=true end
CS.LuaMethod.SetNextReturnTerminal(QZOIU)end
StartBattleSpot=function(Yzu9D,E0U)Yzu9D=Yzu9D or false;E0U=E0U or false
CS.LuaMethod.StartBattleSpot(Yzu9D,E0U)end
EndBattleSpot=function()CS.LuaMethod.EndBattleSpot()end
ValidateDeck=function()
if not IsPlayingStoryHardMode()and
not Domain.isValidDeck()then local WPn=Adv.shield()
Transition.finish()
if Domain.banCharacterExists()then
local UfEH=UI.showDeckRuleWarningDialog()
if UfEH=="party"then UI.preBattleParty()else ReturnTerminal()end else local z0=UI.showDeckRuleCautionDialog()if z0 =="cancel"then
UI.preBattleParty()end end;Transition.start()Adv.remove(WPn)end end
ValidateDeckOnlyBan=function(BK19)
if not IsPlayingStoryHardMode()and
not Domain.isValidDeck()then
if Domain.banCharacterExists()then
if BK19 then Wait(BK19)end;local I=Adv.shield()Transition.finish()
local ubw=UI.showDeckRuleWarningDialog()
if ubw=="party"then UI.preBattleParty()else ReturnTerminal()end;Transition.start()Adv.remove(I)end end end
PrepareDay=function(f)Log("Start Prepare Day")
if f~=false then ValidateDeck()end end
ConfirmDeck=function(yaA2f,wjQXn79,C1,hdr,tvO)if not CS.LuaMethod.Resume("ConfirmDeck")then
Log("Skip ConfirmDeck")return end;if not CheckPlayable()then
Log("Not Playable ConfirmDeck")ReturnTerminal()return end
Log("ConfirmDeck")if C1 then Wait(C1)end;local Q=Adv.shield()
Transition.finish()if yaA2f then UI.showMessageDialog(yaA2f)end
if hdr then
UI.preBattleMultiParty(tvO)else UI.preBattleParty(wjQXn79)end;Transition.start()Adv.remove(Q)GCCollectWait(7)
PurgeCache()end
ConfirmStoryDeck=function(LfHYQg,R,DKu3)_AssertIsNotNull(LfHYQg)
if not
CS.LuaMethod.Resume("ConfirmStoryDeck")then Log("Skip ConfirmStoryDeck")return end;if not CheckPlayable()then
Log("Not Playable ConfirmStoryDeck")ReturnTerminal()return end
Log("ConfirmStoryDeck")if DKu3 then Wait(DKu3)end;local VAaGt=Adv.shield()
Transition.finish()if R then UI.showMessageDialog(R)end
UI.preBattleParty(false,false,LfHYQg)Transition.start()Adv.remove(VAaGt)
GCCollectWait(7)PurgeCache()end
ConfirmFixedDeck=function(G1PwhyG)ConfirmDeck(G1PwhyG,true)end
ConfirmLive=function(G)if not CS.LuaMethod.Resume("ConfirmLive")then
Log("Skip ConfirmLive")return end;if not CheckPlayable()then
Log("Not Playable ConfirmLive")ReturnTerminal()return end
Log("ConfirmLive")Sound.playEmptyBGM(0)Wait(1.0)
Transition.finish()LiveMode.ConfirmLive(G)end
Live=function(fe)
if not CS.LuaMethod.Resume("StartLive")then
Log("Skip StartLive")local MFUc=LiveMode.IsSuccessLastStoryLive(fe)
if MFUc then
local V9=GetFlag("StoryLiveイベント_合計スコアへスキップ中")if V9 ==1 then return"Skip"else return"Win"end else return"Lose"end end
SetFlag("StoryLiveイベント_合計スコアへスキップ中",0)if not CheckPlayable()then Log("Not Playable StartLive")
ReturnTerminal()return nil end;Log("StartLive")
Sound.playEmptyBGM(0)Wait(1.0)Transition.finish()
return LiveMode.StartLive(fe)end
LiveFlow=function(iT,OZEQxah_,o8I7,T57hH4r,k,Tx2)local B=false
while true do
if not B then local n;if k~=nil then n=Adv.loadBGAsync(k)
Adv.waitAsyncInstance(n)Adv.show(n)end;if Tx2 ~=nil then
Routine(Tx2)end;ConfirmLive(iT)
if n~=nil then Adv.remove(n)end;OZEQxah_()end;local Yt6V4Y=Live(iT)
if Yt6V4Y=="Skip"then T57hH4r()ReturnTerminal()elseif
Yt6V4Y=="Win"then break else o8I7()Transition.finish()local ZNChA="Return to Home Screen"
local VufPd="Gig Prep"local FWsorpKS="Redo"
local zuZa=UI.showThreeButtonDialog("Gig Failed","During Gig Prep you are able to adjust your squad formation and select the difficulty.",ZNChA,VufPd,FWsorpKS,false,false)
if zuZa==ZNChA then ReturnTerminal()break elseif zuZa==VufPd then B=false else B=true end end end end
CheckPlayable=function()local M=true;local vI="Return to Home Screen"local _ogR=function(g)vI=g
Adv.addLocalizedString(g)end
M=CS.LuaMethod.IsStoryPlayable(_ogR)
if not M then local n69tv=UI.showMessageDialog(vI,0,0,"Loading")if
n69tv==Dialog.OK then return false end end;return true end
GateBossWorld=function(z)if not CheckPlayable()then
Log("Not Playable GateBoss:"..z)ReturnTerminal()return end
CoroutineYield(CS.LuaMethod.ShowGateBossTips(parent,z))PlayerLock("ChangeGateBossWorld")
CoroutineYield(CS.LuaMethod.GateBossWorld(parent,z))end
GateBossBattleStart=function(VKJxwOdv,IplgjH8v)PlayerLock("GateBossBattleStart")local MB6jIC=true;if
(VKJxwOdv)then MB6jIC=false
Routine(function()Yield(VKJxwOdv)MB6jIC=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.GateBossBattleStart(parent,function(h4OlVtn,E0)
result=h4OlVtn;turn=E0 end,function()
if IplgjH8v then Routine(IplgjH8v)end end))
if result~="Lose"then while not MB6jIC do Wait(0.2)end end;PlayerUnLock("GateBossBattleStart")return result,turn end
Exit_StartStoryHardMode=function(eLMg,mVjDTYYb,l8,T)
CoroutineYield(CS.LuaMethod.Exit_StartStoryHardMode(parent,eLMg,mVjDTYYb,l8,T))end;IsPlayingStoryHardMode=function()
return CS.LuaMethod.IsPlayingStoryHardMode()end
SkipToStoryHardModeBoss=function()return
CS.LuaMethod.SkipToStoryHardModeBoss()end
DimensionStart=function(EME,nudgGJ,XRN5ln,D4MiUjQ)PlayerLock("DimensionStart")local j=true;if
(XRN5ln and#XRN5ln>0)then j=false
Routine(function()Yield(XRN5ln)j=true end)end
CoroutineYield(CS.LuaMethod.ShowBattleTips(parent,EME))result=nil;turn=nil
CoroutineYield(CS.LuaMethod.DimensionStart(parent,EME,nudgGJ,function(nN,gt2)result=nN;turn=gt2 end,function()if
D4MiUjQ then Routine(D4MiUjQ)end end))if result~="Lose"then while not j do Wait(0.2)end end
PlayerUnLock("DimensionStart")return result,turn end
SpiritualWorld=function(lF,s8s3,R,h4xbyHiS)h4xbyHiS=h4xbyHiS or TimeFrame.Default
if not
CS.LuaMethod.Resume(lF)then Log("Skip World:"..lF)return end;if not CheckPlayable()then
Log("Not Playable World:"..lF)ReturnTerminal()return end;Log(
"Start World:"..lF)return
CoroutineYield(CS.LuaMethod.SpiritualWorld(parent,lF,s8s3,R,h4xbyHiS))end
ConfirmAlternationParty=function(D,fk,EJi,xV_7)
CS.LuaMethod.SetAlternationPartyDeckRule(fk,xV_7)
if
not CS.LuaMethod.Resume("ConfirmAlternationParty")then Log("Skip ConfirmAlternationParty")return end;Log("ConfirmAlternationParty")
UI.showMessageDialog(D)return
CoroutineYield(CS.LuaMethod.ConfirmAlternationParty(parent,fk,EJi))end
GetCurrentAlternationPartyIndex=function()
return CS.LuaMethod.GetCurrentAlternationPartyIndex()end
StartWaveBattle=function(Z,N4WulQix)local gUl6=true;if(Z)then gUl6=false
Routine(function()Yield(Z)gUl6=true end)end;result=nil;turn=nil
CoroutineYield(CS.LuaMethod.WaveBattleStart(parent,function(UsFp_,oRv9KOBG)
result=UsFp_;turn=oRv9KOBG end,function()Routine(N4WulQix)end))if result~="Lose"then while not gUl6 do Wait(0.2)end end;return
result,turn end
function OnWaveBattleEvent(SOGQ)
Routine(function()battleResult=""
Transition.setSymbolEncountTransition()Transition.start()
battleResult,battleTurn=StartWaveBattle(function()
Battle.waitLoadEnd()Battle.waitPreResult()end,function()
Transition.finish()end)SOGQ()end)end
SetGrantRewardAtDayResult=function(m)
return CS.LuaMethod.SetGrantRewardAtDayResult(m)end
SetShowTutorialDialogAtDayResult=function(RVaYv,N)return
CS.LuaMethod.SetShowTutorialDialogAtDayResult(RVaYv,N)end;SetOverrideIsSkipDayResult=function()
CS.LuaMethod.SetOverrideIsSkipDayResult(true)end