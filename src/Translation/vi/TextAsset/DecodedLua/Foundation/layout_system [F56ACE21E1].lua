local w0qyLbH=require'xlua.util'Layout={}Layout.nowStage=nil
Layout.createStage=function(nsgji,bClTIa)bClTIa=
bClTIa or __stageLayerReset
Layout.nowStage=AdvStage_add(nsgji,bClTIa)return Layout.nowStage end
Layout.createStageFixBg=function(rDzL7SVO,BW0WFP)return
Layout.createStage(rDzL7SVO,function(X8)__stageLayerReset()if X8 and X8 ~=""then
Adv.moveToExcludeAlt(X8,BW0WFP,0)end end)end
Layout.createStagePan=function(JQT,AtYtR,ND2BCh3,IODBg,YRDu)return
Layout.createStage(JQT,function(CWRiP)
__stagePanFunction(CWRiP,AtYtR,ND2BCh3,IODBg,YRDu)end)end
Layout.stagePan=function(LB0A,dl,sKPjQkdn,HHH9IlJp)dl=dl or 3;LB0A=LB0A or Position.BG_CENTER;sKPjQkdn=sKPjQkdn or
1;HHH9IlJp=HHH9IlJp or-80
Adv.moveBy("StageCharacter",Vec(HHH9IlJp*sKPjQkdn),dl)
Adv.moveBy("StageCharacterUp",Vec(HHH9IlJp*sKPjQkdn),dl)
Adv.moveBy("StageCharacterForward",Vec(HHH9IlJp*sKPjQkdn),dl)
Adv.moveBy("StageBG",Vec(HHH9IlJp*0.625*sKPjQkdn),dl)end
Layout.stagePanL=function(uYz2ryy4,zVPRGDnG,IKxw,w0)IKxw=IKxw or 1
Layout.stagePan(uYz2ryy4,zVPRGDnG,-IKxw,w0)end
__stagePanFunction=function(UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0)jwq=jwq or 3
MLFLplLe=MLFLplLe or Position.BG_CENTER;kw3ei0a=kw3ei0a or 1;EspneS5=EspneS5 or 100;if not LZeg0 then
__stageLayerReset()end
Adv.moveTo("StageCharacter",Vec(EspneS5*kw3ei0a),0)
Adv.moveTo("StageCharacterUp",Vec(EspneS5*kw3ei0a),0)
Adv.moveTo("StageCharacterForward",Vec(EspneS5*kw3ei0a),0)Adv.moveTo("StageBG",Vec(0),0)
Adv.moveToExcludeAlt(UgXzI_C,MLFLplLe,0)Layout.stagePan(MLFLplLe,jwq,kw3ei0a,-EspneS5)end
Layout.createStagePanL=function(OJZ,nmuj,bP,b4IqQW)b4IqQW=b4IqQW or-100
nmuj=nmuj or Position.BG_LEFT;Layout.createStagePan(OJZ,nmuj,bP,1,b4IqQW)end
Layout.createStagePanR=function(iuGb,koZU,C,nmJGp_)nmJGp_=nmJGp_ or-100
koZU=koZU or Position.BG_RIGHT;Layout.createStagePan(iuGb,koZU,C,-1,nmJGp_)end
Layout.changeStageFixBg=function(h0v3PIV,Uc)Layout.stopStageMove()
AdvStage_changeBgEffect(h0v3PIV,function(JSkUQL)
__stageLayerReset()Adv.moveToExcludeAlt(JSkUQL,Uc,0)end)end
Layout.changeStagePan=function(PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK)Layout.stopStageMove()
AdvStage_changeBgEffect(PTUZ2v,function(Oo6ecUO)
__stagePanFunction(Oo6ecUO,qlZeO3Pr,fG9zS,WiXG,QgyWztK)end)end
Layout.changeStageZoomIn=function(b6SL0yka,hEk,E8o,TdqFo,ykLF0)E8o=E8o or 3;TdqFo=TdqFo or 1.1
hEk=hEk or Position.BG_CENTER;Layout.stopStageMove()
AdvStage_changeBgEffect(b6SL0yka,function(cilhu)
if not ykLF0 then
__stageLayerReset()Adv.scale("StageCharacter",1,0)
Adv.scale("StageCharacterUp",1,0)Adv.scale("StageCharacterForward",1,0)
Adv.scale("StageBG",1,0)
if cilhu and cilhu~=""then Adv.moveToExcludeAlt(cilhu,hEk,0)end end;Adv.scale("StageCharacter",TdqFo,E8o)
Adv.scale("StageCharacterUp",TdqFo,E8o)Adv.scale("StageCharacterForward",TdqFo,E8o)
Adv.scale("StageBG",TdqFo,E8o)end)end
Layout.stopStageMove=function()Adv.moveBy("StageCharacter",Vec(0),0)
Adv.moveBy("StageCharacterUp",Vec(0),0)Adv.moveBy("StageCharacterForward",Vec(0),0)
Adv.moveBy("StageBG",Vec(0),0)Adv.scaleBy("StageCharacter",1,0)
Adv.scaleBy("StageCharacterUp",1,0)Adv.scaleBy("StageCharacterForward",1,0)
Adv.scaleBy("StageBG",1,0)end
__stageLayerReset=function(eVfN)Adv.setBackgroundBlur(0)
Adv.moveTo("StageCharacter",Vec(0),0)Adv.moveTo("StageCharacterUp",Vec(0),0)
Adv.moveTo("StageCharacterForward",Vec(0),0)Adv.moveTo("StageBG",Vec(0),0)
Adv.scale("StageCharacter",1,0)Adv.scale("StageCharacterUp",1,0)
Adv.scale("StageCharacterForward",1,0)Adv.scale("StageBG",1,0)end
Layout.createStageZoomOut=function(LBIJ,CSSp,CBZIwYHI,x1vCS0)CBZIwYHI=CBZIwYHI or 3;x1vCS0=x1vCS0 or 1.1;CSSp=CSSp or
Position.BG_CENTER
return
Layout.createStage(LBIJ,function(Herp)__stageLayerReset()
Adv.scale("StageCharacter",x1vCS0,0)Adv.scale("StageCharacter",1,CBZIwYHI)
Adv.scale("StageCharacterUp",x1vCS0,0)Adv.scale("StageCharacterUp",1,CBZIwYHI)
Adv.scale("StageCharacterForward",x1vCS0,0)Adv.scale("StageCharacterForward",1,CBZIwYHI)Adv.scale("StageBG",
x1vCS0*0.98,0)
Adv.scale("StageBG",1,CBZIwYHI)
if Herp and Herp~=""then Adv.moveToExcludeAlt(Herp,CSSp,0)end end)end
Layout.createStageZoomIn=function(TNczSeT,Sb,_OwI,GBDhi2D,XDYs)_OwI=_OwI or 3;GBDhi2D=GBDhi2D or 1.1
Sb=Sb or Position.BG_CENTER
return
Layout.createStage(TNczSeT,function(JyOmN)
if not XDYs then __stageLayerReset()
Adv.scale("StageCharacter",1,0)Adv.scale("StageCharacterUp",1,0)
Adv.scale("StageCharacterForward",1,0)Adv.scale("StageBG",1,0)if JyOmN and JyOmN~=""then
Adv.moveToExcludeAlt(JyOmN,Sb,0)end end;Adv.scale("StageCharacter",GBDhi2D,_OwI)
Adv.scale("StageCharacterUp",GBDhi2D,_OwI)Adv.scale("StageCharacterForward",GBDhi2D,_OwI)Adv.scale("StageBG",
GBDhi2D*0.98,_OwI)end)end
Layout.createStageCenter=function(Gu2sqpyD,N_Pk)
return
Layout.createStage(Gu2sqpyD,function(G_v887o0)__stageLayerReset()
Adv.setBackgroundBlur(0,duration)Adv.scale("StageCharacter",1,0)
Adv.scale("StageCharacterUp",1,0)Adv.scale("StageCharacterForward",1,0)
Adv.scale("StageBG",1,0)if G_v887o0 and G_v887o0 ~=""then
Adv.moveToExcludeAlt(G_v887o0,Position.BG_CENTER,0)end end)end
Layout.createStageSubChara=function(oiM7BRAl,s4,EF)
return
Layout.createStage(oiM7BRAl,function(wYFDyw8)__stageLayerReset()EF=EF or 0
Adv.setBackgroundBlur(0,EF)Adv.scale("StageCharacter",1,0)
Adv.scale("StageCharacterUp",1,0)Adv.scale("StageCharacterForward",1,0)
Adv.scale("StageBG",1,0)if wYFDyw8 and wYFDyw8 ~=""then
Adv.moveToExcludeAlt(wYFDyw8,Position.BG_LEFT,0)end end)end
Layout.createStageSubCharaUp=function(JyI,hncZR4my,KqeVtj,LD)
return
Layout.createStage(JyI,function(Q)__stageLayerReset()LD=LD or 0
Adv.setBackgroundBlur(1.5,LD)Adv.scale("StageCharacter",1.3,0)
Adv.scale("StageCharacterUp",1.3,0)Adv.scale("StageCharacterForward",1.3,0)
Adv.scale("StageBG",2,0)if Q and Q~=""then
Adv.moveToExcludeAlt(Q,Position.BG_LEFT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if hncZR4my then KqeVtj=KqeVtj or 1
Layout.stagePan(Position.BG_CENTER,KqeVtj,1,100)end end)end
Layout.createStageSubCharaUpEx=function(QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c)Kmr_vDN=Kmr_vDN or 1.25
Adv.scale(QKTF34q3,Kmr_vDN)
return
Layout.createStage(QKTF34q3,function(Q5oEQY)__stageLayerReset()VJw9J2c=VJw9J2c or 0
Adv.setBackgroundBlur(1.5,VJw9J2c)Adv.scale("StageCharacter",1.3,0)
Adv.scale("StageCharacterUp",1.3,0)Adv.scale("StageCharacterForward",1.3,0)
Adv.scale("StageBG",2,0)if Q5oEQY and Q5oEQY~=""then
Adv.moveToExcludeAlt(Q5oEQY,Position.BG_LEFT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if z then UD61M=UD61M or 1
Layout.stagePan(Position.BG_CENTER,UD61M,1,100)end end)end
Layout.createStageSubCharaUp2=function(eVzQHT,bdl6box_,o,RMqe)
return
Layout.createStage(eVzQHT,function(c6H01I5a)__stageLayerReset()
RMqe=RMqe or 0;Adv.setBackgroundBlur(1.5,RMqe)
Adv.scale("StageCharacter",1.3,0)Adv.scale("StageCharacterUp",1.3,0)
Adv.scale("StageCharacterForward",1.3,0)Adv.scale("StageBG",2,0)if c6H01I5a and c6H01I5a~=""then
Adv.moveToExcludeAlt(c6H01I5a,Position.BG_CENTER,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if bdl6box_ then o=o or 1
Layout.stagePan(Position.BG_CENTER,o,1,100)end end)end
Layout.createStageSubCharaUp2Ex=function(CuoodPvK,e1iM,bN32Fa,Ub,fQEH)Ub=Ub or 1.25;Adv.scale(CuoodPvK,Ub)
return
Layout.createStage(CuoodPvK,function(_om)
__stageLayerReset()fQEH=fQEH or 0;Adv.setBackgroundBlur(1.5,fQEH)
Adv.scale("StageCharacter",1.3,0)Adv.scale("StageCharacterUp",1.3,0)
Adv.scale("StageCharacterForward",1.3,0)Adv.scale("StageBG",2,0)if _om and _om~=""then
Adv.moveToExcludeAlt(_om,Position.BG_CENTER,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if e1iM then bN32Fa=bN32Fa or 1
Layout.stagePan(Position.BG_CENTER,bN32Fa,1,100)end end)end
Layout.createStageMainChara=function(kEI4,DSsD0,jRQUk)
return
Layout.createStage(kEI4,function(M)__stageLayerReset()
jRQUk=jRQUk or 0;Adv.setBackgroundBlur(0,jRQUk)
Adv.scale("StageCharacter",1,0)Adv.scale("StageCharacterUp",1,0)
Adv.scale("StageCharacterForward",1,0)Adv.scale("StageBG",1,0)if M and M~=""then
Adv.moveToExcludeAlt(M,Position.BG_RIGHT,0)end end)end
Layout.createStageMainCharaUp=function(p_I,ka,OAvmrJ,i)
return
Layout.createStage(p_I,function(BBJcTiAS)__stageLayerReset()i=i or 0
Adv.setBackgroundBlur(1.5,i)Adv.scale("StageCharacter",1.3,0)
Adv.scale("StageCharacterUp",1.3,0)Adv.scale("StageCharacterForward",1.3,0)
Adv.scale("StageBG",2,0)if BBJcTiAS and BBJcTiAS~=""then
Adv.moveToExcludeAlt(BBJcTiAS,Position.BG_RIGHT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if ka then OAvmrJ=OAvmrJ or 1
Layout.stagePan(Position.BG_CENTER,OAvmrJ,-1,100)end end)end
Layout.createStageMainCharaUpEx=function(m7jWgGw,cq,Mk3,jUhLQEm,Ed4qx)jUhLQEm=jUhLQEm or 1.25
Adv.scale(m7jWgGw,jUhLQEm)
return
Layout.createStage(m7jWgGw,function(ZrR2o)__stageLayerReset()Ed4qx=Ed4qx or 0
Adv.setBackgroundBlur(1.5,Ed4qx)Adv.scale("StageCharacter",1.3,0)
Adv.scale("StageCharacterUp",1.3,0)Adv.scale("StageCharacterForward",1.3,0)
Adv.scale("StageBG",2,0)if ZrR2o and ZrR2o~=""then
Adv.moveToExcludeAlt(ZrR2o,Position.BG_RIGHT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if cq then Mk3=Mk3 or 1
Layout.stagePan(Position.BG_CENTER,Mk3,-1,100)end end)end
Layout.createStageMainCharaUpExR=function(_g,_NgROQrI,_E8uiG0,SK,J7K570R)SK=SK or 1.25;Adv.scale(_g,SK)
return
Layout.createStage(_g,function(fDGKa)
__stageLayerReset()J7K570R=J7K570R or 0;Adv.setBackgroundBlur(1.5,J7K570R)
Adv.scale("StageCharacter",1.3,0)Adv.scale("StageCharacterUp",1.3,0)
Adv.scale("StageCharacterForward",1.3,0)Adv.scale("StageBG",2,0)if fDGKa and fDGKa~=""then
Adv.moveToExcludeAlt(fDGKa,Position.BG_RIGHT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if _NgROQrI then _E8uiG0=_E8uiG0 or 1
Layout.stagePan(Position.BG_CENTER,_E8uiG0,-1,-100)end end)end
Layout.createStageSubCharaUpExR=function(Q,ZukFflVc,oJgQv,J8T,Hc)J8T=J8T or 1.25;Adv.scale(Q,J8T)
return
Layout.createStage(Q,function(yu)
__stageLayerReset()Hc=Hc or 0;Adv.setBackgroundBlur(1.5,Hc)
Adv.scale("StageCharacter",1.3,0)Adv.scale("StageCharacterUp",1.3,0)
Adv.scale("StageCharacterForward",1.3,0)Adv.scale("StageBG",2,0)if yu and yu~=""then
Adv.moveToExcludeAlt(yu,Position.BG_LEFT,0)end
Adv.moveTo("StageCharacterUp",Position.BG_CENTER,0)if ZukFflVc then oJgQv=oJgQv or 1
Layout.stagePan(Position.BG_CENTER,oJgQv,1,-100)end end)end
Layout.pushCharacter=function(IbCB,ipjC14vX)_AssetIsStageNotNull(Layout.nowStage)ipjC14vX=
ipjC14vX or-1;return
AdvStage_pushCharacter(Layout.nowStage,IbCB,ipjC14vX,function(zr8xFL0,_QfE)end)end
Layout.pushCharacterL=function(hV8urDO,a)a=a or-1
_AssetIsStageNotNull(Layout.nowStage)
return AdvStage_pushCharacterL(Layout.nowStage,hV8urDO,a,function(jv,v)end)end
Layout.pushCharacterBack=function(tA_,XRbckaF)XRbckaF=XRbckaF or-1
_AssetIsStageNotNull(Layout.nowStage)return
AdvStage_pushCharacter(Layout.nowStage,tA_,XRbckaF,function(ruef,rMVr1Ks)end,1)end
Layout.popCharacter=function(zyXWQodW,VmovH)VmovH=VmovH or-1
_AssetIsStageNotNull(Layout.nowStage)local Q=Layout.findOverlapCharacter(zyXWQodW)
local oGjJ=AdvStage_popCharacter(zyXWQodW,VmovH)Adv.alpha(zyXWQodW,0,oGjJ)
Adv.moveBy(zyXWQodW,Vec(0,0),oGjJ)if Q~=nil then Adv.alpha(Q,0,oGjJ)
Adv.moveBy(Q,Vec(0,0),oGjJ)end;return oGjJ end
Layout.setup=function(G1BiG9x,X3v,fJB,p96jR)if type(X3v)=="string"then X3v={X3v}end;if
type(fJB)=="string"then fJB={fJB}end
if type(p96jR)=="string"then p96jR={p96jR}end;AdvStage_setupCharacter(G1BiG9x,X3v,fJB,p96jR)end
Layout.showMob=function(Cd,oVZ,JCPdH,yt,qejbRWcX,lKi_v)
Layout._showMobInternal(Cd,oVZ,JCPdH,yt,qejbRWcX,lKi_v)end
Layout.showMobEx=function(WClwNvPI,Z,F1kNUeep,VGNf90M,DTra,Kfl)
Layout._showMobInternal(WClwNvPI,Z,F1kNUeep,VGNf90M,DTra,Kfl,"Close")end
Layout._showMobInternal=function(a6QNS6,Q,S,Wd,__q,o1isr9N,f)_AssetIsStageNotNull(Layout.nowStage)if __q then
AdvStage_setBGAnimationEnable(Layout.nowStage,false)end;local Wd=Wd or-1;local f=f or"Mouth_01"if
type(a6QNS6)=="string"then a6QNS6={a6QNS6}end;if
type(Q)=="string"then Q={Q}end;if type(S)=="string"then S={S}end
local _a4il=AdvStage_layoutCharacter(Layout.nowStage,a6QNS6,Q,S,Wd,f,true)o1isr9N=o1isr9N or function()Wait(_a4il)end;if __q then
AdvStage_setBGAnimationEnable(Layout.nowStage,true)end;if o1isr9N~=nil then o1isr9N()end;return
_a4il end
Layout.show=function(Fsy,o5EML,gU,JkLOu38,rJeSR,Qsn1Mp,GT4)_AssetIsStageNotNull(Layout.nowStage)if rJeSR then
AdvStage_setBGAnimationEnable(Layout.nowStage,false)end;JkLOu38=JkLOu38 or-1
GT4=GT4 or"Mouth_01"if type(Fsy)=="string"then Fsy={Fsy}end;if
type(o5EML)=="string"then o5EML={o5EML}end
if type(gU)=="string"then gU={gU}end
local rg7e=AdvStage_layoutCharacter(Layout.nowStage,Fsy,o5EML,gU,JkLOu38,GT4)Qsn1Mp=Qsn1Mp or function()Wait(rg7e)end;if rJeSR then
AdvStage_setBGAnimationEnable(Layout.nowStage,true)end;if Qsn1Mp~=nil then Qsn1Mp()end
return rg7e end
Layout.showEx=function(cWGq,Xe35l,L,x,tnnCl,K)Layout.show(cWGq,Xe35l,L,x,tnnCl,K,"Close")end
Layout.show0=function(T06zarEG,_pYwz9W,pPhf,UitKjKg,u6NC,QsGa)
Layout.show(T06zarEG,_pYwz9W,pPhf,0,UitKjKg,u6NC,QsGa)end
Layout.showEx0=function(W8os4zeu,iqGT3,iylQPau,miJYM,I)
Layout.showEx(W8os4zeu,iqGT3,iylQPau,0,miJYM,I)end
Layout.hide=function()_AssetIsStageNotNull(Layout.nowStage)AdvStage_layoutCharacter(Layout.nowStage,
nil,nil,nil,-1)end
Layout.focus=function(Tq9Ac2,BIriYV3u)BIriYV3u=BIriYV3u or 0.8
AdvStage_show(AdvStage_get(Tq9Ac2))Wait(BIriYV3u)end
Layout.leave=function(te)Adv.hide(te)
local J4F6=Layout.findOverlapCharacter(te)if J4F6 ~=nil then Adv.hide(J4F6)end;return
CS.AdvStageLuaMethod.AdvStage_removeAllCharacter(parent,te)end
Layout.zLayout=function(Xx0pC)return
CS.AdvStageLuaMethod.AdvStage_SetZLayout(parent,Layout.nowStage,Xx0pC)end
Layout.crossFade=function(yX5i)Adv.crossFade(yX5i)
CS.AdvStageLuaMethod.AdvStage_HideAll(parent,Layout.nowStage)end
Layout.findOverlapCharacter=function(Eq,Pj6PhX)local iT1M=nil;if Pj6PhX then iT1M=Layout.nowStage end;return
AdvStage_findOverlapCharacter(iT1M,Eq)end