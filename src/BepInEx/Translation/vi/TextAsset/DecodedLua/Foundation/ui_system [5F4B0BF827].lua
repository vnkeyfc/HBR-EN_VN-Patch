local w0qyLbH=require'xlua.util'UI={}
UI.shop=function(nsgji,bClTIa,rDzL7SVO)bClTIa=bClTIa or""
rDzL7SVO=rDzL7SVO or""
CoroutineYield(CS.LuaMethod.OpenShopMenu(parent,nsgji,bClTIa,rDzL7SVO))end
UI.varietyShop=function(BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg)local YRDu=w0qyLbH.cs_generator(ND2BCh3)
CoroutineYield(CS.LuaMethod.OpenVarietyShopMenu(parent,BW0WFP,X8,JQT,AtYtR,YRDu,IODBg))end;UI.cooking=function()
CoroutineYield(CS.LuaMethod.OpenCookingShop(parent))end
UI.gacha=function(CWRiP,LB0A,dl,sKPjQkdn)CWRiP=
CWRiP or""LB0A=LB0A or false;dl=dl or""sKPjQkdn=sKPjQkdn or""
CoroutineYield(CS.LuaMethod.OpenLotteryMenu(parent,CWRiP,LB0A,dl,sKPjQkdn))end
UI.party=function(HHH9IlJp)HHH9IlJp=HHH9IlJp or false
CoroutineYield(CS.LuaMethod.OpenPartyMenu(parent,HHH9IlJp))end
UI.preBattleParty=function(uYz2ryy4,zVPRGDnG,IKxw)uYz2ryy4=uYz2ryy4 or false;zVPRGDnG=zVPRGDnG or false;IKxw=
IKxw or""local w0=""
CoroutineYield(CS.LuaMethod.OpenPreBattlePartyMenu(parent,function(UgXzI_C)w0=UgXzI_C end,uYz2ryy4,zVPRGDnG,IKxw))return w0 end
UI.preBattleMultiParty=function(MLFLplLe)MLFLplLe=MLFLplLe or false;local jwq=""
CoroutineYield(CS.LuaMethod.OpenPreBattleMultiPartyMenu(parent,function(kw3ei0a)
jwq=kw3ei0a end,MLFLplLe))return jwq end
UI.cardEnhance=function(EspneS5,LZeg0)LZeg0=LZeg0 or false
CoroutineYield(CS.LuaMethod.OpenCardEnhanceMenu(parent,EspneS5,LZeg0))end
UI.daySelect=function(OJZ,nmuj)local OJZ=OJZ or false;local nmuj=nmuj or false
CoroutineYield(CS.LuaMethod.OpenDaySelect(parent,OJZ,nmuj))end;UI.linne=function()
CoroutineYield(CS.LuaMethod.OpenMessengerUI())end;UI.linneForAdv=function()
CoroutineYield(CS.LuaMethod.OpenMessengerUI(parent))end
UI.cardEnhanceSelect=function(bP)bP=
bP or false
CoroutineYield(CS.LuaMethod.OpenCardEnhanceSelectMenu(parent,bP))end
UI.arena=function(b4IqQW)local iuGb=b4IqQW or false;local koZU=""local C=1;local nmJGp_=""local h0v3PIV=function(Uc,JSkUQL,PTUZ2v)koZU=Uc;C=JSkUQL
nmJGp_=PTUZ2v end
CoroutineYield(CS.LuaMethod.OpenArena(parent,iuGb,h0v3PIV))return koZU,C,nmJGp_ end;UI.patrol=function()
CoroutineYield(CS.LuaMethod.OpenPatrol(parent))end
UI.gardenExpedition=function()
CoroutineYield(CS.LuaMethod.OpenGardenExpedition(parent))end
UI.showMessageDialog=function(qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)local fG9zS=fG9zS or 0;local WiXG=WiXG or 0;local QgyWztK=QgyWztK or""
local Oo6ecUO=Oo6ecUO or""if b6SL0yka==nil then b6SL0yka=true end;local hEk=nil
CoroutineYield(CS.LuaMethod.ShowMessageDialog(parent,qlZeO3Pr,fG9zS,WiXG,function(E8o)
hEk=E8o end,QgyWztK,Oo6ecUO,b6SL0yka))return hEk end
UI.showCustomButtonDialog=function(TdqFo,ykLF0,cilhu,eVfN,LBIJ,CSSp,CBZIwYHI,x1vCS0)local ykLF0=ykLF0 or 0;local LBIJ=LBIJ or 0;local CSSp=CSSp or""
local CBZIwYHI=CBZIwYHI or""local cilhu=cilhu or""local eVfN=eVfN or""
if x1vCS0 ==nil then x1vCS0=true end;local Herp=nil
CoroutineYield(CS.LuaMethod.ShowCustomButtonDialog(parent,TdqFo,ykLF0,LBIJ,function(TNczSeT)Herp=TNczSeT end,CSSp,CBZIwYHI,x1vCS0,cilhu,eVfN))return Herp end
UI.showSelectiveDialog=function(Sb,_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk)local _OwI=_OwI or 0;local GBDhi2D=GBDhi2D or""local XDYs=XDYs or 0
local G_v887o0=-1;local oiM7BRAl=0;local JyOmN=JyOmN or""local Gu2sqpyD=Gu2sqpyD or""
if N_Pk==nil then N_Pk=true end
CoroutineYield(CS.LuaMethod.ShowSelectiveDialog(parent,Sb,_OwI,GBDhi2D,XDYs,function(s4)G_v887o0=s4 end,oiM7BRAl,JyOmN,Gu2sqpyD,N_Pk))return G_v887o0 end
UI.showMultipleSelectiveDialog=function(EF,wYFDyw8,JyI,hncZR4my,KqeVtj,LD)local wYFDyw8=wYFDyw8 or 0;local JyI=JyI or""
local hncZR4my=hncZR4my or 0;local Q=false;local QKTF34q3=null;local z=1;local KqeVtj=KqeVtj or""local LD=LD or""
CoroutineYield(CS.LuaMethod.ShowSelectiveDialog(parent,EF,wYFDyw8,JyI,hncZR4my,function(UD61M)
QKTF34q3=UD61M;Q=QKTF34q3 ~=null end,z,KqeVtj,LD))return Q,QKTF34q3 end
UI.showImageDialog=function(Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_)local eVzQHT=eVzQHT or 0;local Q5oEQY=Q5oEQY or""
local bdl6box_=bdl6box_ or 0;local o=nil
CoroutineYield(CS.LuaMethod.ShowImageDialog(parent,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_,function(RMqe)o=RMqe end))return o end
UI.showDeckRuleCautionDialog=function()local c6H01I5a=nil
CoroutineYield(CS.LuaMethod.ShowDeckRuleCautionDialog(parent,function(CuoodPvK)
c6H01I5a=CuoodPvK end))return c6H01I5a end
UI.showDeckRuleWarningDialog=function()local e1iM=nil
CoroutineYield(CS.LuaMethod.ShowDeckRuleWarningDialog(parent,function(bN32Fa)e1iM=bN32Fa end))return e1iM end
UI.showLocationTitle=function(Ub,fQEH,_om)local Ub=Ub or""local fQEH=fQEH or""local _om=_om or 2;Wait(0.5)
CoroutineYield(CS.LuaMethod.ShowLocationTitle(parent,Ub,fQEH,_om))end
UI.showNotification=function(kEI4,DSsD0)local DSsD0=DSsD0 or 2.0
Routine(function()
CoroutineYield(CS.LuaMethod.ShowNotification(parent,kEI4,DSsD0))end)end
UI.showSixSenseDialog=function()
CoroutineYield(CS.LuaMethod.ShowSixSenseDialog(parent))end
UI.validateActivitySixSense=function(jRQUk)local M=nil
CoroutineYield(CS.LuaMethod.ValidateActivitySixSense(parent,jRQUk,function(p_I)M=p_I end))return M end
UI.showActivityConfirmDialog=function(ka,OAvmrJ)local i=nil
CoroutineYield(CS.LuaMethod.ShowActivityConfirmDialog(parent,ka,function(BBJcTiAS)i=BBJcTiAS end,OAvmrJ))return i end
UI.operationSelectPlace=function()local m7jWgGw=nil
CoroutineYield(CS.LuaMethod.OpenOperationSelectPlaceMenu(parent,function(cq)m7jWgGw=cq end))return m7jWgGw end
UI.operationSelect=function(Mk3,jUhLQEm)local Ed4qx=nil
CoroutineYield(CS.LuaMethod.OpenOperationSelectMenu(parent,Mk3,function(ZrR2o)Ed4qx=ZrR2o end,false,false,jUhLQEm))return Ed4qx end
UI.operationSelectForArena=function(_g,_NgROQrI)local _E8uiG0=nil
CoroutineYield(CS.LuaMethod.OpenOperationSelectMenu(parent,_g,function(SK)_E8uiG0=SK end,true,true,_NgROQrI))return _E8uiG0 end
UI.showExpeditionResult=function(J7K570R)
CoroutineYield(CS.LuaMethod.ShowOperationResult(parent,J7K570R))end
UI.showLineInfo=function(fDGKa,Q,ZukFflVc,oJgQv)Q=Q or 1.0;ZukFflVc=ZukFflVc or 3
if oJgQv==nil then oJgQv=true end
CoroutineYield(CS.LuaMethod.ShowLineInfo(parent,fDGKa,Q,ZukFflVc,oJgQv))end
UI.showGrantedCard=function(J8T,Hc)if Hc==null then Hc=true end
CoroutineYield(CS.LuaMethod.ShowGrantedCard(parent,J8T,Hc))end
UI.unreceivableMessageDialog=function(yu,IbCB)if IbCB==null then IbCB=true end
UI.showQuestUnreceivableDialog(yu)if Quest.isActiveCondition(yu)and IbCB then
UI.showSixSenseDialog()end end
UI.terminalHome=function(ipjC14vX,zr8xFL0,_QfE,hV8urDO,a)local jv=""local v=""local tA_=nil;local XRbckaF=1;local ruef=nil;ipjC14vX=ipjC14vX or 0
local _QfE=_QfE or""local hV8urDO=hV8urDO or""local rMVr1Ks=0;local zyXWQodW=0;local VmovH=false;local Q=""local oGjJ=false
local G1BiG9x=false;local X3v=""local fJB=""local p96jR=function(WClwNvPI)jv=WClwNvPI end
local Cd=function(Z,F1kNUeep,VGNf90M,DTra)v=Z
tA_=F1kNUeep;XRbckaF=VGNf90M;ruef=DTra end
local oVZ=function(Kfl,a6QNS6,QS)v=Kfl;tA_=a6QNS6;XRbckaF=QS end;local JCPdH=function(Wd)rMVr1Ks=Wd end
local yt=function(__q,o1isr9N,f,_a4il)v=__q;XRbckaF=o1isr9N;zyXWQodW=f
VmovH=_a4il end
local qejbRWcX=function(Fsy,o5EML,gU)Q=Fsy;oGjJ=o5EML;G1BiG9x=gU end
local lKi_v=function(JkLOu38,rJeSR,Qsn1Mp,GT4)v=JkLOu38;X3v=rJeSR;tA_=Qsn1Mp;fJB=GT4 end
CoroutineYield(CS.LuaMethod.OpenTerminalHome(parent,p96jR,Cd,oVZ,a,_QfE,hV8urDO,JCPdH,yt,qejbRWcX,lKi_v,ipjC14vX,zr8xFL0))return jv,v,tA_,XRbckaF,ruef,rMVr1Ks,zyXWQodW,VmovH,Q,oGjJ,G1BiG9x,X3v,fJB end
UI.closeLinne=function()CS.LuaMethod.CloseLinneMenu()end
UI.showStartFreeTimeInfo=function()
CoroutineYield(CS.LuaMethod.ShowCircleInfo(parent))end
UI.BadEnd=function(rg7e)if rg7e==nil then rg7e=true end
CoroutineYield(CS.LuaMethod.ShowBadEnd(parent,rg7e))end
UI.EndlessLoop=function(cWGq)if cWGq==nil then cWGq=true end
CoroutineYield(CS.LuaMethod.ShowEndlessLoop(parent,cWGq))end
UI.GameOver=function(Xe35l,L,x)if Xe35l==nil then Xe35l=true end;if x==nil then x=false end;L=L or 0
local tnnCl=false
CoroutineYield(CS.LuaMethod.ShowGameOver(parent,Xe35l,L,x,function(K)tnnCl=K end))return tnnCl end
UI.GameOverV2=function(T06zarEG,_pYwz9W)_pYwz9W=_pYwz9W or 0;local pPhf=false
CoroutineYield(CS.LuaMethod.ShowGameOverV2(parent,T06zarEG,_pYwz9W,function(UitKjKg)
pPhf=UitKjKg end))return pPhf end
UI.GameOverV2Custom=function(u6NC,QsGa,W8os4zeu,iqGT3,iylQPau,miJYM)QsGa=QsGa or 0;local I=-1
local Tq9Ac2=function(BIriYV3u)I=BIriYV3u end
CoroutineYield(CS.LuaMethod.ShowGameOverV2Custom(parent,u6NC,QsGa,W8os4zeu,Tq9Ac2,iqGT3,iylQPau,miJYM))return I end
UI.communicationSelect=function()
CoroutineYield(CS.LuaMethod.OpenCommunicationSelect(parent))end
UI.checkAndShowLoginBonus=function()
CoroutineYield(CS.LuaMethod.CheckAndShowLoginBonus(parent))end
UI.showQuestUnreceivableDialog=function(te)
CoroutineYield(CS.LuaMethod.showUnreceivableMessageDialog(parent,te))end;UI.gallery=function()
CoroutineYield(CS.LuaMethod.OpenGallery(parent))end
UI.playMovie=function(J4F6,Xx0pC)
CoroutineYield(CS.LuaMethod.PlayMovie(parent,J4F6,Xx0pC))end
UI.prepareMoviePlayer=function(yX5i,Eq)
CoroutineYield(CS.LuaMethod.PrepareMoviePlayer(parent,yX5i,Eq))end
UI.startMovie=function(Pj6PhX,iT1M,M5,sqDj,iehV7hMo)sqDj=sqDj or 1;if iehV7hMo==nil then iehV7hMo=true end;if
iT1M==nil then iT1M=false end
CoroutineYield(CS.LuaMethod.StartMovie(parent,Pj6PhX,sqDj,iehV7hMo,iT1M,M5))end
UI.startMovieV2=function(qHrfq6,v5R,Ys,Q,FaXF0EYn)FaXF0EYn=FaXF0EYn or 0;if Q==nil then Q=true end
if v5R==nil then v5R=false end
CoroutineYield(CS.LuaMethod.StartMovie(parent,qHrfq6,FaXF0EYn,Q,v5R,Ys))end
UI.stopMovie=function(DytHsRmu,P)P=P or 1;CS.LuaMethod.StopMovie(DytHsRmu,P)end
UI.stopMovieV2=function(yRLNI,RHXu4t)RHXu4t=RHXu4t or 0
CS.LuaMethod.StopMovie(yRLNI,RHXu4t)end
UI.removeMoviePlayer=function(CaPMHK)CS.LuaMethod.RemoveMoviePlayer(CaPMHK)end
UI.waitMoviePlayEnd=function(Ap3zqG5d)
CoroutineYield(CS.LuaMethod.WaitMoviePlayEnd(Ap3zqG5d))end
UI.playMovieAfterTransition=function(QZOIU,Yzu9D,E0U)
CoroutineYield(CS.LuaMethod.PlayMovieAfterTransition(parent,QZOIU,Yzu9D,E0U))end
UI.showStaminaHud=function()return CS.LuaMethod.ShowStaminaHud(parent)end
UI.hideStaminaHud=function(WPn)if WPn~=nil then
CS.LuaMethod.HideStaminaHud(parent,WPn)end end;UI.forceEnableHudMenu=function(UfEH)
CS.LuaMethod.ForceEnableHudMenu(parent,UfEH)end;UI.forceEnableHudGacha=function(z0)
CS.LuaMethod.ForceEnableHudGacha(parent,z0)end
UI.forceEnableHudMission=function(BK19)
CS.LuaMethod.ForceEnableHudMission(parent,BK19)end;UI.forceEnableHudHome=function(I)
CS.LuaMethod.ForceEnableHudHome(parent,I)end
UI.showActivityStartDialog=function(ubw,f)local yaA2f=
nil
CoroutineYield(CS.LuaMethod.ShowActivityStartDialog(parent,ubw,function(wjQXn79)yaA2f=wjQXn79 end,f))return yaA2f end
UI.showActivityMultipleSelectDialog=function()local C1=nil;local hdr=0
CoroutineYield(CS.LuaMethod.ShowActivityMultipleSelectDialog(parent,function(tvO,Q)
C1=tvO;hdr=Q end))return C1,hdr end;UI.GoToFreetime=function()
CoroutineYield(CS.LuaMethod.GoToFreetime(parent))end
UI.prismBattleList=function()
local LfHYQg=""
CoroutineYield(CS.LuaMethod.ShowPrismBattleList(parent,function(R)LfHYQg=R end))return LfHYQg end
UI.PushHudVisible=function(DKu3,VAaGt)
CS.LuaMethod.PushHudVisible(parent,DKu3,VAaGt)end
UI.PopHudVisible=function(G1PwhyG)CS.LuaMethod.PopHudVisible(G1PwhyG)end
UI.getChapterTitle=function(G)return CS.LuaMethod.GetChapterTitle(G)end
UI.ShowHomeNovelLottery=function(fe)
CoroutineYield(CS.LuaMethod.OpenHomeNovelLotteryState(parent,fe))end
UI.ShowDayFlowEffect=function(MFUc,V9,iT)local OZEQxah_;MFUc=MFUc or-20;V9=V9 or 0.3;iT=iT or"Normal"
CoroutineYield(CS.LuaMethod.ShowDayFlowEffect(parent,function(o8I7)
OZEQxah_=o8I7 end,MFUc,V9,iT))return OZEQxah_ end
UI.SetDayFlowEffect=function(T57hH4r,k,Tx2)T57hH4r=T57hH4r or-20;k=k or 0.3;Tx2=Tx2 or"Normal"
CoroutineYield(CS.LuaMethod.SetDayFlowEffect(T57hH4r,k,Tx2))end
UI.BeginDayTransition=function()
CoroutineYield(CS.LuaMethod.BeginDayTransitionEffect())end
UI.EndDayTransition=function(B)
CoroutineYield(CS.LuaMethod.EndDayTransitionEffect(B))end
UI.RotateDayTransition=function(Yt6V4Y,n,ZNChA)
CoroutineYield(CS.LuaMethod.RotateDayTransitionEffect(Yt6V4Y,n,ZNChA))end
UI.ShowActionMenu=function(VufPd)local FWsorpKS
CoroutineYield(CS.LuaMethod.ShowActionMenu(parent,function(zuZa)FWsorpKS=zuZa end,VufPd))return FWsorpKS end
UI.HideActionMenu=function(M)if M~=nil then
CS.LuaMethod.HideActionMenu(parent,M)end end
UI.SetEnableActionMenu=function(vI,_ogR)if vI~=nil then
CS.LuaMethod.SetEnableActionMenu(parent,vI,_ogR)end end;UI.jewelShop=function(g)
CoroutineYield(CS.LuaMethod.OpenJewelShop(parent,g))end;UI.battleResult=function()
CoroutineYield(CS.LuaMethod.OpenBattleResult(parent))end
UI.SetDenchoHandAlpha=function(n69tv)n69tv=
n69tv or 1
CS.LuaMethod.SetDenchoHandAlpha(n69tv)end;UI.live=function()
CoroutineYield(CS.LuaMethod.OpenLive(parent))end
UI.dimensionBattle=function()
local z;local VKJxwOdv;local IplgjH8v;local MB6jIC
CoroutineYield(CS.LuaMethod.OpenDimensionBattleTop(parent,function(h4OlVtn,E0,eLMg,mVjDTYYb)z=h4OlVtn;VKJxwOdv=E0
IplgjH8v=eLMg;MB6jIC=mVjDTYYb end))return z,VKJxwOdv,IplgjH8v,MB6jIC end;UI.Diorama=function()
CoroutineYield(CS.LuaMethod.OpenDiorama(parent))end;UI.arcade=function()
CoroutineYield(CS.LuaMethod.OpenArcade(parent))end
UI.ShowEventInductionMessageDialog=function(l8,T,EME,nudgGJ,XRN5ln,D4MiUjQ)
local j;local D4MiUjQ=D4MiUjQ or""
CoroutineYield(CS.LuaMethod.ShowEventInductionMessageDialog(parent,l8,T,EME,nudgGJ,XRN5ln,D4MiUjQ,function(nN)
j=nN end))return j end
UI.getMissionReceiveState=function(gt2)
return CS.LuaMethod.GetMissionReceiveState(gt2)end
UI.ReceiveMissionReward=function(lF)
CoroutineYield(CS.LuaMethod.ReceiveMissionReward(parent,lF))end
UI.ShowAdvStaminaGauge=function(s8s3)local R
CoroutineYield(CS.LuaMethod.ShowAdvStaminaGauge(parent,function(h4xbyHiS)R=h4xbyHiS end,s8s3))return R end
UI.HideAdvStaminaGauge=function(D)if D~=nil then
CS.LuaMethod.HideAdvStaminaGauge(parent,D)end end
UI.PlayAdvStaminaGauge=function(fk,EJi,xV_7,Z)if fk~=nil then if Z==nil then Z=true end
CS.LuaMethod.PlayAdvStaminaGauge(parent,fk,EJi,xV_7,Z)end end
UI.showEventBattleDefeatDialog=function(N4WulQix)N4WulQix=N4WulQix or""
CoroutineYield(CS.LuaMethod.ShowEventBattleDefeatDialog(parent,N4WulQix,function(gUl6)
key=gUl6 end))return key end
UI.showThreeButtonDialog=function(UsFp_,oRv9KOBG,SOGQ,m,RVaYv,N,rYuUO8L,Vsz7u)Vsz7u=Vsz7u or""N=N or false
if rYuUO8L==nil then rYuUO8L=true end
CoroutineYield(CS.LuaMethod.ShowThreeButtonDialog(parent,Vsz7u,UsFp_,oRv9KOBG,SOGQ,m,RVaYv,N,rYuUO8L,function(_X0FlsZf)key=_X0FlsZf end))
if key=="btnL"then return SOGQ elseif key=="btnC"then return m elseif key=="btnR"then return RVaYv end;return key end
UI.showEventDifficultyDialog=function(VuG9Ic,H,a,ZBZWd,gPir)VuG9Ic=VuG9Ic or""H=H or 0;a=a or 0;ZBZWd=ZBZWd or 0;if gPir==
nil then gPir=true end
CoroutineYield(CS.LuaMethod.ShowEventDifficultyDialog(parent,VuG9Ic,function(dUg9_Y)
key=dUg9_Y end,H,a,ZBZWd,gPir))return key end
UI.showEventDifficultyDialogEx=function(O,e8eXevG,pT8,VJvm,Wp40V81,AQWsvIDp,w5f,kZcF,aoK)O=O or""e8eXevG=e8eXevG or 0;pT8=pT8 or 0
VJvm=VJvm or 0;if kZcF==nil then kZcF=true end;Wp40V81=Wp40V81 or""
AQWsvIDp=AQWsvIDp or""w5f=w5f or""aoK=aoK or 0
CoroutineYield(CS.LuaMethod.ShowEventDifficultyDialog(parent,O,function(FZ_U)key=FZ_U end,e8eXevG,pT8,VJvm,kZcF,Wp40V81,AQWsvIDp,w5f,aoK))return key end
UI.showEventDifficultyDialog4Choices=function(nAu,JM,R,sEGF,Bcu,V,nrZMM)nAu=nAu or""JM=JM or 0;R=R or 0;sEGF=sEGF or 0
Bcu=Bcu or 0;if V==nil then V=true end;nrZMM=nrZMM or 0
CoroutineYield(CS.LuaMethod.ShowEventDifficultyDialog4Choices(parent,nAu,function(l)
key=l end,JM,R,sEGF,Bcu,V,nrZMM))return key end
UI.showEventDifficultyDialogForStoryLive=function(_hG,zJ,iPZXbV_)_hG=_hG or""if zJ==nil then zJ=true end
iPZXbV_=iPZXbV_ or 0
CoroutineYield(CS.LuaMethod.ShowEventDifficultyDialogForStoryLive(parent,_hG,function(ERW)key=ERW end,zJ,iPZXbV_))return key end
UI.showEventScoreResult=function(iV,IMtBU7,UMf9U,ZfmUYm,K,NM9TK,z966let,l,B1,dntR0Y,jWQN,g)g=g or""dntR0Y=dntR0Y or"AC13"jWQN=jWQN or 3
CoroutineYield(CS.LuaMethod.ShowEventScoreResult(parent,iV,IMtBU7,UMf9U,ZfmUYm,K,NM9TK,z966let,l,B1,g,jWQN))
CoroutineYield(CS.LuaMethod.GrantEventScoreReward(parent,dntR0Y,IMtBU7))end
UI.ShowFishingTimeInfo=function()
CoroutineYield(CS.LuaMethod.ShowFishingTimeInfo(parent))end
UI.ShowFishingReactionIcon=function(RVJE,aoBlB,bt)aoBlB=aoBlB or"Head"bt=bt or 0
CoroutineYield(CS.LuaMethod.ShowFishingReactionIcon(parent,RVJE,aoBlB,bt))end
UI.ShowFishingHitGuide=function()local L
CoroutineYield(CS.LuaMethod.ShowFishingHitGuide(parent,function(Z)L=Z end))return L end;UI.RemoveFishingHitGuide=function(iq)
CS.LuaMethod.RemoveFishingHitGuide(parent,iq)end
UI.iceCandyShop=function(H9Vaxrqz,W04CjCI)
local uGslzNO="Cancel"local W04CjCI=W04CjCI or"買っていっしゃい！！"
CoroutineYield(CS.LuaMethod.OpenIceCandyShop(parent,H9Vaxrqz,W04CjCI))end
UI.ElectroCardiogramBadEnd=function()
CoroutineYield(CS.LuaMethod.ShowElectroCardiogramBadEnd(parent))end
UI.showCCLocationTitle=function(WEs6,NXW)local NXW=NXW or 2;Wait(0.5)
CoroutineYield(CS.LuaMethod.ShowCCLocationTitle(parent,WEs6,NXW))end
UI.flyerNumSelect=function(GGnKhb,ongv3O,UOrfZxe,Ga35Z)local afSY2kYq
CoroutineYield(CS.LuaMethod.OpenFlyerNumSelect(parent,GGnKhb,ongv3O,UOrfZxe,Ga35Z,function(UpJB)afSY2kYq=UpJB end))
if not afSY2kYq then
local F=Domain.AC14_GetTotalStoryStreetStoreInfo()Domain.AC14_GetReputeValue(F.flyerConsumedGpNum)end;return afSY2kYq end
UI.itemCreation=function(xpw)local ehC5
CoroutineYield(CS.LuaMethod.OpenItemCreation(parent,xpw,function(cZd7sYj)ehC5=cZd7sYj end))return ehC5 end
UI.ShowElectroCardiogramEffect=function()local NfOm1d
CoroutineYield(CS.LuaMethod.ShowElectroCardiogramEffect(parent,function(do1)NfOm1d=do1 end))return NfOm1d end
UI.HideElectroCardiogramEffect=function(CUiwrelt)if CUiwrelt~=nil then
CS.LuaMethod.HideElectroCardiogramEffect(parent,CUiwrelt)end end
UI.streetStoreSettlement=function()
local bUDT3=Domain.AC14_GetTotalStoryStreetStoreInfo("AC14")local RcmJI=Domain.AC14_GetStoryStreetStoreInfo()
local PcsTnXqr=Domain.AC14_GetReputeRank(bUDT3)local idNXnq=GetFlag("六宇亜イベント_beforeRank")
CoroutineYield(CS.LuaMethod.OpenStreetStoreSettlement(parent,RcmJI.customerNum,RcmJI.satisfiedDemandNum,idNXnq,PcsTnXqr,RcmJI.earning,Domain.AC14_GetGP()))end;UI.showStoreOpen=function()
CoroutineYield(CS.LuaMethod.ShowStoreOpen(parent))end
UI.showStoreClose=function(V)V=
V or 3
CoroutineYield(CS.LuaMethod.ShowStoreClose(parent,V))end
UI.showStreetStoreScoreResult=function(k,Y,lGWhP,AqxSe0i,qB_G,o)qB_G=qB_G or"AC14"o=o or""
CoroutineYield(CS.LuaMethod.ShowStreetStoreScoreResult(parent,k,Y,lGWhP,AqxSe0i,o))
CoroutineYield(CS.LuaMethod.GrantEventScoreReward(parent,qB_G,AqxSe0i))end
UI.showStreetStorePreparation=function(oBxd9Bs)oBxd9Bs=oBxd9Bs or 1
local rmPi08c=Domain.AC14_salesOpportunity()local y
CoroutineYield(CS.LuaMethod.ShowStreetStorePreparation(parent,oBxd9Bs,math.floor(rmPi08c),function(xyN90MRI)y=xyN90MRI end))return y end
UI.streetStoreCatalog=function()
CoroutineYield(CS.LuaMethod.OpenStreetStoreCatalog(parent))end
UI.showStreetStore=function(NJOJL)local NJOJL=NJOJL or 0
local VLa=Domain.AC14_salesOpportunity()
return CS.LuaMethod.StreetStore_Show(parent,NJOJL,math.floor(VLa))end
UI.streetStoreSold=function(QlJ,R4RmFFgy,e,Wu)
CoroutineYield(CS.LuaMethod.StreetStore_Sold(parent,QlJ,R4RmFFgy,e,Wu))end
UI.streetStoreSkipping=function(v6TQ)local r4LGuiR3=false
CoroutineYield(CS.LuaMethod.StreetStore_IsSkipping(parent,v6TQ,function(HXjb)r4LGuiR3=HXjb end))return r4LGuiR3 end
UI.hideStreetStore=function(_bmf5tSQ)
CoroutineYield(CS.LuaMethod.StreetStore_Hide(parent,_bmf5tSQ))end
UI.enableStreetStoreCatalog=function(uckdc)
CS.LuaMethod.SetEnableHudStreetCatalog(parent,uckdc)end
UI.setEnableHudAlchemy=function(oW3kmm)
CS.LuaMethod.SetEnableHudAlchemy(parent,oW3kmm)end
UI.showStoryLiveTotalResult=function(fLQt,DEq3bN,tcxhx,w9)w9=w9 or""
CoroutineYield(CS.LuaMethod.ShowStoryLiveTotalResult(parent,tcxhx,fLQt,w9))
CoroutineYield(CS.LuaMethod.GrantEventScoreReward(parent,fLQt,DEq3bN))end
UI.announcement=function(_Fm)
CoroutineYield(CS.LuaMethod.OpenAnnouncement(parent,_Fm))end
UI.showJukeboxDialog=function(ngLY6QaP,ha,ew4,mqHQUP)if mqHQUP==nil then mqHQUP=true end;local WQAcK=-1;local xoVjTpqN="cancel"
CoroutineYield(CS.LuaMethod.ShowJukeboxDialog(parent,ngLY6QaP,ha,ew4,function(t,yhgPg)
WQAcK=t;xoVjTpqN=yhgPg end,mqHQUP))return xoVjTpqN,WQAcK end
UI.setSneekingMoveAction=function(kegFrH)
CS.LuaMethod.SetSneekingMoveAction(parent,function()
if kegFrH then Routine(kegFrH)end end)end
UI.setSneekingWarpAction=function(N)
CS.LuaMethod.SetSneekingWarpAction(parent,function()if N then Routine(N)end end)end
UI.setSneekingHideAction=function(QQHuFb4H)
CS.LuaMethod.SetSneekingHideAction(parent,function()
if QQHuFb4H then Routine(QQHuFb4H)end end)end
UI.showPurchaseItemLineInfo=function(O,N3p,hVHqL,Jj,lM92c)hVHqL=hVHqL or 1.83;Jj=Jj or 2
if lM92c==nil then lM92c=true end
CoroutineYield(CS.LuaMethod.ShowPurchaseItemLineInfo(parent,O,N3p,hVHqL,Jj,lM92c))end
UI.setDayResultEnable=function(hX)hX=hX or false
CoroutineYield(CS.LuaMethod.SetDayResultTouchEnable(parent,hX))end
UI.showTerminalHomeBackground=function()local c9asjuf=""
CoroutineYield(CS.LuaMethod.ShowTerminalHomeBackground(parent,function(NY)c9asjuf=NY end))return c9asjuf end
UI.setActiveTerminalHomeBackground=function(P,b71)local b71=b71 or false
CS.LuaMethod.SetActiveTerminalHomeBackground(parent,P,b71)end
UI.ShowEventRecommendDialog=function(jolgqe)local A76;local jolgqe=jolgqe or""
CoroutineYield(CS.LuaMethod.ShowEventRecommendDialog(parent,jolgqe,function(F)
A76=F end))return A76 end
UI.ShowDayResultUI=function(D,P,_3R35U,lu,si)local kv;local D=D or""local P=P or false;local lu=lu or""
local _3R35U=_3R35U or false;local si=si or""
CoroutineYield(CS.LuaMethod.ShowDayResultUI(parent,D,function(rc)kv=rc end,P,_3R35U,lu,si))return kv end
UI.HideDayResultUI=function(gcAHqYcp)
CoroutineYield(CS.LuaMethod.HideDayResultUI(parent,gcAHqYcp))end
UI.ResultUI=function(_Vj8aHEp,e7EcZQ,GtaGY)
GtaGY=GtaGY or"Assets/Contents/Character/RKayamori/Common/Image/Sleep/RKayamoriSleepNight.png"Sound.playBGM("SZ0044",1,1,nil,true)
local bt2Q9=UI.ShowDayResultUI(nil,nil,true,_Vj8aHEp,GtaGY)Wait(2)if e7EcZQ~=nil then e7EcZQ()end
UI.HideDayResultUI(bt2Q9)Sound.stopBGM(1)end
UI.EnableDayFlowEffectTap=function(kistnn)
CoroutineYield(CS.LuaMethod.EnableDayFlowEffectTap(parent,kistnn))end
UI.showLineInfoFlexible=function(V8ukf,M4QO8t2,po4,kO7M,QO1A0C)M4QO8t2=M4QO8t2 or 1.0;po4=po4 or 3
if kO7M==nil then kO7M=true end;if QO1A0C==nil then QO1A0C=true end
CoroutineYield(CS.LuaMethod.ShowLineInfoFlexible(parent,V8ukf,M4QO8t2,po4,kO7M,QO1A0C))end
UI.wakeUpCharacter=function(Wqius7,f)local f=f or 2.5
CoroutineYield(CS.LuaMethod.WakeUpCharacter(parent,Wqius7,f))end
UI.ShowFragmentRecommendDialog=function(Bw,xaFg)local ZbhRvzwJ;local xaFg=xaFg or""local Bw=Bw or""
CoroutineYield(CS.LuaMethod.ShowFragmentRecommendDialog(parent,xaFg,Bw,function(e)
ZbhRvzwJ=e end))return ZbhRvzwJ end
UI.showCCLocationTitleEx=function(sOzM_,RVYwO,TRaW16)local RVYwO=RVYwO or 2;local TRaW16=TRaW16 or""Wait(0.5)
CoroutineYield(CS.LuaMethod.ShowCCLocationTitleEx(parent,sOzM_,RVYwO,TRaW16))end
UI.Conquest=function()local hmCD
CoroutineYield(CS.LuaMethod.OpenConquest(parent,function(H6cMd)hmCD=H6cMd end))return hmCD end
UI.showSpiritualWorldEndDialog=function(nks0XOWo)local uJk=nil
CoroutineYield(CS.LuaMethod.ShowSpiritualWorldEndDialog(parent,nks0XOWo,function(XByGkB)uJk=XByGkB end))return uJk end
UI.showSideChange=function(yqnk,V,Jt,PJDIIpBb,kXVYYv)_AssertIsNotNull(yqnk)local V=V or""
local Jt=Jt or Vec(0,0)local CUtrlLsq=""local PJDIIpBb=PJDIIpBb or"SY_Chapter_Characterselect"local kXVYYv=
kXVYYv or"SY_Chapter_Characterselect_Out"
CoroutineYield(CS.LuaMethod.ShowSideChange(parent,yqnk,V,Jt.x,Jt.y,PJDIIpBb,kXVYYv,function(AvO)
CUtrlLsq=AvO end))return CUtrlLsq end
UI.hideSideChange=function(j5E)_AssertIsNotNull(j5E)
CoroutineYield(CS.LuaMethod.HideSideChange(parent,j5E))end
UI.playSideChange=function(ZJHt,QBA2j,WcRHbI,vZvj,i9gzkD,rL8gcb)
local pKM=UI.showSideChange(ZJHt,QBA2j,vZvj,i9gzkD,rL8gcb)Wait(WcRHbI)UI.hideSideChange(pKM)end
UI.showAlert=function(H9o)_AssertIsNotNull(H9o)local tl0rT=""
CoroutineYield(CS.LuaMethod.ShowAlert(parent,H9o,function(J6zgkV)
tl0rT=J6zgkV end))return tl0rT end
UI.hideAlert=function(V06tUsA)_AssertIsNotNull(V06tUsA)
CoroutineYield(CS.LuaMethod.HideAlert(parent,V06tUsA))end
UI.playAlert=function(xJW,FLx)local BKsQDr=UI.showAlert(xJW)Wait(FLx)
UI.hideAlert(BKsQDr)end;UI.showMenuList=function()
CoroutineYield(CS.LuaMethod.ShowMenuList(parent))end;UI.hideMenuList=function()
CoroutineYield(CS.LuaMethod.HideMenuList(parent))end
UI.showSideName=function(ljTm,TGOu,eaK,x5u,Xs2x,X1z5M,a3E,lDgXolp,CQ5T2)
_AssertIsNotNull(ljTm)local TGOu=TGOu or""_AssertIsNotNull(eaK)
_AssertIsNotNull(x5u)local Xs2x=Xs2x or""local X1z5M=X1z5M or 1;local CQ5T2=CQ5T2 or false;local sAlSr8I=""
CoroutineYield(CS.LuaMethod.ShowSideName(parent,ljTm,TGOu,eaK.x,eaK.y,x5u,Xs2x,X1z5M,a3E,lDgXolp,function(Y)
sAlSr8I=Y end,CQ5T2))return sAlSr8I end
UI.hideSideName=function(eaA)if eaA==nil then return end
CoroutineYield(CS.LuaMethod.HideSideName(parent,eaA))end
UI.playSideName=function(vaNC,wnkdMpl1,P,Mr7w,DL0yj,lkFkg,pK,TabiUJzo,m4aIqK9h)local DL0yj=DL0yj or 2.5
local b1X=UI.showSideName(vaNC,wnkdMpl1,P,Mr7w,lkFkg,pK,TabiUJzo,m4aIqK9h,true)Wait(DL0yj)UI.hideSideName(b1X)end
UI.showCountDown=function(z,dHe0NH4,r2L)local z=z or 0;local dHe0NH4=dHe0NH4 or""local r2L=r2L or false;local XyH2=""
CoroutineYield(CS.LuaMethod.ShowCountDown(parent,z,dHe0NH4,r2L,function(tFrDpX)
XyH2=tFrDpX end))return XyH2 end
UI.setCountDown=function(qQzEqoPt,TdqMnUrm)local TdqMnUrm=TdqMnUrm or 0
CS.LuaMethod.SetCountDown(parent,qQzEqoPt,TdqMnUrm)end
UI.decreaseCountDown=function(G1,fE)local fE=fE or 0
CS.LuaMethod.DecreaseCountDown(parent,G1,fE)end
UI.hideCountDown=function(U)
CoroutineYield(CS.LuaMethod.HideShowCountDown(parent,U))end
UI.showSpecialPresentDialog=function(J)
CoroutineYield(CS.LuaMethod.ShowSpecialPresentDialog(parent,J))end
UI.createReactionIcon=function(_j,DVs9oE,SgHhX6)local bBou;DVs9oE=DVs9oE or"Head"SgHhX6=SgHhX6 or 0
CoroutineYield(CS.LuaMethod.CreateReactionIcon(parent,function(QFoC)
bBou=QFoC end,_j,DVs9oE,SgHhX6))return bBou end;UI.removeReactionIcon=function()
CS.LuaMethod.RemoveReactionIcon(parent,key)end
UI.OpenWaveBattle=function()
local oRxuT2W2
CoroutineYield(CS.LuaMethod.OpenWaveBattle(parent,function(HHf5_PI)oRxuT2W2=HHf5_PI end))return oRxuT2W2 end
UI.ShowAlchemy=function(VR,o)local i5lV=0
CoroutineYield(CS.LuaMethod.OpenAlchemy(parent,nil,function(VK)i5lV=VK;local tL5fZ=i5lV-7000000;local m=
tL5fZ*10
SetFlag("AC38_魔法薬グローバルID",tL5fZ)SetLocalFlag("AC38_魔法薬ローカルID",tL5fZ)
SetWorldEventStep(o,m)CS.LuaMethod.ForceDecision(parent)end,VR))return i5lV end
UI.AlchemyItemCreateForce=function(k)
CoroutineYield(CS.LuaMethod.AlchemyItemCreateForce(parent,k))end
UI.showLineInfoWithTagText=function(l,Ar,PqN0aIE,b4yX,Sd)if PqN0aIE==nil then PqN0aIE="Main"end;if b4yX==nil then
b4yX="SY_Quest_Confirm"end;if Sd==nil then Sd=3 end
CoroutineYield(CS.LuaMethod.ShowLineInfoWithTagText(parent,l,Ar,PqN0aIE,b4yX,Sd))end
UI.showFullScreenButtonDialog=function(ZK,dAj3jMx,zNFZ9l3D)local zNFZ9l3D=zNFZ9l3D or""local eTRY=nil
CoroutineYield(CS.LuaMethod.ShowFullScreenButtonDialog(parent,ZK,dAj3jMx,function(Qgg2HyX7)
eTRY=Qgg2HyX7 end,zNFZ9l3D))return eTRY end
UI.setUIEffectActive=function()CS.LuaMethod.SetUIEffectActive(parent)end
UI.resetUIEffectActive=function()CS.LuaMethod.ResetUIEffectActive()end
UI.CreateFaithGaugeHud=function()local sGai1L
CoroutineYield(CS.LuaMethod.CreateFaithGaugeHud(parent,function(UDgYtFM3)sGai1L=UDgYtFM3 end))return sGai1L end
UI.PlayBurnedAnimation=function(PJ0wBs0R)
CoroutineYield(CS.LuaMethod.PlayBurnedAnimation(parent,PJ0wBs0R))end
UI.VisibleFaithGaugeHud=function(N9b,SQPOQ)
CS.LuaMethod.VisibleFaithGaugeHud(parent,N9b,SQPOQ)end
UI.SetFaithGaugeChoiceInOut=function(Js,vIOR)
CS.LuaMethod.SetFaithGaugeChoiceInOut(parent,Js,vIOR)end
UI.DeleteFaithGaugeHud=function(bBO)
CoroutineYield(CS.LuaMethod.DeleteFaithGaugeHud(parent,bBO))end
UI.ShowOverlayFloorInMinimap=function()
CS.LuaMethod.SetShowOverlayFloorInMinimap(true)end