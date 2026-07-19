local w0qyLbH=require'xlua.util'
Adv.playLineStill=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,LB0A,dl,sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0)JQT=JQT or 1;AtYtR=AtYtR or 1;ND2BCh3=
ND2BCh3 or 1;IODBg=IODBg or 1;YRDu=YRDu or 1;CWRiP=CWRiP or 1
LB0A=LB0A or 1;dl=dl or 1;if not sKPjQkdn then Adv.crossFade(JQT)
Adv.show(X8,AtYtR)end;if type(uYz2ryy4)=='function'then
uYz2ryy4()end;Wait(AtYtR)local UgXzI_C=""local MLFLplLe=""if
type(IKxw)=='function'then UgXzI_C,MLFLplLe=IKxw()end
local jwq=Adv.bubble_SPEAKER_noWait(nil,[[]],nil,BW0WFP,false,true)Adv.scale(jwq,0,0)Adv.show(nsgji,ND2BCh3)
if not w0 then
Adv.AddBackLog(bClTIa,rDzL7SVO,BW0WFP,bClTIa)else Adv.AddBackLog(bClTIa,rDzL7SVO,nil,bClTIa)end
if BW0WFP then WaitTapVoiceEnd(BW0WFP)else WaitTap(IODBg)end;Wait(YRDu)
if MLFLplLe~=""then Sound.stop(MLFLplLe)end;Adv.hideRemove(nsgji,CWRiP)if UgXzI_C~=""then
Adv.remove(UgXzI_C)end;Adv.remove(jwq)if not HHH9IlJp then
Adv.hide(X8,LB0A)if type(zVPRGDnG)=='function'then zVPRGDnG()end
Wait(dl)else Wait(dl)end end
Adv.playLineStillWithBubble=function(kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW,iuGb,koZU,C,nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o)QgyWztK=QgyWztK or Vec(0,0)
b6SL0yka=b6SL0yka or 3;hEk=hEk or 1.5;local TdqFo
Adv.playLineStill(kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW,iuGb,koZU,C,nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,function()
if
WiXG then if Oo6ecUO then TdqFo=Sound.playEx2(Oo6ecUO)end
local ykLF0=Adv.bubbleSeActNoWait(WiXG,QgyWztK,"Talk",BubbleActMode.Vertical,"default",
nil,nil,nil,b6SL0yka)Wait(hEk)
Routine(function()
local cilhu=math.abs(b6SL0yka-hEk)+0.1;Wait(cilhu)if ykLF0 then Adv.remove(ykLF0)end end)if Oo6ecUO then return ykLF0,TdqFo else return ykLF0,""end else if Oo6ecUO then
TdqFo=Sound.playEx2(Oo6ecUO)return"",TdqFo else return"",""end end end,E8o)end
Adv.bubbleVoiceActNoWait=function(eVfN,LBIJ,CSSp,CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb,_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk)local G_v887o0;CBZIwYHI=CBZIwYHI or 0;Sb=Sb or"default"
XDYs=XDYs or 1;JyOmN=JyOmN or 0;Gu2sqpyD=Gu2sqpyD or false
if N_Pk==nil then N_Pk=true end
if not Gu2sqpyD then Adv.AddBackLog(eVfN,LBIJ,CSSp)end
G_v887o0=_private_ADD_MESSAGE(x1vCS0.x,x1vCS0.y,CBZIwYHI,LBIJ,Herp,"","",CSSp,N_Pk)if XDYs~=1 then Adv.scale(G_v887o0,XDYs,0)end
Adv._moveAndHideForBbl(G_v887o0,TNczSeT,Sb,XDYs,JyOmN,_OwI,GBDhi2D)return G_v887o0 end
Adv.bubbleVoiceActWaitTap=function(oiM7BRAl,s4,EF,wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q,QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c)local Q5oEQY=false;if z then Q5oEQY=true end;local eVzQHT=Q or 0
local bdl6box_=QKTF34q3 or 4;local o=eVzQHT+bdl6box_
local RMqe=Adv.bubbleVoiceActNoWait(oiM7BRAl,s4,EF,wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q,QKTF34q3,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY)WaitTapVoiceEnd(EF,o,z)Adv.remove(RMqe)end
Adv.playCutInCountDown=function(c6H01I5a,CuoodPvK,e1iM,bN32Fa,Ub,fQEH,_om,kEI4,DSsD0,jRQUk,M,p_I,ka,OAvmrJ)bN32Fa=bN32Fa or"Default"local i
if

