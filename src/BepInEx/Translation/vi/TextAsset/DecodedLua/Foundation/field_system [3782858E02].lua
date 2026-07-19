local w0qyLbH=require'xlua.util'AnimationMode={}AnimationMode.None="None"
AnimationMode.Auto="Auto"AnimationMode.Walk="Walk"AnimationMode.Run="Run"Field={}
Field.DirectionNone=0;Field.DirectionForward=1
Field.getObjectType=function(nsgji)return
CS.LuaMethod.Field_getObjectType(parent,nsgji)end
Field.convertCameraAxisXZ=function(bClTIa,rDzL7SVO,BW0WFP)
local X8=CS.LuaMethod.Field_convertCameraAxisXZ(parent,bClTIa,rDzL7SVO,BW0WFP)return Vec(X8.x,X8.y,X8.z)end
Field.getPosition=function(JQT)_AssertExistsFieldObject(JQT)
local AtYtR=CS.LuaMethod.Field_getPosition(parent,JQT)return Vec(AtYtR.x,AtYtR.y,AtYtR.z)end
Field.getRotation=function(ND2BCh3)_AssertExistsFieldObject(ND2BCh3)
local IODBg=CS.LuaMethod.Field_getRotation(parent,ND2BCh3)return Vec(IODBg.x,IODBg.y,IODBg.z)end
Field.getGateDirection=function(YRDu)_AssertExistsFieldObject(YRDu)
local CWRiP=CS.LuaMethod.Field_getGateDirection(parent,YRDu)return Vec(CWRiP.x,CWRiP.y,CWRiP.z)end
Field.getPlayerPosition=function()return Field.getPosition("Player")end
Field.getCameraPosition=function()return Field.getPosition("Camera")end
Field.getWaypointPosition=function(LB0A)
local dl=CS.LuaMethod.Field_getWaypointPosition(parent,LB0A)return Vec(dl.x,dl.y,dl.z)end
Field.getWaypointDirection=function(sKPjQkdn)
local HHH9IlJp=CS.LuaMethod.Field_getWaypointDirection(parent,sKPjQkdn)return Vec(HHH9IlJp.x,HHH9IlJp.y,HHH9IlJp.z)end
Field.getWaypointWarpPoint=function(uYz2ryy4,zVPRGDnG)return
CS.LuaMethod.Field_getWaypointWarpPoint(parent,uYz2ryy4,zVPRGDnG)end
Field.waitTask=function(IKxw)
CoroutineYield(CS.LuaMethod.Field_waitTask(parent,IKxw))end
Field.waitTaskKey=function(w0)_AssertIsNotNull(w0)
CoroutineYield(CS.LuaMethod.Field_waitTaskKey(parent,w0))end
Field.waitTaskAll=function()
CoroutineYield(CS.LuaMethod.Field_waitTaskAll(parent))end;Field.updateTask=function(UgXzI_C)
CS.LuaMethod.Field_updateTask(parent,UgXzI_C)end;Field.stopTask=function(MLFLplLe)
CS.LuaMethod.Field_stopTask(parent,MLFLplLe)end
Field.stopTaskKey=function(jwq)
_AssertIsNotNull(jwq)CS.LuaMethod.Field_stopTaskKey(parent,jwq)end
Field.stopTaskAll=function()CS.LuaMethod.Field_stopTaskAll(parent)end
Field.moveBy=function(kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP)_AssertIsNotNull(kw3ei0a)
_AssertIsVector(EspneS5)nmuj=nmuj or 1.0;bP=bP or 1.0;LZeg0=LZeg0 or 0
OJZ=OJZ or AnimationMode.Auto;return
CS.LuaMethod.Field_moveBy(parent,kw3ei0a,EspneS5.x,EspneS5.y,EspneS5.z,LZeg0,OJZ,nmuj,bP)end
Field.moveTo=function(b4IqQW,iuGb,koZU,C,nmJGp_,h0v3PIV)_AssertIsNotNull(b4IqQW)_AssertIsVector(iuGb)nmJGp_=
nmJGp_ or 1.0;h0v3PIV=h0v3PIV or 1.0;koZU=koZU or 0;C=C or
AnimationMode.Auto;return
CS.LuaMethod.Field_moveTo(parent,b4IqQW,iuGb.x,iuGb.y,iuGb.z,koZU,C,nmJGp_,h0v3PIV)end
Field.moveToTarget=function(Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG)local QgyWztK=Field.getPosition(JSkUQL)return
Field.moveTo(Uc,QgyWztK,PTUZ2v,qlZeO3Pr,fG9zS,WiXG)end
Field.moveToTargetWait=function(Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0)
Field.moveToTarget(Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0)Field.waitTaskKey(Oo6ecUO)end
Field.changeAnimation=function(cilhu,eVfN,LBIJ,CSSp)_AssertIsNotNull(cilhu)LBIJ=LBIJ or 1.0
CSSp=CSSp or-1.0
return CS.LuaMethod.Field_changeAnimation(parent,cilhu,eVfN,LBIJ,CSSp)end
Field.changeAnimationImm=function(CBZIwYHI,x1vCS0,Herp,TNczSeT)_AssertIsNotNull(CBZIwYHI)Herp=Herp or 1.0;TNczSeT=
TNczSeT or-1.0
local Sb=CS.LuaMethod.Field_changeAnimation(parent,CBZIwYHI,x1vCS0,Herp,TNczSeT)Field.updateTask(Sb)return Sb end
Field.changeCharacterFace=function(_OwI,GBDhi2D,XDYs)return
CS.LuaMethod.Field_changeCharacterFace(parent,_OwI,GBDhi2D,XDYs)end
Field.changeCharacterSingleFace=function(JyOmN,Gu2sqpyD,N_Pk)return
CS.LuaMethod.Field_changeCharacterSingleFace(parent,JyOmN,Gu2sqpyD,N_Pk)end
Field.worldToBattleFace=function(G_v887o0)
return CS.LuaMethod.Field_worldToBattleFace(parent,G_v887o0)end
Field.battleToWorldFace=function(oiM7BRAl)
return CS.LuaMethod.Field_battleToWorldFace(parent,oiM7BRAl)end
Field.resetAllFaces=function(s4)
return CS.LuaMethod.Field_resetAllFaces(parent,s4)end
Field.resetFace=function(EF,wYFDyw8)
return CS.LuaMethod.Field_resetFace(parent,EF,wYFDyw8)end
Field.enableFaceFade=function(JyI,hncZR4my)
return CS.LuaMethod.Field_enableFaceFade(parent,JyI,hncZR4my)end
Field.setAnimationEventEnable=function(KqeVtj,LD)return
CS.LuaMethod.Field_setAnimationEventEnable(parent,KqeVtj,LD)end
Field.enableAllAnimationEvent=function()return
CS.LuaMethod.Field_setAllAnimationEventEnable(parent,true)end
Field.disableAllAnimationEvent=function()return
CS.LuaMethod.Field_setAllAnimationEventEnable(parent,false)end
Field.setAnimationEventSoundRadius=function(Q,QKTF34q3,z)return
CS.LuaMethod.Field_setAnimationEventSoundRadius(parent,Q,QKTF34q3,z)end
Field.changeAnimationEventSO=function(UD61M,Kmr_vDN)return
CS.LuaMethod.Field_changeAnimationEventSO(parent,UD61M,Kmr_vDN)end
Field.muteAllAnimSound=function(VJw9J2c)VJw9J2c=VJw9J2c or 0.5;return
CS.LuaMethod.Field_setMuteAllAnimSound(parent,true,VJw9J2c)end
Field.unmuteAllAnimSound=function(Q5oEQY)Q5oEQY=Q5oEQY or 0.5;return
CS.LuaMethod.Field_setMuteAllAnimSound(parent,false,Q5oEQY)end
Field.changeAnimationSpeed=function(eVzQHT,bdl6box_)_AssertIsNotNull(eVzQHT)
bdl6box_=bdl6box_ or 1.0
return CS.LuaMethod.Field_changeAnimationSpeed(parent,eVzQHT,bdl6box_)end
Field.getAnimation=function(o)_AssertIsNotNull(o)return
CS.LuaMethod.Field_getAnimation(parent,o)end
Field.returnToDefaultStance=function(RMqe,c6H01I5a)_AssertIsNotNull(RMqe)
CS.LuaMethod.Field_returnToDefaultStance(parent,RMqe,"Immediate",c6H01I5a)end
Field.setAutoReturnToDefaultStanceEnabled=function(CuoodPvK,e1iM)_AssertIsNotNull(CuoodPvK)
CS.LuaMethod.Field_setAutoReturnToDefaultStanceEnabled(parent,CuoodPvK,e1iM)end
Field.createClone=function(bN32Fa,Ub,fQEH)fQEH=fQEH or false
CS.LuaMethod.Field_createClone(parent,bN32Fa,Ub)end
Field.remove=function(_om)_AssertIsNotNull(_om)
CS.LuaMethod.Field_remove(parent,_om)end
Field.purgeDisableCharacters=function(kEI4)if kEI4 ==nil then kEI4=false end
CS.LuaMethod.Field_purgeDisableCharacters(kEI4)end
Field.setActive=function(DSsD0,jRQUk)_AssertIsNotNull(DSsD0)return
CS.LuaMethod.Field_setActive(parent,DSsD0,jRQUk,false)end
Field.setActiveAt=function(M,p_I,ka)_AssertIsNotNull(p_I)if(M~=nil)and
(FieldLabel()~=M)then return end;return
CS.LuaMethod.Field_setActive(parent,p_I,ka,false)end
Field.setActiveWithTag=function(OAvmrJ,i)
CS.LuaMethod.SetActiveWithTag(parent,OAvmrJ,i)end
Field.hidePartyCharacters=function()
CS.LuaMethod.Field_hidePartyCharacters(parent,true)end
Field.restorePartyCharacters=function()
CS.LuaMethod.Field_hidePartyCharacters(parent,false)end
Field.hideTagCharacters=function(BBJcTiAS)
CS.LuaMethod.Field_hideTagCharacters(parent,BBJcTiAS)end
Field.restoreTagCharacters=function(m7jWgGw)
CS.LuaMethod.Field_restoreTagCharacters(parent,m7jWgGw)end
Field.hideGroupCharacters=function(cq,Mk3)
CS.LuaMethod.Field_hideGroupCharacters(parent,cq,Mk3)end
Field.restoreGroupCharacters=function(jUhLQEm)
CS.LuaMethod.Field_restoreGroupCharacters(parent,jUhLQEm)end;Field.resetPosition=function(Ed4qx)
CS.LuaMethod.Field_resetPosition(parent,Ed4qx)end
Field.resetDirection=function(ZrR2o)ZrR2o=
ZrR2o or false
CS.LuaMethod.Field_resetDirection(parent,ZrR2o)end
Field.setResetPositionOptions=function(_g,_NgROQrI,_E8uiG0,SK)_NgROQrI=_NgROQrI or 0;_E8uiG0=_E8uiG0 or false
SK=SK or 0
CS.LuaMethod.Field_setResetPositionOptions(parent,_g,_NgROQrI,_E8uiG0,SK)end
Field.turnBy=function(J7K570R,fDGKa,Q,ZukFflVc,oJgQv,J8T)oJgQv=oJgQv or 1.0;J8T=J8T or 1.0;Q=Q or 0;ZukFflVc=ZukFflVc or
AnimationMode.Auto;_AssertIsNotNull(J7K570R)return
CS.LuaMethod.Field_turnBy(parent,J7K570R,fDGKa,Q,ZukFflVc,oJgQv,J8T)end
Field.turnTo=function(Hc,yu,IbCB,ipjC14vX,zr8xFL0,_QfE)zr8xFL0=zr8xFL0 or 1.0;_QfE=_QfE or 1.0;IbCB=IbCB or 0;ipjC14vX=
ipjC14vX or AnimationMode.Auto
_AssertIsNotNull(Hc)
return CS.LuaMethod.Field_turnTo(parent,Hc,yu,IbCB,ipjC14vX,zr8xFL0,_QfE)end
Field.turnToPosition=function(hV8urDO,a,jv,v,tA_,XRbckaF)tA_=tA_ or 1.0;XRbckaF=XRbckaF or 1.0
v=v or AnimationMode.Auto;_AssertIsNotNull(hV8urDO)return
CS.LuaMethod.Field_turnToPosition(parent,hV8urDO,a.x,a.y,a.z,jv,v,tA_,XRbckaF)end
Field.rotateTo=function(ruef,rMVr1Ks,zyXWQodW,VmovH,Q,oGjJ)Q=Q or 1.0;oGjJ=oGjJ or 1.0;zyXWQodW=zyXWQodW or 0;VmovH=VmovH or
AnimationMode.Auto;_AssertIsNotNull(ruef)return
CS.LuaMethod.Field_rotateTo(parent,ruef,rMVr1Ks.x,rMVr1Ks.y,rMVr1Ks.z,zyXWQodW,VmovH,Q,oGjJ)end
Field.rotateBy=function(G1BiG9x,X3v,fJB,p96jR,Cd,oVZ)Cd=Cd or 1.0;oVZ=oVZ or 1.0;fJB=fJB or 0
p96jR=p96jR or AnimationMode.Auto;_AssertIsNotNull(G1BiG9x)return
CS.LuaMethod.Field_rotateBy(parent,G1BiG9x,X3v.x,X3v.y,X3v.z,fJB,p96jR,Cd,oVZ)end
Field.moveOnRoute=function(JCPdH,yt,qejbRWcX,lKi_v,WClwNvPI)qejbRWcX=qejbRWcX or 1.0;qejbRWcX=qejbRWcX* (1/3)WClwNvPI=
WClwNvPI or 1.0;lKi_v=lKi_v or AnimationMode.Auto
_AssertIsNotNull(JCPdH)
return CS.LuaMethod.Field_moveOnRoute(parent,JCPdH,yt,qejbRWcX,lKi_v,WClwNvPI)end
Field.startEventScriptCamera=function()
CS.LuaMethod.Field_setEventScriptCamera(parent,true)end
Field.finishEventScriptCamera=function()
CS.LuaMethod.Field_setEventScriptCamera(parent,false)end
Field.recoverPlayableCamera=function(Z)if(Z>0)then
CS.LuaMethod.Field_recoverPlayableCamera(parent,Z)end end;Field.getCameraHeight=function()
return CS.LuaMethod.Field_getCameraHeight(parent)end
Field.getCameraDistance=function()return
CS.LuaMethod.Field_getCameraDistance(parent)end;Field.getCameraAngleH=function()
return CS.LuaMethod.Field_getCameraAngleH(parent)end
Field.getCameraAngleV=function()return
CS.LuaMethod.Field_getCameraAngleV(parent)end;Field.getCameraFov=function()
return CS.LuaMethod.Field_getCameraFov(parent)end
Field.setCameraHeight=function(F1kNUeep,VGNf90M,DTra,Kfl)DTra=
DTra or 1.0;Kfl=Kfl or 1.0;return
CS.LuaMethod.Field_setCameraHeight(parent,F1kNUeep,VGNf90M,DTra,Kfl)end
Field.setCameraDistance=function(a6QNS6,Q,S,Wd)S=S or 1.0;Wd=Wd or 1.0;return
CS.LuaMethod.Field_setCameraDistance(parent,a6QNS6,Q,S,Wd)end
Field.setCameraAngleH=function(__q,o1isr9N,f,_a4il)f=f or 1.0;_a4il=_a4il or 1.0;return
CS.LuaMethod.Field_setCameraAngleH(parent,__q,o1isr9N,f,_a4il)end
Field.setCameraAngleV=function(Fsy,o5EML,gU,JkLOu38)gU=gU or 1.0;JkLOu38=JkLOu38 or 1.0;return
CS.LuaMethod.Field_setCameraAngleV(parent,Fsy,o5EML,gU,JkLOu38)end
Field.setCameraFov=function(rJeSR,Qsn1Mp,GT4,rg7e)GT4=GT4 or 1.0;rg7e=rg7e or 1.0;return
CS.LuaMethod.Field_setCameraFov(parent,rJeSR,Qsn1Mp,GT4,rg7e)end
Field.setCameraNearClip=function(cWGq,Xe35l,L,x)Xe35l=Xe35l or 0;L=L or 1.0;x=x or 1.0;return
CS.LuaMethod.Field_setCameraNearClip(parent,cWGq,Xe35l,L,x)end
Field.setCameraFarClip=function(tnnCl,K,T06zarEG,_pYwz9W)K=K or 0;T06zarEG=T06zarEG or 1.0
_pYwz9W=_pYwz9W or 1.0
return CS.LuaMethod.Field_setCameraFarClip(parent,tnnCl,K,T06zarEG,_pYwz9W)end
Field.resetCameraClipRange=function()
Field.setCameraNearClip(Field.getDefaultCameraNearClip())
Field.setCameraFarClip(Field.getDefaultCameraFarClip())end
Field.getDefaultCameraHeight=function()
return CS.LuaMethod.Field_getDefaultCameraHeight(parent)end
Field.getDefaultCameraDistance=function()
return CS.LuaMethod.Field_getDefaultCameraDistance(parent)end
Field.getDefaultCameraAngleH=function()
return CS.LuaMethod.Field_getDefaultCameraAngleH(parent)end
Field.getDefaultCameraAngleV=function()
return CS.LuaMethod.Field_getDefaultCameraAngleV(parent)end
Field.getDefaultCameraFov=function()
return CS.LuaMethod.Field_getDefaultCameraFov(parent)end
Field.getDefaultCameraNearClip=function()
return CS.LuaMethod.Field_getDefaultCameraNearClip(parent)end
Field.getDefaultCameraFarClip=function()
return CS.LuaMethod.Field_getDefaultCameraFarClip(parent)end
Field.setCameraCompositionEnabled=function(pPhf)
CS.LuaMethod.Field_setCameraCompositionEnabled(parent,pPhf)end
Field.setCameraCompositionAssignListener=function(UitKjKg)
CS.LuaMethod.Field_setCameraCompositionAssignListener(parent,UitKjKg)end
Field.setCameraCompositionFov=function(u6NC,QsGa,W8os4zeu,iqGT3)W8os4zeu=W8os4zeu or 1.0;iqGT3=iqGT3 or 1.0
QsGa=QsGa or 0;return
CS.LuaMethod.Field_setCameraCompositionFov(parent,u6NC,QsGa,W8os4zeu,iqGT3)end
Field.setCameraCompositionNearClip=function(iylQPau)
CS.LuaMethod.Field_setCameraCompositionNearClip(parent,iylQPau)end
Field.setCameraCompositionPerspectiveDefaultLength=function(miJYM)miJYM=miJYM or 6.40
CS.LuaMethod.Field_setCameraCompositionPerspectiveDefaultLength(parent,miJYM)end
Field.setCameraCompositionEx_internal=function(I,Tq9Ac2,BIriYV3u,te,J4F6,Xx0pC,yX5i)J4F6=J4F6 or 1.0;Xx0pC=Xx0pC or 1.0;te=te or 0;if yX5i==
nil then yX5i=true end
Field.setCameraCompositionEnabled(true)Field.setCameraCompositionAssignListener(yX5i)
Field.moveTo("CameraComposition",I,te,AnimationMode.Auto,J4F6,Xx0pC)
Field.rotateTo("CameraComposition",Tq9Ac2,te,AnimationMode.Auto,J4F6,Xx0pC)
Field.setCameraCompositionFov(BIriYV3u,te,J4F6,Xx0pC)end
Field.setCameraCompositionExWithListener=function(Eq,Pj6PhX,iT1M,M5,sqDj,iehV7hMo,qHrfq6)
Field.setCameraCompositionEx_internal(Eq,Pj6PhX,iT1M,M5,sqDj,iehV7hMo,qHrfq6)end
Field.setCameraCompositionExWithListenerWait=function(v5R,Ys,Q,FaXF0EYn,DytHsRmu,P,yRLNI)
Field.setCameraCompositionEx_internal(v5R,Ys,Q,FaXF0EYn,DytHsRmu,P,yRLNI)Wait(FaXF0EYn)end
Field.setCameraCompositionEx=function(RHXu4t,CaPMHK,Ap3zqG5d,QZOIU,Yzu9D,E0U)
Field.setCameraCompositionEx_internal(RHXu4t,CaPMHK,Ap3zqG5d,QZOIU,Yzu9D,E0U,false)end
Field.setCameraCompositionExWait=function(WPn,UfEH,z0,BK19,I,ubw)
Field.setCameraCompositionEx_internal(WPn,UfEH,z0,BK19,I,ubw,false)Wait(BK19)end
Field.startCameraImpact=function(f,yaA2f,wjQXn79,C1,hdr)C1=C1 or 0.80;hdr=hdr or 0.880
CS.LuaMethod.Field_startCameraImpact(parent,f,yaA2f,wjQXn79,C1,hdr)end
Field.startCameraImpactV2=function(tvO,Q,LfHYQg,R,DKu3,VAaGt,G1PwhyG)DKu3=DKu3 or 0.80;VAaGt=VAaGt or 0.880
G1PwhyG=G1PwhyG or 0.001
CS.LuaMethod.Field_startCameraImpactV2(parent,tvO,Q,LfHYQg,R,DKu3,VAaGt,G1PwhyG)end
Field.startCameraQuake=function(G,fe,MFUc,V9,iT,OZEQxah_)V9=V9 or 0;iT=iT or 16;OZEQxah_=OZEQxah_ or 3
CS.LuaMethod.Field_startCameraQuake(parent,G,fe,MFUc,V9,iT,OZEQxah_)end;Field.stopCameraQuake=function()
CS.LuaMethod.Field_stopCameraQuake(parent)end
Field.setTraceCameraTarget=function(o8I7)
CS.LuaMethod.Field_setTraceCameraTarget(parent,o8I7)end
Field.setBalloonType=function(T57hH4r,k)
CS.LuaMethod.Field_setBalloonType(parent,T57hH4r,k)end
Field.createGayaBalloon=function(Tx2,B)
return CS.LuaMethod.Field_createGayaBalloon(parent,Tx2,B)end
Field.getGayaBalloon=function(Yt6V4Y)
return CS.LuaMethod.Field_getGayaBalloon(parent,Yt6V4Y)end;Field.deleteGayaBalloon=function(n)
CS.LuaMethod.Field_deleteGayaBalloon(parent,n)end
Field.deleteGayaBalloonAll=function(ZNChA)
CS.LuaMethod.Field_deleteGayaBalloonAll(parent,ZNChA)end
Field.setGayaBalloonOffset=function(VufPd,FWsorpKS)
CS.LuaMethod.Field_setGayaBalloonOffset(parent,VufPd,FWsorpKS.x,FWsorpKS.y,FWsorpKS.z)end
Field.getGayaBalloonOffset=function(zuZa)
local M=CS.LuaMethod.Field_getGayaBalloonOffset(parent,zuZa)return Vec(M.x,M.y,M.z)end
Field.setGayaBalloonAnchor=function(vI,_ogR)
CS.LuaMethod.Field_setGayaBalloonAnchor(parent,vI,_ogR)end
Field.setGayaBalloonPriority=function(g,n69tv)local z=Field.getGayaBalloonOffset(g)z.z=-
(n69tv/10)Field.setGayaBalloonOffset(g,z)end;Field.hideGayaBalloonAll=function()
CS.LuaMethod.Field_hideGayaBalloonAll(parent)end;Field.showGayaBalloonAll=function()
CS.LuaMethod.Field_showGayaBalloonAll(parent)end
Field.setChaseTarget=function(VKJxwOdv,IplgjH8v,MB6jIC,h4OlVtn)MB6jIC=
MB6jIC or false;h4OlVtn=h4OlVtn or false
_AssertIsNotNull(VKJxwOdv)
CS.LuaMethod.Field_setChaseTarget(parent,VKJxwOdv,IplgjH8v,MB6jIC,h4OlVtn)end
Field.setChaseOffset=function(E0,eLMg,mVjDTYYb,l8,T)T=T or false;_AssertIsNotNull(E0)
CS.LuaMethod.Field_setChaseOffset(parent,E0,eLMg,mVjDTYYb,l8,T)end
Field.refreshScripts=function(EME)if EME then Field.resetWorldObject()end
CS.LuaMethod.Field_refreshScripts(parent)end
Field.setRouteWandererEnabled=function(nudgGJ,XRN5ln)
CS.LuaMethod.Field_setRouteWandererEnabled(parent,nudgGJ,XRN5ln)end
Field.waitRouteWandererStop=function(D4MiUjQ)
CoroutineYield(CS.LuaMethod.Field_waitRouteWandererStop(parent,D4MiUjQ))end
Field.setRouteWandererMovingAnimation=function(j,nN,gt2)gt2=gt2 or 1.0
CS.LuaMethod.Field_setRouteWandererMovingAnimation(parent,j,nN,gt2)end
Field.hideCharactersInFollowers=function()
CS.LuaMethod.Field_hideCharactersInFollowers(parent)end
Field.resetWorldObject=function()CS.LuaMethod.Field_resetWorldObject()end;FollowerMode={}FollowerMode.Story="Story"
FollowerMode.Expedition="Expedition"
Field.createDynamicCharacter=function(lF)
CS.LuaMethod.SetActiveAtSameTagCharacter(parent,lF,false)
CoroutineYield(CS.LuaMethod.Field_createDynamicCharacter(parent,lF))Field.setActive(lF,false)end
Field.deleteDynamicCharacter=function(s8s3)
CS.LuaMethod.Field_deleteDynamicCharacter(parent,s8s3)end
Field.deleteDynamicCharacterAll=function()
CS.LuaMethod.Field_deleteDynamicCharacterAll(parent,characterLabel)end;Field.changeFollowerMode=function(R)
CS.LuaMethod.Field_changeFollowerMode(parent,R)end
Field.createFollower=function(h4xbyHiS)
CS.LuaMethod.SetActiveAtSameTagCharacter(parent,h4xbyHiS,false)
CS.LuaMethod.Field_createFollower(parent,h4xbyHiS)Field.setActive(h4xbyHiS,false)end;Field.deleteFollower=function(D)
CS.LuaMethod.Field_deleteFollower(parent,D)end
Field.deleteJoinedFollower=function(fk)if
Field.isJoinFollower(fk)then Field.deleteFollower(fk)end end
Field.waitFollowerLoading=function()
CoroutineYield(CS.LuaMethod.Field_waitFollowerLoading(parent))end
Field.isJoinFollower=function(EJi)
return CS.LuaMethod.Field_isJoinFollower(parent,EJi)end
Field.resetFollowerPosition=function(xV_7,Z)xV_7=xV_7 or"Player"
if Z then
CS.LuaMethod.Field_setFollowerFormationZScale(parent,xV_7,Z)
CS.LuaMethod.Field_resetFollowerPosition(parent,xV_7)
CS.LuaMethod.Field_setFollowerFormationZScale(parent,xV_7,1.0)else
CS.LuaMethod.Field_resetFollowerPosition(parent,xV_7)end end
Field.setFollowerFormationZRange=function(N4WulQix,gUl6)N4WulQix=N4WulQix or"Player"gUl6=gUl6 or 1.0
CS.LuaMethod.Field_setFollowerFormationZRange(parent,N4WulQix,gUl6)end
Field.setFollowerFormationZScale=function(UsFp_,oRv9KOBG)UsFp_=UsFp_ or"Player"
oRv9KOBG=oRv9KOBG or 1.0
CS.LuaMethod.Field_setFollowerFormationZScale(parent,UsFp_,oRv9KOBG)end;Field.deleteFollowerAll=function()
CS.LuaMethod.Field_deleteFollowerAll(parent)end
Field.setActiveFollower=function(SOGQ,m)if
m==nil then m=true end
CS.LuaMethod.Field_setActiveFollower(parent,"Lua.setActiveFollower",SOGQ,m)end
Field.setFollowerAutoMoveEnabled=function(RVaYv)
CS.LuaMethod.Field_setFollowerAutoMoveEnabled(parent,RVaYv)end
Field.setPlayerMoveSpeedRate=function(N,rYuUO8L,Vsz7u)N=N or 1.0;rYuUO8L=rYuUO8L or 0.0
Vsz7u=Vsz7u or 1.0
CS.LuaMethod.Field_setPlayerMoveSpeedRate(parent,N,rYuUO8L,Vsz7u)end
Field.setConstraintDirection=function(_X0FlsZf)
CS.LuaMethod.Field_setConstraintDirection(parent,_X0FlsZf)end
Field.numberOfFollowers=function()
return CS.LuaMethod.Field_numberOfFollowers(parent)end
Field.getFollower=function(VuG9Ic)
return CS.LuaMethod.Field_getFollower(parent,VuG9Ic-1)end
Field.addForce=function(H,a)_AssertIsNotNull(H)
CS.LuaMethod.Field_addForce(parent,H,a.x,a.y,a.z)end
Field.addForceAtPosition=function(ZBZWd,gPir,dUg9_Y)_AssertIsNotNull(ZBZWd)
CS.LuaMethod.Field_addForceAtPosition(parent,ZBZWd,gPir.x,gPir.y,gPir.z,dUg9_Y.x,dUg9_Y.y,dUg9_Y.z)end
Field.shake=function(O,e8eXevG,pT8,VJvm)e8eXevG=e8eXevG or 1;pT8=pT8 or 1
CS.LuaMethod.Shake(parent,O,pT8,pT8,e8eXevG,VJvm,true)end
Field.shakeXY=function(Wp40V81,AQWsvIDp,w5f,kZcF,aoK)AQWsvIDp=AQWsvIDp or 1;s=s or 1
CS.LuaMethod.Shake(parent,Wp40V81,w5f,kZcF,AQWsvIDp,aoK,true)end
Field.setEnvironmentColor=function(FZ_U,nAu,JM,R,sEGF)return
CS.LuaMethod.Field_setEnvironmentColor(parent,"Lua",FZ_U,nAu,JM,R,1.0,sEGF)end
Field.getEnvironmentColor=function(Bcu)
local V=CS.LuaMethod.Field_getEnvironmentColor(parent,Bcu)return Vec(V.x,V.y,V.z)end
Field.resetBGColorControl=function()
CS.LuaMethod.Field_setEnvironmentColor(parent,"_BTL","Background",1,1,1,1,0)
CS.LuaMethod.Field_setEnvironmentColor(parent,"_BTL","Sky",1,1,1,1,0)end
Field.setShadowDistance=function(nrZMM)
return CS.LuaMethod.Field_setShadowDistance(parent,nrZMM)end
Field.setShadowDistanceV2=function(l,_hG)if IsPcMode()then _hG=_hG or 1.40;l=l*_hG end
CS.LuaMethod.Field_setShadowDistance(parent,l)end
Field.resetShadowDistance=function()Field.setShadowDistanceV2(0)end;Field.setEncountEnabled=function(zJ)
CS.LuaMethod.Field_setEncountEnabled(parent,zJ)end
Field.setEncountAdditionEnabled=function(iPZXbV_)
CS.LuaMethod.Field_setEncountAdditionEnabled(parent,iPZXbV_)end
Field.setEncountRange=function(ERW,iV)local ERW=ERW or 36.0;local iV=iV or 48.0
CS.LuaMethod.Field_setEncountRange(parent,ERW,iV)end
Field.setEncountLabel=function(IMtBU7)
CS.LuaMethod.Field_setEncountLabel(parent,IMtBU7)end;Field.getEncountLabel=function()
return CS.LuaMethod.Field_getEncountLabel(parent)end
Field.setEncountFunction=function(UMf9U)
CS.LuaMethod.Field_setEncountFunction(parent,function()if
UMf9U then Routine(UMf9U)end end)end
Field.setSymbolEncountFunction=function(ZfmUYm)
CS.LuaMethod.Field_setSymbolEncountFunction(parent,function()
if ZfmUYm then Routine(ZfmUYm)end end)end
Field.setWildEncountFunction=function(K)
CS.LuaMethod.Field_setWildEncountFunction(parent,function()if K then Routine(K)end end)end
Field.setFieldEnemyBattleStartFunction=function(NM9TK)
CS.LuaMethod.Field_setFieldEnemyBattleStartFunction(parent,function()if NM9TK then
Routine(NM9TK)end end)end
Field.unsetFieldEnemyBattleStartFunction=function()
CS.LuaMethod.Field_unsetFieldEnemyBattleStartFunction()end
Field.setFieldEnemyBattleEndFunction=function(z966let)
CS.LuaMethod.Field_setFieldEnemyBattleEndFunction(parent,function()if z966let then
Routine(z966let)end end)end
Field.unsetFieldEnemyBattleEndFunction=function()
CS.LuaMethod.Field_unsetFieldEnemyBattleEndFunction()end;Field.resetEncountDistance=function()
CS.LuaMethod.Field_resetEncountDistance(parent)end;Field.setSleep=function(l,B1)
CS.LuaMethod.Field_setSleep(parent,l,B1)end
Field.setColorScale=function(dntR0Y,jWQN,gRVJE,aoBlB,bt)
CS.LuaMethod.Field_setColorScale(parent,dntR0Y,jWQN,gRVJE,aoBlB,bt)end
Field.setColorOffset=function(L,Z,iq,H9Vaxrqz,W04CjCI)
CS.LuaMethod.Field_setColorOffset(parent,L,Z,iq,H9Vaxrqz,W04CjCI)end
Field.setAlphaScale=function(uGslzNO,WEs6,NXW)
CS.LuaMethod.Field_setAlphaScale(parent,uGslzNO,WEs6,NXW)end
Field.fadeCharacter=function(GGnKhb,ongv3O,UOrfZxe,Ga35Z)Ga35Z=Ga35Z or 0;UOrfZxe=UOrfZxe or 0
CS.LuaMethod.Field_fadeCharacter(parent,GGnKhb,ongv3O,UOrfZxe,Ga35Z)end
Field.setCharacterEffectAlpha=function(afSY2kYq,UpJB,F)F=F or 0
CS.LuaMethod.Field_setCharacterEffectAlpha(parent,afSY2kYq,UpJB,F)end
Field.setDitherTransparent=function(xpw,ehC5,cZd7sYj)cZd7sYj=cZd7sYj or 0
CS.LuaMethod.Field_setDitherTransparent(parent,xpw,ehC5,cZd7sYj)Field.setCharacterEffectAlpha(xpw,ehC5,cZd7sYj)end
Field.setPostEffectSepiaColor=function(NfOm1d,do1,CUiwrelt,bUDT3)bUDT3=bUDT3 or 0
CS.LuaMethod.Field_setPostEffectSepiaColor(parent,NfOm1d,do1,CUiwrelt.r,CUiwrelt.g,CUiwrelt.b,bUDT3)end
Field.setPostEffectBrightness=function(RcmJI,PcsTnXqr)PcsTnXqr=PcsTnXqr or 0
CS.LuaMethod.Field_setPostEffectBrightness(parent,RcmJI,PcsTnXqr)end
Field.setPostEffectContrast=function(idNXnq,V)V=V or 0
CS.LuaMethod.Field_setPostEffectContrast(parent,idNXnq,V)end
Field.setPostEffectSaturation=function(k,Y)Y=Y or 0
CS.LuaMethod.Field_setPostEffectSaturation(parent,k,Y)end
Field.setPostEffectChromaticAberration=function(lGWhP,AqxSe0i)AqxSe0i=AqxSe0i or 0
CS.LuaMethod.Field_setPostEffectChromaticAberration(parent,lGWhP,AqxSe0i)end
Field.setPostEffectVignetteIntensity=function(qB_G,o)o=o or 0
CS.LuaMethod.Field_setPostEffectVignetteIntensity(parent,qB_G,o)end
Field.setPostEffectVignetteSmoothness=function(oBxd9Bs,rmPi08c)rmPi08c=rmPi08c or 0
CS.LuaMethod.Field_setPostEffectVignetteSmoothness(parent,oBxd9Bs,rmPi08c)end
Field.setPostEffectVignetteRoundness=function(y,xyN90MRI)xyN90MRI=xyN90MRI or 0
CS.LuaMethod.Field_setPostEffectVignetteRoundness(parent,y,xyN90MRI)end
Field.setPostEffectRadialScreenFogMask=function(NJOJL,VLa)NJOJL=NJOJL or 0;VLa=VLa or 0
CS.LuaMethod.Field_setPostEffectRadialScreenFogMask(parent,NJOJL,VLa)end
Field.setPostEffectBlurMask=function(QlJ,R4RmFFgy)QlJ=QlJ or 0;R4RmFFgy=R4RmFFgy or 0
CS.LuaMethod.Field_setPostEffectBlurMask(parent,QlJ,R4RmFFgy)end
Field.setPostEffectBlurStrength=function(e,Wu)e=e or 0;Wu=Wu or 0
CS.LuaMethod.Field_setPostEffectBlurScale(parent,e,Wu)end
Field.setPostEffectColorGradingTemperature=function(v6TQ,r4LGuiR3)r4LGuiR3=r4LGuiR3 or 0
CS.LuaMethod.Field_setPostEffectColorGradingTemperature(parent,v6TQ,r4LGuiR3)end
Field.setPostEffectColorGradingSaturation=function(HXjb,_bmf5tSQ)_bmf5tSQ=_bmf5tSQ or 0
CS.LuaMethod.Field_setPostEffectColorGradingSaturation(parent,HXjb,_bmf5tSQ)end
Field.setPostEffectColorGradingBrightness=function(uckdc,oW3kmm)oW3kmm=oW3kmm or 0
CS.LuaMethod.Field_setPostEffectColorGradingBrightness(parent,uckdc,oW3kmm)end
Field.setPostEffectColorGradingContrast=function(fLQt,DEq3bN)DEq3bN=DEq3bN or 0
CS.LuaMethod.Field_setPostEffectColorGradingContrast(parent,fLQt,DEq3bN)end
Field.setPostEffectColorGradingMixerRed=function(tcxhx,w9,_Fm,ngLY6QaP)ngLY6QaP=ngLY6QaP or 0;color={}
color.r=tcxhx or 1.0;color.g=w9 or 1.0;color.b=_Fm or 1.0
CS.LuaMethod.Field_setPostEffectColorGradingMixerRed(parent,color,ngLY6QaP)end
Field.setPostEffectBloomIntensity=function(ha,ew4)ew4=ew4 or 0
CS.LuaMethod.Field_setPostEffectBloomIntensity(parent,ha,ew4)end
Field.setPostEffectBloomThreshold=function(mqHQUP,WQAcK)WQAcK=WQAcK or 0
CS.LuaMethod.Field_setPostEffectBloomThreshold(parent,mqHQUP,WQAcK)end
Field.setPostEffectBloomColor=function(xoVjTpqN,t,yhgPg,kegFrH)kegFrH=kegFrH or 0
CS.LuaMethod.Field_setPostEffectBloomColor(parent,xoVjTpqN,t,yhgPg,kegFrH)end
Field.setParent=function(N,QQHuFb4H,O)_AssertIsNotNull(N)
_AssertIsNotNull(QQHuFb4H)local O=O or Vec(0,0,0)
CS.LuaMethod.SetParent(parent,N,QQHuFb4H,O.x,O.y,O.z)end
Field.setParentEx=function(N3p,hVHqL,Jj,lM92c)_AssertIsNotNull(N3p)_AssertIsNotNull(hVHqL)
_AssertIsNotNull(Jj)local lM92c=lM92c or Vec(0,0,0)
CS.LuaMethod.Field_setParentEx(parent,N3p,hVHqL,Jj,lM92c.x,lM92c.y,lM92c.z)end
Field.startTimeline=function(hX)Field.setActive(hX,true)
CS.LuaMethod.StartTimeline(parent,hX)end
Field.waitTimeline=function(c9asjuf)
CoroutineYield(CS.LuaMethod.WaitTimeline(c9asjuf))end;Field.setFootstepVolume=function(NY)
CS.LuaMethod.Field_setFootstepVolume(parent,NY)end;Field.setFootstepEnabled=function(P)
CS.LuaMethod.Field_setFootstepEnabled(parent,P)end
Field.setCharacterFootstepEnabled=function(b71,jolgqe)
CS.LuaMethod.Field_setCharacterFootstepEnabled(parent,b71,jolgqe)end
Field.setTagCharacterFootstepEnabled=function(A76,F)
CS.LuaMethod.Field_setTagCharacterFootstepEnabled(parent,A76,F)end
Field.setFootstepReachRange=function(D,P,_3R35U)P=P or 0;_3R35U=_3R35U or 0
CS.LuaMethod.Field_setFootstepReachRange(parent,D,P,_3R35U)end
Field.setCharacterFootstepCooldownTime=function(lu,si)si=si or 0.25
CS.LuaMethod.Field_setCharacterFootstepCooldownTime(parent,lu,si)end
Field.resetCharacterFootstepCooldownTime=function(kv)
CS.LuaMethod.Field_resetCharacterFootstepCooldownTime(parent,kv)end
Field.setEnvironmentSoundEnabled=function(rc)
CS.LuaMethod.Field_setEnvironmentSoundEnabled(parent,rc)end
Field.pauseEnvironmentSound=function(gcAHqYcp)
CS.LuaMethod.Field_pauseEnvironmentSound(parent,gcAHqYcp)end
Field.resumeEnvironmentSound=function(_Vj8aHEp)
CS.LuaMethod.Field_resumeEnvironmentSound(parent,_Vj8aHEp)end
Field.setEnvironmentSoundListener=function(e7EcZQ)
CS.LuaMethod.Field_setEnvironmentSoundListener(parent,e7EcZQ)end
Field.forceDisableAll3DSound=function()
CS.LuaMethod.Field_setForceDisableAll3DSound(parent,true)end
Field.restoreAll3DSound=function()
CS.LuaMethod.Field_setForceDisableAll3DSound(parent,false)end;Field.reset3DSoundState=function()
CS.LuaMethod.Field_reset3DSoundState(parent)end
Field.setFootstepGroundType=function(GtaGY)
CS.LuaMethod.Field_setFootstepGroundType(parent,GtaGY)end
Field.setCharacterFootstepGroundType=function(bt2Q9,kistnn)
CS.LuaMethod.Field_setCharacterFootstepGroundType(parent,bt2Q9,kistnn)end
Field.setLookAtTarget=function(V8ukf,M4QO8t2,po4)po4=po4 or 0.3
CS.LuaMethod.Field_setLookAtTarget(parent,V8ukf,M4QO8t2,po4)end
Field.setLookAtTargetWait=function(kO7M,QO1A0C,Wqius7)Wqius7=Wqius7 or 0.3
Field.setLookAtTarget(kO7M,QO1A0C,Wqius7)Wait(Wqius7)end
Field.setLookAtPosition=function(f,Bw,xaFg)xaFg=xaFg or 0.120
CS.LuaMethod.Field_setLookAtPosition(parent,f,Bw.x,Bw.y,Bw.z,xaFg)end
Field.disableLookAt=function(ZbhRvzwJ,e)e=e or 0.160
CS.LuaMethod.Field_disableLookAt(parent,ZbhRvzwJ,e)end
Field.setLookAtTargetAuto=function(sOzM_,RVYwO,TRaW16,hmCD)hmCD=hmCD or 0.160
CS.LuaMethod.Field_setLookAtTargetAuto(parent,sOzM_,RVYwO,TRaW16,hmCD)end
Field.getFaceToFaceAngle=function(H6cMd,nks0XOWo)return
CS.LuaMethod.Field_getFaceToFaceAngle(parent,H6cMd,nks0XOWo)end
Field.attachEquipment=function(uJk,XByGkB,yqnk,V,Jt)
CS.LuaMethod.Field_attachEquipment(parent,uJk,XByGkB,yqnk,V,Jt)end
Field.attachEquipmentV2=function(PJDIIpBb,kXVYYv,CUtrlLsq,AvO,j5E)
CS.LuaMethod.Field_attachEquipmentV2(parent,PJDIIpBb,kXVYYv,CUtrlLsq,AvO,j5E)end
Field.detachEquipment=function(ZJHt,QBA2j)
CS.LuaMethod.Field_detachEquipment(parent,ZJHt,QBA2j)end
Field.waitEquipmentLoading=function()
CoroutineYield(CS.LuaMethod.Field_waitEquipmentLoading(parent))end
Field.syncEquipmentAnimation=function(WcRHbI,vZvj)
CS.LuaMethod.Field_syncEquipmentAnimation(parent,WcRHbI,vZvj)end
Field.setActiveEquipment=function(i9gzkD,rL8gcb,pKM)
CS.LuaMethod.Field_setActiveEquipment(parent,i9gzkD,rL8gcb,pKM)end
Field.attachCarryWeapon=function(H9o,tl0rT,J6zgkV,V06tUsA)
CS.LuaMethod.Field_attachCarryWeapon(parent,H9o,tl0rT,J6zgkV,V06tUsA)end
Field.detachCarryWeapon=function(xJW)
CS.LuaMethod.Field_detachCarryWeapon(parent,xJW)end
Field.setActiveCarryWeapon=function(FLx,BKsQDr)
CS.LuaMethod.Field_setActiveCarryWeapon(parent,FLx,BKsQDr)end
Field.showCutIn=function(ljTm,TGOu,eaK,x5u,Xs2x,X1z5M,a3E)if x5u==nil then x5u=2.0 end;if Xs2x==nil then Xs2x=0 end;if X1z5M==nil then
X1z5M=BalloonType.Normal end;if a3E==nil then a3E=false end;if eaK~=nil then
Sound.play(eaK)end
CS.LuaMethod.Field_showCutIn(ljTm,TGOu,x5u,Xs2x,X1z5M,a3E)end;Field.showCutInMaster=function(lDgXolp)
CS.LuaMethod.Field_showCutInMaster(lDgXolp)end
Field.setCutInGroupSetting=function(CQ5T2,sAlSr8I,Y,eaA,vaNC)if
sAlSr8I==nil then sAlSr8I=35 end;if Y==nil then Y=true end;if vaNC==nil then
vaNC=false end
CS.LuaMethod.Field_setCutInGroupSetting(CQ5T2,sAlSr8I,Y,eaA,vaNC)end
Field.removeCutInGroupSetting=function(wnkdMpl1)
CS.LuaMethod.Field_removeCutInGroupSetting(wnkdMpl1)end;Field.clearCutInGroupSetting=function()
CS.LuaMethod.Field_clearCutInGroupSetting()end;Field.lockWayPoint=function(P)
CS.LuaMethod.Field_lockWayPoint(P)end;Field.unlockWayPoint=function(Mr7w)
CS.LuaMethod.Field_unlockWayPoint(Mr7w)end
Field.getPatrolCount=function()return
CS.LuaMethod.Field_getPatrolCount()end
Field.getPatrolLabel=function()return CS.LuaMethod.Field_getPatrolLabel()end
Field.getPatrolState=function()return CS.LuaMethod.Field_getPatrolState()end
Field.getMobHuntUnclearedCount=function()
return CS.LuaMethod.Field_getMobHuntUnclearedCount()end
Field.getMobHuntClearCount=function(DL0yj)
return CS.LuaMethod.Field_getMobHuntClearCount(DL0yj)end;Field.getMobHuntLabel=function()
return CS.LuaMethod.Field_getMobHuntLabel()end
Field.getMobHuntEnemyName=function()return
CS.LuaMethod.Field_getMobHuntEnemyName()end;Field.getMobHuntState=function()
return CS.LuaMethod.Field_getMobHuntState()end
Field.getRecommendMobHuntAreaName=function()return
CS.LuaMethod.Field_getRecommendMobHuntAreaName()end;Field.getArenaBattleState=function()
return CS.LuaMethod.Field_getArenaBattleState()end
Field.hasArenaBattleBonus=function()return
CS.LuaMethod.Field_hasArenaBattleBonus()end
Field.hasArenaBonus=function()return CS.LuaMethod.Field_hasArenaBonus()end
Field.acquireArenaBonus=function()
CoroutineYield(CS.LuaMethod.Field_acquireArenaBonus())end;Field.resetForceHideHud=function()
CS.LuaMethod.Field_resetForceHideHud(parent)end;Field.setForceHideHud=function()
CS.LuaMethod.Field_setForceHideHud(parent)end
Field.setForceActiveHud=function(lkFkg)
CS.LuaMethod.Field_setForceActiveHud(parent,lkFkg)end
Field.setUIHudEnvironmentOnlyPeriod=function()
CS.LuaMethod.Field_setUIHudEnvironmentOnlyPeriod(parent)end
Field.waitAsyncInstance=function(pK)
CoroutineYield(CS.LuaMethod.Field_waitAsyncInstance(parent,pK))end
Field.waitAsyncInstanceV2=function(TabiUJzo)
CoroutineYield(CS.LuaMethod.Field_waitAsyncInstanceV2(parent,TabiUJzo))end
Field.instantiateTimeline=function(m4aIqK9h,b1X)
CoroutineYield(CS.LuaMethod.Field_instantiateTimeline(parent,m4aIqK9h,b1X))end
Field.prepareTimeline=function(z)
CoroutineYield(CS.LuaMethod.Field_prepareTimeline(parent,z))end
Field.setMutedTimelineTrackGroups=function(dHe0NH4,r2L,...)
for XyH2=1,select("#",...)do local tFrDpX=(select(XyH2,...))
Log(
"setEnebledTimelineCharacters:"..XyH2 ..":"..tFrDpX)
CS.LuaMethod.Field_setMutedTimelineTrackGroup(parent,dHe0NH4,r2L,tFrDpX)end end
Field.unloadScene=function(qQzEqoPt)
CS.LuaMethod.Field_unloadScene(parent,qQzEqoPt)end
Field.ClearActivity=function(TdqMnUrm,G1)
local fE=GetLocalFlag("アクティビティ消費ライフ")
return CS.LuaMethod.ClearActivity(parent,TdqMnUrm,G1,fE)end
Field.setBalloonExtrudeOffset=function(U,J)
CS.LuaMethod.Field_setBalloonExtrudeOffset(parent,U,J)end
Field.setReactionRange=function(_j,DVs9oE)
CS.LuaMethod.Field_setReactionRange(parent,_j,DVs9oE)end
Field.isPlayedFreeTimeAtLatestDay=function()if Game.isLatestDay()then return
CS.LuaMethod.IsFreeTimePlayed(parent)end;return false end
Field.BattleWithFixedParty=function(SgHhX6,bBou,QFoC,oRxuT2W2,HHf5_PI)return
Field.BattleCommonWithWorldEventStep(SgHhX6,bBou,QFoC,oRxuT2W2,HHf5_PI,true,nil)end
Field.BattleWithStoryDeck=function(VR,o,i5lV,VK,tL5fZ)return
Field.BattleCommonWithWorldEventStep(VR,o,i5lV,VK,tL5fZ,false,nil,false,nil,true)end
Field.BattleWithoutPartySelect=function(m,k,l,Ar,PqN0aIE,b4yX,Sd,ZK)return
Field.BattleCommonWithWorldEventStep(m,k,l,Ar,PqN0aIE,false,nil,b4yX,Sd,nil,ZK)end
Field.BattleWithCustomDeck=function(dAj3jMx,zNFZ9l3D,eTRY,Qgg2HyX7,sGai1L,UDgYtFM3)return
Field.BattleCommonWithWorldEventStep(dAj3jMx,zNFZ9l3D,Qgg2HyX7,sGai1L,UDgYtFM3,true,eTRY)end
Field.BattleCommonWithWorldEventStep=function(PJ0wBs0R,N9b,SQPOQ,Js,vIOR,bBO,Wye_Q3,X3xNOK,u,a9,zIZ7PnbU)if u==nil then u=false end
if zIZ7PnbU==nil then zIZ7PnbU=false end
return
BattleCommon(N9b,nil,bBO,SQPOQ,Js,vIOR,function(MAC,khBC1k)
if(MAC=="Win")then
SetLocalFlag("Field.LastBattleResult",1)else SetLocalFlag("Field.LastBattleResult",2)end;if zIZ7PnbU then elseif u and MAC=="Lose"then elseif not khBC1k then
NextWorldEventStep(PJ0wBs0R,false)end end,HowToGrant.LuaQuestBattle,Wye_Q3,X3xNOK,a9)end
Field.LastBattleResult=function()
local Cg5h1ij=GetLocalFlag("Field.LastBattleResult")if Cg5h1ij==1 then return"Win"elseif Cg5h1ij==2 then return"Lose"end;return""end
Field.getActiveScenePath=function()
return CS.LuaMethod.Field_getActiveScenePath(parent)end
Field.setCollideCallback=function(YZd,u7_)
CS.LuaMethod.Field_setCollideCallback(parent,YZd,u7_)end
Field.setCollideCallbackWithTag=function(JY7zPiT,g)
CS.LuaMethod.Field_setCollideCallbackWithTag(parent,JY7zPiT,g)end
Field.setPlayerCharacter=function(YC_Xd,BBY)
CS.LuaMethod.Field_setPlayerCharacter(parent,YC_Xd,BBY)end
Field.getPlayerCharacter=function()
return CS.LuaMethod.Field_getPlayerCharacter(parent)end
Field.waitPlayerCharacterLoading=function()
CoroutineYield(CS.LuaMethod.Field_waitPlayerCharacterLoading(parent))end
Field.setCharacterColliderHeight=function(EkL1,g)
CS.LuaMethod.Field_setCharacterColliderHeight(parent,EkL1,g)end
Field.resetCharacterColliderHeight=function(X)
CS.LuaMethod.Field_resetCharacterColliderHeight(parent,X)end
Field.changeMaterialProperty=function(XtuY5W,zQb,iswz,w)w=w or 0;_AssertIsNotNull(zQb)
CS.LuaMethod.Field_changeMaterialProperty(parent,XtuY5W,zQb,iswz,w)end
Field.changeMaterialPropertyColor=function(N25WjMv,v_p4Pd,ukSQIo)_AssertIsNotNull(v_p4Pd)
CS.LuaMethod.Field_changeMaterialPropertyColor(parent,N25WjMv,v_p4Pd,ukSQIo.r,ukSQIo.g,ukSQIo.b,ukSQIo.a)end
Field.changeMaterialKeyword=function(AUx,x,ltEwAA2P)_AssertIsNotNull(x)
CS.LuaMethod.Field_changeMaterialKeyword(parent,AUx,x,ltEwAA2P)end
Field.waitFreeMoveState=function(Lz3_fzf,lXEUa28,fEWMgBdG)fEWMgBdG=fEWMgBdG or 5.0
CoroutineYield(CS.LuaMethod.Field_waitFreeMoveState(parent,Lz3_fzf,lXEUa28,fEWMgBdG))end
Field.setBindTargetFrom=function(hH9l,oKaZ,jxJbfO)jxJbfO=jxJbfO or""
CS.LuaMethod.Field_setBindTargetFrom(parent,hH9l,oKaZ,jxJbfO)end
Field.setBindTargetTo=function(iU,y7hvqdr,NXGJhdEc)NXGJhdEc=NXGJhdEc or""
CS.LuaMethod.Field_setBindTargetTo(parent,iU,y7hvqdr,NXGJhdEc)end
Field.registerCollisionFunction=function(VuHxStQ,p,_d,YL_,Uy)
CS.LuaMethod.Field_registerCollisionFunction(parent,VuHxStQ,p,_d,YL_,Uy)end
Field.setCharacterCullingEnabled=function(lLw,NC)
CS.LuaMethod.Field_setCharacterCullingEnabled(parent,lLw,NC)end
Field.setupEventCharacter=function(sax_O)
CS.LuaMethod.Field_setupEventCharacter(parent,sax_O)end;Field.createEncountEffect=function()
CS.LuaMethod.Field_createEncountEffect()end;Field.startEncountEffect=function()
CS.LuaMethod.Field_startEncountEffect(parent)end;Field.crushEncountEffect=function()
CS.LuaMethod.Field_crushEncountEffect(parent)end
Field.crossFade=function(M)
CoroutineYield(CS.LuaMethod.Field_crossFade(parent,M))end;Field.resetCamera=function(KIbb)
CS.LuaMethod.Field_resetCamera(parent,KIbb)end
Field.pickUpFoodMaterial=function(FdO1zdp,zl,RtnI)zl=
zl or 1
RtnI=RtnI or Domain.getDivingChapter()
CS.LuaMethod.Field_pickUpFoodMaterial(parent,FdO1zdp,zl,RtnI)end;Field.hideFieldEnemy=function()
CS.LuaMethod.Field_hideFieldEnemy(parent)end;Field.restoreFieldEnemy=function()
CS.LuaMethod.Field_restoreFieldEnemy(parent)end
Field.registerFieldEnemyFunction=function(hRAYw,_oi,GDpnbWH)
CS.LuaMethod.Field_registerFieldEnemyFunction(parent,hRAYw,_oi,GDpnbWH)end
Field.setPlayerMoveEffectEnabled=function(h1)
CS.LuaMethod.Field_setPlayerMoveEffectEnabled(parent,h1)end
Field.setEnemyMoveEffectEnabled=function(J)
CS.LuaMethod.Field_setEnemyMoveEffectEnabled(parent,J)end
Field.setFieldEnemyDisableTimer=function(ik8J,iwqAq6,nOHRPf)
CS.LuaMethod.Field_setFieldEnemyDisableTimer(parent,ik8J,iwqAq6,nOHRPf)end
Field.setUnplayableDetectCollisionEnabled=function(Y0d)
CS.LuaMethod.Field_setUnplayableDetectCollisionEnabled(parent,Y0d)end
Field.setUnplayableEnemyPatrolEnabled=function(D1)
CS.LuaMethod.Field_setUnplayableEnemyPatrolEnabled(parent,D1)end
Field.discardAllExpeditionEnchant=function()
CS.LuaMethod.Field_discardAllExpeditionEnchant(parent)end
Field.obtainExpeditionEnchant=function(Qig)
CS.LuaMethod.Field_obtainExpeditionEnchant(parent,Qig)end
Field.getFieldEnemyStatus=function(OUTJy)
return CS.LuaMethod.Field_getFieldEnemyState(parent,OUTJy)end
Field.isDefeatedFieldEnemy=function(fcA)
return CS.LuaMethod.Field_isDefeatedFieldEnemy(parent,fcA)end
Field.getFieldEnemyDefeatedCount=function(kSiz5Frw)return
CS.LuaMethod.Field_getFieldEnemyDefeatedCount(parent,kSiz5Frw)end
Field.isDangerousFieldEnemy=function(F1)
return CS.LuaMethod.Field_isDangerousFieldEnemy(parent,F1)end
Field.forceUpdateFieldEnemyBoardAppearance=function()return
CS.LuaMethod.Field_forceUpdateFieldEnemyBoardAppearance(parent)end
Field.setCharacterShadowVisible=function(im,JViK)return
CS.LuaMethod.Field_SetCharacterShadowVisible(parent,im,JViK)end
Field.setCharacterDrawSortingOrder=function(RnTQ,cwFWorsD)return
CS.LuaMethod.Field_setCharacterDrawSortingOrder(parent,RnTQ,cwFWorsD)end
Field.setTouchableGimmickEvent=function(I6dJ,A8)return
CS.LuaMethod.Field_SetTouchableGimmickEvent(parent,I6dJ,A8)end
Field.changeTouchableGimmickStatus=function(SJHrnj,v6a34xv,xQYwPMo)if xQYwPMo==nil then xQYwPMo=false end;return
CS.LuaMethod.Field_ChangeTouchableGimmickStatus(parent,SJHrnj,v6a34xv,xQYwPMo)end
Field.activateTouchableGimmickIcon=function(uZ)return
CS.LuaMethod.Field_ActivateTouchableGimmick(parent,uZ,true)end
Field.deactivateTouchableGimmickIcon=function(v)return
CS.LuaMethod.Field_ActivateTouchableGimmick(parent,v,false)end
Field.setBarredGateEvent=function(WCUL,_ALQ0c,uZd)return
CS.LuaMethod.Field_SetBarredGateEvent(parent,WCUL,_ALQ0c,uZd)end
Field.setOneWayGateEvent=function(DDbY,Mp_imbx,faNviCn7)return
CS.LuaMethod.Field_SetOneWayGateEvent(parent,DDbY,Mp_imbx,faNviCn7)end
Field.showLaserGateEffect=function(A)
return CS.LuaMethod.Field_ShowLaserGateEffect(parent,A)end
Field.disappearLaserGateEffect=function(TVbHco6)return
CS.LuaMethod.Field_DisappearLaserGateEffect(parent,TVbHco6)end
Field.addForceVelocity=function(slOJ,Pz66yT)_AssertIsNotNull(slOJ)
CS.LuaMethod.Field_setForceVelocity(parent,slOJ,Pz66yT.x,Pz66yT.y,Pz66yT.z)end
Field.addForceAngularVelocity=function(YJAMZ,p)_AssertIsNotNull(YJAMZ)
CS.LuaMethod.Field_setForceAngularVelocity(parent,YJAMZ,p.x,p.y,p.z)end
Field.enableFloatDebris=function()
return CS.LuaMethod.Field_EnableFloatDebris(parent,true)end
Field.disableFloatDebris=function()
return CS.LuaMethod.Field_EnableFloatDebris(parent,false)end
Field.fallFloatDebris=function(lAKmM2nx,H,ElyKaw7,B)return
CS.LuaMethod.Field_FallFloatDebris(parent,lAKmM2nx,H,ElyKaw7,B)end
Field.setFreeMoveFall=function(FjYB2iKs,YkHzh)
CS.LuaMethod.Field_SetFreeMoveFall(parent,FjYB2iKs,YkHzh)end
Field.setFrontIdle=function(uULvHqf,KRK)
CS.LuaMethod.Field_SetFrontIdle(parent,uULvHqf,KRK)end
Field.setIdleActionEnabled=function(Lxkch4)
CS.LuaMethod.Field_SetIdleActionEnabled(parent,Lxkch4)end
Field.getBaseScenePath=function()
return CS.LuaMethod.Field_getBaseScenePath(parent)end
Field.unloadBaseScene=function()local K8=Field.getBaseScenePath()
CoroutineYield(CS.LuaMethod.Field_unloadBaseScene(parent))return K8 end
Field.restoreBaseScene=function(h)
CoroutineYield(CS.LuaMethod.Field_restoreBaseScene(parent,h))end
Field.setActiveControlPanel=function(Z,ymC8Tzi)
CS.LuaMethod.Field_SetActiveControlPanel(parent,Z,ymC8Tzi)end
Field.purgeDefaultPlayerResource=function()
CS.LuaMethod.Field_purgeDefaultPlayerResource(parent)end
Field.restoreDefaultPlayerResource=function()
CS.LuaMethod.Field_restoreDefaultPlayerResource(parent)end
Field.setRailBootState=function(Ef2Wz,_sWmAU,K)K=K or true
CS.LuaMethod.Field_setRailBootState(parent,Ef2Wz,_sWmAU,K)end
Field.setActionVoiceEnabled=function(g5oIm)
CS.LuaMethod.Field_setActionVoiceEnabled(parent,g5oIm)end
Field.registerReplaceActionVoice=function(XP,GLj2)
CS.LuaMethod.Field_registerReplaceActionVoice(parent,XP,GLj2)end
Field.clearReplaceActionVoice=function()
CS.LuaMethod.Field_clearReplaceActionVoice(parent)end;Field.clearFieldCutInMessage=function()
CS.LuaMethod.Field_ClearFieldCutInMessage()end
Field.setAllTreasureChestGimmickEvent=function(xVYvB)return
CS.LuaMethod.Field_SetAllTreasureChestFunction(parent,xVYvB)end
Field.setMoveCommandLanding=function(Bw)
CS.LuaMethod.Field_setMoveCommandLanding(parent,Bw)end
Field.setMoveCommandLandingKey=function(K,FB)
CS.LuaMethod.Field_setMoveCommandLandingKey(parent,K,FB)end
Field.getTouchingTreasureChest=function()
return CS.LuaMethod.Field_GetTouchingTreasureChest(parent)end
Field.getTreasureChestReward=function(NW22j19d)return
CS.LuaMethod.Field_GetTreasureChestReward(parent,NW22j19d)end
Field.closeTreasureChest=function(xqP)
return CS.LuaMethod.Field_CloseTreasureChest(parent,xqP)end
Field.fadeOutTreasureChest=function(j)
return CS.LuaMethod.Field_FadeOutTreasureChest(parent,j)end
Field.pickupTreasureChest=function(uVl12,QlCJXU)_AssertIsNotNull(uVl12)QlCJXU=QlCJXU or nil
CoroutineYield(CS.LuaMethod.Field_pickupTreasureChest(parent,uVl12,QlCJXU))end
Field.hideFieldEnemyByKey=function(J)
return CS.LuaMethod.Field_hideFieldEnemyByKey(J)end
Field.defeatFieldEnemyForce=function(PWFMNs6N)
return CS.LuaMethod.Field_defeatFieldEnemyForce(PWFMNs6N)end
Field.changeHideStateFieldEnemyForce=function(mhE3)return
CS.LuaMethod.Field_changeHideStateFieldEnemyForce(mhE3)end
Field.setFieldActionSpot=function(sAEuFEAE,Q)return
CS.LuaMethod.Field_SetFieldActionSpot(parent,sAEuFEAE,Q)end
Field.reviveFieldEnemy=function(rLPDOaJP)
return CS.LuaMethod.Field_reviveFieldEnemy(rLPDOaJP)end;FieldActionType={}FieldActionType.None=0
FieldActionType.Character=1;FieldActionType.DropItem=2;FieldActionType.Gate=3
FieldActionType.Fishing=4;FieldActionType.RecollectionPiece=5
FieldActionType.RecollectionStory=6;FieldActionType.Common=7;FieldActionType.Move=8
Field.setOneWayGateState=function(Hq6i8,yCd6l)return
CS.LuaMethod.Field_changeOneWayGateState(parent,Hq6i8,yCd6l)end;DoorState={}DoorState.Closed=0;DoorState.Open=1
DoorState.Opened=2
Field.enableOneWayGateNavMeshObstacle=function(Mst,IB)return
CS.LuaMethod.Field_enableOneWayGateNavMeshObstacle(parent,Mst,IB)end
Field.enableTouchableGimmickAutoRun=function(qaHJ,r8au)return
CS.LuaMethod.Field_enableTouchableGimmickAutoRun(parent,qaHJ,r8au)end
Field.setCharacterFaceZoffset=function(LD1z,LDuJaKua)LDuJaKua=LDuJaKua or 1.0
CS.LuaMethod.Field_setCharacterFaceZoffset(parent,LD1z,LDuJaKua)end
Field.setFreeCameraConfig=function(iiki6_93,U)
CS.LuaMethod.Field_setFreeCameraConfig(parent,iiki6_93,U)end
Field.startPlayerLookAtCamera=function(qso,ITwM9FF,jW,d)jW=jW or Vec(0,0,0)
CS.LuaMethod.Field_startPlayerLookAtCamera(parent,qso,ITwM9FF,jW,d)end
Field.recoverPlayerLookAtCamera=function(lk)
CS.LuaMethod.Field_recoverPlayerLookAtCamera(parent,lk)end
Field.disablePlayerLookAtCamera=function()
CS.LuaMethod.Field_recoverPlayerLookAtCamera(parent,0)end
Field.ignoreEncounterDangerValue=function(Zi3,wrzu)return
CS.LuaMethod.Field_ignoreEncounterDangerValue(Zi3,wrzu)end
Field.getBonePosition=function(whn6bk,G34_RQoV)
local JeHgQHPF=CS.LuaMethod.Field_getBonePosition(parent,whn6bk,G34_RQoV)return Vec(JeHgQHPF.x,JeHgQHPF.y,JeHgQHPF.z)end
Field.attachConstraint=function(O86VK7nM,YYZXKhh0,W_YCZF,qKsjnHsO,km)qKsjnHsO=qKsjnHsO or Vec(0,0,0)
if km==nil then km=true end
CS.LuaMethod.Field_attachConstraint(parent,O86VK7nM,YYZXKhh0,W_YCZF,qKsjnHsO,km)end
Field.detachConstraint=function(enc)
CS.LuaMethod.Field_detachConstraint(parent,enc)end
Field.setMultiMiniMapImageActive=function(Bne,LreIk,LY)
CS.LuaMethod.Field_SetMultiMiniMapImageActive(Bne,LreIk,LY)end
Field.getMoveForwardPosition=function(JCoOpTk4,jR4cj)_AssertExistsFieldObject(JCoOpTk4)
local fOFd4=CS.LuaMethod.Field_getMoveForwardPosition(parent,JCoOpTk4,jR4cj)return Vec(fOFd4.x,fOFd4.y,fOFd4.z)end;Field.vector2Length=function(d8tON)
return CS.LuaMethod.Field_vector2Length(d8tON)end;Field.purgeFieldEnemyAll=function()
CS.LuaMethod.Field_purgeFieldEnemyAll()end
Field.scaleTo=function(QH3H,e2LI,XDMT,ZBhbu,qi)
_AssertIsNotNull(QH3H)_AssertIsNotNull(e2LI)ZBhbu=ZBhbu or 1.0;qi=qi or 1.0
XDMT=XDMT or 0
return CS.LuaMethod.Field_scaleTo(parent,QH3H,e2LI,e2LI,e2LI,XDMT,ZBhbu,qi)end
Field.hideCommonUI=function(g5U_y1)
return CS.LuaMethod.Field_HideCommonUI(g5U_y1)end;Field.showUniqueUI=function(JVGw)
return CS.LuaMethod.Field_ShowUniqueUI(JVGw)end
Field.changeFacialAnimation=function(h5K3,Wxn,VCP,iMnPR)iMnPR=
iMnPR or-1.0
CS.LuaMethod.Field_changeFacialAnimation(parent,h5K3,Wxn,VCP,iMnPR)end
Field.resetFacialAnimation=function(IGzoW,gPvS)gPvS=gPvS or 0.20
CS.LuaMethod.Field_resetFacialAnimation(parent,IGzoW,gPvS)end
Field.setLookAtAngleLimit=function(R_oxJpD,uYD7YK1,C0hz,bx4S1pU,FMy)
CS.LuaMethod.Field_setLookAtAngleLimit(parent,R_oxJpD,uYD7YK1,C0hz,bx4S1pU,FMy)end
Field.resetLookAtAngleLimit=function(c)
CS.LuaMethod.Field_resetLookAtAngleLimit(parent,c)end
Field.setLookAtTargetV2=function(i,zsXy,Q)Q=Q or 0.3
CS.LuaMethod.Field_setLookAtTargetV2(parent,i,zsXy,Q)end
Field.setLookAtTargetWaitV2=function(TWm3zv,DPQT,Y2)Y2=Y2 or 0.3
Field.setLookAtTargetV2(TWm3zv,DPQT,Y2)Wait(Y2)end
Field.setLookAtPositionV2=function(XCDSNuR,riB,PMndXt)PMndXt=PMndXt or 0.120
CS.LuaMethod.Field_setLookAtPositionV2(parent,XCDSNuR,riB.x,riB.y,riB.z,PMndXt)end
Field.setLookAtTargetAutoV2=function(L,d,EUeZ,j)j=j or 0.160
CS.LuaMethod.Field_setLookAtTargetAutoV2(parent,L,d,EUeZ,j)end
Field.enableCameraAdjustmentOnEncounter=function(d1npILiq)
CS.LuaMethod.Field_enableCameraAdjustmentOnEncounter(d1npILiq)end
Field.isResumeStarting=function()return CS.LuaMethod.IsResumeStarting()end
Field.setRailActionFunction=function(E1A0,_U9gbw8,t)
CS.LuaMethod.Field_setRailActionFunction(parent,E1A0,_U9gbw8,function()Routine(t)end)end
Field.setAttackActionPointFunction=function(U,a,v4y8CxT)
CS.LuaMethod.Field_setAttackActionPointFunction(parent,U,a,function()
Routine(v4y8CxT)end)end