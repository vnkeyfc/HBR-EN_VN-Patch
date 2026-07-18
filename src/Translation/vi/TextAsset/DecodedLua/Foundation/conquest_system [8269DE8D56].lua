local w0qyLbH=require'xlua.util'Conquest={}
Conquest.StartPrologue=function(nsgji,bClTIa,rDzL7SVO)
CoroutineYield(CS.LuaMethod.ConquestPrologue(parent,nsgji,bClTIa,rDzL7SVO))end
Conquest.Start=function(BW0WFP)
CoroutineYield(CS.LuaMethod.ConquestWorld(parent,BW0WFP))end
Conquest.confirmFinishExpedition=function()Wait(0.5)local X8
local JQT=Domain.getDivingStory()
if JQT~=nil and Domain.isClearStory(JQT)then
X8=UI.showMessageDialog([[End the exploration and return to base?]],1)else
X8=UI.showMessageDialog([[Exploration will be suspended and you will return temporarily.\nStory progress will be saved.\nEnemies and some items will respawn.]],1)end;if X8 ==Dialog.OK then Transition.setFlyReturnEx()
Transition.start()Exit_BadEnd()end end;Conquest.setExpeditionTitle=function()
Expedition.setTitle("Suppression Mission","  ")end
Conquest.setPeriodText=function()if
Conquest.toSkipNovel()then SetPeriodText("")else
SetPeriodText("Head to the target location!")end end;Conquest.getLabel=function()
return CS.LuaMethod.GetCurrentConquestLabel()end
Conquest.BindMissionGimmick=function(AtYtR,ND2BCh3)return
CS.LuaMethod.BindConquestMissionGimmick(AtYtR,ND2BCh3)end
Conquest.CanOpenMissionGimmick=function(IODBg)
return CS.LuaMethod.CanOpenConquestMissionGimmick(IODBg)end
Conquest.OpenMissionGimmick=function(YRDu)if Conquest.CanOpenMissionGimmick(YRDu)then
Expedition.openPlacement(YRDu)end end
Conquest.OpenMissionGimmicks=function(CWRiP)
CS.LuaMethod.OpenConquestMissionGimmicks(CWRiP)end
Conquest.isMissionCleared=function(LB0A)
return CS.LuaMethod.IsClearedConquestMission(LB0A)end
Conquest.isMissionOpened=function(dl)
return CS.LuaMethod.IsOpenedConquestMission(dl)end
Conquest.completeMission=function(sKPjQkdn,HHH9IlJp)HHH9IlJp=HHH9IlJp or nil;return
CS.LuaMethod.CompleteConquestMission(parent,sKPjQkdn,HHH9IlJp)end
Conquest.showMissionCompleteDirection=function(uYz2ryy4,zVPRGDnG)zVPRGDnG=zVPRGDnG or nil
CoroutineYield(CS.LuaMethod.ShowConquestMissionCompleteDirection(parent,uYz2ryy4,zVPRGDnG))end
Conquest.completeMissionForBattleEnd=function(IKxw,w0,UgXzI_C,MLFLplLe)UgXzI_C=UgXzI_C or nil
MLFLplLe=MLFLplLe or nil
Routine(function()
if not Field.isDefeatedFieldEnemy(w0)then return end
if Conquest.isMissionCleared(IKxw)then if UgXzI_C then UgXzI_C()end else if not
Conquest.completeMission(IKxw,UgXzI_C)then return end end;Field.setForceHideHud()
Expedition.setEnableExpeditionMinimapHud(false)Wait(0.2)Transition.finish(nil,1)
Conquest.showMissionCompleteDirection(IKxw,function()if
MLFLplLe then MLFLplLe()end;Field.resetForceHideHud()
Expedition.setEnableExpeditionMinimapHud(true)end)end)end
Conquest.toSkipNovel=function()return CS.LuaMethod.ToSkipNovel()end
Conquest.GetWorldEventStep=function(jwq)return
CS.LuaMethod.ConquestGetWorldEventStep(GetUniqueLocalFlagName(jwq))end
Conquest.setBikeChaseDefaultModeTime=function(kw3ei0a)
CS.LuaMethod.SetBikeChaseDefaultModeTime(kw3ei0a)end
Conquest.setBikeChaseLeaderModeTime=function(EspneS5)
CS.LuaMethod.SetBikeChaseLeaderModeTime(EspneS5)end
Conquest.setBikeMaximumSpeedInFreeMove=function(LZeg0)
CS.LuaMethod.SetBikeMaximumSpeedInFreeMove(LZeg0)end;Conquest.getConquestBikePartNum=function()
return CS.LuaMethod.GetConquestBikePartNum()end
Conquest.getCurrentDifficultyLevel=function()return
CS.LuaMethod.GetConquestCurrentDifficultyLevel()end