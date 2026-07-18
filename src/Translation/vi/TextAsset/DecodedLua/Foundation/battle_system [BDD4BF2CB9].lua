local bClTIa=require'xlua.util'Battle={}
Battle.waitLoadEnd=function()return
CoroutineYield(CS.LuaMethod.BattleWaitLoadEnd())end
Battle.waitEnemyAppearanceStart=function()return
CoroutineYield(CS.LuaMethod.BattleWaitEnemyAppearanceStart())end
Battle.waitStartEffectEnd=function()return
CoroutineYield(CS.LuaMethod.BattleWaitStartEffectEnd())end
Battle.waitDestroyEnd=function()return
CoroutineYield(CS.LuaMethod.BattleWaitDestroyEnd())end
Battle.waitPreCommandSelect=function(X8)X8=X8 or-99;return
CoroutineYield(CS.LuaMethod.BattleWaitPreCommandSelect(X8))end
Battle.waitPreCommandSelectIncludeSpecialTurn=function(JQT)JQT=JQT or-99;return
CoroutineYield(CS.LuaMethod.BattleWaitPreCommandSelectIncludeSpecialTurn(JQT))end
Battle.waitCommandSelect=function(AtYtR)AtYtR=AtYtR or-99;return
CoroutineYield(CS.LuaMethod.BattleWaitCommandSelect(AtYtR))end
Battle.waitPreEnemyTurnStart=function(ND2BCh3)ND2BCh3=ND2BCh3 or-99;return
CoroutineYield(CS.LuaMethod.BattleWaitPreEnemyTurnStart(ND2BCh3))end
Battle.waitPostPlayerTurn=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPostPlayerTurn())end
Battle.waitPostEnemyTurn=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPostEnemyTurn())end
Battle.waitPreResult=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPreResult())end
Battle.waitPostResult=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPostResult())end
Battle.waitAndPauseOnAttackEnd=function(IODBg)return
CoroutineYield(CS.LuaMethod.BattleWaitAndPauseOnAttack(IODBg))end
Battle.waitCondition=function(YRDu,CWRiP)return
CoroutineYield(CS.LuaMethod.BattleWaitCondition(YRDu,CWRiP))end
Battle.stopRestoringCharacterAfterAction=function(LB0A)return
CS.LuaMethod.stopRestoringCharacterAfterAction(LB0A)end;local rDzL7SVO=nil
Battle.startEvent=function()if rDzL7SVO~=nil then
Sound.endBattleAdvDucking(rDzL7SVO)end
CS.LuaMethod.BattleStartEvent()rDzL7SVO=Sound.startBattleAdvDucking()end
Battle.resumeEvent=function()CS.LuaMethod.BattleResumeEvent()
Sound.endBattleAdvDucking(rDzL7SVO)end
Battle.startEventWithOutBGMDucking=function()if rDzL7SVO~=nil then
Sound.endBattleAdvDucking(rDzL7SVO)end
CS.LuaMethod.BattleStartEvent()end
Battle.resumeEventWithOutBGMDucking=function()CS.LuaMethod.BattleResumeEvent()end
Battle.existUnfinishedBattleResume=function()
return CS.LuaMethod.ExistUnfinishedBattleResume()end
Battle.forceWin=function()CS.LuaMethod.BattleForceWin()end
Battle.forceLose=function()CS.LuaMethod.BattleForceLose()end
Battle.loadTimeline=function(dl)CS.LuaMethod.LoadLuaAsset(parent,dl)end
Battle.waitTimelineLoading=function(sKPjQkdn)
CoroutineYield(CS.LuaMethod.WaitLoadingLuaAsset(parent,sKPjQkdn))end
Battle.playTimeline=function(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0)
Battle.startTimeline(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0)end
Battle.playAndWaitTimeline=function(UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5)return
Battle.startAndWaitTimeline(UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5)end
Battle.startTimeline=function(LZeg0,OJZ,nmuj,bP,b4IqQW)OJZ=OJZ or BattleTeam.Enemy;nmuj=nmuj or
BattleTargetType.All;b4IqQW=b4IqQW or false
CS.LuaMethod.BattleStartTimeline(parent,LZeg0,OJZ,nmuj,bP,b4IqQW)end
Battle.startAndWaitTimeline=function(iuGb,koZU,C,nmJGp_,h0v3PIV)koZU=koZU or BattleTeam.Enemy;C=C or
BattleTargetType.All;h0v3PIV=h0v3PIV or false;return
CoroutineYield(CS.LuaMethod.BattleStartAndWaitTimeline(parent,iuGb,koZU,C,nmJGp_,h0v3PIV))end
Battle.prepareTimeline=function(Uc)return
CoroutineYield(CS.LuaMethod.BattlePrepareTimeline(parent,Uc))end
Battle.startTimelineName=function(JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)PTUZ2v=PTUZ2v or BattleTeam.Enemy;qlZeO3Pr=qlZeO3Pr or
BattleTargetType.All
CS.LuaMethod.BattleStartTimelineName(parent,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)end
Battle.startTimelineNameWithoutBind=function(WiXG)
CS.LuaMethod.BattleStartTimelineNameWithoutBind(parent,WiXG)end
Battle.startAndWaitTimelineName=function(QgyWztK,Oo6ecUO,b6SL0yka,hEk)Oo6ecUO=Oo6ecUO or BattleTeam.Enemy;b6SL0yka=
b6SL0yka or BattleTargetType.All;return
CoroutineYield(CS.LuaMethod.BattleStartAndWaitTimelineName(parent,QgyWztK,Oo6ecUO,b6SL0yka,hEk))end
Battle.startAndWaitTimelineNameWithoutBind=function(E8o)return
CoroutineYield(CS.LuaMethod.BattleStartAndWaitTimelineNameWithoutBind(parent,E8o))end
Battle.destroyAllTimeline=function()CS.LuaMethod.DestroyAllTimeline()end
Battle.destroyTimeline=function(TdqFo)CS.LuaMethod.DestroyTimeline(TdqFo)end
Battle.unloadTimeline=function(ykLF0)
CS.LuaMethod.BattleUnloadTimeline(parent,ykLF0)end
Battle.playSkill=function(cilhu,eVfN,LBIJ)
CS.LuaMethod.BattlePlaySkill(parent,cilhu,eVfN,LBIJ)end
Battle.playSkillAndWait=function(CSSp,CBZIwYHI,x1vCS0)return
CoroutineYield(CS.LuaMethod.BattlePlaySkillAndWait(parent,CSSp,CBZIwYHI,x1vCS0))end
Battle.preserveSkill=function(Herp,TNczSeT,Sb,_OwI,GBDhi2D)_OwI=_OwI or false;GBDhi2D=GBDhi2D or false;return
CoroutineYield(CS.LuaMethod.BattlePreserveSkill(parent,Herp,TNczSeT,Sb,_OwI,GBDhi2D))end
Battle.changeAnimation=function(XDYs,JyOmN,Gu2sqpyD,N_Pk)_AssertIsNotNull(XDYs)
_AssertIsNotNull(JyOmN)Gu2sqpyD=Gu2sqpyD or 0;N_Pk=N_Pk or-1.0
CS.LuaMethod.BattleChangeAnimation(XDYs,JyOmN,Gu2sqpyD,N_Pk)end
Battle.replaceAnimation=function(G_v887o0,oiM7BRAl,s4,EF)_AssertIsNotNull(G_v887o0)
_AssertIsNotNull(oiM7BRAl)_AssertIsNotNull(s4)EF=EF or 0
CS.LuaMethod.BattleReplaceAnimation(G_v887o0,oiM7BRAl,s4,EF)end
Battle.recoverEnemyArmor=function(wYFDyw8,JyI)wYFDyw8=wYFDyw8 or 0;JyI=JyI or 0.0
CS.LuaMethod.BattleRecoverEnemyArmor(wYFDyw8,JyI)end
Battle.changeMaterialProperty=function(hncZR4my,KqeVtj,LD,Q)_AssertIsNotNull(hncZR4my)
_AssertIsNotNull(KqeVtj)_AssertIsNotNull(LD)
CS.LuaMethod.BattleChangeMaterialProperty(hncZR4my,KqeVtj,LD,Q)end
Battle.changeMaterialPropertyColor=function(QKTF34q3,z,UD61M,Kmr_vDN)_AssertIsNotNull(QKTF34q3)
_AssertIsNotNull(z)_AssertIsNotNull(UD61M)
CS.LuaMethod.BattleChangeMaterialProperty(QKTF34q3,z,UD61M,Kmr_vDN.r,Kmr_vDN.g,Kmr_vDN.b,Kmr_vDN.a)end
Battle.changeMaterialKeyword=function(VJw9J2c,Q5oEQY,eVzQHT,bdl6box_)_AssertIsNotNull(VJw9J2c)
_AssertIsNotNull(Q5oEQY)_AssertIsNotNull(eVzQHT)
CS.LuaMethod.BattleChangeMaterialKeyword(VJw9J2c,Q5oEQY,eVzQHT,bdl6box_)end
Battle.resetPosition=function(o)CS.LuaMethod.BattleResetPosition(o)end
Battle.showPlayer=function(RMqe)RMqe=RMqe or-1
CS.LuaMethod.BattleShowPlayer(RMqe)end
Battle.showEnemy=function(c6H01I5a)c6H01I5a=c6H01I5a or-1
CS.LuaMethod.BattleShowEnemy(c6H01I5a)end
Battle.hidePlayer=function(CuoodPvK)CuoodPvK=CuoodPvK or-1
CS.LuaMethod.BattleHidePlayer(CuoodPvK)end;Battle.hideEnemy=function(e1iM)e1iM=e1iM or-1
CS.LuaMethod.BattleHideEnemy(e1iM)end;Battle.hideHud=function()
CS.LuaMethod.BattleHideHud()end;Battle.showHud=function()
CS.LuaMethod.BattleShowHud()end
Battle.specialStatus=function(bN32Fa,Ub,fQEH)
_AssertIsNotNull(bN32Fa)Ub=Ub or BattleTeam.Player;fQEH=fQEH or 0
CS.LuaMethod.BattleAddSpecialStatusDirectly(bN32Fa,Ub,fQEH)end
Battle.specialStatusV2=function(_om,kEI4,DSsD0)_AssertIsNotNull(_om)
kEI4=kEI4 or BattleTeam.Player;DSsD0=DSsD0 or 0
CS.LuaMethod.BattleAddSpecialStatusDirectlyV2(_om,kEI4,DSsD0)end
Battle.specialStatusForCharacter=function(jRQUk,M)_AssertIsNotNull(jRQUk)
CS.LuaMethod.BattleAddSpecialStatusDirectlyForCharacter(jRQUk,M)end
Battle.playSkillEffectAndWait=function(p_I,ka,OAvmrJ)_AssertIsNotNull(p_I)
ka=ka or BattleTeam.Player;OAvmrJ=OAvmrJ or-1;return
CoroutineYield(CS.LuaMethod.BattlePlaySkillEffectAndWait(parent,p_I,ka,OAvmrJ))end
Battle.playSkillEffectAndWaitForCharacter=function(i,BBJcTiAS)_AssertIsNotNull(i)return
CoroutineYield(CS.LuaMethod.BattlePlaySkillEffectAndWaitForCharacter(parent,i,BBJcTiAS))end
Battle.getCharacterLabel=function(m7jWgGw)
return CS.LuaMethod.BattleGetCharacterLabel(m7jWgGw)end;Battle.getEnemyLabel=function(cq)
return CS.LuaMethod.BattleGetEnemyLabel(cq)end
Battle.healDp=function(Mk3,jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI)
Mk3=Mk3;jUhLQEm=jUhLQEm or false;Ed4qx=Ed4qx or 1.0
ZrR2o=ZrR2o or BattleTargetType.Self;_g=_g or BattleTeam.Player;_NgROQrI=_NgROQrI or 0
CS.LuaMethod.BattleHealDp(Mk3,jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI)end
Battle.healHp=function(_E8uiG0,SK,J7K570R,fDGKa)_E8uiG0=_E8uiG0;SK=SK or BattleTargetType.Self;J7K570R=
J7K570R or BattleTeam.Player;fDGKa=fDGKa or 0
CS.LuaMethod.BattleHealHp(_E8uiG0,SK,J7K570R,fDGKa)end
Battle.damageRateOfMaxDp=function(Q,ZukFflVc,oJgQv,J8T)Q=Q
ZukFflVc=ZukFflVc or BattleTargetType.Self;oJgQv=oJgQv or BattleTeam.Player;J8T=J8T or 0
CS.LuaMethod.BattleDamageRateOfMaxDp(Q,ZukFflVc,oJgQv,J8T)end
Battle.damageRateOfMaxHp=function(Hc,yu,IbCB,ipjC14vX)Hc=Hc;yu=yu or BattleTargetType.Self;IbCB=IbCB or
BattleTeam.Player;ipjC14vX=ipjC14vX or 0
CS.LuaMethod.BattleDamageRateOfMaxHp(Hc,yu,IbCB,ipjC14vX)end
Battle.headGaugeForceAnimationLast=function()
CS.LuaMethod.BattleHeadGaugeForceAnimationLast()end
Battle.forceBreak=function(zr8xFL0,_QfE,hV8urDO,a)zr8xFL0=zr8xFL0 or BattleTargetType.Self;_QfE=
_QfE or BattleTeam.Player;hV8urDO=hV8urDO or 0
a=a or false
CS.LuaMethod.BattleForceBreak(zr8xFL0,_QfE,hV8urDO,a)end
Battle.playEnemyDeath=function(jv,v)jv=jv or BattleTargetType.All;v=v or 0;return
CoroutineYield(CS.LuaMethod.BattlePlayEnemyDeath(jv,v))end
Battle.forceSpMax=function(tA_,XRbckaF)tA_=tA_ or BattleTargetType.Self
XRbckaF=XRbckaF or 0;CS.LuaMethod.BattleForceSpMax(tA_,XRbckaF)end
Battle.pauseAttackAtEnd=function()CS.LuaMethod.PauseAttackAtEnd()end
Battle.unpauseAttack=function()CS.LuaMethod.UnpauseAttack()end
Battle.InactiveRECreature=function()CS.LuaMethod.InactiveRECreature()end
Battle.Conel=function(ruef)return CS.LuaMethod.BattleConel(ruef)end;Battle.disableMiniCutIn=function()
CS.LuaMethod.BattleDisableMiniCutIn()end;Battle.enableMiniCutIn=function()
CS.LuaMethod.BattleEnableMiniCutIn()end
Battle.setCutInCategory=function(rMVr1Ks)
CS.LuaMethod.BattleSetCutInCategory(rMVr1Ks)end
Battle.canUseOverDrive=function(zyXWQodW)
CS.LuaMethod.BattleCanUseOverDrive(zyXWQodW)end;Battle.chargeOverDrive=function(VmovH)
CS.LuaMethod.BattleChargeOverDrive(VmovH)end
Battle.playSkillBoardAnyText=function(Q)return
CoroutineYield(CS.LuaMethod.PlaySkillBoardAnyText(parent,Q))end;local BW0WFP
Battle.showAdvHud=function()if BW0WFP==nil then
BW0WFP=CS.LuaMethod.SetRunningNovel(parent,parent,nil,false,false)end end
Battle.hideAdvHud=function()if BW0WFP~=nil then
CS.LuaMethod.ResetRunningNovel(parent,BW0WFP)end;BW0WFP=nil end
Battle.showAdvHudWrapper=function(oGjJ)Adv.waitAsyncInstanceAll()
Layout.createStage()local G1BiG9x
G1BiG9x=CS.LuaMethod.SetVerticalLetterBox(parent)Battle.showAdvHud()Yield(oGjJ)
Battle.hideAdvHud()if G1BiG9x~=nil then
CS.LuaMethod.ResetVerticalLetterBox(parent,G1BiG9x)end end
Battle.forceOverDriveAndSpMax=function()Battle.chargeOverDrive(300)
Battle.forceSpMax(BattleTargetType.AllyAll,0)end
Battle.overrideSquadChangeCutIn=function(X3v,fJB,p96jR,Cd)X3v=X3v or""fJB=fJB or""p96jR=p96jR or""
Cd=Cd or 27
CS.LuaMethod.BattleOverrideSquadChangeCutIn(X3v,fJB,p96jR,Cd)end
Battle.waitPrePlayerFirstTransport=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPrePlayerFirstTransport())end
Battle.waitPreSkills=function(oVZ)return
CoroutineYield(CS.LuaMethod.BattleWaitPreSkills(oVZ))end
Battle.waitPreAnySkill=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPreAnySkill())end
Battle.waitPostAnySkill=function()return
CoroutineYield(CS.LuaMethod.BattleWaitPostAnySkill())end
Battle.waitContinue=function()return
CoroutineYield(CS.LuaMethod.BattleWaitContinue())end
Battle.waitResetEventHandler=function()return
CoroutineYield(CS.LuaMethod.BattleWaitResetEventHandler())end;Battle.addHideSubMenuFactor=function()
CS.LuaMethod.BattleAddHideSubMenuFactor()end;Battle.removeHideSubMenuFactor=function()
CS.LuaMethod.BattleRemoveHideSubMenuFactor()end
Battle.clearCount=function(JCPdH)return
CS.LuaMethod.Battle_ClearCount(JCPdH)end
Battle.isCleared=function(yt)return CS.LuaMethod.Battle_IsCleared(yt)end
Battle.isPlaying=function()return CS.LuaMethod.Battle_IsPlaying()end;Battle.destroyAllCharacterView=function()
CS.LuaMethod.BattleDestroyAllCharacterView()end;Battle.purgeSubPlayers=function()
CS.LuaMethod.BattleRemoveSubPlayers()end;Battle.purgeAllPlayers=function()
CS.LuaMethod.BattleRemoveAllPlayers()end;Battle.purgeEnemies=function()
CS.LuaMethod.BattleRemoveEnemies()end;Battle.purgeEnemy=function(qejbRWcX)
CS.LuaMethod.BattleRemoveEnemy(qejbRWcX)end
Battle.purgeAllCharacters=function()
Battle.purgeEnemies()Battle.purgeAllPlayers()end
Battle.reloadPlayers=function(lKi_v)lKi_v=lKi_v or false;return
CoroutineYield(CS.LuaMethod.BattleReloadPlayers(lKi_v))end
Battle.reloadEnemies=function()return
CoroutineYield(CS.LuaMethod.BattleReloadEnemies())end
Battle.reloadAllCharacters=function(WClwNvPI)WClwNvPI=WClwNvPI or false
Battle.reloadEnemies()Battle.reloadPlayers(WClwNvPI)end;Battle.setFieldEffectActive=function(Z)
CS.LuaMethod.Battle_SetFieldEffectActive(Z)end