local w0qyLbH=require'xlua.util'
GetLocalFlag=function(nsgji)return
CS.LuaMethod.GetLocalFlag(parent,nsgji)end
SetLocalFlag=function(bClTIa,rDzL7SVO)
return CS.LuaMethod.SetLocalFlag(parent,bClTIa,rDzL7SVO)end
ClearLocalFlag=function()return CS.LuaMethod.ClearLocalFlag(parent)end
IncLocalFlag=function(BW0WFP)local X8=GetLocalFlag(BW0WFP)
SetLocalFlag(BW0WFP,X8+1)end
IncFlag=function(JQT)local AtYtR=GetFlag(JQT)SetFlag(JQT,AtYtR+1)end
GetFlag=function(ND2BCh3)return CS.LuaMethod.GetFlag(parent,ND2BCh3)end
SetFlag=function(IODBg,YRDu)return CS.LuaMethod.SetFlag(parent,IODBg,YRDu)end
GetDeviceFlag=function(CWRiP)return CS.LuaMethod.GetDeviceFlag(CWRiP)end
SetDeviceFlag=function(LB0A,dl)return CS.LuaMethod.SetDeviceFlag(LB0A,dl)end
DeleteDeviceFlag=function(sKPjQkdn)
return CS.LuaMethod.DeleteDeviceFlag(sKPjQkdn)end
GetSyncState=function(HHH9IlJp)
return CS.LuaMethod.GetSyncState(parent,HHH9IlJp)end
SetSyncState=function(uYz2ryy4,zVPRGDnG)
CS.LuaMethod.SetSyncState(parent,uYz2ryy4,zVPRGDnG)end
WaitSyncState=function(IKxw,w0)
CoroutineYield(CS.LuaMethod.WaitSyncState(parent,IKxw,w0))end
MatchField=function(UgXzI_C)return
(UgXzI_C==nil)or(FieldLabel()==UgXzI_C)end
GenerateUniqueName=function(MLFLplLe,jwq,kw3ei0a)kw3ei0a=kw3ei0a or false;return
CS.LuaMethod.GenerateUniqueName(parent,MLFLplLe,jwq,kw3ei0a)end
PlayerLock=function(EspneS5,LZeg0)if LZeg0 ==nil then LZeg0=true end
CS.LuaMethod.SetPlayable(parent,false,LZeg0,EspneS5)end
PlayerUnLock=function(OJZ,nmuj)if nmuj==nil then nmuj=true end
CS.LuaMethod.SetPlayable(parent,true,nmuj,OJZ)end
WorldLabel=function()return CS.LuaMethod.GetCurrentWorldLabel()end
FieldLabel=function()return CS.LuaMethod.GetCurrentFieldLabel()end
AreaName=function()return CS.LuaMethod.GetCurrentAreaName()end
IsExist=function(bP)if bP==nil then return false end
return CS.LuaMethod.IsExist(parent,bP)end
IsActive=function(b4IqQW)if b4IqQW==nil then return false end;return
CS.LuaMethod.IsActive(parent,b4IqQW)end
IsUnlockedPlayer=function(iuGb)return CS.LuaMethod.IsPlayable(parent,iuGb)end
Exit_World=function()
CoroutineYield(CS.LuaMethod.WorldEnd())return Exit()end
Exit_Novel=function(koZU,C)CS.LuaMethod.EndNovelMoratorium(parent)
koZU=koZU or 1;if not C then Transition.start(koZU)end
Adv.resetPostEffect()return Exit()end
Exit_Battle=function()Adv.purgeAsyncInstanceAll(true)return Exit()end
Exit_NovelEx=function(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v)nmJGp_=nmJGp_ or 2;h0v3PIV=h0v3PIV or 4;Uc=Uc or 4
Adv.fadeOut(nmJGp_,true)if not PTUZ2v then Sound.stopBGM(h0v3PIV)end
Sound.stopAllENV(h0v3PIV)Wait(Uc)Adv.hideAllCharacter(0)
if JSkUQL~=nil then JSkUQL()end;Exit_Novel()end
Exit_NovelEx2=function(qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)qlZeO3Pr=qlZeO3Pr or 2;fG9zS=fG9zS or 4;WiXG=WiXG or 4
Adv.fadeOut(qlZeO3Pr,true)if not QgyWztK then Sound.stopBGM(fG9zS)end;if not Oo6ecUO then
Sound.stopAllEnvV2(fG9zS)end;Wait(WiXG)Adv.hideAllCharacter(0)if
b6SL0yka~=nil then b6SL0yka()end;Exit_Novel()end
Exit_GotoLatestDay=function(hEk)
CoroutineYield(CS.LuaMethod.Exit_GotoLatestDay(parent,hEk))end
SetupFixedDeckWithResumeSkip=function(E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ)
if
not CS.LuaMethod.Resume("SetupFixedDeck")then Log("Skip SetupFixedDeck")return end;SetupFixedDeck(E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ)end
SetupFixedDeck=function(CSSp,CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb)
CS.LuaMethod.SetupFixedDeck(CSSp,CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb)end
ForceSetupFixedDeck=function(_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4)G_v887o0=G_v887o0 or 1;oiM7BRAl=oiM7BRAl or 0
s4=s4 or false
CS.LuaMethod.ForceSetupFixedDeck(_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4)end
GCCollect=function(EF)EF=EF or 1;CS.LuaMethod.GCCollect(EF)end
GCCollectWait=function(wYFDyw8)return
CoroutineYield(CS.LuaMethod.GCCollectWait(wYFDyw8))end
GCCollectAsync=function(JyI)CS.LuaMethod.GCCollectAsync(parent,JyI)end;PurgeCache=function()
return CoroutineYield(CS.LuaMethod.PurgeCache())end;PurgeCacheAsync=function()
CS.LuaMethod.PurgeCacheAsync()end
SetUnloadResourcesOnLowMemoryEnabled=function(hncZR4my)
CS.LuaMethod.SetUnloadResourcesOnLowMemoryEnabled(parent,hncZR4my)end;PurgeField=function()
return CoroutineYield(CS.LuaMethod.PurgeField())end
PurgeFieldV2=function()return
CoroutineYield(CS.LuaMethod.PurgeFieldV2())end
PurgeFieldV3=function()Field.purgeDefaultPlayerResource()return
CoroutineYield(CS.LuaMethod.PurgeFieldV2())end
ChangeField=function(KqeVtj,LD,Q)Q=Q or TimeFrame.Default;return
CoroutineYield(CS.LuaMethod.ChangeField(KqeVtj,LD,Q))end
StartChangeField=function(QKTF34q3,z,UD61M)UD61M=UD61M or TimeFrame.Default
CS.LuaMethod.StartChangeField(QKTF34q3,z,UD61M)end
StartChangeExpeditionArea=function(Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT)eVzQHT=eVzQHT or TimeFrame.Default
CS.LuaMethod.StartChangeExpeditionArea(Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT)end;WaitChangeField=function()
return CoroutineYield(CS.LuaMethod.WaitChangeField())end
ClearOperation=function(bdl6box_)
CoroutineYield(CS.LuaMethod.ClearOperation(bdl6box_))end
SetPeriodText=function(o)CS.LuaMethod.SetPeriodText(parent,o)end
GetTimeFrame=function()return CS.LuaMethod.GetTimeFrame()end
GetDayOfWeek=function()return CS.LuaMethod.GetDayOfWeek()end
IsHoliday=function()return CS.LuaMethod.IsHoliday()end
IsPcMode=function()return CS.LuaMethod.IsPcMode()end
IsGamepadMode=function()return CS.LuaMethod.IsGamepadMode()end
IsDPadAsAxis=function()return CS.LuaMethod.IsDPadAsAxis()end
IsV2ForGamepad=function()return CS.LuaMethod.IsV2ForGamepad()end
GetUniqueLocalFlagName=function(RMqe)_AssertIsNotNull(RMqe)
return WorldLabel().."/"..RMqe end
SetWorldEventStep=function(c6H01I5a,CuoodPvK)local e1iM=GetUniqueLocalFlagName(c6H01I5a)
SetLocalFlag(e1iM,CuoodPvK)CS.LuaMethod.ForceDecision(parent)
CS.LuaMethod.SaveEventStepIfConquest(e1iM,CuoodPvK)
Log("WorldEventStep:"..e1iM.." = "..CuoodPvK)end
ClearWorldEventStep=function(bN32Fa)SetWorldEventStep(bN32Fa,0)end;GetWorldEventStep=function(Ub)
return GetLocalFlag(GetUniqueLocalFlagName(Ub))end
NextWorldEventStep=function(fQEH,_om)
local kEI4=GetWorldEventStep(fQEH)SetWorldEventStep(fQEH,kEI4+1)if _om then
Field.refreshScripts(true)end end
EventScene=function(DSsD0,jRQUk)CS.LuaMethod.EventScene(DSsD0,jRQUk)end
ExEventScene=function(M,p_I,ka)CS.LuaMethod.ExEventScene(M,p_I,ka)end;function ReachEvent_NextWorldEventStep(OAvmrJ,i,BBJcTiAS)
ReachEvent(OAvmrJ,function()BBJcTiAS()NextWorldEventStep(i,true)end)end;function ReachEventWild_NextWorldEventStep(m7jWgGw,cq,Mk3)
ReachEventWild(m7jWgGw,function()
Mk3()NextWorldEventStep(cq,true)end)end;function ReachEventNoLock_NextWorldEventStep(jUhLQEm,Ed4qx,ZrR2o)
ReachEventNoLock(jUhLQEm,function()
ZrR2o()NextWorldEventStep(Ed4qx,true)end)end;function TouchEvent_NextWorldEventStep(_g,_NgROQrI,_E8uiG0,SK)
TouchEvent(_g,function()
_E8uiG0()NextWorldEventStep(_NgROQrI,true)end,SK)end;function StartEvent_NextWorldEventStep(J7K570R,fDGKa)
StartEvent(function()
fDGKa()NextWorldEventStep(J7K570R,false)end,true)end
function CreateLuaTouchListener(Q,ZukFflVc)ZukFflVc=
ZukFflVc or false;return
CS.LuaMethod.CreateLuaTouchListener(parent,Q,ZukFflVc)end;function RemoveLuaTouchListener(oJgQv)
CS.LuaMethod.RemoveLuaTouchListener(parent,oJgQv)end;function ResetLuaTouchListener(J8T)
CS.LuaMethod.ResetLuaTouchListener(parent,J8T)end;function AddTouchBeganCallback(Hc,yu)
CS.LuaMethod.AddTouchBeganCallback(parent,Hc,yu)end;function AddTouchEndedCallback(IbCB,ipjC14vX)
CS.LuaMethod.AddTouchEndedCallback(parent,IbCB,ipjC14vX)end;function IsOpened(zr8xFL0)return
CS.LuaMethod.IsOpened(zr8xFL0)end;function ResetTimeScale(_QfE)return
CS.LuaMethod.ResetTimeScale(_QfE)end;PurgeWorldUI=function()return
CS.LuaMethod.PurgeWorldUI()end