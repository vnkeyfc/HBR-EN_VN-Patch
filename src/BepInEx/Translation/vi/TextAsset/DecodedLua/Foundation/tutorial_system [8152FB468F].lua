local w0qyLbH=require'xlua.util'Tutorial={}
Tutorial.start=function()return
CS.LuaMethod.Tutorial_Start(parent)end
Tutorial.finish=function(nsgji)_AssertIsNotNull(nsgji)
CS.LuaMethod.Tutorial_End(parent,nsgji)end;Tutorial.flagSave=function()
CS.LuaMethod.Tutorial_FlagSave(parent)end;Tutorial.showMask=function()
CS.LuaMethod.Tutorial_SetMaskVisible(true)end;Tutorial.hideMask=function()
CS.LuaMethod.Tutorial_SetMaskVisible(false)end
Tutorial.setFocus=function(bClTIa)
_AssertIsNotNull(bClTIa)
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")CS.LuaMethod.Tutorial_SetFocus(bClTIa)end
Tutorial.setBattleMemberFocus=function(rDzL7SVO)if rDzL7SVO==0 then
rDzL7SVO=CS.LuaMethod.GetFrontMemberIndex()end
Tutorial.setFocus("Main/UIBattleMember/memberList/member"..rDzL7SVO..
"/container/iconContainer/tutorialFocusRect")end
Tutorial.showBattleMemberFocusButton=function(BW0WFP)if BW0WFP==0 then
BW0WFP=CS.LuaMethod.GetFrontMemberIndex()end
Tutorial.showFocusButton("Main/UIBattleMember/memberList/member"..BW0WFP..
"/container/iconContainer/btnChara",nil,nil,
"Main/UIBattleMember/memberList/member"..BW0WFP.."/container/iconContainer/tutorialFocusRect")end
Tutorial.setFocusRect=function(X8)_AssertIsNotNull(X8)
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")CS.LuaMethod.Tutorial_SetFocus(X8,false)end
Tutorial.setFocusArea=function(JQT,AtYtR,ND2BCh3,IODBg,YRDu)JQT=JQT or 0;AtYtR=AtYtR or 0;ND2BCh3=ND2BCh3 or 0;IODBg=IODBg or
0;YRDu=YRDu or""
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")
CS.LuaMethod.Tutorial_SetFocusArea(JQT,AtYtR,ND2BCh3,IODBg,true,YRDu)end
Tutorial.setFocusAreaRect=function(CWRiP,LB0A,dl,sKPjQkdn,HHH9IlJp)CWRiP=CWRiP or 0;LB0A=LB0A or 0;dl=dl or 0
sKPjQkdn=sKPjQkdn or 0;HHH9IlJp=HHH9IlJp or""
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")
CS.LuaMethod.Tutorial_SetFocusArea(CWRiP,LB0A,dl,sKPjQkdn,false,HHH9IlJp)end
Tutorial.showFocusButton=function(uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe)uYz2ryy4=uYz2ryy4 or""zVPRGDnG=zVPRGDnG or false;IKxw=
IKxw or 0;w0=w0 or""
if
(UgXzI_C==nil and MLFLplLe==nil)then
CS.LuaMethod.Tutorial_SetKeyGuideByPath(parent,uYz2ryy4)else
CS.LuaMethod.Tutorial_SetKeyGuide(parent,UgXzI_C,MLFLplLe,"")end
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusButton(uYz2ryy4,true,zVPRGDnG,IKxw,w0))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.showFocusButtonRect=function(jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj)jwq=jwq or""kw3ei0a=kw3ei0a or false
EspneS5=EspneS5 or 0;LZeg0=LZeg0 or""if(OJZ==nil and nmuj==nil)then
CS.LuaMethod.Tutorial_SetKeyGuideByPath(parent,jwq)else
CS.LuaMethod.Tutorial_SetKeyGuide(parent,OJZ,nmuj,"")end
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusButton(jwq,false,kw3ei0a,EspneS5,LZeg0))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.resetFocusShape=function()CS.LuaMethod.ResetFocusShape()end
Tutorial.isObjectActive=function(bP)bP=bP or""
return CS.LuaMethod.Tutorial_IsObjectActive(bP)end
Tutorial.setFocusScrollView=function(b4IqQW,iuGb,koZU)
CS.LuaMethod.Tutorial_SetFocusScrollView(b4IqQW,iuGb,koZU,true)end
Tutorial.setFocusScrollViewRect=function(C,nmJGp_,h0v3PIV)
CS.LuaMethod.Tutorial_SetFocusScrollView(C,nmJGp_,h0v3PIV,false)end
Tutorial.showFocusScrollViewButton=function(Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)qlZeO3Pr=qlZeO3Pr or false;fG9zS=fG9zS or 0
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusScrollViewButton(Uc,JSkUQL,PTUZ2v,true,qlZeO3Pr,fG9zS))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.showFocusScrollViewButtonRect=function(WiXG,QgyWztK,Oo6ecUO,b6SL0yka,hEk)b6SL0yka=b6SL0yka or false;hEk=hEk or 0
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusScrollViewButton(WiXG,QgyWztK,Oo6ecUO,false,b6SL0yka,hEk))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.setFocusActiveItemInScrollView=function(E8o,TdqFo)
CS.LuaMethod.Tutorial_SetFocusActiveItemInScrollView(E8o,TdqFo,true)end
Tutorial.setFocusActiveItemInScrollViewRect=function(ykLF0,cilhu)
CS.LuaMethod.Tutorial_SetFocusActiveItemInScrollView(ykLF0,cilhu,false)end
Tutorial.scrollRectScrollToObject=function(eVfN,LBIJ)
CS.LuaMethod.Tutorial_ScrollRectScrollToObject(eVfN,LBIJ)end
Tutorial.setMessage=function(CSSp,CBZIwYHI,x1vCS0,Herp)CBZIwYHI=CBZIwYHI or 0;x1vCS0=x1vCS0 or 0
CSSp=CSSp or""Herp=Herp or""
CS.LuaMethod.Tutorial_SetMessage(parent,CBZIwYHI,x1vCS0,CSSp,Herp)end
Tutorial.setTempKeyGuide=function(TNczSeT,Sb,_OwI)TNczSeT=TNczSeT or""Sb=Sb or""_OwI=_OwI or""
CS.LuaMethod.Tutorial_SetTempKeyGuide(parent,TNczSeT,Sb,_OwI)end
Tutorial.resetTempKeyGuide=function()
CS.LuaMethod.Tutorial_SetTempKeyGuide(parent,"","","")end
Tutorial.setKeyGuide=function(GBDhi2D,XDYs,JyOmN)GBDhi2D=GBDhi2D or""XDYs=XDYs or""JyOmN=JyOmN or""
CS.LuaMethod.Tutorial_SetKeyGuide(parent,GBDhi2D,XDYs,JyOmN)end
Tutorial.resetKeyGuide=function()
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.show=function()
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok")
CoroutineYield(CS.LuaMethod.Tutorial_WaitTap())
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.waitUIOpen=function(Gu2sqpyD,N_Pk,G_v887o0)_AssertIsNotNull(Gu2sqpyD)N_Pk=N_Pk or false;G_v887o0=
G_v887o0 or false
CoroutineYield(CS.LuaMethod.Tutorial_WaitUIOpen(Gu2sqpyD,N_Pk,G_v887o0))end
Tutorial.waitUIClose=function(oiM7BRAl,s4)_AssertIsNotNull(oiM7BRAl)s4=s4 or false
CoroutineYield(CS.LuaMethod.Tutorial_WaitUIClose(oiM7BRAl,s4))end
Tutorial.waitFastTravelScalingAnimation=function()
CoroutineYield(CS.LuaMethod.Tutorial_WaitFastTravelScalingAnimation())end
Tutorial.waitExpeditionMiniMapScalingAnimation=function()
CoroutineYield(CS.LuaMethod.Tutorial_ExpeditionMiniMapScalingAnimation())end
Tutorial.waitDenchoClose=function()
CoroutineYield(CS.LuaMethod.Tutorial_WaitMenuListClosed())end
Tutorial.waitSkillMenuOpen=function()
CoroutineYield(CS.LuaMethod.Tutorial_BattleSkillMenuOpen())end
Tutorial.enableEnhanceSwipe=function()
CS.LuaMethod.Tutorial_ChangeEnhanceCardSwipeEnable(true)end
Tutorial.disableEnhanceSwipe=function()
CS.LuaMethod.Tutorial_ChangeEnhanceCardSwipeEnable(false)end
Tutorial.enablePartySwipe=function()
CS.LuaMethod.Tutorial_ChangePartySwipeEnable(true)end
Tutorial.disablePartySwipe=function()
CS.LuaMethod.Tutorial_ChangePartySwipeEnable(false)end
Tutorial.enablePartyDetailCharacterSecondSwipe=function()
CS.LuaMethod.Tutorial_ChangePartyDetailCharacterSecondSwipeEnable(true)end
Tutorial.disablePartyDetailCharacterSecondSwipe=function()
CS.LuaMethod.Tutorial_ChangePartyDetailCharacterSecondSwipeEnable(false)end
Tutorial.showDialog=function(EF)_AssertIsNotNull(EF)
CoroutineYield(CS.LuaMethod.Tutorial_ShowDialog(parent,EF))end
Tutorial.handGuide=function(wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q)wYFDyw8=wYFDyw8 or 0;JyI=JyI or 0
hncZR4my=hncZR4my or 0;KqeVtj=KqeVtj or""LD=LD or""Q=Q or""
local QKTF34q3=CS.LuaMethod.Tutorial_ShowHandGuide(parent,wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q)Adv.hide(QKTF34q3)return QKTF34q3 end
Tutorial.waitGiftBoxSync=function()
CoroutineYield(CS.LuaMethod.Tutorial_GiftBoxWaitingSync())end
Tutorial.isGiftUnReceivableDialogVisible=function()local z=false
CoroutineYield(CS.LuaMethod.Tutorial_GiftBoxUnreceivable(function(UD61M)z=UD61M end))return z end
Tutorial.isGiftVanishingDialogVisible=function()local Kmr_vDN=false
CoroutineYield(CS.LuaMethod.Tutorial_GiftBoxVanishing(function(VJw9J2c)
Kmr_vDN=VJw9J2c end))return Kmr_vDN end
Tutorial.waitScrollMohHuntArea=function()
CoroutineYield(CS.LuaMethod.Tutorial_WaitScrollMobHuntArea())end
Tutorial.waitScrollMiniMap=function(Q5oEQY,eVzQHT)eVzQHT=eVzQHT or 0.4
CoroutineYield(CS.LuaMethod.Tutorial_WaitScrollMiniMap(Q5oEQY,eVzQHT))end
Tutorial.isReachableInternet=function()
return CS.LuaMethod.Tutorial_IsReachableInternet()end
Tutorial.isBlocked=function(bdl6box_)return CS.LuaMethod.IsBlocked(bdl6box_)end
Tutorial.isStyleEnhanceTutorialAvailable=function()
return
CS.LuaMethod.GetUserRecordValue(UserRecordType.EnhanceStyleAbilityCount)<1 end;Tutorial.hideTutorial=function()
return CS.LuaMethod.Tutorial_HideTutorial()end
Tutorial.moveToLastOfList=function()return
CS.LuaMethod.Tutorial_MoveToLastOfList()end
Tutorial.isProgress=function()return CS.LuaMethod.IsTutorialProgress()end
Tutorial.WaitUIInTop=function(o)
CoroutineYield(CS.LuaMethod.Tutorial_WaitUntilUIInTop(parent,o))end
Tutorial.Duel_showFocusHandCard=function(RMqe)RMqe=RMqe or 0
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok","")
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusDuelHandCard(RMqe,false))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.Duel_showFocusBoardCell=function(c6H01I5a,CuoodPvK)c6H01I5a=c6H01I5a or 0;CuoodPvK=CuoodPvK or 0
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"Next Page","pad_ok","")
CoroutineYield(CS.LuaMethod.Tutorial_SetFocusDuelBoardCell(c6H01I5a,CuoodPvK))
CS.LuaMethod.Tutorial_SetKeyGuide(parent,"","","")end
Tutorial.Duel_selectTargetCardForce=function(e1iM,bN32Fa,Ub,fQEH)bN32Fa=bN32Fa or 0;Ub=Ub or 0;fQEH=fQEH or 0
CS.LuaMethod.Tutorial_DuelForceSelectAuto(e1iM,bN32Fa,Ub,fQEH)end
Tutorial.Duel_waitInGame=function(_om,kEI4,DSsD0)
CoroutineYield(CS.LuaMethod.Tutorial_DuelWaitInGameStep(_om,kEI4,DSsD0))end
Tutorial.Duel_resetWaitInGame=function()
CS.LuaMethod.Tutorial_DuelResetWaitInGameStep()end