
Adv.novelInit=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT)CS.LuaMethod.NovelInit(parent)
local nsgji=nsgji or 0.5;local BW0WFP=BW0WFP or 1.0;local X8=X8 or 1.0;if bClTIa then
Adv.fadeIn(nsgji,true,nil,bClTIa)end;Transition.finish(nil,nsgji)
if rDzL7SVO then
Adv.fadeOut(0)if JQT~=nil then Routine(JQT)end;Wait(BW0WFP)
Adv.fadeIn(X8)else if JQT~=nil then Routine(JQT)end
Wait(nsgji* (3.0/5.0))end end
Adv.novelInitEx=function(AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,LB0A)CS.LuaMethod.NovelInit(parent)
local ND2BCh3=ND2BCh3 or 2.0;local IODBg=IODBg or 1.0;local YRDu=YRDu or false;local CWRiP=CWRiP or false
local LB0A=LB0A or false;Transition.finish()Adv.fadeOut(0)Wait(1.0)
if not YRDu then if AtYtR~=
nil then Routine(AtYtR)end;Wait(ND2BCh3)else
Wait(ND2BCh3)if AtYtR~=nil then Routine(AtYtR)end end;Adv.fadeIn(IODBg,LB0A)
if not CWRiP then Sound.setMutableBgm()end end
Adv.showEffect=function(dl,sKPjQkdn,HHH9IlJp,uYz2ryy4)
local zVPRGDnG=CS.LuaMethod.AddEffect(parent,dl,sKPjQkdn,HHH9IlJp)Adv.show(zVPRGDnG,uYz2ryy4)return zVPRGDnG end
Adv.kickEffectTrigger=function(IKxw,w0)
CS.LuaMethod.KickEffectTrigger(parent,IKxw,w0)end
Adv.characterVoice=function(UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0)
if type(jwq)=="string"then return
Adv.playVoice(UgXzI_C,jwq,kw3ei0a,nil,EspneS5,LZeg0)elseif jwq~=nil then
Adv.playLipSync(UgXzI_C,jwq,nil,EspneS5,LZeg0)else
Adv.playLipSync(UgXzI_C,0.16+ (1.0/52.0)*#MLFLplLe,nil,EspneS5,LZeg0)end end
Adv.showBG=function(OJZ,nmuj,bP,b4IqQW,iuGb,koZU)b4IqQW=b4IqQW or 0;nmuj=nmuj or Position.BG_CENTER;bP=bP or
ScaleValue.BG_UP;Adv.hideAllCharacter()
Adv.moveBy(OJZ,Vec(0,0),0)Adv.scale(OJZ,1,0)Adv.position(OJZ,nmuj)
if(iuGb)then
if iuGb==
Direction.RIGHT then
Adv.moveBy(OJZ,Velocity.RIGHT_BG*-1,0)Adv.moveBy(OJZ,Velocity.RIGHT_BG,b4IqQW)elseif iuGb==
Direction.LEFT then
Adv.moveBy(OJZ,Velocity.LEFT_BG*-1,0)Adv.moveBy(OJZ,Velocity.LEFT_BG,b4IqQW)else end end
if(koZU)then
if koZU==Zoom.IN then Adv.scale(OJZ,bP*0.95)
Adv.scale(OJZ,bP,b4IqQW)elseif koZU==Zoom.OUT then Adv.scale(OJZ,bP*1.05)
Adv.scale(OJZ,bP,b4IqQW)else end else Adv.scale(OJZ,bP)end;Adv.show(OJZ,0)end
Adv.moveBG=function(C,nmJGp_,h0v3PIV,Uc)
if h0v3PIV==Direction.RIGHT then
Adv.moveBy(C,Velocity.RIGHT_BG,nmJGp_)elseif h0v3PIV==Direction.LEFT then
Adv.moveBy(C,Velocity.LEFT_BG,nmJGp_)else end;if(Uc)then Adv.scale(C,Uc,nmJGp_)end end
Adv.zoomBG=function(JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)qlZeO3Pr=qlZeO3Pr or 0
fG9zS=fG9zS or ScaleValue.BG_UP
if(PTUZ2v)then
if PTUZ2v==Zoom.IN then Adv.scale(JSkUQL,fG9zS*0.95)
Adv.scale(JSkUQL,fG9zS,qlZeO3Pr)elseif PTUZ2v==Zoom.OUT then Adv.scale(JSkUQL,fG9zS*1.05)
Adv.scale(JSkUQL,fG9zS,qlZeO3Pr)else end else Adv.scale(JSkUQL,fG9zS)end end
Adv.moveBG_Wait=function(WiXG,QgyWztK,Oo6ecUO,b6SL0yka)Adv.moveBG(WiXG,QgyWztK,Oo6ecUO,b6SL0yka)if
(QgyWztK~=0)then Wait(QgyWztK)end end
Adv.showCharacter=function(hEk,E8o,TdqFo,ykLF0,cilhu,eVfN)E8o=E8o or 0;TdqFo=TdqFo or Position.CHR_CENTER;ykLF0=
ykLF0 or CharacterLayer.UP
if
ykLF0 ==CharacterLayer.UP then Adv.moveLayer(hEk,CharacterLayer.UP)if(TdqFo)then
Adv.position(hEk,TdqFo)end
if(cilhu)then if cilhu==Direction.RIGHT then
Adv.moveBy(hEk,Velocity.LEFT_UP,0)elseif cilhu==Direction.LEFT then
Adv.moveBy(hEk,Velocity.RIGHT_UP,0)else end end
if(eVfN)then
if eVfN==Zoom.IN then
Adv.scale(hEk,ScaleValue.CHR_NORMAL)Adv.scale(hEk,ScaleValue.CHR_UP,E8o)elseif eVfN==Zoom.OUT then
Adv.scale(hEk,ScaleValue.CHR_UP2)Adv.scale(hEk,ScaleValue.CHR_UP,E8o)else end else Adv.scale(hEk,ScaleValue.CHR_UP)end elseif ykLF0 ==CharacterLayer.NORMAL then
Adv.moveLayer(hEk,CharacterLayer.NORMAL)if(TdqFo)then Adv.position(hEk,TdqFo)end
if(cilhu)then
if cilhu==
Direction.RIGHT then Adv.moveBy(hEk,Velocity.LEFT_NORMAL,0)elseif cilhu==
Direction.LEFT then Adv.moveBy(hEk,Velocity.RIGHT_NORMAL,0)else end end
if(eVfN)then
if eVfN==Zoom.OUT then Adv.scale(hEk,ScaleValue.CHR_UP)
Adv.scale(hEk,ScaleValue.CHR_NORMAL,E8o)elseif eVfN==Zoom.IN then Adv.scale(hEk,ScaleValue.CHR_LONG)
Adv.scale(hEk,ScaleValue.CHR_NORMAL,E8o)else end else Adv.scale(hEk,ScaleValue.CHR_NORMAL)end else end;Adv.moveTo(hEk,TdqFo,E8o)Adv.show(hEk,E8o)end
Adv.zoomCharacter=function(LBIJ,CSSp,CBZIwYHI,x1vCS0)
if CBZIwYHI==CharacterLayer.UP then
if(x1vCS0)then
if x1vCS0 ==Zoom.IN then
Adv.scale(LBIJ,ScaleValue.CHR_NORMAL)Adv.scale(LBIJ,ScaleValue.CHR_UP,CSSp)elseif
x1vCS0 ==Zoom.OUT then Adv.scale(LBIJ,ScaleValue.CHR_UP2)
Adv.scale(LBIJ,ScaleValue.CHR_UP,CSSp)else end else Adv.scale(LBIJ,ScaleValue.CHR_UP)end elseif CBZIwYHI==CharacterLayer.NORMAL then
if(x1vCS0)then
if x1vCS0 ==Zoom.OUT then
Adv.scale(LBIJ,ScaleValue.CHR_UP)Adv.scale(LBIJ,ScaleValue.CHR_NORMAL,CSSp)elseif x1vCS0 ==
Zoom.IN then Adv.scale(LBIJ,ScaleValue.CHR_LONG)
Adv.scale(LBIJ,ScaleValue.CHR_NORMAL,CSSp)else end else Adv.scale(LBIJ,ScaleValue.CHR_NORMAL)end end end
Adv.showCharacter_Wait=function(Herp,TNczSeT,Sb,_OwI,GBDhi2D,XDYs)
Adv.showCharacter(Herp,TNczSeT,Sb,_OwI,GBDhi2D,XDYs)if(TNczSeT~=0)then Wait(TNczSeT)end end
Adv.moveCharacter=function(JyOmN,Gu2sqpyD,N_Pk,G_v887o0)Gu2sqpyD=Gu2sqpyD or 0
N_Pk=N_Pk or Position.CHR_CENTER;G_v887o0=G_v887o0 or CharacterLayer.UP
if G_v887o0 ==
CharacterLayer.UP then
Adv.moveLayer(JyOmN,CharacterLayer.UP)Adv.scale(JyOmN,ScaleValue.CHR_UP,Gu2sqpyD)elseif G_v887o0 ==
CharacterLayer.NORMAL then
Adv.moveLayer(JyOmN,CharacterLayer.NORMAL)Adv.scale(JyOmN,ScaleValue.CHR_NORMAL,Gu2sqpyD)else end;Adv.moveTo(JyOmN,N_Pk,Gu2sqpyD)end
Adv.moveCharacter_Wait=function(oiM7BRAl,s4,EF,wYFDyw8)Adv.moveCharacter(oiM7BRAl,s4,EF,wYFDyw8)if
(s4 ~=0)then Wait(s4)end end
Adv.hideCharacter=function(JyI,hncZR4my,KqeVtj,LD,Q)hncZR4my=hncZR4my or 0
KqeVtj=KqeVtj or CharacterLayer.UP
if KqeVtj==CharacterLayer.UP then
if(LD)then if LD==Direction.RIGHT then
Adv.moveBy(JyI,Velocity.RIGHT_UP,hncZR4my)elseif LD==Direction.LEFT then
Adv.moveBy(JyI,Velocity.LEFT_UP,hncZR4my)else end end
if(Q)then if Q==Zoom.IN then
Adv.scale(JyI,ScaleValue.CHR_UP2,hncZR4my)elseif Q==Zoom.OUT then
Adv.scale(JyI,ScaleValue.CHR_NORMAL,hncZR4my)else end end elseif KqeVtj==CharacterLayer.NORMAL then
if(LD)then
if LD==Direction.RIGHT then
Adv.moveBy(JyI,Velocity.RIGHT_NORMAL,hncZR4my)elseif LD==Direction.LEFT then
Adv.moveBy(JyI,Velocity.LEFT_NORMAL,hncZR4my)else end end
if(Q)then if Q==Zoom.IN then
Adv.scale(JyI,ScaleValue.CHR_UP,hncZR4my)elseif Q==Zoom.OUT then
Adv.scale(JyI,ScaleValue.CHR_LONG,hncZR4my)else end end else end;Adv.hide(JyI,hncZR4my)end
Adv.hideCharacter_Wait=function(QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c)
Adv.hideCharacter(QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c)if(z~=0)then Wait(z)end end
Adv.loadBG=function(Q5oEQY,eVzQHT,bdl6box_,o,RMqe,c6H01I5a)local CuoodPvK=Adv.image(Q5oEQY,nil,nil,"BG")eVzQHT=eVzQHT or
Position.BG_CENTER;bdl6box_=bdl6box_ or 1.25;o=o or 0;c6H01I5a=
c6H01I5a or"BG"
Adv.preset(CuoodPvK,eVzQHT.x,eVzQHT.y,bdl6box_,o,nil,c6H01I5a)return CuoodPvK end
Adv.loadBGAsync=function(e1iM,bN32Fa,Ub,fQEH,_om,kEI4)kEI4=kEI4 or"BG"
bN32Fa=bN32Fa or Position.BG_CENTER;Ub=Ub or 1.25;fQEH=fQEH or 0;kEI4=kEI4 or"BG"
local DSsD0=Adv.imageAsync(e1iM,kEI4,nil,function(jRQUk)Adv.preset(jRQUk,bN32Fa.x,bN32Fa.y,Ub,fQEH,
nil,kEI4)end,"BG")return DSsD0 end
Adv.loadImage=function(M,p_I,ka,OAvmrJ,i,BBJcTiAS)local m7jWgGw=Adv.image(M,p_I,nil)local cq=ka or 0
local Mk3=OAvmrJ or 0;i=i or 1;BBJcTiAS=BBJcTiAS or 0
Adv.position(m7jWgGw,Vec(cq,Mk3))Adv.scale(m7jWgGw,i)Adv.alpha(m7jWgGw,BBJcTiAS)
return m7jWgGw end
Adv.loadImageAsync=function(jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI,_E8uiG0,SK)ZrR2o=ZrR2o or 0;_g=_g or 0;_NgROQrI=_NgROQrI or 1
_E8uiG0=_E8uiG0 or 0
local J7K570R=Adv.imageAsync(jUhLQEm,Ed4qx,nil,function(fDGKa)Adv.position(fDGKa,Vec(ZrR2o,_g))
Adv.scale(fDGKa,_NgROQrI)Adv.alpha(fDGKa,_E8uiG0)if SK~=nil then SK(fDGKa)end end)return J7K570R end
Adv.loadImageNoGallery=function(Q,ZukFflVc,oJgQv,J8T,Hc,yu)local IbCB=Adv.imageNoGallery(Q,ZukFflVc,nil)
local ipjC14vX=oJgQv or 0;local zr8xFL0=J8T or 0;Hc=Hc or 1;yu=yu or 0
Adv.position(IbCB,Vec(ipjC14vX,zr8xFL0))Adv.scale(IbCB,Hc)Adv.alpha(IbCB,yu)return IbCB end
Adv.loadImageAsyncNoGallery=function(_QfE,hV8urDO,a,jv,v,tA_,XRbckaF)a=a or 0;jv=jv or 0;v=v or 1;tA_=tA_ or 0
local ruef=Adv.imageAsyncNoGallery(_QfE,hV8urDO,nil,function(rMVr1Ks)
Adv.position(rMVr1Ks,Vec(a,jv))Adv.scale(rMVr1Ks,v)Adv.alpha(rMVr1Ks,tA_)if XRbckaF~=nil then
XRbckaF(rMVr1Ks)end end)return ruef end
Adv.loadRawImage=function(zyXWQodW,VmovH,Q,oGjJ,G1BiG9x,X3v)local fJB=Adv.rawImage(zyXWQodW,VmovH,nil)local p96jR=Q or 0;local Cd=
oGjJ or 0;G1BiG9x=G1BiG9x or 1;X3v=X3v or 0
Adv.position(fJB,Vec(p96jR,Cd))Adv.scale(fJB,G1BiG9x)Adv.alpha(fJB,X3v)return fJB end
Adv.loadRawImageAsync=function(oVZ,JCPdH,yt,qejbRWcX,lKi_v,WClwNvPI,Z)yt=yt or 0;qejbRWcX=qejbRWcX or 0;lKi_v=lKi_v or 1;WClwNvPI=
WClwNvPI or 0
local F1kNUeep=Adv.rawImageAsync(oVZ,JCPdH,nil,function(VGNf90M)
Adv.position(VGNf90M,Vec(yt,qejbRWcX))Adv.scale(VGNf90M,lKi_v)
Adv.alpha(VGNf90M,WClwNvPI)if Z~=nil then Z(VGNf90M)end end)return F1kNUeep end
Adv.loadRawImageNoGallery=function(DTra,Kfl,a6QNS6,Q,S,Wd)local __q=Adv.rawImageNoGallery(DTra,Kfl,nil)
local o1isr9N=a6QNS6 or 0;local f=Q or 0;S=S or 1;Wd=Wd or 0
Adv.position(__q,Vec(o1isr9N,f))Adv.scale(__q,S)Adv.alpha(__q,Wd)return __q end
Adv.loadRawImageAsyncNoGallery=function(_a4il,Fsy,o5EML,gU,JkLOu38,rJeSR,Qsn1Mp)o5EML=o5EML or 0;gU=gU or 0;JkLOu38=JkLOu38 or 1
rJeSR=rJeSR or 0
local GT4=Adv.rawImageAsyncNoGallery(_a4il,Fsy,nil,function(rg7e)Adv.position(rg7e,Vec(o5EML,gU))
Adv.scale(rg7e,JkLOu38)Adv.alpha(rg7e,rJeSR)
if Qsn1Mp~=nil then Qsn1Mp(rg7e)end end)return GT4 end
Adv.presetBG=function(cWGq,Xe35l,L,x,tnnCl,K,T06zarEG)Adv.preset(cWGq,Xe35l,L,x,tnnCl,nil,T06zarEG)end
Adv.presetStill=function(_pYwz9W,pPhf,UitKjKg,u6NC,QsGa,W8os4zeu,iqGT3)
Adv.preset(_pYwz9W,pPhf,UitKjKg,u6NC,QsGa,nil,iqGT3)end
Adv.presetBackward=function(iylQPau,miJYM,I,Tq9Ac2,BIriYV3u,te,J4F6)
Adv.preset(iylQPau,miJYM,I,Tq9Ac2,BIriYV3u,nil,J4F6)end
Adv.preset=function(Xx0pC,yX5i,Eq,Pj6PhX,iT1M,M5,sqDj)local iehV7hMo=Adv.getPosition(Xx0pC)
local qHrfq6=yX5i or iehV7hMo.x;local v5R=Eq or iehV7hMo.y
Adv.moveTo(Xx0pC,Vec(qHrfq6,v5R),0)if(Pj6PhX)then Adv.scale(Xx0pC,Pj6PhX)end;if(iT1M)then
Adv.alpha(Xx0pC,iT1M)end
if(M5)then Adv.setGaussianBlur(Xx0pC,M5,0)end;if(sqDj)then Adv.moveLayer(Xx0pC,sqDj)end end
Adv.moveCamera=function(Ys,Q,FaXF0EYn,DytHsRmu)FaXF0EYn=FaXF0EYn or 0;DytHsRmu=DytHsRmu or 1
Adv.setGaussianBlur(Ys,DytHsRmu,0)Adv.setGaussianBlur(Ys,FaXF0EYn,Q)end
Adv.appear=function(P,yRLNI,RHXu4t,CaPMHK,Ap3zqG5d,QZOIU,Yzu9D,E0U)local WPn=Adv.getScale(P)local yRLNI=yRLNI or 0;local RHXu4t=RHXu4t or 0;local CaPMHK=
CaPMHK or WPn.x;local Ap3zqG5d=Ap3zqG5d or 0.3;local QZOIU=QZOIU or 0;local Yzu9D=
Yzu9D or 1;local E0U=E0U or Ap3zqG5d
Adv.setGaussianBlur(P,Yzu9D,0)Adv.moveBy(P,Vec(yRLNI,RHXu4t),Ap3zqG5d)
Adv.scale(P,CaPMHK,Ap3zqG5d)Adv.alpha(P,0)Adv.show(P,E0U)
Adv.setGaussianBlur(P,QZOIU,Ap3zqG5d)end
Adv.appearBackward=function(UfEH,z0,BK19,I,ubw,f,yaA2f,wjQXn79)local C1=Adv.getScale(UfEH)local z0=z0 or 0;local BK19=BK19 or 0;local I=I or
C1.x;local ubw=ubw or 0.3;local f=f or 0;local yaA2f=yaA2f or 1
local wjQXn79=wjQXn79 or ubw;Adv.alpha(UfEH,0)Adv.setGaussianBlur(UfEH,yaA2f,0)
Adv.scale(UfEH,I,0)Adv.waitAsyncInstance(UfEH)
Adv.moveBy(UfEH,Vec(z0,BK19),ubw)Adv.scale(UfEH,1,ubw)Adv.show(UfEH,wjQXn79)
Adv.setGaussianBlur(UfEH,f,ubw)end
Adv.swelling=function(hdr,tvO,Q,LfHYQg,R,DKu3,VAaGt)local tvO=tvO or 0;local Q=Q or 0;local LfHYQg=LfHYQg or 1.1;local R=R or 0.3
local DKu3=DKu3 or 1.5;local VAaGt=VAaGt or R;Adv.moveBy(hdr,Vec(tvO,Q),R)
Adv.scale(hdr,LfHYQg,R)Adv.setGaussianBlur(hdr,DKu3,R)Adv.hide(hdr,VAaGt)end
Adv.swellingBackward=function(G1PwhyG,G,fe,MFUc,V9,iT)local G=G or 0;local fe=fe or 0;local MFUc=MFUc or 1.1;local V9=V9 or 0.3
local iT=iT or V9;Adv.moveBy(G1PwhyG,Vec(G,fe),V9)
Adv.scale(G1PwhyG,MFUc,V9)Adv.hide(G1PwhyG,iT)end
Adv.swellingBG=function(OZEQxah_,o8I7,T57hH4r,k,Tx2)local o8I7=o8I7 or 0;local T57hH4r=T57hH4r or 0;local k=k or 1.1
local Tx2=Tx2 or 0.3;Adv.moveBy(OZEQxah_,Vec(o8I7,T57hH4r),Tx2)
Adv.scale(OZEQxah_,k,Tx2)Adv.hide(OZEQxah_,Tx2)end
Adv.swellingV2=function(B,Yt6V4Y,n,ZNChA,VufPd,FWsorpKS,zuZa,M,vI)local FWsorpKS=FWsorpKS or 1;local zuZa=zuZa or 1;local M=M or 0.3
local vI=vI or false;local _ogR;local g;local n69tv=false;local z
if type(B)=='table'then n69tv=true;_ogR={}g={}z=#B;for IplgjH8v=1,z do
_ogR[IplgjH8v]=B[IplgjH8v]
if type(Yt6V4Y)=='table'then if Yt6V4Y[IplgjH8v]~=nil then
g[IplgjH8v]=Yt6V4Y[IplgjH8v]end end end else
_ogR=B;g=Yt6V4Y end
if g~=nil then
if n69tv then
for MB6jIC=1,z do if g[MB6jIC]~=nil then
Adv.act(_ogR[MB6jIC],g[MB6jIC],AdvCharacterMouth.Close)end end else Adv.act(_ogR,g,AdvCharacterMouth.Close)end;Wait(0.3)else end;local VKJxwOdv;if n=="Right"then VKJxwOdv=-250 elseif n=="Left"then VKJxwOdv=250 elseif type(n)=='number'then
VKJxwOdv=n else VKJxwOdv=250 end
if
n69tv then for h4OlVtn=1,z do
Adv.swelling(_ogR[h4OlVtn],VKJxwOdv,ZNChA,VufPd,FWsorpKS,zuZa,M)end else
Adv.swelling(_ogR,VKJxwOdv,ZNChA,VufPd,FWsorpKS,zuZa,M)end;if not vI then Wait(FWsorpKS)
if n69tv then for E0=1,z do
Adv.setGaussianBlur(_ogR[E0],0,0)end else Adv.setGaussianBlur(_ogR,0,0)end end end
Adv.showStill=function(eLMg,mVjDTYYb,l8,T,EME)mVjDTYYb=mVjDTYYb or 0;l8=l8 or 0
if(EME)then
if EME==Zoom.IN then
Adv.scale(eLMg,ScaleValue.STILL_LONG,0)Adv.scale(eLMg,ScaleValue.STILL_NORMAL,l8)elseif
EME==Zoom.OUT then Adv.scale(eLMg,ScaleValue.STILL_UP,0)
Adv.scale(eLMg,ScaleValue.STILL_NORMAL,l8)else end end
if(T)then
if T==Direction.LEFT then
Adv.moveBy(eLMg,Velocity.LEFT_STILL*-1.0,0)Adv.moveTo(eLMg,Vec(0,0),l8)elseif T==Direction.RIGHT then Adv.moveBy(eLMg,
Velocity.RIGHT_STILL*-1.0,0)
Adv.moveTo(eLMg,Vec(0,0),l8)elseif T==Direction.UP then
Adv.moveBy(eLMg,Velocity.UP_STILL*-1.0,0)Adv.moveTo(eLMg,Vec(0,0),l8)elseif T==Direction.DOWN then Adv.moveBy(eLMg,
Velocity.DOWN_STILL*-1.0,0)
Adv.moveTo(eLMg,Vec(0,0),l8)else end end;Adv.show(eLMg,mVjDTYYb)
Adv.moveLayer(eLMg,CharacterLayer.STILL)end
Adv.showStillV2=function(nudgGJ,XRN5ln,D4MiUjQ)XRN5ln=XRN5ln or 0;Adv.hide(nudgGJ,0)
Adv.show(nudgGJ,XRN5ln)Adv.moveLayer(nudgGJ,CharacterLayer.STILL)if
D4MiUjQ~=nil then D4MiUjQ()Adv.show(nudgGJ,0)end end
Adv.showStill_Wait=function(j,nN,gt2,lF,s8s3)Adv.showStill(j,nN,gt2,lF,s8s3)
if(nN~=0)then Wait(nN)end end
Adv.hideStill=function(R,h4xbyHiS,D,fk)h4xbyHiS=h4xbyHiS or 0
if(fk)then if fk==Zoom.IN then
Adv.scale(R,ScaleValue.STILL_UP,h4xbyHiS)elseif fk==Zoom.OUT then
Adv.scale(R,ScaleValue.STILL_LONG,h4xbyHiS)else end end
if(D)then
if D==Direction.LEFT then
Adv.moveBy(R,Velocity.LEFT_STILL,h4xbyHiS)elseif D==Direction.RIGHT then
Adv.moveBy(R,Velocity.RIGHT_STILL,h4xbyHiS)elseif D==Direction.UP then
Adv.moveBy(R,Velocity.UP_STILL,h4xbyHiS)elseif D==Direction.DOWN then
Adv.moveBy(R,Velocity.DOWN_STILL,h4xbyHiS)else end end;Adv.hide(R,h4xbyHiS)end
Adv.hideStill_Wait=function(EJi,xV_7,Z,N4WulQix)Adv.hideStill(EJi,xV_7,Z,N4WulQix)if(xV_7 ~=0)then
Wait(xV_7)end end
Adv.loadCutIn=function(gUl6,UsFp_,oRv9KOBG,SOGQ)SOGQ=SOGQ or CharacterLayer.CUTIN
UsFp_=UsFp_ or"Default"
local m=CS.LuaMethod.AddCutIn(parent,gUl6,UsFp_,oRv9KOBG,"Main")Adv.moveLayer(m,SOGQ)return m end
Adv.loadThunderCutIn=function(RVaYv,N,rYuUO8L,Vsz7u)Vsz7u=Vsz7u or CharacterLayer.CUTIN
N=N or"Default"local _X0FlsZf=""
CoroutineYield(CS.LuaMethod.AddThunderCutIn(parent,RVaYv,N,rYuUO8L,"Main",nil,function(VuG9Ic)_X0FlsZf=VuG9Ic end))Adv.moveLayer(_X0FlsZf,Vsz7u)return _X0FlsZf end
Adv.waitCutIn=function(H,a,ZBZWd,gPir)ZBZWd=ZBZWd or false;Wait(0.90)if ZBZWd==true then
WaitVoiceEnd(a,H,gPir)else WaitTapVoiceEnd(a,H,gPir)end end
Adv.playCutInFromInstance=function(dUg9_Y,O,e8eXevG,pT8,VJvm,Wp40V81,AQWsvIDp,w5f,kZcF,aoK)pT8=pT8 or 2.5
aoK=aoK or CutInAnimationState.Normal;local FZ_U=aoK~=CutInAnimationState.Normal;Adv.showCutIn(dUg9_Y,O,e8eXevG,0,VJvm,Wp40V81,
nil,kZcF,aoK)
Adv.waitCutIn(pT8,e8eXevG,AQWsvIDp,w5f)Adv.hideCutIn(dUg9_Y,FZ_U)Wait(0.3)end
Adv.pushInCharacter=function(nAu,JM,R,sEGF,Bcu,V,nrZMM)JM=JM or 0
nrZMM=nrZMM or CharacterLayer.CHR_UP;local l;local _hG;local zJ
if nAu==Direction.RIGHT then
if(Bcu)then l=Position.CHR_LEFT2
_hG=Position.CHR_CENTER;zJ=Position.CHR_RIGHT2 else l=Position.CHR_LEFT;_hG=Position.CHR_RIGHT end elseif nAu==Direction.LEFT then
if(Bcu)then l=Position.CHR_RIGHT2
_hG=Position.CHR_CENTER;zJ=Position.CHR_LEFT2 else l=Position.CHR_RIGHT;_hG=Position.CHR_LEFT end else end;if(Bcu)then Adv.moveCharacter(Bcu,JM,zJ)end;if(sEGF)then
Adv.moveCharacter(sEGF,JM,_hG)end;if(R)then
Adv.showCharacter(R,JM,l,nrZMM,nAu)else end;if(V)then Adv.moveBG(V,JM,nAu)end end
Adv.pushInCharacter_Wait=function(iPZXbV_,ERW,iV,IMtBU7,UMf9U,ZfmUYm,K)
Adv.pushInCharacter(iPZXbV_,ERW,iV,IMtBU7,UMf9U,ZfmUYm,K)if(ERW~=0)then Wait(ERW)end end
Adv.crossFadeBg=function(NM9TK,z966let,l)l=l or 3;Adv.alpha(z966let,0,0)
Adv.moveLayer(z966let,NM9TK,"Forward")Adv.alpha(z966let,1,l)end
Adv.crossFadeBgSyncMove=function(B1,dntR0Y,jWQN,g,RVJE,aoBlB,bt)jWQN=jWQN or 1;g=g or 3;RVJE=RVJE or 0;aoBlB=aoBlB or 0
bt=bt or 33;local L=RVJE+g+aoBlB;local Z=Vec(jWQN*L*bt)
Adv.alpha(dntR0Y,0,0)local iq=Adv.getPosition(B1)Adv.moveTo(dntR0Y,iq,0)
Adv.moveBy(B1,Z,L)Adv.moveBy(dntR0Y,Z,L)Wait(RVJE)
Adv.alpha(dntR0Y,1,g)end
Adv.crossFadeBgReverseMove=function(H9Vaxrqz,W04CjCI,uGslzNO,WEs6,NXW,GGnKhb,ongv3O)uGslzNO=uGslzNO or 1;WEs6=WEs6 or 3;NXW=NXW or 0
GGnKhb=GGnKhb or 0;ongv3O=ongv3O or 33;local UOrfZxe=NXW+WEs6+GGnKhb
local Ga35Z=Vec(uGslzNO*UOrfZxe*ongv3O)Adv.moveBy(H9Vaxrqz,Ga35Z,UOrfZxe)
Adv.moveBy(W04CjCI,Vec(-Ga35Z.x,Ga35Z.y),UOrfZxe)Wait(NXW)Adv.crossFadeBg(H9Vaxrqz,W04CjCI,WEs6)end
Adv.backCharacterCommon=function(afSY2kYq,UpJB,F,xpw,ehC5)UpJB=UpJB or""ehC5=ehC5 or""if not F then
F=Position.CHR_OFFSET_RIGHT
if afSY2kYq=="RKayamori"then F=Position.CHR_OFFSET_LEFT end end
path=CS.LuaMethod.AdvCharacterBackwardPath(parent,afSY2kYq,UpJB,ehC5)
local cZd7sYj=Adv.layer(afSY2kYq.."Backward"..ehC5,true)Adv.alpha(cZd7sYj,0,0)
if xpw then
Adv.loadImageAsync(path,nil,F.x,-217,1,1,function(NfOm1d)
Adv.moveLayer(cZd7sYj,"CharacterForward")Adv.moveLayer(NfOm1d,cZd7sYj)
CS.LuaMethod.SetAdvStageLayerName(parent,cZd7sYj,"CharacterForward")
CS.LuaMethod.SetCharacterDisplayName(parent,cZd7sYj,afSY2kYq,UpJB)end)else local do1=Adv.loadImage(path,nil,F.x,-217,1,1)
Adv.moveLayer(cZd7sYj,"CharacterForward")Adv.moveLayer(do1,cZd7sYj)
CS.LuaMethod.SetAdvStageLayerName(parent,cZd7sYj,"CharacterForward")
CS.LuaMethod.SetCharacterDisplayName(parent,cZd7sYj,afSY2kYq,UpJB)end;return cZd7sYj end
Adv.backCharacter=function(CUiwrelt,bUDT3,RcmJI,PcsTnXqr)
return Adv.backCharacterCommon(CUiwrelt,bUDT3,RcmJI,false,PcsTnXqr)end
Adv.backCharacterAsync=function(idNXnq,V,k,Y)
return Adv.backCharacterCommon(idNXnq,V,k,true,Y)end
Adv.fadeOutWithShield=function(lGWhP)local lGWhP=lGWhP or 0.3;Adv.fadeOut(lGWhP)
local AqxSe0i=Adv.fade("CharacterFade")Adv.alpha(AqxSe0i,1,0)
Adv.color(AqxSe0i,"000000",0)Adv.fadeIn(0)return AqxSe0i end
Adv.getShield=function(qB_G,o)Adv.fadeOut(0)local o=o or"ForegroundStill"
local oBxd9Bs=Adv.fade(o)Adv.alpha(oBxd9Bs,1,0)Adv.color(oBxd9Bs,qB_G,0)
Adv.fadeIn(0)return oBxd9Bs end
Adv.showWhiteTextInMiddle=function(rmPi08c,y,xyN90MRI,NJOJL,VLa,QlJ,R4RmFFgy)y=y or 0.5;xyN90MRI=xyN90MRI or 0.5
if QlJ==nil then QlJ=false end;R4RmFFgy=R4RmFFgy or 0;return
Adv.showTextInMiddle(rmPi08c,"#FFFFFF",y,xyN90MRI,NJOJL,QlJ,VLa,R4RmFFgy)end
Adv.showBlackTextInMiddle=function(e,Wu,v6TQ,r4LGuiR3,HXjb,_bmf5tSQ)Wu=Wu or 0.5;v6TQ=v6TQ or 0.5;local uckdc=HXjb~=nil
_bmf5tSQ=_bmf5tSQ or 0
return Adv.showTextInMiddle(e,"#000000",Wu,v6TQ,r4LGuiR3,uckdc,HXjb,_bmf5tSQ)end
Adv.showBlackTextInMiddleWhiteEdge=function(oW3kmm,fLQt,DEq3bN,tcxhx,w9,_Fm)fLQt=fLQt or 0.5;DEq3bN=DEq3bN or 0.5
local ngLY6QaP=w9 ~=nil;_Fm=_Fm or 0;return
Adv.showTextInMiddle(oW3kmm,"#000000",fLQt,DEq3bN,tcxhx,ngLY6QaP,w9,_Fm,"WhiteEdge")end
Adv.showRedTextInMiddle=function(ha,ew4,mqHQUP,WQAcK,xoVjTpqN,t)ew4=ew4 or 0.5;mqHQUP=mqHQUP or 0.5
local yhgPg=xoVjTpqN~=nil;t=t or 0
return Adv.showTextInMiddle(ha,"#FF0000",ew4,mqHQUP,WQAcK,yhgPg,xoVjTpqN,t)end
Adv.showTextInMiddle=function(kegFrH,N,QQHuFb4H,O,N3p,hVHqL,Jj,lM92c,hX,c9asjuf)QQHuFb4H=QQHuFb4H or 0.5;O=O or 0.5;N=N or"#000000"lM92c=
lM92c or 0;hX=hX or"None"hVHqL=hVHqL or false
c9asjuf=c9asjuf or false
key=Adv._middleText(kegFrH,N,QQHuFb4H,N3p,hVHqL,nil,nil,nil,hX,false,lM92c,c9asjuf)if(Jj==0)then return key end
if(Jj==nil)then WaitTap()else Wait(Jj)end;Adv._removeMiddleText(key,O)end
Adv.showEffectRoutine=function(NY,P,b71,jolgqe,A76,F)jolgqe=jolgqe or 0.3;A76=A76 or 0;F=F or 0
Routine(function()
local D=Adv.effect(NY,P,b71,Vec(A76,F))Adv.show(D)Wait(jolgqe)Adv.remove(D)end)end
Adv.showEffectRoutineV2=function(P,_3R35U,lu,si,kv,rc,gcAHqYcp)si=si or 0.3;kv=kv or Vec(0,0)rc=rc or 0
gcAHqYcp=gcAHqYcp or 0
if gcAHqYcp>0 and si>gcAHqYcp then si=si-gcAHqYcp end;local _Vj8aHEp=Adv.effect(P,_3R35U,lu,kv)
Routine(function()
if rc>0 then
Adv.alpha(_Vj8aHEp,0,0)Adv.show(_Vj8aHEp,rc)else Adv.show(_Vj8aHEp)end;Wait(si)Adv.hideRemove(_Vj8aHEp,gcAHqYcp)end)return _Vj8aHEp end
Adv.showEffectRotationTo=function(e7EcZQ,GtaGY,bt2Q9,kistnn,V8ukf,M4QO8t2,po4)kistnn=kistnn or 0;V8ukf=V8ukf or 0
M4QO8t2=M4QO8t2 or 0;po4=po4 or 0
local kO7M=Adv.effect(e7EcZQ,GtaGY,bt2Q9,Vec(M4QO8t2,po4))Adv.show(kO7M)Adv.rotationTo(kO7M,kistnn,V8ukf)
return kO7M end
Adv.showEffectLineWork=function(QO1A0C,Wqius7,f,Bw,xaFg)Wqius7=Wqius7 or 0.8;f=f or 0;Bw=Bw or 0
xaFg=xaFg or"ForegroundEffect"QO1A0C=QO1A0C or false
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,Wqius7,f,Bw)if QO1A0C then Sound.play("AS_Deforme_Proud")end end
Adv.showEffectLineWorkV2=function(ZbhRvzwJ,e,sOzM_,RVYwO,TRaW16)e=e or 0.8;sOzM_=sOzM_ or Vec(0,0)
RVYwO=RVYwO or"ForegroundEffect"
if not ZbhRvzwJ then Sound.playEx2("AS_Deforme_Proud")end;return
Adv.showEffectRoutineV2("Adventure/LineWork/LineWork",RVYwO,nil,e,sOzM_,nil,TRaW16)end
Adv.pleaseChantSeraphimCode=function(hmCD,H6cMd)duration=0.50
Adv.swellingBG(H6cMd,-200,-100,1.5,duration)Adv.swelling(hmCD,0,-100,1.4,duration,0)
Adv.setForegroundBlur(2.0,duration)Adv.scale(H6cMd,1,0)Adv.scale(H6cMd,5,2)
Adv.show(H6cMd,2)end
Adv.starShake=function(nks0XOWo,uJk,XByGkB,yqnk,V)_AssertIsNotNull(nks0XOWo)if type(nks0XOWo)~="table"then
nks0XOWo={nks0XOWo}end;XByGkB=XByGkB or 5;duration=1
if yqnk==nil then duration=1;yqnk=function()
Wait(duration)end elseif type(yqnk)=="number"then duration=yqnk;yqnk=function()
Wait(duration)end end;local Jt={}
for CUtrlLsq,AvO in pairs(nks0XOWo)do Jt[CUtrlLsq]=Adv.getPosition(AvO)end;if V==nil then V=false end;local PJDIIpBb;if uJk~=nil then
PJDIIpBb=Adv.getPosition(uJk)end;local kXVYYv=false
Routine(function()
while true do if kXVYYv then break end;local j5E
local ZJHt={{Vec(XByGkB/2,XByGkB),Vec(XByGkB,
-XByGkB),Vec(-XByGkB,XByGkB/2),Vec(XByGkB/2,XByGkB/2),Vec(-XByGkB,
-XByGkB)},{Vec(XByGkB,
-XByGkB),Vec(-XByGkB,XByGkB/2),Vec(XByGkB/2,XByGkB/2),Vec(-XByGkB,
-XByGkB),Vec(XByGkB/2,XByGkB)},{Vec(
-XByGkB,XByGkB/2),Vec(XByGkB/2,XByGkB/2),Vec(-XByGkB,-XByGkB),Vec(
XByGkB/2,XByGkB),Vec(XByGkB,-XByGkB)},{Vec(
XByGkB/2,XByGkB/2),Vec(-XByGkB,-XByGkB),Vec(XByGkB/2,XByGkB),Vec(XByGkB,-
XByGkB),Vec(-XByGkB,XByGkB/2)},{Vec(
-XByGkB,-XByGkB),Vec(XByGkB/2,XByGkB),Vec(XByGkB,-XByGkB),Vec(-XByGkB,
XByGkB/2),Vec(XByGkB/2,XByGkB/2)}}
for QBA2j=1,5 do for WcRHbI,vZvj in pairs(nks0XOWo)do if V then
j5E=ZJHt[(WcRHbI%5)+1][QBA2j]else j5E=ZJHt[1][QBA2j]end
Adv.moveBy(vZvj,j5E,0.05)end
if uJk~=nil then Adv.moveBy(uJk,
-2*ZJHt[1][QBA2j],0.05)end;Wait(0.05)end end end)yqnk()kXVYYv=true;for i9gzkD,rL8gcb in pairs(nks0XOWo)do
Adv.moveTo(rL8gcb,Jt[i9gzkD],0)end;if uJk~=nil then
Adv.moveTo(uJk,PJDIIpBb,0)end end
Adv.walkBy=function(pKM,H9o,tl0rT,J6zgkV,V06tUsA,xJW,FLx,BKsQDr)V06tUsA=V06tUsA or 50;xJW=xJW or 10;FLx=FLx or 0.5
BKsQDr=BKsQDr or false
for ljTm=1,J6zgkV do
Adv.moveBy(pKM,Vec(V06tUsA/2,xJW),FLx/2)Wait(FLx/2)
Adv.moveBy(pKM,Vec(V06tUsA/2,xJW*-1),FLx/2)Wait(FLx/2)
if BKsQDr then
if ljTm%2 ==1 then
if H9o==0 then
if tl0rT==0 then
Sound.play("AS_Walk_Concrete_Heels_L")else Sound.play("AS_Walk_Soil_Heels_L")end else
if tl0rT==0 then
Sound.play("AS_Walk_Concrete_Leathershoes_L")else Sound.play("AS_Walk_Soil_Leathershoes_L")end end else
if H9o==0 then if tl0rT==0 then Sound.play("AS_Walk_Concrete_Heels_R")else
Sound.play("AS_Walk_Soil_Heels_R")end else
if tl0rT==0 then
Sound.play("AS_Walk_Concrete_Leathershoes_R")else Sound.play("AS_Walk_Soil_Leathershoes_R")end end end end end end;BubbleActMode={}BubbleActMode.Vertical="Vertical"
BubbleActMode.Horizon="Horizon"BubbleActMode.Scale="Scale"BubbleActMode.StarShake="StarShake"
BubbleActMode.Quake="Quake"
Adv.bubbleSeActNoWait=function(TGOu,eaK,x5u,Xs2x,X1z5M,a3E,lDgXolp,CQ5T2,sAlSr8I,Y)local eaA;local vaNC;X1z5M=X1z5M or"default"
lDgXolp=lDgXolp or 0.7;CQ5T2=CQ5T2 or 0;Y=Y or false;if not Y then
Adv.AddBackLog("se",TGOu,nil)end
if type(a3E)=="string"then Sound.play(a3E)end
vaNC=_private_ADD_MESSAGE(eaK.x,eaK.y,0,TGOu,x5u,"","",nil,true)Adv.scale(vaNC,lDgXolp,0)local wnkdMpl1=1;eaA=CQ5T2
if sAlSr8I~=nil then wnkdMpl1=0
Routine(function()
Adv.alpha(vaNC,wnkdMpl1,sAlSr8I)Wait(sAlSr8I)wnkdMpl1=-1 end)else
Routine(function()Wait(1)
while wnkdMpl1 do Wait(0.03)wnkdMpl1=wnkdMpl1-0.01
Adv.alpha(vaNC,wnkdMpl1)if wnkdMpl1 <0 then break end end end)end
if(Xs2x==BubbleActMode.Vertical)then local P;if X1z5M=="low"then P=3 elseif
X1z5M=="default"then P=4.5 elseif X1z5M=="high"then P=6 end
Routine(function()
while vaNC do
if
wnkdMpl1 >=0 then
if eaA==0 then Adv.moveBy(vaNC,Vec(0,P),0.3)Wait(0.3)elseif eaA==1 then Adv.moveBy(vaNC,Vec(0,
P/3*-2),0.2)Wait(0.2)elseif eaA==2 then Adv.moveBy(vaNC,Vec(0,
P/3*-1),0.1)Wait(0.1)end;if eaA==2 then eaA=0 else eaA=eaA+1 end else break end end end)elseif(Xs2x==BubbleActMode.Horizon)then local Mr7w
if X1z5M=="low"then Mr7w=2 elseif X1z5M==
"default"then Mr7w=4.5 elseif X1z5M=="high"then Mr7w=7.5 end
Routine(function()
while vaNC do
if wnkdMpl1 >=0 then
if eaA==0 then Adv.moveBy(vaNC,Vec(Mr7w,0),0.3)
Wait(0.3)elseif eaA==1 then Adv.moveBy(vaNC,Vec(Mr7w/3*-2,0),0.2)
Wait(0.2)elseif eaA==2 then Adv.moveBy(vaNC,Vec(Mr7w/3*-1,0),0.1)
Wait(0.1)end;if eaA==2 then eaA=0 else eaA=eaA+1 end else break end end end)elseif(Xs2x==BubbleActMode.Scale)then local DL0yj
if X1z5M=="low"then DL0yj=0.005 elseif X1z5M==
"default"then DL0yj=0.01 elseif X1z5M=="high"then DL0yj=0.05 end
Routine(function()
while vaNC do
if wnkdMpl1 >=0 then
if eaA==0 then
Adv.scale(vaNC,lDgXolp+DL0yj,0.3,1,0)Wait(0.3)elseif eaA==1 then
Adv.scale(vaNC,lDgXolp+DL0yj+DL0yj*-2,0.6,0,0)Wait(0.6)elseif eaA==2 then Adv.scale(vaNC,lDgXolp,0.3,0,1)Wait(0.3)end;if eaA==2 then eaA=0 else eaA=eaA+1 end else break end end end)elseif(Xs2x==BubbleActMode.StarShake)then local lkFkg
if X1z5M=="low"then lkFkg=4 elseif
X1z5M=="default"then lkFkg=8 elseif X1z5M=="high"then lkFkg=13 end
Routine(function()
while vaNC do local pK
if wnkdMpl1 >=0 then
if eaA==0 then pK=Vec(lkFkg/2,lkFkg)
Adv.moveBy(vaNC,pK,0.05)Wait(0.05)pK=Vec(lkFkg,lkFkg*-1)
Adv.moveBy(vaNC,pK,0.05)elseif eaA==1 then pK=Vec(lkFkg*-1,lkFkg/2)
Adv.moveBy(vaNC,pK,0.05)Wait(0.05)pK=Vec(lkFkg/2,lkFkg/2)
Adv.moveBy(vaNC,pK,0.05)elseif eaA==2 then pK=Vec(lkFkg*-1,lkFkg*-1)
Adv.moveBy(vaNC,pK,0.05)end;Wait(0.05)if eaA==2 then eaA=0 else eaA=eaA+1 end else break end end end)elseif(Xs2x==BubbleActMode.Quake)then local TabiUJzo
local m4aIqK9h=3.141592653589793238462643;local b1X=1
if X1z5M=="low"then TabiUJzo=4 elseif X1z5M=="default"then TabiUJzo=8 elseif X1z5M=="high"then TabiUJzo=13 end
Routine(function()
while vaNC do
if wnkdMpl1 >=0 then
TabiUJzo=TabiUJzo*math.cos(m4aIqK9h/2/30*b1X)
if eaA==0 then Adv.moveBy(vaNC,Vec(TabiUJzo,0),0.06)
Wait(0.06)elseif eaA==1 then
Adv.moveBy(vaNC,Vec(TabiUJzo/3*-2,0),0.04)Wait(0.04)elseif eaA==2 then
Adv.moveBy(vaNC,Vec(TabiUJzo/3*-1,0),0.02)Wait(0.02)end
if eaA==2 then eaA=0;if b1X<30 then b1X=b1X+1 end else eaA=eaA+1 end else break end end end)end;return vaNC end
Adv.zoomShakeWithEffect=function(z,dHe0NH4,r2L,XyH2,tFrDpX,qQzEqoPt,TdqMnUrm,G1)
local fE=Adv.effect("Adventure/LineWork/LineWork","ForegroundEffect",nil,Adv.getPosition(z))local U=false;if not TdqMnUrm then Adv.show(fE)if G1 then
Sound.play("AS_Deforme_Proud")end end
local J=Routine(function()
if
not qQzEqoPt then Adv.shake(dHe0NH4,1,0.05)Adv.shake(z,0.5,0.1)end;if not tFrDpX then Adv.scale(dHe0NH4,1.27,0.2,1,1)
Adv.scale(z,1.1,0.2,1,1)end
if r2L~=nil then Adv.act(z,r2L)end;Wait(1.5)
if U==false then if not qQzEqoPt then Adv.stopShake(dHe0NH4)
Adv.stopShake(z)end;if not tFrDpX then
Adv.scale(dHe0NH4,1.25,0.4,1,1)Adv.scale(z,1,0.4,1,1)end;if
not TdqMnUrm then Adv.remove(fE)end;U=true end end)XyH2()StopRoutine(J)
if U==false then if not qQzEqoPt then
Adv.stopShake(dHe0NH4)Adv.stopShake(z)end;if not tFrDpX then
Adv.scale(dHe0NH4,1.25,0.4,1,1)Adv.scale(z,1,0.4,1,1)end;if
r2L~=nil then Adv.act(z,r2L)end
if not TdqMnUrm then Adv.remove(fE)end end end
Adv.randomCameraMove=function(_j,DVs9oE,SgHhX6,bBou,QFoC,oRxuT2W2,HHf5_PI,VR,o,i5lV,VK,tL5fZ,m,k,l,Ar)local PqN0aIE=false;local b4yX;local Sd;local ZK;local dAj3jMx;local zNFZ9l3D;local eTRY;local Qgg2HyX7;local sGai1L;local UDgYtFM3
local PJ0wBs0R;local N9b;local SQPOQ;local Js;local vIOR=Adv.getScale(_j)local bBO;if Ar then
bBO=Adv.getPosition(_j)else bBO=Vec(0,0)end
local Wye_Q3=Routine(function()
zNFZ9l3D=1124* (vIOR.x-1)eTRY=612* (vIOR.x-1)Qgg2HyX7=zNFZ9l3D%100;if Qgg2HyX7 <=50 then Qgg2HyX7=
Qgg2HyX7+100 end;sGai1L=eTRY%100;if sGai1L<=50 then sGai1L=
sGai1L+100 end;zNFZ9l3D=zNFZ9l3D-Qgg2HyX7;if zNFZ9l3D<=
100 then zNFZ9l3D=100 end;eTRY=eTRY-sGai1L
if eTRY<=100 then eTRY=100 end;if k~=nil then Js=true else Js=false end
while true do
if o then if(tL5fZ~=m)then
SQPOQ=math.random(tL5fZ,m)else SQPOQ=tL5fZ end else SQPOQ=0 end
for X3xNOK=0,SQPOQ do if Js then b4yX=Adv.getPosition(_j)-k else
b4yX=Adv.getPosition(_j)end;Sd=math.random(5,85)
if
(b4yX.x<bBO.x)and(b4yX.y<bBO.y)then Sd=Sd;ZK=false elseif(b4yX.x>bBO.x)and(
b4yX.y<bBO.y)then Sd=Sd+270;ZK=false elseif(b4yX.x>bBO.x)and(
b4yX.y>bBO.y)then Sd=Sd+180;ZK=false elseif(b4yX.x<bBO.x)and(
b4yX.y>bBO.y)then Sd=Sd+90;ZK=false elseif(b4yX.x==bBO.x)and(
b4yX.y==bBO.y)then Sd=Sd+
(90*math.random(0,3))ZK=true else
Sd=Sd+ (90*math.random(0,3))ZK=false end;dAj3jMx=math.rad(Sd)UDgYtFM3=eTRY*2*DVs9oE
UDgYtFM3=UDgYtFM3+UDgYtFM3*
(SgHhX6* ((
math.random(0,20)-10)/10))PJ0wBs0R=UDgYtFM3*bBou;N9b=UDgYtFM3*QFoC;PJ0wBs0R=PJ0wBs0R*
math.sin(dAj3jMx)
N9b=N9b*math.cos(dAj3jMx)if ZK then PJ0wBs0R=PJ0wBs0R/2;N9b=N9b/2 end
if
(b4yX.x+PJ0wBs0R)>=0 then if(b4yX.x+PJ0wBs0R)>=zNFZ9l3D then
PJ0wBs0R=PJ0wBs0R- (
(b4yX.x+PJ0wBs0R)-zNFZ9l3D)end else
if(b4yX.x+PJ0wBs0R)<=
(zNFZ9l3D*-1)then PJ0wBs0R=PJ0wBs0R-
((b4yX.x+PJ0wBs0R)- (zNFZ9l3D*-1))end end
if(b4yX.y+N9b)>=0 then if(b4yX.y+N9b)>=eTRY then N9b=N9b- ((b4yX.y+N9b)-
eTRY)end else if(
b4yX.y+N9b)<= (eTRY*-1)then N9b=N9b-
((b4yX.y+N9b)- (eTRY*-1))end end
if Js then
Adv.moveBy("StageCharacter",Vec(PJ0wBs0R,N9b,0),oRxuT2W2,HHf5_PI,VR)
Adv.moveBy("StageCharacterUp",Vec(PJ0wBs0R,N9b,0),oRxuT2W2,HHf5_PI,VR)
Adv.moveBy("StageCharacterForward",Vec(PJ0wBs0R,N9b,0),oRxuT2W2,HHf5_PI,VR)
Adv.moveBy(_j,Vec(PJ0wBs0R,N9b,0),oRxuT2W2,HHf5_PI,VR)else
Adv.moveBy(_j,Vec(PJ0wBs0R,N9b,0),oRxuT2W2,HHf5_PI,VR)end;Wait(oRxuT2W2)end
if o then Adv.shake(_j,VK,i5lV)local u=VK+0.1;Wait(u)end;if PqN0aIE then break end end end)l()PqN0aIE=true;StopRoutine(Wye_Q3)end
Adv.setPostEffetMovie=function(a9)a9=a9 or 0
Adv.setPostEffectBloomIntensity(0.4,a9)Adv.setPostEffectBloomThreshold(0.8,a9)
Adv.setPostEffectBloomColor(
255.0/255.0,215.0/255.0,191.0/255.0,a9)Adv.setPostEffectColorGradingTemperature(9.2,a9)Adv.setPostEffectColorGradingSaturation(
-30.1,a9)Adv.setPostEffectColorGradingBrightness(
-10.7,a9)
Adv.setPostEffectColorGradingContrast(21.4,a9)
Adv.setPostEffectColorGradingMixerRed(119,-17,-16,a9)Adv.setPostEffectVignetteIntensity(0.598,a9)
Adv.setPostEffectVignetteSmoothness(0.775,a9)Adv.setPostEffectVignetteRoundness(0.46,a9)
Adv.setPostEffectChromaticAberration(0.15,a9)end
Adv.setRecollection=function(zIZ7PnbU,MAC,khBC1k,Cg5h1ij,YZd,u7_,JY7zPiT,g,YC_Xd,BBY,EkL1,gX)zIZ7PnbU=zIZ7PnbU or 1;khBC1k=khBC1k or 1;u7_=u7_ or 1
g=g or 1;Cg5h1ij=Cg5h1ij or false;YC_Xd=YC_Xd or false
BBY=BBY or SepiaColor2;if EkL1 ==nil then EkL1=true end;gX=gX or 0;if EkL1 then
Sound.playEx("AS_Remember")if gX>0 then Wait(gX)end end
Adv.intervalWhiteOut(zIZ7PnbU)if MAC~=nil then MAC()end
Adv.setPostEffectSepiaColor(1,0.5,BBY,0)Adv.intervalWhiteIn(khBC1k,Cg5h1ij)
if YZd~=nil then YZd()end;Adv.intervalWhiteOut(u7_)
Adv.setPostEffectSepiaColor(0,0,BBY,0)if JY7zPiT~=nil then JY7zPiT()end
Adv.intervalWhiteIn(g,YC_Xd)end
Adv.setRecollectWhiteHaze=function(XtuY5W,zQb,iswz,w,N25WjMv,v_p4Pd,ukSQIo,AUx,x,ltEwAA2P,Lz3_fzf)
local lXEUa28=Adv.effectAsync("Adventure/Recollect/Recollect","ForegroundEffect")XtuY5W=XtuY5W or 1;iswz=iswz or 1;v_p4Pd=v_p4Pd or 1;AUx=AUx or 1
w=w or false;x=x or false;if ltEwAA2P==nil then ltEwAA2P=true end
Lz3_fzf=Lz3_fzf or 0;if ltEwAA2P then Sound.playEx("AS_Remember")
if Lz3_fzf>0 then Wait(Lz3_fzf)end end
Adv.intervalWhiteOut(XtuY5W)Adv.waitAsyncInstance(lXEUa28)Adv.show(lXEUa28,0)if
zQb~=nil then zQb()end;Adv.intervalWhiteIn(iswz,w)if
N25WjMv~=nil then N25WjMv()end;Adv.intervalWhiteOut(v_p4Pd)
Adv.hide(lXEUa28,0)if ukSQIo~=nil then ukSQIo()end
Adv.intervalWhiteIn(AUx,x)end
Adv.recollectionStart=function(fEWMgBdG,hH9l,oKaZ,jxJbfO,iU,y7hvqdr,NXGJhdEc)fEWMgBdG=fEWMgBdG or 1;oKaZ=oKaZ or 1
jxJbfO=jxJbfO or false;iU=iU or SepiaColor2;if y7hvqdr==nil then y7hvqdr=true end;NXGJhdEc=NXGJhdEc or
0;if y7hvqdr then Sound.playEx("AS_Remember")if NXGJhdEc>0 then
Wait(NXGJhdEc)end end
Adv.intervalWhiteOut(fEWMgBdG)if hH9l~=nil then hH9l()end
Adv.setPostEffectSepiaColor(1,0.5,iU,0)Adv.intervalWhiteIn(oKaZ,jxJbfO)end
Adv.recollectionFinish=function(VuHxStQ,p,_d,YL_,Uy)VuHxStQ=VuHxStQ or 1;_d=_d or 1;YL_=YL_ or false
Uy=Uy or SepiaColor2;Adv.intervalWhiteOut(VuHxStQ)
Adv.setPostEffectSepiaColor(0,0,Uy,0)if p~=nil then p()end;Adv.intervalWhiteIn(_d,YL_)end;local w0qyLbH
Adv.recollectWhiteHazeStart=function(lLw,NC,sax_O,M,KIbb,FdO1zdp)if w0qyLbH==nil then
w0qyLbH=Adv.effectAsync("Adventure/Recollect/Recollect","ForegroundEffect")end;lLw=lLw or 1
sax_O=sax_O or 1;M=M or false;if KIbb==nil then KIbb=true end;FdO1zdp=FdO1zdp or 0
if KIbb then
Sound.playEx("AS_Remember")if FdO1zdp>0 then Wait(FdO1zdp)end end;Adv.intervalWhiteOut(lLw)
Adv.waitAsyncInstance(w0qyLbH)Adv.show(w0qyLbH,0)if NC~=nil then NC()end
Adv.intervalWhiteIn(sax_O,M)end
Adv.recollectWhiteHazeFinish=function(zl,RtnI,hRAYw,_oi)zl=zl or 1;hRAYw=hRAYw or 1;_oi=_oi or false
Adv.intervalWhiteOut(zl)
if w0qyLbH~=nil then Adv.hide(w0qyLbH,0)w0qyLbH=nil end;if RtnI~=nil then RtnI()end;Adv.intervalWhiteIn(hRAYw,_oi)end
Adv.shadeWrapper=function(GDpnbWH,h1,J,ik8J,iwqAq6)iwqAq6=iwqAq6 or"CharacterFade"h1=h1 or 2
ik8J=ik8J or 1
local nOHRPf=Adv.loadImageAsync("AdvSystem/White/FadeWhite",iwqAq6)Adv.waitAsyncInstance(nOHRPf)
Adv.color(nOHRPf,"000000",0)Adv.show(nOHRPf,0)Adv.alpha(nOHRPf,0,0)
Adv.alpha(nOHRPf,0.3,h1)if not J then Wait(h1)elseif type(J)=='number'then Wait(J)else end;if
GDpnbWH~=nil then GDpnbWH()end
Adv.hideRemove(nOHRPf,ik8J)Wait(ik8J)end
Adv.breath=function(Y0d,D1,Qig,OUTJy,fcA,kSiz5Frw)local D1=D1 or 10.0;local Qig=Qig or 1;local OUTJy=OUTJy or 2;local F1=0
local im=Adv.getPosition(Y0d)local JViK;local RnTQ=false;local cwFWorsD=0;local I6dJ=0;local A8=0
if not kSiz5Frw then A8="up"else A8="down"end;local SJHrnj=Qig*10.0;local v6a34xv=D1/SJHrnj
local xQYwPMo=Routine(function()
while true do
if A8 =="up"then
for uZ=1,SJHrnj do
Adv.moveBy(Y0d,Vec(0,v6a34xv),0.1)I6dJ=I6dJ+1;cwFWorsD=1;Wait(0.1)if RnTQ then break end end;if I6dJ~=SJHrnj then break end;I6dJ=0;cwFWorsD=2;A8="down"if RnTQ then break end elseif
A8 =="down"then
for v=1,SJHrnj do Adv.moveBy(Y0d,Vec(0,-v6a34xv),0.1)
I6dJ=I6dJ+1;cwFWorsD=3;Wait(0.1)if RnTQ then break end end;if I6dJ~=SJHrnj then break end;I6dJ=0;cwFWorsD=4;A8="up"if RnTQ then break end end;if OUTJy~=-1 then F1=F1+0.5;if F1 >=OUTJy then break end end end end)if fcA~=nil then fcA()end;StopRoutine(xQYwPMo)RnTQ=true
JViK=Adv.getPosition(Y0d)
if cwFWorsD==1 then Adv.moveTo(Y0d,im,Qig)elseif cwFWorsD==2 then if JViK.y~=im.y then
Adv.moveTo(Y0d,im,Qig)end elseif cwFWorsD==3 then Adv.moveTo(Y0d,im,Qig)elseif
cwFWorsD==4 then if JViK.y~=im.y then Adv.moveTo(Y0d,im,Qig)end end end
Adv.intervalFadeIn=function(WCUL,_ALQ0c)local WCUL=WCUL or 1
Adv.fadeIn(WCUL,_ALQ0c,"CharacteFade")end
Adv.intervalFadeInV2=function(uZd,DDbY)local uZd=uZd or 1
return Adv.fadeIn(uZd,DDbY,"CharacterFade")end
Adv.intervalFadeOut=function(Mp_imbx,faNviCn7)local Mp_imbx=Mp_imbx or 1
Adv.fadeOut(Mp_imbx,faNviCn7,"CharacteFade")end
Adv.intervalFadeOutV2=function(A,TVbHco6)local A=A or 1
Adv.fadeOut(A,TVbHco6,"CharacterFade")end
Adv.intervalWhiteIn=function(slOJ,Pz66yT)local slOJ=slOJ or 1
Adv.whiteIn(slOJ,Pz66yT,"CharacteFade")end
Adv.intervalRedIn=function(YJAMZ,p)local YJAMZ=YJAMZ or 1
Adv.redIn(YJAMZ,p,"CharacteFade")end
Adv.intervalWhiteInV2=function(lAKmM2nx,H)local lAKmM2nx=lAKmM2nx or 1
Adv.whiteIn(lAKmM2nx,H,"CharacterFade")end
Adv.intervalRedInV2=function(ElyKaw7,B)local ElyKaw7=ElyKaw7 or 1
Adv.redIn(ElyKaw7,B,"CharacterFade")end
Adv.intervalWhiteOut=function(FjYB2iKs,YkHzh)local FjYB2iKs=FjYB2iKs or 1
Adv.whiteOut(FjYB2iKs,YkHzh,"CharacteFade")end
Adv.intervalRedOut=function(uULvHqf,KRK)local uULvHqf=uULvHqf or 1
Adv.redOut(uULvHqf,KRK,"CharacteFade")end
Adv.intervalWhiteOutV2=function(Lxkch4,K8)local Lxkch4=Lxkch4 or 1
Adv.whiteOut(Lxkch4,K8,"CharacterFade")end
Adv.intervalRedOutV2=function(h,Z)local h=h or 1;Adv.redOut(h,Z,"CharacterFade")end
Adv.bubbleSynchronized4=function(ymC8Tzi,Ef2Wz,_sWmAU,K,g5oIm,XP,GLj2,xVYvB,Bw,KFB,NW22j19d,xqP,j,uVl12,QlCJXU,J,PWFMNs6N,mhE3,sAEuFEAE,Q,rLPDOaJP,Hq6i8,yCd6l,Mst,IB)Adv.preset(ymC8Tzi,-640,0,0.82,0,0)
Adv.preset(GLj2,-200,0,0.82,0,0)Adv.preset(j,200,0,0.82,0,0)
Adv.preset(sAEuFEAE,640,0,0.82,0,0)local qaHJ;local r8au=AdvCharacterMouth.Mouth01;local LD1z=0.3;local LDuJaKua
local iiki6_93=AdvCharacterMouth.Mouth01;local U=0.3;local qso;local ITwM9FF=AdvCharacterMouth.Mouth01;local jW=0.3;local d
local lk=AdvCharacterMouth.Mouth01;local Zi3=0.3;if Ef2Wz~=nil then qaHJ=Ef2Wz[1]r8au=Ef2Wz[2]or r8au
LD1z=Ef2Wz[3]or LD1z end
if xVYvB~=nil then LDuJaKua=xVYvB[1]iiki6_93=
xVYvB[2]or iiki6_93;U=xVYvB[3]or U end;if uVl12 ~=nil then qso=uVl12[1]ITwM9FF=uVl12[2]or ITwM9FF
jW=uVl12[3]or jW end;if Q~=nil then d=Q[1]lk=Q[2]or lk
Zi3=Q[3]or Zi3 end;K=K or"Character"
KFB=KFB or"Character"J=J or"Character"Hq6i8=Hq6i8 or"Character"
Adv.moveLayer(ymC8Tzi,K)Adv.moveLayer(GLj2,KFB)Adv.moveLayer(j,J)
Adv.moveLayer(sAEuFEAE,Hq6i8)Adv.act(ymC8Tzi,qaHJ,r8au,0)
Adv.act(GLj2,LDuJaKua,iiki6_93,0)Adv.act(j,qso,ITwM9FF,0)Adv.act(sAEuFEAE,d,lk,0)
Adv.show(ymC8Tzi,0.3)Adv.show(GLj2,0.3)Adv.show(j,0.3)
Adv.show(sAEuFEAE,0.3)Wait(0.3)local wrzu;local whn6bk;local G34_RQoV;local JeHgQHPF;local O86VK7nM="Angry"
local YYZXKhh0=Vec(-640,300)local W_YCZF=6;local qKsjnHsO="Angry"local km=Vec(-200,-300)local enc=12;local Bne="Angry"
local LreIk=Vec(200,300)local LY=6;local JCoOpTk4="Angry"local jR4cj=Vec(640,-300)local fOFd4=12
if _sWmAU~=nil then O86VK7nM=
_sWmAU[1]or O86VK7nM;YYZXKhh0=_sWmAU[2]or YYZXKhh0;W_YCZF=
_sWmAU[3]or W_YCZF end;if Bw~=nil then qKsjnHsO=Bw[1]or qKsjnHsO;km=Bw[2]or km
enc=Bw[3]or enc end
if QlCJXU~=nil then
Bne=QlCJXU[1]or Bne;LreIk=QlCJXU[2]or LreIk;LY=QlCJXU[3]or LY end
if rLPDOaJP~=nil then JCoOpTk4=rLPDOaJP[1]or JCoOpTk4
jR4cj=rLPDOaJP[2]or jR4cj;fOFd4=rLPDOaJP[3]or fOFd4 end
local d8tON={{key="Character1",Posx=YYZXKhh0.x,Posy=YYZXKhh0.y},{key="Character2",Posx=km.x,Posy=km.y},{key="Character3",Posx=LreIk.x,Posy=LreIk.y},{key="Character4",Posx=jR4cj.x,Posy=jR4cj.y}}
table.sort(d8tON,function(g5U_y1,JVGw)return(g5U_y1.Posy>JVGw.Posy)end)local QH3H={}local e2LI={}local XDMT={}local ZBhbu={}table.insert(QH3H,d8tON[1])
local qi="lowerGroup"
for h5K3=1,3 do
if d8tON[h5K3]["Posy"]==d8tON[h5K3+1]["Posy"]then
if qi==
"lowerGroup"then table.insert(QH3H,d8tON[h5K3+1])
qi="lowerGroup"elseif qi=="middleGroup"then table.insert(e2LI,d8tON[h5K3+1])
qi="middleGroup"else table.insert(XDMT,d8tON[h5K3+1])qi="higherGroup"end else
if qi=="lowerGroup"then table.insert(e2LI,d8tON[h5K3+1])
qi="middleGroup"elseif qi=="middleGroup"then table.insert(XDMT,d8tON[h5K3+1])
qi="higherGroup"else table.insert(ZBhbu,d8tON[h5K3+1])qi="ExtraGroup"end end end;d8tON={}if#QH3H>=2 then
table.sort(QH3H,function(Wxn,VCP)return(Wxn.Posx<VCP.Posx)end)end;if#e2LI>=2 then
table.sort(e2LI,function(iMnPR,IGzoW)return
(iMnPR.Posx<IGzoW.Posx)end)end;if#XDMT>=2 then
table.sort(XDMT,function(gPvS,R_oxJpD)return(gPvS.Posx<
R_oxJpD.Posx)end)end;d8tON=QH3H;if e2LI[1]then for uYD7YK1=1,#e2LI do
table.insert(d8tON,e2LI[uYD7YK1])end end;if XDMT[1]then
for C0hz=1,#
XDMT do table.insert(d8tON,XDMT[C0hz])end end;if ZBhbu[1]then
table.insert(d8tON,ZBhbu[1])end
for bx4S1pU=1,4 do local FMy=true;if bx4S1pU==4 then FMy=false end
if
d8tON[bx4S1pU]["key"]=="Character1"then
if O86VK7nM=="Talk"then
wrzu=Adv.bubbleTalkAsync(ymC8Tzi,g5oIm,W_YCZF,YYZXKhh0,XP,FMy,true)elseif O86VK7nM=="Angry"then
wrzu=Adv.bubbleAngerAsync(ymC8Tzi,g5oIm,W_YCZF,YYZXKhh0,XP,FMy,true)end;Adv.AddBackLog(ymC8Tzi,g5oIm,XP)elseif d8tON[bx4S1pU]["key"]==
"Character2"then
if qKsjnHsO=="Talk"then
whn6bk=Adv.bubbleTalkAsync(GLj2,NW22j19d,enc,km,xqP,FMy,true)elseif qKsjnHsO=="Angry"then
whn6bk=Adv.bubbleAngerAsync(GLj2,NW22j19d,enc,km,xqP,FMy,true)end;Adv.AddBackLog(GLj2,NW22j19d,xqP)elseif d8tON[bx4S1pU]["key"]==
"Character3"then
if Bne=="Talk"then
G34_RQoV=Adv.bubbleTalkAsync(j,PWFMNs6N,LY,LreIk,mhE3,FMy,true)elseif Bne=="Angry"then
G34_RQoV=Adv.bubbleAngerAsync(j,PWFMNs6N,LY,LreIk,mhE3,FMy,true)end;Adv.AddBackLog(j,PWFMNs6N,mhE3)elseif d8tON[bx4S1pU]["key"]==
"Character4"then
if JCoOpTk4 =="Talk"then
JeHgQHPF=Adv.bubbleTalkAsync(sAEuFEAE,yCd6l,fOFd4,jR4cj,Mst,FMy,true)elseif JCoOpTk4 =="Angry"then
JeHgQHPF=Adv.bubbleAngerAsync(sAEuFEAE,yCd6l,fOFd4,jR4cj,Mst,FMy,true)end;Adv.AddBackLog(sAEuFEAE,yCd6l,Mst)end end;Adv.playLipSync(ymC8Tzi,LD1z)
Adv.playLipSync(GLj2,U)Adv.playLipSync(j,jW)Adv.playLipSync(sAEuFEAE,Zi3)
WaitTap()
if IB~=true then Layout.crossFade(0.3)Adv.hide(wrzu,0)
Adv.hide(whn6bk,0)Adv.hide(G34_RQoV,0)Adv.hide(JeHgQHPF,0)
Adv.hide(ymC8Tzi,0)Adv.hide(GLj2,0)Adv.hide(j,0)Adv.hide(sAEuFEAE,0)else
Adv.hide(wrzu,0.2)Adv.hide(whn6bk,0.2)Adv.hide(G34_RQoV,0.2)
Adv.hide(JeHgQHPF,0.2)end end
Adv._moveAndHideForBbl=function(c,i,zsXy,Q,TWm3zv,DPQT,Y2)local XCDSNuR=1
Routine(function()if DPQT then Wait(DPQT)end
if Y2 then XCDSNuR=0
Adv.alpha(c,XCDSNuR,Y2)Wait(Y2)XCDSNuR=-1 else
Routine(function()Wait(1)
while XCDSNuR do Wait(0.03)
XCDSNuR=XCDSNuR-0.01;Adv.alpha(c,XCDSNuR)if XCDSNuR<0 then break end end end)end end)local riB=TWm3zv
if(i=="Vertical")then local PMndXt;if zsXy=="low"then PMndXt=3 elseif zsXy=="default"then
PMndXt=4.5 elseif zsXy=="high"then PMndXt=6 end
Routine(function()
while c do
if
XCDSNuR>=0 then
if riB==0 then Adv.moveBy(c,Vec(0,PMndXt),0.3)Wait(0.3)elseif
riB==1 then Adv.moveBy(c,Vec(0,PMndXt/3*-2),0.2)
Wait(0.2)elseif riB==2 then Adv.moveBy(c,Vec(0,PMndXt/3*-1),0.1)
Wait(0.1)end;if riB==2 then riB=0 else riB=riB+1 end else break end end end)elseif(i=="Horizon")then local L
if zsXy=="low"then L=2 elseif zsXy=="default"then L=4.5 elseif zsXy=="high"then L=7.5 end
Routine(function()
while c do
if XCDSNuR>=0 then
if riB==0 then Adv.moveBy(c,Vec(L,0),0.3)Wait(0.3)elseif
riB==1 then Adv.moveBy(c,Vec(L/3*-2,0),0.2)Wait(0.2)elseif riB==2 then Adv.moveBy(c,Vec(
L/3*-1,0),0.1)Wait(0.1)end;if riB==2 then riB=0 else riB=riB+1 end else break end end end)elseif(i=="Scale")then local d
if zsXy=="low"then d=0.005 elseif zsXy=="default"then d=0.01 elseif zsXy=="high"then d=0.05 end
Routine(function()
while c do
if XCDSNuR>=0 then
if riB==0 then Adv.scale(c,Q+d,0.3,1,0)Wait(0.3)elseif riB==1 then Adv.scale(c,
Q+d+d*-2,0.6,0,0)Wait(0.6)elseif riB==2 then
Adv.scale(c,Q,0.3,0,1)Wait(0.3)end;if riB==2 then riB=0 else riB=riB+1 end else break end end end)elseif(i=="StarShake")then local EUeZ;if zsXy=="low"then EUeZ=4 elseif zsXy=="default"then EUeZ=8 elseif zsXy=="high"then
EUeZ=13 end
Routine(function()
while c do local j
if XCDSNuR>=0 then
if riB==0 then
j=Vec(EUeZ/2,EUeZ)Adv.moveBy(c,j,0.05)Wait(0.05)j=Vec(EUeZ,EUeZ*-1)
Adv.moveBy(c,j,0.05)elseif riB==1 then j=Vec(EUeZ*-1,EUeZ/2)Adv.moveBy(c,j,0.05)
Wait(0.05)j=Vec(EUeZ/2,EUeZ/2)Adv.moveBy(c,j,0.05)elseif riB==2 then j=Vec(EUeZ*-1,
EUeZ*-1)Adv.moveBy(c,j,0.05)end;Wait(0.05)if riB==2 then riB=0 else riB=riB+1 end else break end end end)elseif(i=="Quake")then local d1npILiq;local E1A0=3.141592653589793238462643;local _U9gbw8=1
if zsXy=="low"then
d1npILiq=4 elseif zsXy=="default"then d1npILiq=8 elseif zsXy=="high"then d1npILiq=13 end
Routine(function()
while c do
if XCDSNuR>=0 then
d1npILiq=d1npILiq*math.cos(E1A0/2/30*_U9gbw8)
if riB==0 then Adv.moveBy(c,Vec(d1npILiq,0),0.06)
Wait(0.06)elseif riB==1 then
Adv.moveBy(c,Vec(d1npILiq/3*-2,0),0.04)Wait(0.04)elseif riB==2 then
Adv.moveBy(c,Vec(d1npILiq/3*-1,0),0.02)Wait(0.02)end
if riB==2 then riB=0;if _U9gbw8 <30 then _U9gbw8=_U9gbw8+1 end else riB=riB+1 end else break end end end)end end
Adv.bubbleSEActNoWaitV2=function(t,U,a,v4y8CxT,MDmGXK,A,lA,U3P,hZo,qJ,G)local ADjB;A=A or"default"hZo=hZo or 0.7;qJ=qJ or 0
G=G or false;if not G then Adv.AddBackLog("se",t,nil)end;if
type(U)=="string"then Sound.playEx2(U)end
ADjB=_private_ADD_MESSAGE(a.x,a.y,0,t,v4y8CxT,"","",nil,true)Adv.scale(ADjB,hZo,0)
Adv._moveAndHideForBbl(ADjB,MDmGXK,A,hZo,qJ,lA,U3P)return ADjB end
Adv.loadBGWithAdvParts=function(_,WEO)local Mhpns=Adv.loadBGAsync(_)
local Hm5BjTa=Adv.loadImageAsync(WEO,"BG",nil,nil,1.25)Adv.waitAsyncInstance(Mhpns)
Adv.waitAsyncInstance(Hm5BjTa)local id="BGWithEffect"..Mhpns;local ZAdDa=Adv.layer(id,true)
Adv.moveLayer(id,"BG")Adv.moveLayer(Mhpns,id)Adv.moveLayer(Hm5BjTa,id)
Adv.show(Mhpns)Adv.show(Hm5BjTa)Adv.hide(ZAdDa)return ZAdDa end