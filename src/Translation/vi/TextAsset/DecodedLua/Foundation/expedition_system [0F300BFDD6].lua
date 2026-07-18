local w0qyLbH=require'xlua.util'Expedition={}
Expedition.startExpeditionCutscene=function(nsgji)
Transition.start()Field.setActiveFollower(false)if nsgji then nsgji()end
Wait(1)Transition.finish()end
Expedition.finishExpeditionCutscene=function(bClTIa,rDzL7SVO)Transition.start()
Field.setActiveFollower(true)Field.resetFollowerPosition()
Field.deleteDynamicCharacterAll()if bClTIa then bClTIa()end;Wait(1)Transition.finish()if rDzL7SVO then
Field.refreshScripts()end end
Expedition.alertExpeditionCost=function()
Routine(function()
local BW0WFP=Expedition.getExpeditionCost()local X8=Expedition.getMaxExpeditionCost()
local JQT=BW0WFP/X8;local AtYtR=GetLocalFlag("AlertCount")
if BW0WFP==0 then
Field.waitFieldEventState()SetLocalFlag("Expedition.StopRefresh",1)Wait(0.5)
Field.startEvent()Field.turnTo("Player",180,0.3)
Field.setTalkCamera("Player")
Adv.kayamoriTalk([[(Everyone's on their last legs...\nMay as well call it quits for the day.)]],"VC_expedition_system_00000_RKayamori",2)Transition.start()Field.finishEvent(0)
Field.stopTaskKey("Player")SetLocalFlag("AlertCount",0)
Sound.playBGM("SB0010",1,1)
Field.setFieldEventState("Expedition.Cave.Finish")Exit_FieldAndChange("CaveB1","startFinishPoint")end end)end
Expedition.confirmFinishExpedition=function()PlayerLock()Wait(0.5)
local ND2BCh3=UI.showMessageDialog([[Return to base?]],1)
if ND2BCh3 ==Dialog.OK then Expedition.goodEndAndShowResult()end end
Expedition.resetModeRandomEncount=function(IODBg,YRDu,CWRiP)
local YRDu=YRDu or"RandomEncount.NormalEncountCount"local CWRiP=CWRiP or"RandomEncount.FeverEncountCount"
SetLocalFlag(IODBg,0)SetLocalFlag(YRDu,0)SetLocalFlag(CWRiP,0)end
Expedition.popUpGayaBalloon=function(LB0A,dl,sKPjQkdn)if Field.isJoinFollower(LB0A)then
Field.talkByGayaBalloon("Follower/"..LB0A,dl,sKPjQkdn)end end
Expedition.useExpeditionCost=function()CS.LuaMethod.UseExpeditionCost()end
Expedition.startEvent=function(HHH9IlJp,uYz2ryy4)if GetFlag(HHH9IlJp)==0 then
StartEvent(function()Yield(uYz2ryy4)
SetFlag(HHH9IlJp,1)end)end end
Expedition.touchEvent=function(zVPRGDnG,IKxw,w0)
if GetFlag(zVPRGDnG)==0 then
TouchEvent(IKxw,function()
Field.turnToTarget("Player",IKxw,0.3,AnimationMode.Auto)Yield(w0)EmptyEvent(IKxw)SetFlag(zVPRGDnG,1)end)end end
Expedition.reachEvent=function(UgXzI_C,MLFLplLe,jwq,kw3ei0a)
if GetFlag(UgXzI_C)==0 then
ReachEvent(MLFLplLe,function()Yield(jwq)
EmptyEvent(MLFLplLe)SetFlag(UgXzI_C,1)
if kw3ei0a then Field.refreshScripts()end end)end end;Expedition.addOperationPoint=function(EspneS5)
CS.LuaMethod.AddOperationPoint(EspneS5)end
Expedition.getOperationPoint=function()return
CS.LuaMethod.GetOperationPoint()end
Expedition.consumeExpeditionCost=function(LZeg0)
CS.LuaMethod.ConsumeExpeditionCost(LZeg0)end
Expedition.consumeExpeditionCostByBattleTurn=function(OJZ)
CS.LuaMethod.ConsumeExpeditionCostByBattleTurn(OJZ)end;Expedition.getExpeditionCost=function()
return CS.LuaMethod.GetExpeditionCost()end
Expedition.getMaxExpeditionCost=function()return
CS.LuaMethod.GetMaxExpeditionCost()end
Expedition.getState=function()return CS.LuaMethod.GetExpeditionState()end;Expedition.badEnd=function()CS.LuaMethod.ExpeditionBadEnd()
Exit_World()end
Expedition.goodEnd=function()
CS.LuaMethod.ExpeditionGoodEnd()Exit_World()end;Expedition.trueEnd=function()CS.LuaMethod.ExpeditionTrueEnd()
Exit_World()end
Expedition.result=function()return
CS.LuaMethod.GetExpeditionResult()end;Expedition.lockField=function(nmuj)
CS.LuaMethod.Expedition_LockField(nmuj)end;Expedition.unlockField=function(bP)
CS.LuaMethod.Expedition_UnlockField(bP)end
Expedition.warpGate=function(b4IqQW,iuGb,koZU,C)C=
C or TimeFrame.Default
CoroutineYield(CS.LuaMethod.Expedition_WarpGate(b4IqQW,iuGb,koZU,C))end
Expedition.selectGateAndWarp=function(nmJGp_,h0v3PIV)local Uc={}for PTUZ2v,qlZeO3Pr in ipairs(nmJGp_)do
table.insert(Uc,qlZeO3Pr.gateName)end
local JSkUQL=UI.showSelectiveDialog(table.concat(Uc,","),1,h0v3PIV)
if JSkUQL~=-1 then local fG9zS=nmJGp_[JSkUQL+1]
Transition.setOutdoor("",Uc[JSkUQL+1])Transition.start()
Expedition.warpGate(fG9zS.changeFieldName,fG9zS.changeAreaName,fG9zS.warpPointName)end end
Expedition.showResult=function(WiXG)WiXG=WiXG or 1
UI.PushHudVisible("Expedition.showResult",false)Field.startEvent("Expedition.showResult",false)if
WiXG==1 then Sound.playBGM("SB0010",1,0)end
UI.showExpeditionResult()Transition.start()
Field.finishEvent(0,"Expedition.showResult")Sound.stopBGM()
UI.PopHudVisible("Expedition.showResult")end
Expedition.showSymbolEncountTransition=function(QgyWztK)return
CoroutineYield(CS.LuaMethod.ShowSymbolEncountTransition(QgyWztK,parent))end
Expedition.showGhostSymbolEncountTransition=function(Oo6ecUO)return
CoroutineYield(CS.LuaMethod.ShowGhostSymbolEncountTransition(Oo6ecUO,parent))end
Expedition.hideSymbolEncountTransition=function(b6SL0yka)return
CoroutineYield(CS.LuaMethod.HideSymbolEncountTransition(b6SL0yka))end
Expedition.setTitle=function(hEk,E8o)
CS.LuaMethod.Expedition_SetTitle(parent,hEk,E8o)end
Expedition.openPlacement=function(TdqFo)
CS.LuaMethod.Expedition_OpenPlacement(TdqFo)end
Expedition.openPlacements=function(ykLF0)
CS.LuaMethod.Expedition_OpenPlacement(ykLF0)end
Expedition.closePlacement=function(cilhu)
CS.LuaMethod.Expedition_ClosePlacement(cilhu)end
Expedition.disablePlacement=function(eVfN)
CS.LuaMethod.Expedition_DisablePlacement(eVfN)end
Expedition.closeAllPlacement=function(LBIJ)
CS.LuaMethod.Expedition_CloseAllPlacement(LBIJ)end
Expedition.closeAllPlacements=function(CSSp)
CS.LuaMethod.Expedition_CloseAllPlacements(CSSp)end
Expedition.hideAllPlacement=function(CBZIwYHI)
CS.LuaMethod.Expedition_HideAllPlacement(parent,CBZIwYHI)end
Expedition.lockPlacement=function(x1vCS0)
CS.LuaMethod.Expedition_LockPlacement(x1vCS0)end
Expedition.unlockPlacement=function(Herp)
CS.LuaMethod.Expedition_UnlockPlacement(Herp)end;Expedition.passAllRoute=function()
CS.LuaMethod.Expedition_PassAllRoute()end
Expedition.passAllRouteExcludeSecretRoute=function()
CS.LuaMethod.Expedition_PassAllRouteExcludeSecretRoute()end
Expedition.passAllRouteExcludeAreaNames=function(TNczSeT,Sb)
CS.LuaMethod.Expedition_PassAllRouteExcludeAreaNames(TNczSeT,Sb)end
Expedition.passAllRouteInAllFloor=function()
CS.LuaMethod.Expedition_PassAllRouteInAllFloor()end
Expedition.resetPassRoute=function(_OwI,GBDhi2D)
return CS.LuaMethod.Expedition_ResetPassState(_OwI,GBDhi2D)end;Expedition.progressRate=function()
return CS.LuaMethod.Expedition_ProgressRate()end
Expedition.setAutoModeTargetEnabled=function(XDYs)
CS.LuaMethod.Expedition_SetAutoModeTargetEnabled(XDYs)end
Expedition.setEncountMeterKind=function(JyOmN)
CS.LuaMethod.Expedition_SetEncountMeterKind(JyOmN)end
Expedition.setAutoPlayEnabled=function(Gu2sqpyD)
CS.LuaMethod.Expedition_SetAutoPlayEnabled(Gu2sqpyD)end
Expedition.getNumOfDropItemsPickedUp=function()return
CS.LuaMethod.Expedition_GetNumOfDropItemsPickedUp()end
Expedition.enableStreetStoreCatalog=function(N_Pk)
CS.LuaMethod.SetEnableHudStreetCatalogExpedition(parent,N_Pk)end
Expedition.setEnableHudAlchemyExpedition=function(G_v887o0)
CS.LuaMethod.SetEnableHudAlchemyExpedition(parent,G_v887o0)end;Expedition.disableStaminaRecovery=function()
CS.LuaMethod.DisableStaminaRecovery()end
Expedition.setEnableExpeditionMemberHud=function(oiM7BRAl)
CS.LuaMethod.SetEnableExpeditionMemberHud(oiM7BRAl)end
Expedition.setEnableExpeditionMinimapHud=function(s4)
CS.LuaMethod.SetEnableExpeditionMinimapHud(s4)end
Expedition.hideRadarIcons=function(EF)CS.LuaMethod.HideRadarIcons(EF)end
Expedition.getAlternationLocation=function(wYFDyw8)wYFDyw8=wYFDyw8 or 0;local JyI=""local hncZR4my=""local KqeVtj=""
CS.LuaMethod.GetAlternationLocation(parent,wYFDyw8,function(LD,Q,QKTF34q3)
JyI=LD;hncZR4my=Q;KqeVtj=QKTF34q3 end)return JyI,hncZR4my,KqeVtj end
Expedition.switchAlternationParty=function(z,UD61M)z=z or 0;saveWayPoint=saveWayPoint or""return
CoroutineYield(CS.LuaMethod.SwitchAlternationParty(parent,z,UD61M))end
Expedition.setAlternationPartyEnable=function(Kmr_vDN,VJw9J2c)Kmr_vDN=Kmr_vDN or 0
CS.LuaMethod.SetAlternationPartyEnable(parent,Kmr_vDN,VJw9J2c)end
Expedition.hideAlternationPartyCharacters=function()
CS.LuaMethod.Expedition_HideAlternationPartyCharacters(parent,true)end
Expedition.restoreAlternationPartyCharacters=function()
CS.LuaMethod.Expedition_HideAlternationPartyCharacters(parent,false)end
Expedition.resetSavePointState=function(Q5oEQY)
CS.LuaMethod.Expedition_ResetSavePointState(parent,Q5oEQY)end
Expedition.resetGimmickState=function(eVzQHT)
CS.LuaMethod.Expedition_ResetGimmickState(parent,eVzQHT)end
Expedition.getPlacementStatus=function(bdl6box_)return
CS.LuaMethod.Expedition_GetPlacementStatus(parent,bdl6box_)end
Expedition.setSecretBossEvent=function(o,RMqe,c6H01I5a)return
CS.LuaMethod.Expedition_SetSecretBossEvent(parent,o,RMqe,c6H01I5a)end
Expedition.setDiscoveredAc11SecretBoss=function()return
CS.LuaMethod.Expedition_SetDiscoveredAc11SecretBoss()end
Expedition.setDefeatedAc11SecretBoss=function()return
CS.LuaMethod.Expedition_SetDefeatedAc11SecretBoss()end
Expedition.finishSecretRouteEvent=function(CuoodPvK)return
CS.LuaMethod.Expedition_FinishSecretRouteEvent(parent,CuoodPvK)end
Expedition.finishSecretBossReachEvent=function(e1iM)return
CS.LuaMethod.Expedition_FinishSecretBossReachEvent(parent,e1iM)end
Expedition.startSecretBossBattle=function(bN32Fa)return
CS.LuaMethod.Expedition_StartSecretBossBattle(parent,bN32Fa)end
Expedition.hideUI=function(Ub)return CS.LuaMethod.Expedition_HideUI(Ub)end
Expedition.setSavePointBalloonForeground=function(fQEH)return
CS.LuaMethod.Expedition_SetSavePointBalloonForeground(parent,fQEH)end
Expedition.setSavePointWarpEvent=function(_om,kEI4)if _om==nil then return end
CS.LuaMethod.Expedition_SetSavePointWarpCallback(parent,_om,kEI4)end
Expedition.enableTargetPointTouchListener=function(DSsD0,jRQUk)
CS.LuaMethod.Expedition_EnableTargetPointTouchListener(parent,DSsD0,jRQUk)end
Expedition.setAutoRouteCost=function(M,p_I,ka)
CS.LuaMethod.Expedition_SetAutoRouteCost(M,p_I,ka)end
Expedition.setAutoRouteEnable=function(OAvmrJ,i,BBJcTiAS,m7jWgGw)
CS.LuaMethod.Expedition_SetAutoRouteEnable(OAvmrJ,i,BBJcTiAS,m7jWgGw)end;Expedition.setIsAutoPlaying=function(cq)
CS.LuaMethod.Expedition_SetIsAutoPlaying(cq)end
Expedition.bindLuaObjectToPlacement=function(Mk3,jUhLQEm)
CS.LuaMethod.Expedition_BindLuaObjectToPlacement(parent,Mk3,jUhLQEm)end
Expedition.setGateExitCallback=function(Ed4qx,ZrR2o)
if Ed4qx==nil then return
CS.LuaMethod.Expedition_SetGateExitCallback(parent,Ed4qx,ZrR2o,false)end
return CS.LuaMethod.Expedition_SetGateExitCallback(parent,Ed4qx,ZrR2o)end
Expedition.setGateExitEventFuncName=function(_g,_NgROQrI)
CS.LuaMethod.Expedition_SetGateExitEventFuncName(parent,_g,_NgROQrI)end
Expedition.setGateEnterEventFuncName=function(_E8uiG0,SK)
CS.LuaMethod.Expedition_SetGateEnterEventFuncName(parent,_E8uiG0,SK)end
Expedition.goodEndAndShowResult=function(J7K570R)
Expedition.endAndShowResult(J7K570R,function()
CS.LuaMethod.ExpeditionGoodEnd()end)end
Expedition.trueEndAndShowResult=function(fDGKa)
Expedition.endAndShowResult(fDGKa,function()
CS.LuaMethod.ExpeditionTrueEnd()end)end
Expedition.endAndShowResult=function(Q,ZukFflVc)if Q==nil then Q=true end
UI.PushHudVisible("Expedition.endExpedition",false)
Field.startEvent("Expedition.endExpedition",false)if Q then Sound.playBGM("SB0010",1,0)end
local oJgQv=CS.LuaMethod.Expedition_GetCurrentExpeditionLabel()ZukFflVc()UI.showExpeditionResult(oJgQv)
Transition.start()Field.finishEvent(0,"Expedition.endExpedition")
Sound.stopBGM()UI.PopHudVisible("Expedition.endExpedition")
Exit_World()end