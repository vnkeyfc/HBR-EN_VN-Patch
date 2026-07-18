local w0qyLbH=require'xlua.util'
Adv.talkAllIn=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,LB0A)local dl;local IODBg=IODBg or false
YRDu=YRDu or false;CWRiP=CWRiP or false;LB0A=LB0A or nil
if(X8 ==nil)then dl=function(HHH9IlJp)WaitTap()
Adv.remove(HHH9IlJp)end elseif(0 <=X8)then IODBg=true
dl=function(uYz2ryy4)
Wait(X8)Adv.remove(uYz2ryy4)end end
local sKPjQkdn=_private_talkAllIn(nsgji,bClTIa,rDzL7SVO,BW0WFP,dl,JQT,IODBg,AtYtR,ND2BCh3,YRDu,CWRiP,LB0A)return sKPjQkdn end
Adv.talkAllInParseTag=function(zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP)local b4IqQW;local LZeg0=LZeg0 or false;OJZ=OJZ or false
nmuj=nmuj or false;bP=bP or nil
if(MLFLplLe==nil)then
b4IqQW=function(koZU)WaitTap()Adv.remove(koZU)end elseif(0 <=MLFLplLe)then LZeg0=true
b4IqQW=function(C)Wait(MLFLplLe)Adv.remove(C)end end
local iuGb=_private_talkAllIn(zVPRGDnG,IKxw,w0,UgXzI_C,b4IqQW,jwq,LZeg0,kw3ei0a,EspneS5,OJZ,nmuj,bP,true)return iuGb end
Adv.talkAllInMonolog=function(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o)E8o=E8o or 0.6;local TdqFo=parent:RequestObjectName()
Sound.factorReverbCave(TdqFo,0)Sound.factorReverbMonolog(TdqFo,E8o)
Adv.talkAllIn(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka,hEk)Sound.removeFactorReverb(TdqFo)end
Adv.talk=function(ykLF0,cilhu,eVfN,LBIJ,CSSp,CBZIwYHI,x1vCS0,Herp)CBZIwYHI=CBZIwYHI or false;Herp=Herp or false
return Adv.talkAllIn(ykLF0,nil,cilhu,eVfN,LBIJ,CBZIwYHI,x1vCS0,
nil,nil,Herp)end
Adv.talkNoTap=function(TNczSeT,Sb,_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk,G_v887o0)GBDhi2D=GBDhi2D or-1;G_v887o0=G_v887o0 or false
N_Pk=N_Pk or false
return Adv.talkAllIn(TNczSeT,nil,Sb,_OwI,GBDhi2D,JyOmN,Gu2sqpyD,N_Pk,G_v887o0)end
Adv.talkWithFacial=function(oiM7BRAl,s4,EF,wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q)local QKTF34q3;KqeVtj=KqeVtj or nil;s4=s4 or 0.3;Q=Q or false;if
(EF~=nil)then
if oiM7BRAl or KqeVtj then Adv.act(EF,oiM7BRAl,KqeVtj,s4)end end;return
Adv.talkAllIn(EF,nil,wYFDyw8,JyI,nil,hncZR4my,LD,nil,nil,Q)end
Adv.talkWithFacialWithRadioSoundFx=function(z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_,o,RMqe,c6H01I5a,CuoodPvK,e1iM)if c6H01I5a==nil then c6H01I5a=true end
CuoodPvK=CuoodPvK or 1.0;e1iM=e1iM or 0.03;Sound.stopAllVoices()
Sound.startSoundFx(SoundFxType.Radio,CuoodPvK,e1iM,true)
local bN32Fa=Adv.talkWithFacial(z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_,o,RMqe)if c6H01I5a then
Sound.stopSoundFx(SoundFxType.Radio,e1iM,true)end;return bN32Fa end
Adv.talkWithFacialParseTag=function(Ub,fQEH,_om,kEI4,DSsD0,jRQUk,M,p_I,ka)local OAvmrJ;M=M or nil;fQEH=fQEH or 0.3;ka=ka or false
if
(_om~=nil)then if Ub or M then Adv.act(_om,Ub,M,fQEH)end end
return Adv.talkAllInParseTag(_om,nil,kEI4,DSsD0,nil,jRQUk,p_I,nil,nil,ka)end
Adv.talkWithFacialInMonolog=function(i,BBJcTiAS,m7jWgGw,cq,Mk3,jUhLQEm,Ed4qx)Ed4qx=Ed4qx or 0.6
local ZrR2o=parent:RequestObjectName()Sound.factorReverbCave(ZrR2o,0)
Sound.factorReverbMonolog(ZrR2o,Ed4qx)
Adv.talkWithFacial(i,BBJcTiAS,m7jWgGw,cq,Mk3,true,jUhLQEm,nil)Sound.removeFactorReverb(ZrR2o)end
Adv.talkWaitTap=function(_g,_NgROQrI,_E8uiG0,SK,J7K570R)
local fDGKa=function(ZukFflVc)WaitTap(_E8uiG0)Adv.remove(ZukFflVc)end
local Q=_private_talkAllIn(_g,nil,_NgROQrI,SK,fDGKa,nil,nil,J7K570R)return Q end
Adv.talkWaitTapParseTag=function(oJgQv,J8T,Hc,yu,IbCB)
local ipjC14vX=function(_QfE)WaitTap(Hc)Adv.remove(_QfE)end
local zr8xFL0=_private_talkAllIn(oJgQv,nil,J8T,yu,ipjC14vX,nil,nil,IbCB,nil,nil,nil,nil,true)return zr8xFL0 end
Adv.talkNoCharacter=function(hV8urDO,a,jv,v)
if(IsGamepadMode()and v~=nil)then a=v end;return Adv.talkAllIn(nil,hV8urDO,a,jv,nil,true)end
Adv.kayamoriTalk=function(tA_,XRbckaF,ruef)
Adv.talkWithIcon("RKayamori",tA_,XRbckaF,ruef)end
Adv.kayamoriTalkAsync=function(rMVr1Ks,zyXWQodW,VmovH)_AssertIsNotNull(VmovH)
Routine(function()
Adv.talkWithIcon("RKayamori",rMVr1Ks,zyXWQodW,VmovH,true)end)end
Adv.talkWithIcon=function(Q,oGjJ,G1BiG9x,X3v,fJB,p96jR)_AssertIsNotNull(Q)p96jR=p96jR or false
local Cd=CS.LuaMethod.AddTalkerIcon(parent,Q)_TalkWithIcon(Q,oGjJ,G1BiG9x,Cd,X3v,fJB,p96jR)end
Adv.talkWithIconNoBackLog=function(oVZ,JCPdH,yt,qejbRWcX,lKi_v,WClwNvPI)_AssertIsNotNull(oVZ)
WClwNvPI=WClwNvPI or false;local Z=CS.LuaMethod.AddTalkerIcon(parent,oVZ)
_TalkWithIcon(oVZ,JCPdH,yt,Z,qejbRWcX,lKi_v,WClwNvPI,true)end
Adv.talkWithIconByPath=function(F1kNUeep,VGNf90M,DTra,Kfl,a6QNS6,Q,S)S=S or false
local Wd=CS.LuaMethod.AddTalkerIconByPath(parent,F1kNUeep,VGNf90M)_TalkWithIcon(VGNf90M,DTra,Kfl,Wd,a6QNS6,Q,S)end
Adv.talkWithIconWaitTapVoice=function(__q,o1isr9N,f,_a4il,Fsy,o5EML)_AssertIsNotNull(__q)o5EML=o5EML or false
local gU=CS.LuaMethod.AddTalkerIcon(parent,__q)
_TalkWithIcon(__q,o1isr9N,f,gU,_a4il,Fsy,o5EML,false,true)end
_TalkWithIcon=function(JkLOu38,rJeSR,Qsn1Mp,GT4,rg7e,cWGq,Xe35l,L,x)_AssertIsNotNull(GT4)L=L or false;x=x or false
if not L then Adv.AddBackLog(JkLOu38,rJeSR,Qsn1Mp,
nil,nil,Xe35l)end;Adv.show(GT4)
local tnnCl=_private_ADD_LOG_MESSAGE_AND_SET_MESSAGE_VOICE("",rJeSR,"None",true,Qsn1Mp,cWGq,Xe35l)Adv.moveLayer(tnnCl,GT4,"Back")
if Qsn1Mp~=nil and x then
WaitTapVoiceEnd(Qsn1Mp)else if(rg7e==nil)then WaitTap()else Wait(rg7e)end end;Adv.remove(GT4)Adv.remove(tnnCl)end
Adv.kayamoriTalkMonolog=function(K,T06zarEG,_pYwz9W,pPhf)
Adv.talkWithIconMonolog("RKayamori",K,T06zarEG,_pYwz9W,pPhf)end
Adv.talkWithIconMonolog=function(UitKjKg,u6NC,QsGa,W8os4zeu,iqGT3)iqGT3=iqGT3 or 0.6
local iylQPau=parent:RequestObjectName()Sound.factorReverbCave(iylQPau,0)
Sound.factorReverbMonolog(iylQPau,iqGT3)Adv.talkWithIcon(UitKjKg,u6NC,QsGa,W8os4zeu)
Sound.removeFactorReverb(iylQPau)end
Adv.playCutIn=function(miJYM,I,Tq9Ac2,BIriYV3u,te,J4F6,Xx0pC,yX5i,Eq,Pj6PhX,iT1M,M5)I=I or"Default"local sqDj
if M5 ==CutInAnimationState.Yellow or M5 ==
CutInAnimationState.Blue then
sqDj=Adv.loadThunderCutIn(miJYM,I,Tq9Ac2)else sqDj=Adv.loadCutIn(miJYM,I,Tq9Ac2)end
Adv.playCutInFromInstance(sqDj,BIriYV3u,te,J4F6,Xx0pC,yX5i,Eq,Pj6PhX,iT1M,M5)end
Adv.playCutInWithAct=function(iehV7hMo,qHrfq6,v5R,Ys,Q,FaXF0EYn,DytHsRmu,P,yRLNI,RHXu4t)Ys=Ys or"Default"
Adv.act(iehV7hMo,qHrfq6,AdvCharacterMouth.Mouth01,0.2)local CaPMHK=Adv.loadCutIn(v5R,Ys,Q)
Adv.playCutInFromInstance(CaPMHK,FaXF0EYn,DytHsRmu,P,yRLNI,RHXu4t)end
Adv.bubbleAngerAsync=function(Ap3zqG5d,QZOIU,Yzu9D,E0U,WPn,UfEH,z0)E0U=E0U or Vec(0,0)Yzu9D=Yzu9D or 0
if UfEH==nil then UfEH=true end;z0=z0 or false;_AssertIsVector(E0U)if not z0 then
Adv.AddBackLog(Ap3zqG5d,QZOIU,WPn)end;return
_private_ADD_MESSAGE(E0U.x,E0U.y,Yzu9D,QZOIU,"Angry","None","",WPn,UfEH)end
Adv.bubbleAnger=function(BK19,I,ubw,f,yaA2f,wjQXn79,C1,hdr)wjQXn79=wjQXn79 or 0
local tvO=Adv.bubbleAngerAsync(BK19,I,ubw,f,yaA2f,false,hdr)WaitTapVoiceEnd(yaA2f,wjQXn79,C1)Adv.hide(tvO,0.2)end
Adv.bubbleTalkAsync=function(Q,LfHYQg,R,DKu3,VAaGt,G1PwhyG,G)DKu3=DKu3 or Vec(0,0)R=0
if G1PwhyG==nil then G1PwhyG=true end;G=G or false;_AssertIsVector(DKu3)if not G then
Adv.AddBackLog(Q,LfHYQg,VAaGt)end;return
_private_ADD_MESSAGE(DKu3.x,DKu3.y,R,LfHYQg,"Talk","None","",VAaGt,G1PwhyG)end
Adv.bubbleTalk=function(fe,MFUc,V9,iT,OZEQxah_,o8I7,T57hH4r,k)o8I7=o8I7 or 0
local Tx2=Adv.bubbleTalkAsync(fe,MFUc,V9,iT,OZEQxah_,false,k)WaitTapVoiceEnd(OZEQxah_,o8I7,T57hH4r)
Adv.hide(Tx2,0.2)Wait(0.2)Adv.remove(Tx2)end
Adv.bubbleTalkAsync_REVELATION=function(B,Yt6V4Y,n,ZNChA,VufPd,FWsorpKS,zuZa,M,vI)ZNChA=ZNChA or Vec(0,0)
if FWsorpKS==nil then FWsorpKS=true end;zuZa=zuZa or false;_AssertIsVector(ZNChA)if not zuZa then
Adv.AddBackLog(B,Yt6V4Y,VufPd)end;return
_private_ADD_MESSAGE_REVELATION(ZNChA.x,ZNChA.y,Yt6V4Y,VufPd,FWsorpKS,M,vI)end
Adv.bubbleTalk_REVELATION=function(_ogR,g,n69tv,z,VKJxwOdv,IplgjH8v,MB6jIC,h4OlVtn,E0,eLMg)IplgjH8v=IplgjH8v or 0
local mVjDTYYb=Adv.bubbleTalkAsync_REVELATION(_ogR,g,nil,z,VKJxwOdv,false,h4OlVtn,E0,eLMg)WaitTapVoiceEnd(VKJxwOdv,IplgjH8v,MB6jIC)
Adv.hide(mVjDTYYb,0.2)Wait(0.2)Adv.remove(mVjDTYYb)end
Adv.bubble_ANGRY=function(l8,T,EME,nudgGJ,XRN5ln,D4MiUjQ,j)EME=EME or Vec(0,0)j=j or false
_AssertIsVector(EME)if not j then Adv.AddBackLog(l8,T,nudgGJ)end;return
_private_ADD_MESSAGE_AND_WAIT("",T,"Angry",EME.x,EME.y,nudgGJ,XRN5ln,false,D4MiUjQ)end
Adv.bubble_TALK=function(nN,gt2,lF,s8s3,R,h4xbyHiS,D)lF=lF or Vec(0,0)D=D or false;_AssertIsVector(lF)if not
D then Adv.AddBackLog(nN,gt2,s8s3)end;return
_private_ADD_MESSAGE_AND_WAIT("",gt2,"Talk",lF.x,lF.y,s8s3,R,false,h4xbyHiS)end
Adv.bubble_THINK=function(fk,EJi,xV_7,Z,N4WulQix,gUl6,UsFp_)xV_7=xV_7 or Vec(0,0)UsFp_=UsFp_ or false
_AssertIsVector(xV_7)if not UsFp_ then Adv.AddBackLog(fk,EJi,Z)end;return
_private_ADD_MESSAGE_AND_WAIT("",EJi,"Think",xV_7.x,xV_7.y,Z,N4WulQix,false,gUl6)end
Adv.bubble_SPEAKER_noWait=function(oRv9KOBG,SOGQ,m,RVaYv,N,rYuUO8L)m=m or Vec(0,0)_AssertIsVector(m)
if N==nil then N=true end;rYuUO8L=rYuUO8L or false;if not rYuUO8L then
Adv.AddBackLog(oRv9KOBG,SOGQ,RVaYv)end
key=_private_ADD_MESSAGE(m.x,m.y,0,SOGQ,"Speaker","","",RVaYv,N)return key end
Adv.bubble_SPEAKER_noWait_withSpeakerSoundFx=function(Vsz7u,_X0FlsZf,VuG9Ic,H,a,ZBZWd,gPir,dUg9_Y,O)if gPir==nil then gPir=true end
dUg9_Y=dUg9_Y or 1.0;O=O or 0.03;Sound.stopAllVoices()
Sound.startSoundFx(SoundFxType.Speaker,dUg9_Y,O,true)
local e8eXevG=Adv.bubble_SPEAKER_noWait(Vsz7u,_X0FlsZf,VuG9Ic,H,a,ZBZWd)if gPir then
Sound.stopSoundFx(SoundFxType.Speaker,O,true)end;return e8eXevG end
Adv.bubble_THINK_noWait=function(pT8,VJvm,Wp40V81,AQWsvIDp,w5f,kZcF)Wp40V81=Wp40V81 or Vec(0,0)
_AssertIsVector(Wp40V81)if w5f==nil then w5f=true end;kZcF=kZcF or false;if not kZcF then
Adv.AddBackLog(pT8,VJvm,AQWsvIDp)end
key=_private_ADD_MESSAGE(Wp40V81.x,Wp40V81.y,0,VJvm,"Think","","",AQWsvIDp,w5f)return key end
Adv.bubble_ANGRY_noWait=function(aoK,FZ_U,nAu,JM,R,sEGF)nAu=nAu or Vec(0,0)_AssertIsVector(nAu)if R==nil then
R=true end;sEGF=sEGF or false;if not sEGF then
Adv.AddBackLog(aoK,FZ_U,JM)end
key=_private_ADD_MESSAGE(nAu.x,nAu.y,0,FZ_U,"Angry","","",JM,R)return key end
Adv.bubble_SPEAKER=function(Bcu,V,nrZMM,l,_hG,zJ,iPZXbV_)_hG=_hG or 0;nrZMM=nrZMM or Vec(0,0)
_AssertIsVector(nrZMM)
key=Adv.bubble_SPEAKER_noWait(Bcu,V,nrZMM,l,false,iPZXbV_)WaitTapVoiceEnd(l,_hG,zJ)Adv.remove(key)return key end
Adv.bubble_SPEAKER_withSpeakerSoundFx=function(ERW,iV,IMtBU7,UMf9U,ZfmUYm,K,NM9TK,z966let,l,B1)if z966let==nil then z966let=true end;l=l or 1.0;B1=B1 or
0.03;Sound.stopAllVoices()
Sound.startSoundFx(SoundFxType.Speaker,l,B1,true)
local dntR0Y=Adv.bubble_SPEAKER(ERW,iV,IMtBU7,UMf9U,ZfmUYm,K,NM9TK)if z966let then
Sound.stopSoundFx(SoundFxType.Speaker,B1,true)end;return dntR0Y end
Field.bubbleSPEAKER_noWait=function(jWQN,g,RVJE,aoBlB,bt,L)
Routine(function()
local Z=Adv.bubble_SPEAKER_noWait(jWQN,g,RVJE,bt,true,L)Wait(aoBlB)Adv.remove(Z)end)end
Field.bubbleTHINK_noWait=function(iq,H9Vaxrqz,W04CjCI,uGslzNO,WEs6,NXW)
Routine(function()
local GGnKhb=Adv.bubble_THINK_noWait(iq,H9Vaxrqz,W04CjCI,WEs6,true,NXW)Wait(uGslzNO)Adv.remove(GGnKhb)end)end
Field.setGayaBalloonText=function(ongv3O,UOrfZxe,Ga35Z,afSY2kYq)
if Ga35Z~=nil then _AssertIsNotNull(ongv3O)local UpJB=0.5
if
afSY2kYq==nil then afSY2kYq=TalkVoiceType.NormalGaya
if
string.match(string.lower(ongv3O),"follower")then UpJB=1;afSY2kYq=TalkVoiceType.FollowerGaya end end
CS.LuaMethod.SetMessageVoice(parent,ongv3O,Sound.playVoice(Ga35Z,afSY2kYq,UpJB))end
CS.LuaMethod.Field_setGayaBalloonText(parent,ongv3O,UOrfZxe,Ga35Z)end
Field.recreateGayaBalloon=function(F,xpw,ehC5,cZd7sYj,NfOm1d,do1)Field.deleteGayaBalloonAll(F)
local CUiwrelt=Field.createGayaBalloon(F,xpw)Field.setGayaBalloonText(CUiwrelt,cZd7sYj,NfOm1d)
Field.setGayaBalloonPriority(CUiwrelt,ehC5)Field.setGayaBalloonAnchor(CUiwrelt,do1 or 0)end
Field.talkByGayaBalloon=function(bUDT3,RcmJI,PcsTnXqr,idNXnq,V,k,Y,lGWhP,AqxSe0i)
if
bUDT3 ~="Player"and string.find(bUDT3,"/")==nil then if not IsExist(bUDT3)then return end end;local PcsTnXqr=PcsTnXqr or 2;local idNXnq=idNXnq or"Normal"local V=V or 0
local k=k or 0;local qB_G=Field.createGayaBalloon(bUDT3,idNXnq)
Field.setGayaBalloonText(qB_G,RcmJI,Y)Field.setGayaBalloonPriority(qB_G,V)
Field.setGayaBalloonAnchor(qB_G,k or 0)if AqxSe0i then _AssertIsVector(AqxSe0i)
Field.setGayaBalloonOffset(qB_G,AqxSe0i)end
Field.waitGayaBalloon(PcsTnXqr,Y,lGWhP)Field.deleteGayaBalloonAll(bUDT3)end
Field.talkByGayaBalloonNoPlayable=function(o,oBxd9Bs,rmPi08c,y,xyN90MRI,NJOJL,VLa,QlJ,R4RmFFgy,e,Wu)local rmPi08c=rmPi08c or 3;local y=y or"Normal"
local xyN90MRI=xyN90MRI or 0;local NJOJL=NJOJL or 0;local QlJ=QlJ or false;local e=e or false
local v6TQ=Field.createGayaBalloon(o,y)
Field.setGayaBalloonText(v6TQ,oBxd9Bs,VLa,R4RmFFgy)Field.setGayaBalloonPriority(v6TQ,xyN90MRI)Field.setGayaBalloonAnchor(v6TQ,
NJOJL or 0)
if Wu then
_AssertIsVector(Wu)Field.setGayaBalloonOffset(v6TQ,Wu)end;if QlJ then Adv.AddBackLog(o,oBxd9Bs,VLa)end
if VLa~=nil and e==
false then WaitVoiceEnd(VLa,rmPi08c)else Wait(rmPi08c)end;Field.deleteGayaBalloonAll(o)end
Field.returnToWayPoint=function(r4LGuiR3,HXjb,_bmf5tSQ,uckdc,oW3kmm,fLQt)
ReachEventNoLock(r4LGuiR3,function()PlayerLock()if fLQt then Yield(fLQt)end
if
_bmf5tSQ then if oW3kmm then Adv.talkWithIcon(oW3kmm,_bmf5tSQ,uckdc)else
Adv.kayamoriTalk(_bmf5tSQ,uckdc)end end;Wait(0.3)Field.moveOnRouteWait("Player",HXjb)
Field.resetPosition()Field.cancelAutoMove()PlayerUnLock()end)end
Field.returnToWayPointWithMonolog=function(DEq3bN,tcxhx,w9,_Fm,ngLY6QaP)
ReachEventNoLock(DEq3bN,function()PlayerLock()if w9 then
if ngLY6QaP then
Adv.talkWithIconMonolog(ngLY6QaP,w9,_Fm)else Adv.kayamoriTalkMonolog(w9,_Fm)end end;Wait(0.3)
Field.moveOnRouteWait("Player",tcxhx)Field.resetPosition()Field.cancelAutoMove()
PlayerUnLock()end)end
Field.returnToWayPointNoFace=function(ha,ew4,mqHQUP,WQAcK)
ReachEventNoLock(ha,function()PlayerLock()if mqHQUP then
Adv.talkNoCharacter("",mqHQUP,WQAcK)end;Wait(0.3)
Field.moveOnRouteWait("Player",ew4)Field.resetPosition()PlayerUnLock()end)end
Field.returnToWayPointCutIn=function(xoVjTpqN,t,yhgPg,kegFrH,N,QQHuFb4H,O,N3p)
ReachEventNoLock(xoVjTpqN,function()
local hVHqL=Adv.effectAsync("Adventure/LineWork/LineWork","ForegroundEffect")Adv.waitAsyncInstanceAll()PlayerLock()
if N3p then Yield(N3p)end
local Jj=Routine(function()Wait(0.2)Adv.show(hVHqL)
Sound.playEx2("AS_Deforme_Proud")
Field.startCameraImpact(0.75,0.75,0.75,0.720,0.500)end)local lM92c=Adv.loadCutIn(yhgPg,kegFrH,N)
Adv.showCutIn(lM92c,QQHuFb4H,O,0)Adv.waitCutIn(nil,O)Adv.hideCutIn(lM92c)
StopRoutine(Jj)Adv.hide(hVHqL,0.1)Wait(0.3)
Field.moveOnRouteWait("Player",t)Field.resetPosition()Field.cancelAutoMove()
PlayerUnLock()end)end
Field.returnToPosition=function(hX,c9asjuf,NY,P,b71,jolgqe)
ReachEventNoLock(hX,function()PlayerLock()
Field.hideGayaBalloonAll()if jolgqe then Yield(jolgqe)end
local A76=Field.getPlayerCharacter()
if P then if A76 ~=""then Adv.talkWithIcon(A76,P,b71)else
Adv.kayamoriTalk(P,b71)end end;Wait(0.3)
local F=Field.getByTargetPosition(hX,c9asjuf,NY,false)local D=Field.computeMoveTime("Player",F,1.420)
Field.moveToWait("Player",F,D)Field.cancelAutoMove()PlayerUnLock()end)end
Field.returnToPositionEx=function(P,_3R35U,lu,si,kv,rc,gcAHqYcp)
ReachEvent(P,function()Field.hideGayaBalloonAll()if rc then
Field.setFollowerAutoMoveEnabled(true)end;if kv then Yield(kv)end
if gcAHqYcp then if lu then
Adv.talkWithIcon(gcAHqYcp,lu,si)end else local _Vj8aHEp=Field.getPlayerCharacter()
if lu then if
_Vj8aHEp~=""then Adv.talkWithIcon(_Vj8aHEp,lu,si)else
Adv.kayamoriTalk(lu,si)end end end;Wait(0.3)
Field.moveToComputedMoveTimeWait("Player",_3R35U)Field.cancelAutoMove()end)end
Field.returnToPositionWithMonolog=function(e7EcZQ,GtaGY,bt2Q9,kistnn,V8ukf,M4QO8t2)
ReachEventNoLock(e7EcZQ,function()PlayerLock()
if M4QO8t2 then Yield(M4QO8t2)end;local po4=Field.getPlayerCharacter()if kistnn then
if po4 ~=""then
Adv.talkWithIconMonolog(po4,kistnn,V8ukf)else Adv.kayamoriTalkMonolog(kistnn,V8ukf)end end;Wait(0.3)
local kO7M=Field.getByTargetPosition(e7EcZQ,GtaGY,bt2Q9,false)local QO1A0C=Field.computeMoveTime("Player",kO7M,1.420)
Field.moveToWait("Player",kO7M,QO1A0C)Field.cancelAutoMove()PlayerUnLock()end)end
Field.returnToPositionExWithMonolog=function(Wqius7,f,Bw,xaFg,ZbhRvzwJ,e,sOzM_)
ReachEvent(Wqius7,function()Field.hideGayaBalloonAll()if e then
Field.setFollowerAutoMoveEnabled(true)end;if ZbhRvzwJ then Yield(ZbhRvzwJ)end
if sOzM_ then if Bw then
Adv.talkWithIconMonolog(sOzM_,Bw,xaFg)end else local RVYwO=Field.getPlayerCharacter()
if Bw then if
RVYwO~=""then Adv.talkWithIconMonolog(RVYwO,Bw,xaFg)else
Adv.kayamoriTalkMonolog(Bw,xaFg)end end end;Wait(0.3)
Field.moveToComputedMoveTimeWait("Player",f)Field.cancelAutoMove()end)end
Field.returnToPositionNoFace=function(TRaW16,hmCD,H6cMd,nks0XOWo,uJk,XByGkB)
ReachEventNoLock(TRaW16,function()PlayerLock()
if XByGkB then Yield(XByGkB)end
if nks0XOWo then Adv.talkNoCharacter("",nks0XOWo,uJk)end;Wait(0.3)
local yqnk=Field.getByTargetPosition(TRaW16,hmCD,H6cMd,false)local V=Field.computeMoveTime("Player",yqnk,1.420)
Field.moveToWait("Player",yqnk,V)Field.cancelAutoMove()PlayerUnLock()end)end
Adv.showCutIn=function(Jt,PJDIIpBb,kXVYYv,CUtrlLsq,AvO,j5E,ZJHt,QBA2j,WcRHbI)AvO=AvO or 0;positionY=positionY or 0
CUtrlLsq=CUtrlLsq or 0;j5E=j5E or false;ZJHt=ZJHt or TalkVoiceType.Talk
QBA2j=QBA2j or false;WcRHbI=WcRHbI or CutInAnimationState.Normal;if not QBA2j then
Adv.AddBackLog(Jt,PJDIIpBb,kXVYYv)end;Sound.play("SY_Cutin_Big_In")if
kXVYYv~=nil then _AssertIsNotNull(Jt)
CS.LuaMethod.SetMessageVoice(parent,Jt,Sound.playVoice(kXVYYv,ZJHt))end
CS.LuaMethod.ShowCutIn(parent,Jt,PJDIIpBb,kXVYYv,CUtrlLsq,AvO,j5E,WcRHbI)end
Adv.showCutInV2=function(vZvj,i9gzkD,rL8gcb,pKM,H9o,tl0rT,J6zgkV,V06tUsA,xJW,FLx)H9o=H9o or 0;positionY=positionY or 0;pKM=pKM or 0;tl0rT=tl0rT or
"SY_Cutin_Big_In"J6zgkV=J6zgkV or false;V06tUsA=V06tUsA or
TalkVoiceType.Talk;xJW=xJW or false;FLx=FLx or
CutInAnimationState.Normal;if not xJW then
Adv.AddBackLog(vZvj,i9gzkD,rL8gcb)end
if tl0rT~=nil then Sound.play(tl0rT)end;if rL8gcb~=nil then _AssertIsNotNull(vZvj)
CS.LuaMethod.SetMessageVoice(parent,vZvj,Sound.playVoice(rL8gcb,V06tUsA))end
CS.LuaMethod.ShowCutIn(parent,vZvj,i9gzkD,rL8gcb,pKM,H9o,J6zgkV,FLx)end
Adv.miniCutIn=function(BKsQDr,ljTm,TGOu,eaK,x5u,Xs2x,X1z5M,a3E,lDgXolp,CQ5T2,sAlSr8I,Y)
Adv.showMiniCutIn(BKsQDr,ljTm,TGOu,eaK,x5u,Xs2x,X1z5M,nil,true)if not Y then Adv.AddBackLog(BKsQDr,TGOu,eaK)end
if
lDgXolp then WaitTapVoiceEnd(eaK,a3E,CQ5T2)else WaitTap()end
if BKsQDr=="Computer"then
Routine(function()
if not sAlSr8I then Adv.hideMiniCutIn()end;Wait(0.3)end)else Wait(0.5)if not sAlSr8I then Adv.hideMiniCutIn()end
Wait(0.3)end end
Adv.miniCutInWithRadioSoundFx=function(eaA,vaNC,wnkdMpl1,P,Mr7w,DL0yj,lkFkg,pK,TabiUJzo,m4aIqK9h,b1X,z,dHe0NH4,r2L,XyH2)if dHe0NH4 ==nil then dHe0NH4=true end;r2L=r2L or 1.0;XyH2=
XyH2 or 0.03;Sound.stopAllVoices()
Sound.startSoundFx(SoundFxType.Radio,r2L,XyH2,true)
Adv.miniCutIn(eaA,vaNC,wnkdMpl1,P,Mr7w,DL0yj,lkFkg,pK,TabiUJzo,m4aIqK9h,b1X,z)if dHe0NH4 then
Sound.stopSoundFx(SoundFxType.Radio,XyH2,true)end end
Adv.showMiniCutIn=function(tFrDpX,qQzEqoPt,TdqMnUrm,G1,fE,U,J,_j,DVs9oE)if fE==nil then fE=BalloonType.Normal end
if U==nil then U=false end;if J==nil then J=false end;if _j==nil then _j=true end;if not DVs9oE then
Adv.AddBackLog(tFrDpX,TdqMnUrm,G1)end
key=CS.LuaMethod.ShowMiniCutIn(parent,tFrDpX,qQzEqoPt,TdqMnUrm,G1,fE,U,J,_j)if G1 ~=nil then _AssertIsNotNull(key)
CS.LuaMethod.SetMessageVoice(parent,key,Sound.playVoice(G1,TalkVoiceType.Talk))end;return key end
Adv.showMiniCutInWithRadioSoundFx=function(SgHhX6,bBou,QFoC,oRxuT2W2,HHf5_PI,VR,o,i5lV,VK,tL5fZ,m,k)if tL5fZ==nil then tL5fZ=true end;m=m or 1.0
k=k or 0.03;Sound.stopAllVoices()
Sound.startSoundFx(SoundFxType.Radio,m,k,true)
local l=Adv.showMiniCutIn(SgHhX6,bBou,QFoC,oRxuT2W2,HHf5_PI,VR,o,i5lV,VK)
if tL5fZ then Sound.stopSoundFx(SoundFxType.Radio,k,true)end;return l end
Adv.specialMiniCutIn=function(Ar,PqN0aIE,b4yX,Sd,ZK,dAj3jMx,zNFZ9l3D,eTRY,Qgg2HyX7,sGai1L)
Adv.showSpecialMiniCutIn(Ar,PqN0aIE,b4yX,Sd,ZK,dAj3jMx,nil,true)
if eTRY then WaitTapVoiceEnd(b4yX,zNFZ9l3D,Qgg2HyX7)else WaitTap()end;Wait(0.5)if not sGai1L then Adv.hideMiniCutIn()end
Wait(0.3)end
Adv.showSpecialMiniCutIn=function(UDgYtFM3,PJ0wBs0R,N9b,SQPOQ,Js,vIOR,bBO)if SQPOQ==nil then SQPOQ=BalloonType.Normal end;if
Js==nil then Js=false end;if vIOR==nil then vIOR=false end
if bBO==nil then bBO=true end
key=CS.LuaMethod.ShowSpecialMiniCutIn(parent,UDgYtFM3,PJ0wBs0R,N9b,SQPOQ,Js,vIOR,bBO)if N9b~=nil then _AssertIsNotNull(key)
CS.LuaMethod.SetMessageVoice(parent,key,Sound.playVoice(N9b,TalkVoiceType.Talk))end;return key end
Adv.bubble_TALK_noWait=function(Wye_Q3,X3xNOK,u,a9,zIZ7PnbU,MAC)u=u or Vec(0,0)_AssertIsVector(u)if zIZ7PnbU==nil then
zIZ7PnbU=true end;MAC=MAC or false;if not MAC then
Adv.AddBackLog(Wye_Q3,X3xNOK,a9)end
Sound.playVoice(a9,TalkVoiceType.Bubble)
key=_private_ADD_MESSAGE(u.x,u.y,0,X3xNOK,"Talk","","",a9,zIZ7PnbU)return key end
Adv.talkWithTextInMiddle=function(khBC1k,Cg5h1ij,YZd,u7_,JY7zPiT,g,YC_Xd,BBY,EkL1,gX,XtuY5W,zQb,iswz,w,N25WjMv,v_p4Pd)
Adv._talkWithTextInMiddle(khBC1k,Cg5h1ij,YZd,u7_,JY7zPiT,g,YC_Xd,BBY,EkL1,gX,XtuY5W,zQb,iswz,"None",w,N25WjMv,v_p4Pd)end
Adv.talkWithTextInMiddleWhiteEdge=function(ukSQIo,AUx,x,ltEwAA2P,Lz3_fzf,lXEUa28,fEWMgBdG,hH9l,oKaZ,jxJbfO,iU,y7hvqdr,NXGJhdEc,VuHxStQ,p,_d)hH9l=hH9l or"black"
Adv._talkWithTextInMiddle(ukSQIo,AUx,x,ltEwAA2P,Lz3_fzf,lXEUa28,fEWMgBdG,hH9l,oKaZ,jxJbfO,iU,y7hvqdr,NXGJhdEc,"WhiteEdge",VuHxStQ,p,_d)end
Adv.talkWithTextInMiddleBlackEdge=function(YL_,Uy,lLw,NC,sax_O,M,KIbb,FdO1zdp,zl,RtnI,hRAYw,_oi,GDpnbWH,h1,J,ik8J)FdO1zdp=FdO1zdp or"white"
Adv._talkWithTextInMiddle(YL_,Uy,lLw,NC,sax_O,M,KIbb,FdO1zdp,zl,RtnI,hRAYw,_oi,GDpnbWH,"BlackEdge",h1,J,ik8J)end
Adv._talkWithTextInMiddle=function(iwqAq6,nOHRPf,Y0d,D1,Qig,OUTJy,fcA,kSiz5Frw,F1,im,JViK,RnTQ,cwFWorsD,I6dJ,A8,SJHrnj,v6a34xv)D1=D1 or 0.5;Qig=Qig or 0.5
kSiz5Frw=kSiz5Frw or"#FFFFFF"RnTQ=RnTQ or(fcA~=nil)cwFWorsD=cwFWorsD or""
I6dJ=I6dJ or"None"SJHrnj=SJHrnj or false;v6a34xv=v6a34xv or false;if not F1 then
if SJHrnj then
Adv.AddBackLog(iwqAq6,nOHRPf,Y0d,iwqAq6)else Adv.AddBackLog(iwqAq6,nOHRPf,Y0d)end end
key=Adv._middleText(nOHRPf,kSiz5Frw,D1,OUTJy,RnTQ,im,JViK,cwFWorsD,I6dJ,false,A8,v6a34xv)local xQYwPMo=Sound.playVoice(Y0d,TalkVoiceType.Talk)if
xQYwPMo~=nil then
CS.LuaMethod.SetMessageVoice(parent,key,xQYwPMo)end
if(fcA==nil)then WaitTap()else Wait(fcA)end;Adv._removeMiddleText(key,Qig)end
Adv.talkWithTextInMiddleShowWithVoice=function(uZ,v,WCUL,_ALQ0c,uZd,DDbY,Mp_imbx,faNviCn7,A,TVbHco6,slOJ,Pz66yT,YJAMZ,p,lAKmM2nx,H,ElyKaw7)return
Adv._talkWithTextInMiddleShowWithVoice(false,uZ,v,WCUL,_ALQ0c,uZd,DDbY,Mp_imbx,faNviCn7,A,TVbHco6,slOJ,Pz66yT,YJAMZ,p,lAKmM2nx,H,ElyKaw7)end
Adv.talkWithTextInMiddleShowWithVoiceAlignLeft=function(B,FjYB2iKs,YkHzh,uULvHqf,KRK,Lxkch4,K8,h,Z,ymC8Tzi,Ef2Wz,_sWmAU,K,g5oIm,XP,GLj2)offsetX=0;return
Adv._talkWithTextInMiddleShowWithVoice(true,B,FjYB2iKs,YkHzh,uULvHqf,KRK,false,Lxkch4,K8,h,Z,ymC8Tzi,Ef2Wz,_sWmAU,K,g5oIm,XP,GLj2,offsetX)end
Adv._talkWithTextInMiddleShowWithVoice=function(xVYvB,Bw,K,FB,NW22j19d,xqP,j,uVl12,QlCJXU,J,PWFMNs6N,mhE3,sAEuFEAE,Q,rLPDOaJP,Hq6i8,yCd6l,Mst,IB)NW22j19d=NW22j19d or 0.5;xqP=xqP or 0.5;QlCJXU=QlCJXU or
"#FFFFFF"sAEuFEAE=sAEuFEAE or(uVl12 ~=nil)Q=
Q or""rLPDOaJP=rLPDOaJP or"None"yCd6l=yCd6l or false
Mst=Mst or false
if not J then if yCd6l then Adv.AddBackLog(Bw,K,FB,Bw)else
Adv.AddBackLog(Bw,K,FB)end end;local qaHJ
if xVYvB then
qaHJ=Adv._setMiddleTextCustomWidth(K,QlCJXU,false,sAEuFEAE,PWFMNs6N,mhE3,Q,rLPDOaJP,false,Hq6i8,Mst,IB)else
qaHJ=Adv._setMiddleText(K,QlCJXU,j,sAEuFEAE,PWFMNs6N,mhE3,Q,rLPDOaJP,false,Hq6i8,Mst)end;Adv.alpha(qaHJ,0,0)
local r8au=Sound.playVoice(FB,TalkVoiceType.Talk)if r8au~=nil then
CS.LuaMethod.SetMessageVoice(parent,qaHJ,r8au)end;Adv.alpha(qaHJ,1,NW22j19d)
Wait(NW22j19d)if(uVl12 ==0)then return qaHJ end;if FB~=nil then WaitVoiceEnd(FB,uVl12)else
Wait(uVl12)end;Adv._removeMiddleText(qaHJ,xqP)end
Adv.talkWithTextInMiddleNoUseCharaInfo=function(LD1z,LDuJaKua,iiki6_93,U,qso,ITwM9FF,jW,d,lk,Zi3,wrzu,whn6bk,G34_RQoV,JeHgQHPF,O86VK7nM)
Adv.talkWithTextInMiddle(LD1z,LDuJaKua,iiki6_93,U,qso,ITwM9FF,jW,d,lk,Zi3,wrzu,whn6bk,G34_RQoV,JeHgQHPF,true,O86VK7nM)end
Adv.talkWithTextInMiddleWhiteEdgeNoUseCharaInfo=function(YYZXKhh0,W_YCZF,qKsjnHsO,km,enc,Bne,LreIk,LY,JCoOpTk4,jR4cj,fOFd4,d8tON,QH3H,e2LI,XDMT)
Adv.talkWithTextInMiddleWhiteEdge(YYZXKhh0,W_YCZF,qKsjnHsO,km,enc,Bne,LreIk,LY,JCoOpTk4,jR4cj,fOFd4,d8tON,QH3H,e2LI,true,XDMT)end
Adv.talkWithTextInMiddleShowWithVoiceNoUseCharaInfo=function(ZBhbu,qi,g5U_y1,JVGw,h5K3,Wxn,VCP,iMnPR,IGzoW,gPvS,R_oxJpD,uYD7YK1,C0hz,bx4S1pU,FMy,c)
Adv.talkWithTextInMiddleShowWithVoice(ZBhbu,qi,g5U_y1,JVGw,h5K3,Wxn,VCP,iMnPR,IGzoW,gPvS,R_oxJpD,uYD7YK1,C0hz,bx4S1pU,FMy,true,c)end
Adv.question=function(i,zsXy,Q,TWm3zv,DPQT,Y2,XCDSNuR,riB,PMndXt)XCDSNuR=XCDSNuR or-1;local L=-1;local d=function(EUeZ)L=EUeZ end
local Y2=Y2 or""local PMndXt=PMndXt or false
CoroutineYield(CS.LuaMethod.AddQuestion(parent,"dummy_key",i,zsXy,Q,TWm3zv,DPQT,d,Y2,XCDSNuR,riB,PMndXt,false))return L end
Adv.questionV2=function(j,d1npILiq,E1A0,_U9gbw8,t,U,a,v4y8CxT,MDmGXK)a=a or-1;local A=-1;local lA=function(U3P)A=U3P end;local U=U or""
local MDmGXK=MDmGXK or false
CoroutineYield(CS.LuaMethod.AddQuestion(parent,"dummy_key",j,d1npILiq,E1A0,_U9gbw8,t,lA,U,a,v4y8CxT,MDmGXK,true))return A end
Adv.questionWithTimeLimit=function(hZo,qJ,G,ADjB,_,WEO,Mhpns,Hm5BjTa,id,ZAdDa)Hm5BjTa=Hm5BjTa or-1;G=G or 5;local nmakk=-1
local Aehk5=function(p8xZy)nmakk=p8xZy end;local Mhpns=Mhpns or""local ZAdDa=ZAdDa or false
CoroutineYield(CS.LuaMethod.AddQuestionTimeLimit(parent,"dummy_key",hZo,qJ,G,ADjB,_,WEO,Aehk5,Mhpns,Hm5BjTa,id,ZAdDa))return nmakk end
Adv.gateQuestion=function(U3t,P1Rp6x)local O8=Adv.question(U3t,P1Rp6x,0,true,nil,nil,0)if
O8 ~=0 then Field.cancelAutoMove()end;return O8 end
Adv.doubleQuestion=function(tfPZ6S,SQsnv2,GnNk,Wt,rj,b,ePP89,ta)local PE=-1;local R3LPfoAR=-1
local hG0e5=function(fnSAQ,g7vEK2Yw)PE=fnSAQ;R3LPfoAR=g7vEK2Yw end;rj=rj or ReverbValue.Monolog
local Nwog=parent:RequestObjectName()Sound.factorReverbCave(Nwog,0)
Sound.factorReverbMonolog(Nwog,rj)
CoroutineYield(CS.LuaMethod.AddDoubleQuestion(parent,"dummy_key",tfPZ6S,SQsnv2,GnNk,Wt,false,hG0e5,b,ePP89,ta))Sound.removeFactorReverb(Nwog)return PE,R3LPfoAR end
Adv.doubleQuestionAL=function(Oh88moEH,xRLvM0R,Fl7,lxckPN,P)
local HCDibv,kvOeZg=Adv.doubleQuestion(Oh88moEH,xRLvM0R,Fl7,lxckPN,P,
Adv.__createALLocalFlagConel(Oh88moEH,0,0)..
"|"..Adv.__createALLocalFlagConel(Oh88moEH,0,1).."|"..
Adv.__createALLocalFlagConel(Oh88moEH,0,2),
Adv.__createALLocalFlagConel(Oh88moEH,1,0)..
"|"..Adv.__createALLocalFlagConel(Oh88moEH,1,1).."|"..
Adv.__createALLocalFlagConel(Oh88moEH,1,2),
Adv.__createALLocalFlagConel(Oh88moEH,2,0)..
"|"..Adv.__createALLocalFlagConel(Oh88moEH,2,1).."|"..
Adv.__createALLocalFlagConel(Oh88moEH,2,2))
SetLocalFlag(Adv.__createALLocalFlagKey(Oh88moEH,HCDibv,kvOeZg),1)return HCDibv,kvOeZg end
Adv.shopDoubleQuestion=function(ApLufI,VJb2ni7f,fjaPC,ge,GphsD,ja,Wy1r,oXrw,NXg9SSL)local PDjanaA;Wy1r=Wy1r or ReverbValue.Monolog
local dq15v6=parent:RequestObjectName()Sound.factorReverbCave(dq15v6,0)
Sound.factorReverbMonolog(dq15v6,Wy1r)
CoroutineYield(CS.LuaMethod.ShopDoubleQuestion(parent,"dummy_key",ApLufI,VJb2ni7f,fjaPC,ge,GphsD,ja,oXrw,NXg9SSL,function(T2oQy8)PDjanaA=T2oQy8 end))Sound.removeFactorReverb(dq15v6)return PDjanaA end
Adv.miniQuestion=function(lqo7pV,HJ,J,H,ms,Acq49jeS)local FYj84ylg=-1;local O=function(Q3z)FYj84ylg=Q3z end
J=J or false;H=H or""ms=ms or""Acq49jeS=Acq49jeS or 0
CoroutineYield(CS.LuaMethod.AddMiniQuestion(parent,"dummy_key",lqo7pV,HJ,J,H,O,ms,Acq49jeS))return FYj84ylg end
Adv.__createALLocalFlagConel=function(JYW4t8,Ec,FD)return"LocalFlag("..
Adv.__createALLocalFlagKey(JYW4t8,Ec,FD)..")==1"end
Adv.__createALLocalFlagKey=function(ibKVH,J,B0HNP)
return"Adv.doubleQuestionAL"..ibKVH..
tostring(J).."-"..tostring(B0HNP)end
Adv.NovelAlreadyRead=function(J,ITE2g3,sB)
Log(J..
"の"..tostring(ITE2g3).."個目のTalkを既読")
CS.LuaMethod.SetNovelAlreadyRead(parent,J,ITE2g3)return sB()end
Adv.TapSkipOff=function()CS.LuaMethod.TapSkipOff(parent)end
Adv.getQuestionLastSelect=function(CEnHt0,p7,iQPC)return
CS.LuaMethod.Adv_GetQuestionLastSelect(parent,CEnHt0,p7,iQPC)end
Adv.getDoubleQuestionLastSelect=function(xoS,I,W6r8w_,vWKV79Oh)local zo1f7OwM,ziK_8O
CS.LuaMethod.Adv_GetDoubleQuestionLastSelect(xoS,I,W6r8w_,vWKV79Oh,function(zsDre4f,nGkK)
zo1f7OwM=zsDre4f;ziK_8O=nGkK end)return zo1f7OwM,ziK_8O end
Adv.jukeBox=function()local E3={}local zoOcwUei
if
Domain.getItemCount("Item_MusicRecord_1")>0 then
zoOcwUei={name=Adv.FormatText("{0}","morning glow"),itemLabel="Item_MusicRecord_1",index=0}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_2")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Mezameta Asa ni (Up in the Morning)"),itemLabel="Item_MusicRecord_2",index=1}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_3")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Country Train"),itemLabel="Item_MusicRecord_3",index=2}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_4")>0 then
zoOcwUei={name=Adv.FormatText("{0}","hope"),itemLabel="Item_MusicRecord_4",index=3}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_5")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Nagisa"),itemLabel="Item_MusicRecord_5",index=4}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_6")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Boys Don't Cry"),itemLabel="Item_MusicRecord_6",index=5}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_7")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Sea, You & Me"),itemLabel="Item_MusicRecord_7",index=6}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_8")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Kakeru (Run)"),itemLabel="Item_MusicRecord_8",index=7}table.insert(E3,zoOcwUei)end
if Domain.getItemCount("Item_MusicRecord_9")>0 then
zoOcwUei={name=Adv.FormatText("{0}","Tabi (Journey)"),itemLabel="Item_MusicRecord_9",index=8}table.insert(E3,zoOcwUei)end
zoOcwUei={name=Adv.FormatText("{0}","Natsukage (Summer Lights)"),itemLabel="",index=9}table.insert(E3,zoOcwUei)
zoOcwUei={name=Adv.FormatText("{0}","Fuyu no Hanabi (Winter Fireworks)"),itemLabel="",index=10}table.insert(E3,zoOcwUei)local b3S=-1;local Vnz6k=0
local tFFFsnNn=math.floor(#E3/5)local z1IeshVo=""local eqs=""
while true do
for HGl,Haxct in pairs(E3)do
if Vnz6k==math.floor((HGl-1)/3)then
if
z1IeshVo==""then z1IeshVo=Haxct.name;eqs=Haxct.itemLabel else
z1IeshVo=Adv.FormatText("{0}|{1}",z1IeshVo,Haxct.name)eqs=Adv.FormatText("{0}|{1}",eqs,Haxct.itemLabel)end end end;local Kp3VO8=0
if tFFFsnNn>0 then if tFFFsnNn==Vnz6k then Kp3VO8=1 else Kp3VO8=2 end elseif Vnz6k+
1*4 <#E3 then local _Gq1A97F=E3[Vnz6k+1*4]
z1IeshVo=Adv.FormatText("{0}|{1}",z1IeshVo,_Gq1A97F.name)
eqs=Adv.FormatText("{0}|{1}",eqs,_Gq1A97F.itemLabel)end;local J75u=""
CoroutineYield(CS.LuaMethod.AddJukeBox(parent,"dummy_key",[[]],z1IeshVo,eqs,Kp3VO8,function(Bun4K)J75u=Bun4K end))
if J75u==0 then b3S=Vnz6k*3 elseif J75u==1 then b3S=Vnz6k*3+1 elseif J75u==2 then b3S=Vnz6k*3+2 elseif
tFFFsnNn==0 and J75u==3 then b3S=Vnz6k*3+3 end;if b3S<0 or b3S>=#E3 then z1IeshVo=""
if tFFFsnNn>=Vnz6k+1 then Vnz6k=Vnz6k+1 else Vnz6k=0 end else break end end;return E3[b3S+1].index end;Adv.talkTimelineBeforeKey=nil
Adv.talkTimeline=function(c,iskN,w1MnNE7a,CAlFWc,jJ,dS3dUZ4A,fEkW,cXW3hXM)jJ=jJ or-1
Routine(function()
Field.waitTimeline(c)if Adv.talkTimelineBeforeKey~=nil then
Adv.remove(Adv.talkTimelineBeforeKey)end;if dS3dUZ4A~=true then
Adv.AddBackLog(iskN,w1MnNE7a,CAlFWc,fEkW)end;local IDy8KHR=nil
if cXW3hXM then IDy8KHR=CAlFWc end
Adv.talkTimelineBeforeKey=Adv.talkNoTap(iskN,w1MnNE7a,IDy8KHR,-1,nil,nil,nil,true,true)
if jJ~=-1 then Wait(jJ)Adv.remove(Adv.talkTimelineBeforeKey)end end)end
Adv.talkTimelineRemain=function(rIlhY,r,m,f,wTHFS6,NHaaVfgp,F)
Routine(function()Field.waitTimeline(rIlhY)
if
Adv.talkTimelineBeforeKey~=nil then Adv.remove(Adv.talkTimelineBeforeKey)end;if NHaaVfgp~=true then Adv.AddBackLog(r,m,f,F)end;Adv.talkTimelineBeforeKey=Adv.talkNoTap(r,m,
nil,-1,nil,nil,nil,true,true)
if
wTHFS6 ~=nil then wTHFS6(Adv.talkTimelineBeforeKey)end end)end
Adv.playCutInDual=function(yptFX,wndhtx5,df3R3HC4,fx30rYV,c9QAK,sJsDzz,XBO2cIg,h,T7,k,EA,FucU5yBR,zx,su0tOyc,krWYCQ8c,PHaAp3,Xj,bzur)wndhtx5=wndhtx5 or"Default"h=h or"Default"
zx=zx or 2.5;sJsDzz=sJsDzz or-350;FucU5yBR=FucU5yBR or 350;krWYCQ8c=krWYCQ8c or
TalkVoiceType.Bubble
bzur=bzur or CutInAnimationState.Normal;local ZIR_=bzur~=CutInAnimationState.Normal
local GxQ=Adv.loadCutIn(yptFX,wndhtx5,df3R3HC4)local XV=Adv.loadCutIn(XBO2cIg,h,T7)
Adv.showCutIn(GxQ,fx30rYV,c9QAK,0,sJsDzz,su0tOyc,krWYCQ8c,Xj,bzur)
Adv.showCutIn(XV,k,EA,0,FucU5yBR,su0tOyc,krWYCQ8c,Xj,bzur)Adv.waitCutIn(zx,nil,PHaAp3,true)
Adv.hideCutIn(GxQ,ZIR_)Adv.hideCutIn(XV,ZIR_)Wait(0.3)end
Adv.playCutIn3=function(k68BEe1,dckjVUQQ,_vr,ujW9Yr,cUI8v,nm,D1PhYJ7,VpPrNSb,r2fd83,gpEn,tOtb4v,CnMEi,AM,a,X9Fd,XZIlh,NZXms,L,cHWMzUC,k,LaGZWI,yEnMvmud,w,y26pmCU)dckjVUQQ=dckjVUQQ or"Default"
VpPrNSb=VpPrNSb or"Default"a=a or"Default"cHWMzUC=cHWMzUC or 2.5;nm=nm or-600
CnMEi=CnMEi or 0;L=L or 600;LaGZWI=LaGZWI or TalkVoiceType.Bubble;y26pmCU=y26pmCU or
CutInAnimationState.Normal
local l=y26pmCU~=CutInAnimationState.Normal;local xNEpyOzr=Adv.loadCutIn(k68BEe1,dckjVUQQ,_vr)
local P=Adv.loadCutIn(D1PhYJ7,VpPrNSb,r2fd83)local gQVSBLJA=Adv.loadCutIn(AM,a,X9Fd)
Adv.showCutIn(xNEpyOzr,ujW9Yr,cUI8v,0,nm,k,LaGZWI,w,y26pmCU)
Adv.showCutIn(P,gpEn,tOtb4v,0,CnMEi,k,LaGZWI,w,y26pmCU)
Adv.showCutIn(gQVSBLJA,XZIlh,NZXms,0,L,k,LaGZWI,w,y26pmCU)Adv.waitCutIn(cHWMzUC,nil,yEnMvmud,true)
Adv.hideCutIn(xNEpyOzr,l)Adv.hideCutIn(P,l)Adv.hideCutIn(gQVSBLJA,l)
Wait(0.3)end
Adv.playCutIn4=function(rVNRpeZ,BvCjgSvg,kQc,CEHiGQ,c8BiJv,ah7w,HQn,IcMH,uMr0T5,t5jwU,khX,fOOSQ,jWa,glmRw,iezX,w3F3o0,LQgf5a,r,ejbiC,ttcZSkTa,FlGA2B,A66v3,faN,Y3r4K,kjIJeb,Den0H,IkWg4j,A9p,zocak,tC2W,c3,bIZ,Reb3VP5,HC2)BvCjgSvg=BvCjgSvg or"Default"
uMr0T5=uMr0T5 or"Default"w3F3o0=w3F3o0 or"Default"faN=faN or"Default"
zocak=zocak or 2.5;HQn=HQn or-730;glmRw=glmRw or-250;FlGA2B=FlGA2B or 220
A9p=A9p or 730;c3=c3 or TalkVoiceType.Bubble
HC2=HC2 or CutInAnimationState.Normal;local wfnJ9j=HC2 ~=CutInAnimationState.Normal
CEHiGQ=CEHiGQ or"Main"khX=khX or"Main"r=r or"Main"kjIJeb=kjIJeb or"Main"
local vwM6S=Adv.loadCutIn(rVNRpeZ,BvCjgSvg,kQc,CEHiGQ)local c=Adv.loadCutIn(IcMH,uMr0T5,t5jwU,khX)
local A=Adv.loadCutIn(iezX,w3F3o0,LQgf5a,r)local C8FUX9b=Adv.loadCutIn(A66v3,faN,Y3r4K,kjIJeb)
Adv.moveLayer(C8FUX9b,kjIJeb)Adv.moveLayer(A,r)Adv.moveLayer(c,khX)
Adv.moveLayer(vwM6S,CEHiGQ)
Adv.showCutIn(vwM6S,c8BiJv,ah7w,0,HQn,tC2W,c3,Reb3VP5,HC2)
Adv.showCutIn(c,fOOSQ,jWa,0,glmRw,tC2W,c3,Reb3VP5,HC2)
Adv.showCutIn(A,ejbiC,ttcZSkTa,0,FlGA2B,tC2W,c3,Reb3VP5,HC2)
Adv.showCutIn(C8FUX9b,Den0H,IkWg4j,0,A9p,tC2W,c3,Reb3VP5,HC2)Adv.waitCutIn(zocak,nil,bIZ,true)
Adv.hideCutIn(vwM6S,wfnJ9j)Adv.hideCutIn(c,wfnJ9j)Adv.hideCutIn(A,wfnJ9j)
Adv.hideCutIn(C8FUX9b,wfnJ9j)Wait(0.3)end
Adv.showSubtitleMessage=function(CZwyrR,tSJN,AtcYSLH7,No2t,ZzS7O0,RLBbt)_AssertIsNotNull(CZwyrR)
_AssertIsNotNull(tSJN)AtcYSLH7=AtcYSLH7 or nil;No2t=No2t or 0.5;ZzS7O0=ZzS7O0 or false;RLBbt=
RLBbt or false;if not RLBbt then
Adv.AddBackLog(CZwyrR,tSJN,AtcYSLH7,nil,nil)end
CoroutineYield(CS.LuaMethod.ShowSubTitleMessage(parent,CZwyrR,tSJN,AtcYSLH7,No2t,ZzS7O0,function(N)
CS.LuaMethod.SetMessageVoice(parent,N,Sound.playVoice(AtcYSLH7,TalkVoiceType.Talk))end))end;Adv.outSubtitleMessage=function()
CS.LuaMethod.OutSubTitleMessage(parent)end
_DecreaseCountDown=function(vfNYgl,_T0,vz)local _T0=_T0 or
1;local lDHoaZP=5
local hHZyVqTs,vz=_getCleanedMessageCharacterCount(vz)local Z_tkSQ=math.ceil(hHZyVqTs/lDHoaZP)*_T0
UI.decreaseCountDown(vfNYgl,Z_tkSQ)end
_EmptyMessageInternal=function(XT,DadvYakU,r,alw,wZ1N03h,x8mBtzDb,M,SNra)XT=XT or"Alpha"DadvYakU=DadvYakU or 0;r=r or-1696;alw=alw or
3000;wZ1N03h=wZ1N03h or 3000
x8mBtzDb=x8mBtzDb or"Center"M=M or"Center"SNra=SNra or"None"return
CS.LuaMethod.AddEmptyMessage(parent,XT,DadvYakU,r,alw,wZ1N03h,x8mBtzDb,M,SNra)end
_private_cleanMessage=function(iU)
local xlbejUfX=iU:gsub("%[%[",""):gsub("%]%]",""):gsub("[,.!?]",""):gsub("%b{}",function(t1zYJvA)
return(
t1zYJvA:match("^{([^:]+):")or t1zYJvA:sub(2,-2))end)return xlbejUfX end
_getCleanedMessageCharacterCount=function(pZ)local pZ=_private_cleanMessage(pZ)local SLDe=0;local maqxfG=1
local SAfZ=#pZ;local iA={"、","。","！","？","（","）","…"}local DOoEezC=""
while
maqxfG<=SAfZ do local j=pZ:byte(maqxfG)local h
if j>0 and j<=127 then
h=pZ:sub(maqxfG,maqxfG)maqxfG=maqxfG+1 elseif j>=194 and j<=223 then
h=pZ:sub(maqxfG,maqxfG+1)maqxfG=maqxfG+2 elseif j>=224 and j<=239 then
h=pZ:sub(maqxfG,maqxfG+2)maqxfG=maqxfG+3 elseif j>=240 and j<=244 then
h=pZ:sub(maqxfG,maqxfG+4)maqxfG=maqxfG+4 else h=pZ:sub(maqxfG,maqxfG)maqxfG=maqxfG+1 end;local a9bV=false
for C,asJfGGsh in ipairs(iA)do if h==asJfGGsh then a9bV=true;break end end;if not a9bV then SLDe=SLDe+1;DOoEezC=DOoEezC..h end end;return SLDe,DOoEezC end