OAvmrJ==CutInAnimationState.Yellow or OAvmrJ==CutInAnimationState.Blue then i=Adv.loadThunderCutIn(e1iM,bN32Fa,Ub)else
i=Adv.loadCutIn(e1iM,bN32Fa,Ub)end;OAvmrJ=OAvmrJ or CutInAnimationState.Normal;local BBJcTiAS=OAvmrJ~=
CutInAnimationState.Normal
Adv.showCutIn(i,fQEH,_om,0,DSsD0,jRQUk,nil,ka,OAvmrJ)_DecreaseCountDown(c6H01I5a,CuoodPvK,fQEH)
Adv.waitCutIn(kEI4,_om,M,p_I)Adv.hideCutIn(i,BBJcTiAS)Wait(0.3)end
Adv.talkWithFacialCountDown=function(m7jWgGw,cq,Mk3,jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI,_E8uiG0,SK,J7K570R)_E8uiG0=_E8uiG0 or nil;jUhLQEm=jUhLQEm or 0.3;J7K570R=J7K570R or
false;if(Ed4qx~=nil)then if Mk3 or _E8uiG0 then
Adv.act(Ed4qx,Mk3,_E8uiG0,jUhLQEm)end end
_DecreaseCountDown(m7jWgGw,cq,ZrR2o)
local fDGKa=function(ZukFflVc)WaitTap()Adv.remove(ZukFflVc)end
local Q=_private_talkAllIn(Ed4qx,nil,ZrR2o,_g,fDGKa,_NgROQrI,nil,SK,nil,J7K570R,nil,nil)return Q end
Adv.talkWithIconCountDown=function(oJgQv,J8T,Hc,yu,IbCB,ipjC14vX,zr8xFL0,_QfE,hV8urDO)_AssertIsNotNull(Hc)_QfE=_QfE or false
local a=CS.LuaMethod.AddTalkerIcon(parent,Hc)_AssertIsNotNull(a)hV8urDO=hV8urDO or false
if not hV8urDO then Adv.AddBackLog(Hc,yu,IbCB,
nil,nil,_QfE)end;Adv.show(a)
local jv=_private_ADD_LOG_MESSAGE_AND_SET_MESSAGE_VOICE("",yu,"None",true,IbCB,zr8xFL0,_QfE)Adv.moveLayer(jv,a,"Back")
_DecreaseCountDown(oJgQv,J8T,yu)
if(ipjC14vX==nil)then WaitTap()else Wait(ipjC14vX)end;Adv.remove(a)Adv.remove(jv)end
Adv.talkWithFacialInMonologCountDown=function(v,tA_,XRbckaF,ruef,rMVr1Ks,zyXWQodW,VmovH,Q,oGjJ)oGjJ=oGjJ or 0.6
local G1BiG9x=parent:RequestObjectName()Sound.factorReverbCave(G1BiG9x,0)
Sound.factorReverbMonolog(G1BiG9x,oGjJ)
Adv.talkWithFacialCountDown(v,tA_,XRbckaF,ruef,rMVr1Ks,zyXWQodW,VmovH,true,Q)Sound.removeFactorReverb(G1BiG9x)end
Adv.talkWithIconMonologCountDown=function(X3v,fJB,p96jR,Cd,oVZ,JCPdH,yt)yt=yt or 0.6
local qejbRWcX=parent:RequestObjectName()Sound.factorReverbCave(qejbRWcX,0)
Sound.factorReverbMonolog(qejbRWcX,yt)
Adv.talkWithIconCountDown(X3v,fJB,p96jR,Cd,oVZ,JCPdH)Sound.removeFactorReverb(qejbRWcX)end
Adv.bubble_SPEAKER_CountDown=function(lKi_v,WClwNvPI,Z,F1kNUeep,VGNf90M,DTra,Kfl,a6QNS6,Q)Kfl=Kfl or 0;VGNf90M=VGNf90M or Vec(0,0)
local S=Adv.bubble_SPEAKER_noWait(Z,F1kNUeep,VGNf90M,DTra,false,Q)_DecreaseCountDown(lKi_v,WClwNvPI,F1kNUeep)
WaitTapVoiceEnd(DTra,Kfl,a6QNS6)Adv.remove(S)return S end
Adv.talkWithName=function(Wd,__q,o1isr9N,f,_a4il,Fsy)Layout.leave(Wd)return
Adv.talkAllIn(Wd,nil,__q,o1isr9N,nil,true,nil,nil,nil,f,_a4il,Fsy)end
Adv.waitTalk=function(o5EML)o5EML=o5EML or 0;local gU=_EmptyMessageInternal()
Wait(o5EML)Adv.remove(gU)end
Adv.showEmptyTalk=function()return _EmptyMessageInternal()end