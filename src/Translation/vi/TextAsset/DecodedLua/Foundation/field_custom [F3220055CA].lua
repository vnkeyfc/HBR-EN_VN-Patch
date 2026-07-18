local rDzL7SVO=require'xlua.util'
Exit_FieldAndChange=function(AtYtR,ND2BCh3,IODBg,YRDu)
StartChangeField(AtYtR,ND2BCh3,IODBg)if YRDu then YRDu()end;Transition.wait()
Field.stopTaskAll()WaitChangeField()end
Exit_FieldAndAreaChange=function(CWRiP,LB0A,dl,sKPjQkdn)StartChangeExpeditionArea(CWRiP,LB0A,dl)if sKPjQkdn then
sKPjQkdn()end;Transition.wait()Field.stopTaskAll()
WaitChangeField()end
Exit_FieldAndChangeFast=function(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw)
if FieldLabel()==HHH9IlJp then if IKxw then IKxw()end
Transition.start()Field.resetPosition(uYz2ryy4)
Field.resetDirection()Field.resetFollowerPosition()Wait(0.5)
Field.setFollowerAutoMoveEnabled(true)Transition.finish()else
Exit_FieldAndChange(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw)end end
Field.gotoFastTravelInternal=function(w0,UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj)if nmuj then Transition.setWhite()else
Transition.setOutdoor("",w0)end;EspneS5=EspneS5 or true
kw3ei0a=kw3ei0a or 0.0;LZeg0=LZeg0 or 0.0
Field.setResetPositionOptions(true,kw3ei0a,EspneS5,LZeg0)
if FieldLabel()==UgXzI_C then
if nmuj then Wait(1.0)else Transition.start()end;Field.resetPosition(MLFLplLe)
if OJZ then
Field.resetFollowerPosition("Player",OJZ)else Field.resetFollowerPosition()end;Wait(0.5)Field.setFollowerAutoMoveEnabled(true)if nmuj then
Wait(0.5)else Transition.finish()end else
Exit_FieldAndChange(UgXzI_C,MLFLplLe,jwq)end end
Field.gotoFastTravel=function(bP,b4IqQW,iuGb,koZU,C,nmJGp_,h0v3PIV,Uc)
Field.gotoFastTravelInternal(bP,b4IqQW,iuGb,nil,koZU,C,nmJGp_,h0v3PIV,Uc)end
Field.gotoFastTravelWithTimeFrame=function(JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)
Field.gotoFastTravelInternal(JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)end
Field.gotoGardenPrism=function(hEk)local E8o;local TdqFo;E8o,TdqFo=Garden.GetPlacement(hEk)
Field.setResetPositionOptions(true,0,true,TdqFo)Exit_FieldAndChange(E8o,hEk)end
Field.computeMoveTime=function(ykLF0,cilhu,eVfN)local LBIJ=Field.getPosition(ykLF0)
local CSSp=VecLength(cilhu-LBIJ)eVfN=eVfN or 1.42;return CSSp/eVfN end
Field.moveToComputedMoveTime=function(CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb,_OwI)local GBDhi2D
if type(x1vCS0)=="string"then
GBDhi2D=Field.getPosition(x1vCS0)else _AssertIsVector(x1vCS0)GBDhi2D=x1vCS0 end;local XDYs=Field.computeMoveTime(CBZIwYHI,GBDhi2D,Herp)
if
TNczSeT then
return Field.moveTo(CBZIwYHI,GBDhi2D,XDYs,AnimationMode.None,Sb,_OwI)else return Field.moveTo(CBZIwYHI,GBDhi2D,XDYs,nil,Sb,_OwI)end end
Field.moveToComputedMoveTimeWait=function(JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4)
local EF=Field.moveToComputedMoveTime(JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4)Field.waitTask(EF)end
Field.moveByWait=function(wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q)
local QKTF34q3=Field.moveBy(wYFDyw8,JyI,hncZR4my,KqeVtj,LD,Q)Field.waitTask(QKTF34q3)end
Field.moveToWait=function(z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT)
local bdl6box_=Field.moveTo(z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT)Field.waitTask(bdl6box_)end
Field.moveToWaypoint=function(o,RMqe,c6H01I5a,CuoodPvK,e1iM,bN32Fa)local Ub=Field.getWaypointPosition(RMqe)local c6H01I5a=c6H01I5a or
Field.computeMoveTime("Player",Ub,1.420)
Field.moveTo(o,Ub,c6H01I5a,CuoodPvK,e1iM,bN32Fa)end
Field.moveToWaypointWait=function(fQEH,_om,kEI4,DSsD0,jRQUk,M)local p_I=Field.getWaypointPosition(_om)local kEI4=kEI4 or
Field.computeMoveTime("Player",p_I,1.420)
local ka=Field.moveTo(fQEH,p_I,kEI4,DSsD0,jRQUk,M)Field.waitTask(ka)end
Field.moveOnRouteWait=function(OAvmrJ,i,BBJcTiAS,m7jWgGw,cq)
local Mk3=Field.moveOnRoute(OAvmrJ,i,BBJcTiAS,m7jWgGw,cq)Field.waitTask(Mk3)end
Field.turnByWait=function(jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI,_E8uiG0)
local SK=Field.turnBy(jUhLQEm,Ed4qx,ZrR2o,_g,_NgROQrI,_E8uiG0)Field.waitTask(SK)end
Field.turnToWait=function(J7K570R,fDGKa,Q,ZukFflVc,oJgQv,J8T)
local Hc=Field.turnTo(J7K570R,fDGKa,Q,ZukFflVc,oJgQv,J8T)Field.waitTask(Hc)end
Field.turnToPositionWait=function(yu,IbCB,ipjC14vX,zr8xFL0,_QfE,hV8urDO)
local a=Field.turnToPosition(yu,IbCB,ipjC14vX,zr8xFL0,_QfE,hV8urDO)Field.waitTask(a)end
Field.turnToTarget=function(jv,v,tA_,XRbckaF,ruef,rMVr1Ks)local zyXWQodW=Field.getPosition(v)return
Field.turnToPosition(jv,zyXWQodW,tA_,XRbckaF,ruef,rMVr1Ks)end
Field.turnToTargetWait=function(VmovH,Q,oGjJ,G1BiG9x,X3v,fJB)
local p96jR=Field.turnToTarget(VmovH,Q,oGjJ,G1BiG9x,X3v,fJB)Field.waitTask(p96jR)end
Field.changeAnimationWait=function(Cd,oVZ,JCPdH,yt)
local qejbRWcX=Field.changeAnimation(Cd,oVZ,JCPdH,yt)Field.waitTask(qejbRWcX)end
Field.moveCameraTargetWait=function(lKi_v,WClwNvPI,Z,F1kNUeep)local VGNf90M=Field.getPosition(lKi_v)
Field.moveToWait("Camera",VGNf90M,WClwNvPI,AnimationMode.Auto,Z,F1kNUeep)end
Field.moveCameraTarget=function(DTra,Kfl,a6QNS6,Q)local S=Field.getPosition(DTra)
Field.moveTo("Camera",S,Kfl,AnimationMode.Auto,a6QNS6,Q)end
Field.setCameraFovWait=function(Wd,__q,o1isr9N,f)local _a4il=Field.setCameraFov(Wd,__q,o1isr9N,f)
Field.waitTask(_a4il)end
Field.setTalkCamera=function(Fsy,o5EML,gU)local JkLOu38=Field.getPosition("Player")
local rJeSR=Field.getPosition(Fsy)local Qsn1Mp=(rJeSR-JkLOu38)*0.50+JkLOu38;o5EML=o5EML or
1;gU=gU or 0.6;Field.stopTaskKey("Camera")
Field.setCameraFov(
Field.getDefaultCameraFov()*gU,o5EML,1,0.2)
Field.moveTo("Camera",Qsn1Mp,o5EML,AnimationMode.Auto,1,0.2)Wait(o5EML/2)end
Field.zoomCamera=function(GT4,rg7e)rg7e=rg7e or 1;GT4=GT4 or 0.6
local cWGq=Field.getCameraFov()Field.setCameraFov(cWGq*GT4,rg7e,1,0.2)end
Field.setMidpointCamera=function(Xe35l,L,x)local L=L or"Player"
local tnnCl=Field.getPosition(Xe35l)local K=Field.getPosition(L)
local T06zarEG=(tnnCl-K)*0.50+K;local x=x or 0;Field.stopTaskKey("Camera")
Field.moveTo("Camera",T06zarEG,x,AnimationMode.Auto,1,0.2)end
Field.setTalkCameraNoFov=function(_pYwz9W,pPhf)local UitKjKg=Field.getPosition("Player")
local u6NC=Field.getPosition(_pYwz9W)local QsGa=(u6NC-UitKjKg)*0.50+UitKjKg
local pPhf=pPhf or 1
Field.moveTo("Camera",QsGa,pPhf,AnimationMode.Auto,1,0.2)Wait(pPhf/2)end
Field.faceToFace=function(W8os4zeu,iqGT3,iylQPau)iqGT3=iqGT3 or 0.3;iylQPau=iylQPau or 0.1
Field.turnToTarget("Player",W8os4zeu,iqGT3)Wait(iylQPau)
Field.turnToTarget(W8os4zeu,"Player",iqGT3)end
Field.faceTo=function(miJYM,I)I=I or 0.3;Field.turnToTarget("Player",miJYM,I)end;FaceToFaceMode={}FaceToFaceMode.None="None"
FaceToFaceMode.Face="Face"FaceToFaceMode.Turn="Turn"FaceToFaceMode.Auto="Auto"
Field.turnToFace=function(Tq9Ac2,BIriYV3u,te,J4F6)te=
te or FaceToFaceMode.Auto;J4F6=J4F6 or 0.3
if(te==
FaceToFaceMode.Auto)then
local Xx0pC=Field.getFaceToFaceAngle(Tq9Ac2,BIriYV3u)if(Xx0pC>-70.0 and Xx0pC<70.0)then
te=FaceToFaceMode.Face else te=FaceToFaceMode.Turn end end
if(te==FaceToFaceMode.Turn)then
Field.disableLookAt(Tq9Ac2,J4F6)Field.turnToTarget(Tq9Ac2,BIriYV3u,J4F6)elseif(te==
FaceToFaceMode.Face)then
Field.setLookAtTarget(Tq9Ac2,BIriYV3u,J4F6*0.50)end end
Field.faceToFaceEx=function(yX5i,Eq,Pj6PhX,iT1M,M5)iT1M=iT1M or 0.3;M5=M5 or 0.1
Field.turnToFace(yX5i,Eq,Pj6PhX,iT1M)Wait(M5)Field.turnToFace(Eq,yX5i,Pj6PhX,iT1M)end
Field.setLookAtAxis=function(sqDj,iehV7hMo)
CS.LuaMethod.Field_setLookAtAxis(parent,sqDj,iehV7hMo)end
Field.faceToFaceTalk=function(qHrfq6,v5R,Ys,Q,FaXF0EYn)Q=Q or 0.3;FaXF0EYn=FaXF0EYn or 0.1
Ys=Ys or FaceToFaceMode.Turn;Field.turnToFace("Player",qHrfq6,Ys,Q)
Wait(FaXF0EYn)Field.turnToFace(qHrfq6,"Player",v5R,Q)end;local BW0WFP=false;local X8;local JQT
Field.changeCameraToEvent=function()
Field.hideGayaBalloonAll()Field.startEventScriptCamera()end
Field.startEvent=function(DytHsRmu,P,yRLNI,RHXu4t,CaPMHK)if P==nil then P=true end;local RHXu4t=RHXu4t or false
local CaPMHK=CaPMHK or false;if BW0WFP then end;BW0WFP=true;PlayerLock(DytHsRmu)if not CaPMHK then
Field.changeCameraToEvent()end;if RHXu4t==false and JQT==nil then
JQT=CS.LuaMethod.SetVerticalLetterBox(parent)end;if P then
Field.showAdvHud(yRLNI)end end
Field.showAdvHudCustom=function(Ap3zqG5d,QZOIU)
Field.startEvent(nil,true,Ap3zqG5d,QZOIU,true)end
Field.hideAdvHudCustom=function()Field.finishEvent(nil,nil,true)end
Field.showAdvHudWrapper=function(Yzu9D)Adv.waitAsyncInstanceAll()
Layout.createStage()Field.showAdvHudCustom()Yield(Yzu9D)
Field.hideAdvHudCustom()end
Field.showAdvHudWrapperNoWait=function(E0U)Layout.createStage()
Field.showAdvHudCustom()Yield(E0U)Field.hideAdvHudCustom()end
Field.showAdvHudWrapperContinuously=function(WPn,UfEH,z0,BK19,I,ubw,f,yaA2f,wjQXn79,C1,hdr,tvO,Q,LfHYQg,R,DKu3,VAaGt,G1PwhyG,G,fe)
local MFUc={WPn,UfEH,z0,BK19,I,ubw,f,yaA2f,wjQXn79,C1,hdr,tvO,Q,LfHYQg,R,DKu3,VAaGt,G1PwhyG,G,fe}
for V9=0,4 do local iT=V9*4;local OZEQxah_=MFUc[iT+1]local o8I7=MFUc[iT+2]
local T57hH4r=MFUc[iT+3]local k=MFUc[iT+4]
if V9 ==0 then if T57hH4r==nil or k==nil then return end end
local Tx2=_showAdvHudWrapperContinuouslyInternal(OZEQxah_,o8I7,T57hH4r,k)if not Tx2 then break end end;Field.hideAdvHudCustom()end
_showAdvHudWrapperContinuouslyInternal=function(B,Yt6V4Y,n,ZNChA)if B~=nil then Yield(B)end;if Yt6V4Y~=nil then
Adv.waitAsyncInstanceAll()Layout.createStage()Field.showAdvHudCustom()
Yield(Yt6V4Y)end;if n~=nil then Yield(n)
Field.changeCameraToPlayable(0)end;if ZNChA~=nil then Field.startNovel(ZNChA)return
true end;return false end
Field.changeCameraToPlayable=function(VufPd)VufPd=VufPd or 0.8
Field.recoverPlayableCamera(VufPd)Field.stopTaskKey("Camera")
Field.finishEventScriptCamera()Field.disableLookAt("Player")Wait(VufPd)
Field.showGayaBalloonAll()end
Field.finishEvent=function(FWsorpKS,zuZa,M)local M=M or false;if BW0WFP==false then end;if not M then
Field.changeCameraToPlayable(FWsorpKS)end;PlayerUnLock(zuZa)
Field.hideAdvHud()if JQT~=nil then
CS.LuaMethod.ResetVerticalLetterBox(parent,JQT)JQT=nil end;BW0WFP=false end
Field.showAdvHud=function(vI)if vI==nil then vI=true end
if BW0WFP and X8 ==nil then X8=CS.LuaMethod.SetRunningNovel(parent,parent,
nil,false,vI)end end
Field.hideAdvHud=function()if BW0WFP and X8 ~=nil then
CS.LuaMethod.ResetRunningNovel(parent,X8)end;X8=nil end
Field.setPosition=function(_ogR,g)Field.moveTo(_ogR,g,0)end
Field.setByPlayerPosition=function(n69tv,z)local VKJxwOdv=Field.getPlayerPosition()
local z=z or Vec(0,0,0)EmptyEvent(n69tv)
Field.moveTo(n69tv,VKJxwOdv+z,0)end
Field.setByWaypointPosition=function(IplgjH8v,MB6jIC,h4OlVtn)local E0=Field.getWaypointPosition(MB6jIC)local h4OlVtn=h4OlVtn or
Vec(0,0,0)EmptyEvent(IplgjH8v)
Field.moveTo(IplgjH8v,E0+h4OlVtn,0)end
Field.setByTargetPositionDir=function(eLMg,mVjDTYYb,l8,T,EME)local l8=l8 or 0;local T=T or 0;local EME=EME or 0
local nudgGJ=Field.getRotation(eLMg)local XRN5ln=nudgGJ.x;local D4MiUjQ=nudgGJ.z
local j=Field.getRotation(mVjDTYYb)local nN=j.y
Field.setPosition(eLMg,Field.getByTargetPosition(mVjDTYYb,l8,EME,true)+
Vec(0,T,0))
Field.rotateTo(eLMg,Vec(XRN5ln,nN+EME,D4MiUjQ),0)end
Field.getFieldEventState=function()return GetSyncState("FieldEventState")end
Field.setFieldEventState=function(gt2)SetSyncState("FieldEventState",gt2)end
Field.resetFieldEventState=function()SetSyncState("FieldEventState","")end;Field.waitFieldEventState=function(lF)lF=lF or""
WaitSyncState("FieldEventState",lF)end
Field.waitGayaBalloon=function(s8s3,R,h4xbyHiS)
WaitVoiceEndPlayable(R,s8s3,h4xbyHiS)end
Field.initPlayerPosition=function(D)Field.setPosition("Player",D)
Field.resetFollowerPosition()end
Field.isItPossibleActivity=function(fk,EJi,xV_7,Z,N4WulQix)local EJi=EJi or"Confirm"local xV_7=xV_7 or"Reconsider"local Z=Z or
nil;if Quest.isHasAnyActive()then
Adv.kayamoriTalk([[Nah, I'll do that next time.]],"VC_field_custom_00001_RKayamori")return false end
if Z~=
nil and Field.isPlayedFreeTimeAtLatestDay()then
Adv.kayamoriTalk([[Nah, I'll do that next time.]],"VC_field_custom_00001_RKayamori")return false end
if Field.showActivityDialog(Z,N4WulQix)then
local gUl6=Adv.question(Adv.FormatText("{0}",fk),Adv.FormatText("{0}|{1}",EJi,xV_7),0,true)if gUl6 ==0 then return true end end end
Field.showActivityDialog=function(UsFp_,oRv9KOBG)local SOGQ=nil
if UsFp_~=nil then if Game.isPastDay()then
SOGQ=UI.showStaminaHud()end
UI.showActivityStartDialog(UsFp_,oRv9KOBG)
SetLocalFlag("アクティビティ消費ライフ",0)local m=0
if not oRv9KOBG then local N
N,m=UI.showActivityMultipleSelectDialog()
SetLocalFlag("アクティビティ消費ライフ",m)
if N==Dialog.CANCEL then UI.hideStaminaHud(SOGQ)return false end end;local RVaYv=UI.showActivityConfirmDialog(SOGQ,m)
if
RVaYv==Dialog.CANCEL then UI.hideStaminaHud(SOGQ)return false end;UI.hideStaminaHud(SOGQ)end;return true end
Field.getActivitySixSensePoint=function()local rYuUO8L
if Game.isLatestDay()then rYuUO8L=7 else rYuUO8L=7 end
Log("SixSensePoint: "..tostring(rYuUO8L))return rYuUO8L end;Field.startActivity=function()
CS.LuaMethod.Field_startActivity(parent)end;Field.clearActivity=function()
CS.LuaMethod.Field_clearActivity()end;Field.cancelAutoMove=function()
CS.LuaMethod.Field_cancelAutoMove()end
Field.setupEnterFormation=function(Vsz7u)
if
type(Vsz7u)=="string"then local _X0FlsZf=Field.getWaypointPosition(Vsz7u)
Field.turnToPosition("Player",_X0FlsZf,0)else Field.turnToPosition("Player",Vsz7u,0)end;Field.resetFollowerPosition()
Field.setFollowerAutoMoveEnabled(true)end
Field.playerComeIn=function(VuG9Ic,H,a,ZBZWd)local gPir=Field.getWaypointPosition(VuG9Ic)
local a=a or 1.0;local ZBZWd=ZBZWd or false;Field.resetPosition(VuG9Ic)Field.initPlayerPosition(
gPir+H)
local gPir=Field.getWaypointPosition(VuG9Ic)Field.setupEnterFormation(gPir)
local dUg9_Y=Field.computeMoveTime("Player",gPir,a*1.420)
if not ZBZWd then
Field.moveToWaypointWait("Player",VuG9Ic,dUg9_Y)Field.resetPosition()else Field.resetPosition(VuG9Ic)
local gPir=Field.getWaypointPosition(VuG9Ic)Field.initPlayerPosition(gPir+H)
Field.moveTo("Player",gPir,dUg9_Y)end end
Field.playerComeInPosition=function(O,e8eXevG,pT8,VJvm)local pT8=pT8 or 1.0;local VJvm=VJvm or false
local Wp40V81=O+e8eXevG;Field.setPosition("Player",Wp40V81)
Field.setupEnterFormation(O)
local AQWsvIDp=Field.computeMoveTime("Player",O,pT8*1.420)
if not VJvm then Field.moveToWait("Player",O,AQWsvIDp)
Field.resetPosition()else Field.moveTo("Player",O,AQWsvIDp)end end
Field.playerComeInTarget=function(w5f,kZcF,aoK,FZ_U)local nAu=Field.getPosition(w5f)
Field.playerComeInPosition(nAu,kZcF,aoK,FZ_U)end
Field.playerGetOut=function(JM,R,sEGF,Bcu,V)Field.stopTaskKey("Player")local nrZMM=
Field.getWaypointPosition(JM)+R;local sEGF=sEGF or 1.0;local l=Field.computeMoveTime("Player",nrZMM,
sEGF*1.420)
Field.moveTo("Player",nrZMM,l)Field.setFollowerAutoMoveEnabled(true)
if Bcu then Wait(Bcu)end;if not V then Transition.start()
Field.stopTaskKey("Player")end end
Field.playerTransportGetOut=function(_hG,zJ,iPZXbV_,ERW,iV,IMtBU7,UMf9U,ZfmUYm)local K="Player"Field.stopTaskKey(K)local NM9TK=_hG
Field.turnToTarget(K,NM9TK,0,AnimationMode.None)Wait(0,1)
Field.transportV3(K,NM9TK,zJ,iPZXbV_,ERW,iV,IMtBU7,UMf9U)if UMf9U then Wait(UMf9U)end;if not ZfmUYm then Transition.start()
Field.stopTaskKey(K)end;local z966let="EffectRoot"
Field.resetTransportV3(K,zJ,z966let)end
Field.playerTransportGetIn=function(l)local B1="Player"Field.stopTaskKey(B1)
Field.setActive(B1,false)Wait(0.3)Field.transportInV3(B1,true)Wait(1)end
Field.setDefaultCamera=function()local dntR0Y=Field.getDefaultCameraHeight()
local jWQN=Field.getDefaultCameraDistance()local g=Field.getDefaultCameraAngleH()
local RVJE=Field.getDefaultCameraAngleV()local aoBlB=Field.getDefaultCameraFov()
Field.setCameraHeight(dntR0Y,0)Field.setCameraDistance(jWQN,0)
Field.setCameraAngleH(g,0)Field.setCameraAngleV(RVJE,0)
Field.setCameraFov(aoBlB,0)end
Field.setStartCameraComposition=function(bt,L,Z,iq,H9Vaxrqz,W04CjCI)Field.stopCameraComposition()
Field.setCameraCompositionExWithListener(bt,L,Z,iq,H9Vaxrqz,W04CjCI)Field.waitCameraComposition()end
Field.showBgDependsOnTime=function(uGslzNO)local WEs6;local NXW=GetTimeFrame()
if NXW==TimeFrame.Noon then WEs6=Adv.image(
uGslzNO.."_Noon","BG")elseif NXW==TimeFrame.Evening then WEs6=Adv.image(
uGslzNO.."_Evening","BG")elseif
NXW==TimeFrame.Night then WEs6=Adv.image(uGslzNO.."_Night","BG")end;Adv.show(WEs6,0)return WEs6 end
Field.greetDependsOnTime=function(GGnKhb,ongv3O,UOrfZxe,Ga35Z)local afSY2kYq=GetTimeFrame()
if afSY2kYq==TimeFrame.Noon then
Adv.talk(GGnKhb,ongv3O)elseif afSY2kYq==TimeFrame.Evening then Adv.talk(GGnKhb,UOrfZxe)elseif afSY2kYq==
TimeFrame.Night then Adv.talk(GGnKhb,Ga35Z)end end
Field.setEnvironmentBackgroundColor=function(UpJB,F,xpw,ehC5)
Field.setEnvironmentColor("Background",UpJB,F,xpw,ehC5)Field.setEnvironmentColor("Sky",UpJB,F,xpw,ehC5)end
Field.setEnvironmentCharacterColor=function(cZd7sYj,NfOm1d,do1,CUiwrelt)
Field.setEnvironmentColor("Character",cZd7sYj,NfOm1d,do1,CUiwrelt)
Field.setEnvironmentColor("CharacterRim",cZd7sYj,NfOm1d,do1,CUiwrelt)end
Field.goToArena=function(bUDT3,RcmJI)
Field.playerGetOut("ArenaPoint",Vec(0,0,10))
if GetFlag("アリーナに行きます")==0 then
Field.hideTagCharacters("Mob")Field.hideTagCharacters("Gaya")
Field.setFollowerAutoMoveEnabled(true)Field.stopTaskKey("Player")
local PcsTnXqr=Field.getPosition("FrontOfArena")Field.startEvent(nil,false)Wait(2)Field.initPlayerPosition(PcsTnXqr+
Vec(0,0,-2))
Field.moveCameraTargetWait("FrontOfArena")Field.moveBy("Camera",Vec(1.2),0)
Field.moveBy("Player",Vec(0,0,4),3)
Field.setCameraFov(Field.getCameraFov()*0.5,0)
Field.setCameraAngleV(Field.getCameraAngleV()+15,0)
Field.setCameraAngleH(Field.getCameraAngleH()-20,0)Transition.finish()
Field.setCameraAngleH(Field.getCameraAngleH()+10,3,1,0)
Field.setCameraFov(Field.getCameraFov()/0.6,3,1,0)Wait(2)Transition.start()
Field.stopTaskKey("Player")Field.stopTaskKey("Camera")Field.finishEvent(0)
Field.restoreTagCharacters("Mob")Field.restoreTagCharacters("Gaya")
SetFlag("アリーナに行きます",1)end;if bUDT3 then Yield(bUDT3)Wait(2)end;if not RcmJI then
Transition.finish()end end
Field.goToArenaFromHome=function(idNXnq,V)
if GetFlag("アリーナに行きます")==0 then
Field.stopTaskKey("Player")Field.stopTaskKey("Camera")
Field.restoreTagCharacters("Mob")Field.restoreTagCharacters("Gaya")
SetFlag("アリーナに行きます",1)end;if idNXnq then Yield(idNXnq)Wait(2)end;if not V then
Transition.finish()end end
Field.goToResearchBuilding=function(k,Y)
Field.playerGetOut("ResearchBuildingPoint",Vec(0.5,0,10))
if GetFlag("研究所に行きます")==0 then
Field.hideTagCharacters("Mob")Field.hideTagCharacters("Gaya")
Field.setFollowerAutoMoveEnabled(true)Field.stopTaskKey("Player")
Field.initPlayerPosition(Field.getWaypointPosition("MainStreetSidePoint"))Field.startEvent(nil,false)
Field.moveCameraTargetWait("Player",0)
Field.setCameraAngleH(Field.getCameraAngleH()+20,0)
Field.moveOnRoute("Player","InFrontOfResearchBuilding")
Field.moveOnRoute("Camera","InFrontOfResearchBuilding")Wait(1.5)Transition.finish()Wait(1.8)
Transition.start()Field.stopTaskKey("Player")
Field.stopTaskKey("Camera")Field.finishEvent(0)
Field.restoreTagCharacters("Mob")Field.restoreTagCharacters("Gaya")
SetFlag("研究所に行きます",1)end;if k then Yield(k)Wait(2)end
if not Y then Transition.finish()end end
Field.goToDormitory1F=function(lGWhP)
Field.playerGetOut("DormitoryPoint",Vec(-5),1,1)
if GetFlag("宿舎1Fに行きます")==0 then
Field.initPlayerPosition(Field.getWaypointPosition("SlopeUpperPoint"))Field.setFollowerAutoMoveEnabled(true)
Field.startEvent(nil,false)Field.moveCameraTargetWait("Player",0)
Field.moveOnRoute("Player","SlopeLowerPoint")
Field.moveTo("Camera",Field.getWaypointPosition("SlopeLowerPoint"),15)Wait(1)Transition.finish()Wait(2.2)
Transition.start()Field.stopTaskKey("Camera")
Field.stopTaskKey("Player")Field.finishEvent(0)
SetFlag("宿舎1Fに行きます",1)end;if lGWhP then Yield(lGWhP)end;Transition.finish()end
Field.goToMiemie=function(AqxSe0i,qB_G,o,oBxd9Bs,rmPi08c,y)Transition.start()
Field.resetPosition("MiemieGatePoint")Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(2.500,1.500,1.500),Vec(5.000,215.000,0.000),35.00)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
if qB_G then
local xyN90MRI=Domain.getDivingChapter()local NJOJL=Domain.getDivingDay()
if
xyN90MRI=="MC04"and NJOJL<14 then
Adv.kayamoriTalkMonolog([[(I'm at Miemie Spa. Now what?)]],"VC_Activity_00183_v003_RKayamori")elseif xyN90MRI=="MC04B"then
Adv.kayamoriTalkMonolog([[(I'm at Miemie Spa. Now what?)]],"VC_Activity_00176_v006_RKayamori")elseif xyN90MRI=="MC05A"then
Adv.kayamoriTalkMonolog([[(I'm at Miemie Spa. Now what?)]],"VC_Z_904000107_RKayamori")else
Adv.kayamoriTalk([[(I'm at Miemie Spa. Now what?)]],"VC_ActivityAtMiemie_MC02_ADV_00000_RKayamori")end
if Quest.isHasAnyActive()then
Adv.kayamoriTalk([[Nah, I'll do that next time.]],"VC_field_custom_00001_RKayamori")Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end
if
Field.showActivityDialog(y,Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_KIND))then local o=o or"Confirm"local oBxd9Bs=oBxd9Bs or"Reconsider"
local rmPi08c=rmPi08c or""
local VLa=Adv.question(rmPi08c,Adv.FormatText("{0}|{1}",o,oBxd9Bs),0,true)
if VLa==1 or
not Domain.validateActivitySixSense(SixSense.ACTIVITY_KIND)then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.moveBy("Player",Vec(-3,0,-3),3)Wait(2)
Transition.start()if AqxSe0i then Yield(AqxSe0i)end else Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end else
local QlJ=Adv.question("Enter Miemie Spa?",[[Yes|No]],0,true)
if QlJ==1 then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.setFollowerAutoMoveEnabled(true)
Field.moveBy("Player",Vec(-3,0,-3),3)Wait(2)Transition.start()
Field.stopTaskKey("Player")if AqxSe0i then Yield(AqxSe0i)end end end)Field.setCameraCompositionEnabled(false)
Transition.finish()end
Field.goToMaguwai=function(R4RmFFgy)Field.turnToWait("Player",150,0.3)
Transition.start()Field.resetPosition("MaguwaiGatePoint")
Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(-4.000,1.500,-29.000),Vec(5.000,135.000,0.000),35.00)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
local e=Adv.question("Enter Mujina?",[[Yes|No]],0,true)
if e==1 then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.setFollowerAutoMoveEnabled(true)
Field.moveBy("Player",Vec(3,0,-5),3)Wait(1)Transition.start()
Field.stopTaskKey("Player")if R4RmFFgy then Yield(R4RmFFgy)end end)Field.setCameraCompositionEnabled(false)
Transition.finish()end
Field.goToLuna=function(Wu)Field.turnToWait("Player",90,0.3)
Transition.start()Field.startEvent()
Field.setCameraHeight(Field.getCameraHeight()+0.2,0)
Field.setCameraDistance(Field.getCameraDistance()-2,0)Field.setCameraAngleH(0,0)
Field.setCameraAngleV(5,0)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
local v6TQ=Adv.question("Enter the boutique?",[[Yes|No]],0,true)if v6TQ==1 then Transition.start()Field.finishEvent(0)
Transition.finish()return end
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(3,0,-0.5),3)Wait(1)
Transition.start()Field.stopTaskKey("Player")if Wu then Yield(Wu)end end)Field.finishEvent(0)Transition.finish()end
Field.goToPopotan=function(r4LGuiR3)Field.turnToWait("Player",-105,0.3)
Transition.start()Field.resetPosition("PopotanGatePoint")
Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(1.300,1.500,-53.700),Vec(5.000,230.000,0.000),40.00)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
local HXjb=Adv.question("Enter POPOTAN?",[[Yes|No]],0,true)
if HXjb==1 then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(-3,0,-
1.3),3)Wait(2)
Transition.start()Field.stopTaskKey("Player")
if r4LGuiR3 then Yield(r4LGuiR3)end end)Field.setCameraCompositionEnabled(false)
Transition.finish()end
Field.goToBattle9=function(_bmf5tSQ,uckdc,oW3kmm,fLQt,DEq3bN,tcxhx)Transition.start()
Field.resetPosition("PopotanPoint")Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(-5.200,1.500,-64.500),Vec(4.000,160.000,0.000),30.00)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
if uckdc then
local w9=Domain.getDivingChapter()local _Fm=Domain.getDivingDay()
if w9 =="MC04"and _Fm<14 then
Adv.kayamoriTalkMonolog([[(I'm at the cinema. Now what?)]],"VC_Activity_00294_v003_RKayamori")elseif w9 =="MC04B"then
Adv.kayamoriTalkMonolog([[(I'm at the cinema. Now what?)]],"VC_Activity_00263_v006_RKayamori")elseif w9 =="MC05A"then
Adv.kayamoriTalkMonolog([[(I'm at the cinema. Now what?)]],"VC_Z_904000110_RKayamori")else
Adv.kayamoriTalk([[(I'm at the cinema. Now what...?)]],"VC_field_custom_00025_RKayamori")end
if Quest.isHasAnyActive()then
Adv.kayamoriTalk([[Nah, I'll do that next time.]],"VC_field_custom_00001_RKayamori")Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end
if
Field.showActivityDialog(tcxhx,Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_CRAZY))then local oW3kmm=oW3kmm or"Confirm"local fLQt=fLQt or"Reconsider"
local DEq3bN=DEq3bN or""
local ngLY6QaP=Adv.question(Adv.FormatText("{0}",DEq3bN),Adv.FormatText("{0}|{1}",oW3kmm,fLQt),0,true)
if ngLY6QaP==1 or
not Domain.validateActivitySixSense(SixSense.ACTIVITY_CRAZY)then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.moveBy("Player",Vec(3,0,-7.3),4)Wait(1)
Transition.start()if _bmf5tSQ then Yield(_bmf5tSQ)end else Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end else
local ha=Adv.question("Enter Battle 9 Theater?",[[Yes|No]],0,true)
if ha==1 then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.setFollowerAutoMoveEnabled(true)
Field.moveBy("Player",Vec(3,0,-7.3),4)Wait(1)Transition.start()
Field.stopTaskKey("Player")if _bmf5tSQ then Yield(_bmf5tSQ)end end end)Field.setCameraCompositionEnabled(false)
Transition.finish()end
Field.goToLonelyMart=function(ew4)Field.turnToWait("Player",180,0.3)
Transition.start()Field.resetPosition("LonelyMartGatePoint")
Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(-21.400,1.500,-115.500),Vec(3.000,180.000,0.000),35.00)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
local mqHQUP=Adv.question("Enter Lonely Mart?",[[Yes|No]],0,true)
if mqHQUP==1 then Transition.start()
Field.setCameraCompositionEnabled(false)Transition.finish()return end;Field.setFollowerAutoMoveEnabled(true)
Field.moveBy("Player",Vec(0.1,0,-3),3)Wait(1)Transition.start()
Field.stopTaskKey("Player")if ew4 then Yield(ew4)end end)Field.setCameraCompositionEnabled(false)
Transition.finish()end
Field.goToSuperlive=function(WQAcK)
local xoVjTpqN=Adv.question("Enter Mostco?",[[Yes|No]],0,true)
Field.showAdvHudWrapper(function()if xoVjTpqN==1 then return end
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(-3,0,-3.5),3)
Wait(1)Transition.start()Field.stopTaskKey("Player")if
WQAcK then Yield(WQAcK)end end)Field.finishEvent(0)Transition.finish()end
Field.goToFountain=function(t,yhgPg,kegFrH,N,QQHuFb4H,O)Transition.start()
Field.startEvent(nil,false)Field.resetPosition("FountainPoint")
Field.setCameraComposition(Vec(-22.5,
-0.6,-116.7),Vec(0,160,-3))
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
if yhgPg then
local N3p=Domain.getDivingChapter()local hVHqL=Domain.getDivingDay()
if N3p=="MC01"then
Adv.kayamoriTalk([[(Nice view. May as well snack while I enjoy it.)]],"VC_field_custom_00029_RKayamori")elseif N3p=="MC02"then
Adv.kayamoriTalk([[(Wow, lotsa people today. I bet a street performance would draw a crowd.)]],"VC_ActivityAtFountain_MC02_ADV_00000_RKayamori")elseif N3p=="MC03"then
Adv.kayamoriTalkMonolog([[(What a great location. I'd love to sing here sometime.)]],"VC_ActivityAtFountain_MC03_ADV_00000_RKayamori")elseif N3p=="MC04"and hVHqL<14 then
Adv.kayamoriTalkMonolog([[(Pretty busy today. I should be able to find some way to help people out.)]],"VC_Activity_00082_v003_RKayamori")elseif N3p=="MC04B"then
Adv.kayamoriTalkMonolog([[(As busy as always... What should I do today?) ]],"VC_Activity_00079_v006_RKayamori")elseif N3p=="MC05A"then
Adv.kayamoriTalkMonolog([[(As busy as always... What should I do today?) ]],"VC_Z_904000104_RKayamori")else end
if Quest.isHasAnyActive()then
Adv.kayamoriTalk([[Nah, I'll do that next time.]],"VC_field_custom_00001_RKayamori")Transition.start()Field.finishEvent(0)
Transition.finish()return end
if
Field.showActivityDialog(O,Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_HEART))then local kegFrH=kegFrH or"Confirm"local N=N or"Reconsider"
local QQHuFb4H=QQHuFb4H or""
local Jj=Adv.question(QQHuFb4H,Adv.FormatText("{0}|{1}",kegFrH,N),0,true)
if Jj==1 or
not Domain.validateActivitySixSense(SixSense.ACTIVITY_HEART)then Transition.start()
Field.finishEvent(0)Transition.finish()return end;Wait(1)
if N3p=="MC01"then
Transition.setOutdoor("Flavor Street","Shops")elseif N3p=="MC02"then
Transition.setOutdoor("Flavor Street","Fountain Square")elseif N3p=="MC03"then elseif N3p=="MC04"and hVHqL<14 then else end;Transition.start()if t then Yield(t)end else
Transition.start()Field.finishEvent(0)Transition.finish()return end else
local lM92c=Adv.question("Hang out at Fountain Square?",[[Hang out|Leave]],0,true)if lM92c==1 then Transition.start()Field.finishEvent(0)
Transition.finish()return end
Field.moveBy("Player",Vec(-5,0,-1),4)Wait(1)Transition.start()
Field.stopTaskKey("Player")if t then Yield(t)end end end)Field.finishEvent(0)Transition.finish()end
Field.setCameraComposition=function(hX,c9asjuf,NY,P,b71)c9asjuf=c9asjuf or Vec(0,0,0)NY=NY or 0
P=P or 1.0;b71=b71 or 1.0;_AssertIsVector(hX)
_AssertIsVector(c9asjuf)
Field.moveTo("Camera",hX,NY,AnimationMode.None,P,b71)
Field.rotateTo("Camera",c9asjuf,NY,AnimationMode.None,P,b71)end
Field.setCameraCompositionWait=function(jolgqe,A76,F,D,P)
Field.setCameraComposition(jolgqe,A76,F,D,P)Field.waitTaskKey("Camera")end
Field.talkCutscene=function(_3R35U,lu,si,kv)if kv==nil then kv=true end;Field.startEvent(nil,kv)if not
si then Field.faceToFace(_3R35U)end
Field.setTalkCamera(_3R35U)Adv.waitAsyncInstanceAll()lu()Field.finishEvent()end
Field.startTalk=function(rc,gcAHqYcp,_Vj8aHEp,e7EcZQ)
Field.startTalkEx(rc,gcAHqYcp,FaceToFaceMode.Turn,_Vj8aHEp,e7EcZQ)end
Field.startTalkEx=function(GtaGY,bt2Q9,kistnn,V8ukf,M4QO8t2)Field.startEvent(nil,nil,not M4QO8t2)
if GtaGY then
Field.faceToFaceTalk(GtaGY,bt2Q9,kistnn)Field.setTalkCamera(GtaGY)end;Layout.createStage()Adv.waitAsyncInstanceAll()
if V8ukf then
local po4=V8ukf()Field.finishTalk(GtaGY,duration)if po4 then po4()end end end
Field.finishTalk=function(kO7M,QO1A0C)local QO1A0C=QO1A0C or 0.8;if kO7M then
Field.disableLookAt("Player")Field.disableLookAt(kO7M)end
Layout.hide()Field.finishEvent(QO1A0C)end
Field.startGeneralTalk=function(Wqius7,f,Bw)Field.startTalk(Wqius7,f,Bw)
EmptyEvent(Wqius7)end
Field.startNovel=function(xaFg,ZbhRvzwJ,e,sOzM_)e=e or false;if sOzM_==nil then sOzM_=true end
Adv.waitAsyncInstanceAll()Field.setSleep(not ZbhRvzwJ)local JQT;if e==false then
JQT=CS.LuaMethod.SetVerticalLetterBox(parent)end;local RVYwO
if type(xaFg)=="string"then
local TRaW16=CS.LuaMethod.CallScript(parent,xaFg)
RVYwO=CS.LuaMethod.SetRunningNovel(TRaW16,TRaW16,nil,true,sOzM_)
CoroutineYield(CS.LuaMethod.WaitScript(TRaW16))else _AssertIsFunction(xaFg)
local hmCD=parent:StartCoroutine(rDzL7SVO.cs_generator(xaFg))
RVYwO=CS.LuaMethod.SetRunningNovel(parent,nil,hmCD,false,sOzM_)CoroutineYield(hmCD)end;Adv.resetPostEffect()Field.setSleep(false)
CS.LuaMethod.ResetRunningNovel(parent,RVYwO)if e~=nil and JQT~=nil then
CS.LuaMethod.ResetVerticalLetterBox(parent,JQT)end end
Field.cancelKizunaQuest=function(H6cMd,nks0XOWo)Transition.start()
if nks0XOWo then nks0XOWo()end;Adv.hideAllCharacter()Field.finishEvent(0)
Field.returnToDefaultStance(H6cMd,0.1)Field.resetPosition()Wait(1)Transition.finish()end
Field.cancelQuest=function(uJk,XByGkB,yqnk,V)Transition.start()if V then V()end
Sound.returnFieldBGM(1,1)Adv.hideAllCharacter()
Field.changeCameraToPlayable(0)if yqnk==nil or yqnk==true then
Field.returnToDefaultStance(uJk,0.1)end;if type(XByGkB)=="string"then
Field.resetPosition(XByGkB)elseif XByGkB~=nil then Field.setPosition("Player",XByGkB)
Field.resetPosition()end
Wait(1)Quest.refreshState()end
Field.touchEventOnlyOnce=function(Jt,PJDIIpBb,kXVYYv)local CUtrlLsq="TouchEventOnlyOnce"..Jt;if
GetLocalFlag(CUtrlLsq)==0 then
TouchEvent(Jt,function()SetLocalFlag(CUtrlLsq,1)
Yield(PJDIIpBb)end,kXVYYv)end end
Field.degradeTouchEventOnlyOnce=function(AvO,j5E,ZJHt)if
Field.getLocalFlagForDegradeTouchEventOnlyOnce(AvO)==0 then
TouchEvent(AvO,function()Yield(j5E)end,ZJHt)end end
Field.setLocalFlagForDegradeTouchEventOnlyOnce=function(QBA2j)local WcRHbI="TouchEventOnlyOnce"..QBA2j
SetLocalFlag(WcRHbI,1)end
Field.getLocalFlagForDegradeTouchEventOnlyOnce=function(vZvj)local i9gzkD="TouchEventOnlyOnce"..vZvj
local rL8gcb=GetLocalFlag(i9gzkD)return rL8gcb end
Field.touchQuestEventOnlyOnce=function(pKM,H9o,tl0rT,J6zgkV)local V06tUsA="TouchQuestEventOnlyOnce"..pKM;if
GetLocalFlag(V06tUsA)==0 then
Quest.TouchEvent(pKM,H9o,function()SetLocalFlag(V06tUsA,1)
Yield(tl0rT)end,J6zgkV)end end
Field.startEventOnlyOnce=function(xJW,FLx)local BKsQDr="StartEventOnlyOnce"..xJW;if
GetLocalFlag(BKsQDr)==0 then
StartEvent(function()SetLocalFlag(BKsQDr,1)Yield(FLx)end)end end
Field.startFreeTime=function()Sound.play("SY_Freetime_Start")
UI.showStartFreeTimeInfo()SetLocalFlag("StartFreeTime",1)
if
Linne.MessageCount()~=0 then Sound.play("SY_Dencho_Calling")
Adv.kayamoriTalk([[Hm?]],"VC_field_custom_00030_RKayamori")UI.linne()return end end
Field.turnToTargetAll=function(ljTm,TGOu)local TGOu=TGOu or 0.3
Field.turnToTarget("Player",ljTm,TGOu)for eaK=1,Field.numberOfFollowers()do local x5u=Field.getFollower(eaK)
Field.turnToTarget(x5u,ljTm,TGOu)end end
Field.deleteGayaBalloonFollowerAll=function()
for Xs2x=1,Field.numberOfFollowers()do
local X1z5M=Field.getFollower(Xs2x)Field.deleteGayaBalloonAll(X1z5M)end end
Field.turnToTargetAllFollower=function(a3E,lDgXolp)local lDgXolp=lDgXolp or 0.3
for CQ5T2=1,Field.numberOfFollowers()do
local sAlSr8I=Field.getFollower(CQ5T2)Field.turnToTarget(sAlSr8I,a3E,lDgXolp)end end
Field.setLookAtTargetAll=function(Y,eaA)Field.setLookAtTarget("Player",Y,eaA)for vaNC=1,Field.numberOfFollowers()
do local wnkdMpl1=Field.getFollower(vaNC)
Field.setLookAtTarget(wnkdMpl1,Y,eaA)end end
Field.disableLookAtAll=function(P)Field.disableLookAt("Player",P)for Mr7w=1,Field.numberOfFollowers()
do local DL0yj=Field.getFollower(Mr7w)
Field.disableLookAt(DL0yj,P)end end
Field.setExAnimationMKiryu=function(lkFkg)if lkFkg then SetLocalFlag("Kiryu.Mask_Head",1)else
SetLocalFlag("Kiryu.Mask_Head",0)end end
Field.setExAnimationCReaper=function(pK)if pK then SetLocalFlag("CReaper.NoMask",1)else
SetLocalFlag("CReaper.NoMask",0)end end
Field.setExAnimationFMikoto=function(TabiUJzo)if TabiUJzo then SetLocalFlag("FMikoto.NoMask",1)else
SetLocalFlag("FMikoto.NoMask",0)end end
Field.setExAnimationAki=function(m4aIqK9h)if m4aIqK9h then SetLocalFlag("Aki.Bag",1)else
SetLocalFlag("Aki.Bag",0)end end
Field.setExAnimationBikeTackle=function(b1X)if b1X then SetLocalFlag("Bike.Tackle",1)else
SetLocalFlag("Bike.Tackle",0)end end
Field.setExAnimationRMurohushiNoBagBall=function(z)if z then SetLocalFlag("RMurohushi.BagBall",1)else
SetLocalFlag("RMurohushi.BagBall",0)end end
Field.setExAnimationRMurohushiNoBag=function(dHe0NH4)if dHe0NH4 then SetLocalFlag("RMurohushi.Bag",1)else
SetLocalFlag("RMurohushi.Bag",0)end end
Field.setExAnimationKamisamaCrown=function(r2L)if r2L then SetLocalFlag("Cat.Crown",1)else
SetLocalFlag("Cat.Crown",0)end end
Field.setLookAtByCameraAxisXZ=function(XyH2,tFrDpX,qQzEqoPt)local qQzEqoPt=qQzEqoPt or 0.3
local TdqMnUrm=Field.getPosition(XyH2)local G1=tFrDpX.x;local fE=tFrDpX.y;local U=tFrDpX.z;if fE==0 then fE=1.40 end
local J=Field.convertCameraAxisXZ(G1,fE,U)TdqMnUrm=TdqMnUrm+Vec(J.x,J.y,J.z)
CS.LuaMethod.Field_setLookAtPosition(parent,XyH2,TdqMnUrm.x,TdqMnUrm.y,TdqMnUrm.z,qQzEqoPt)end
Field.isReceiveMobHunt=function()return
Field.getMobHuntState()==MobHuntState.Accepted end
Field.confirmMobHuntBattle=function()local _j=Field.getMobHuntEnemyName()
local DVs9oE=UI.showMessageDialog(Adv.FormatText([[Fight {0}?]],_j),1)if DVs9oE==Dialog.OK then return true else return false end end
Field.fadeOutCharacter=function(SgHhX6,bBou)local bBou=bBou or 1
Field.setAlphaScale(SgHhX6,0,bBou)Field.setColorOffset(SgHhX6,1,1,1,bBou)end
Field.fadeOutCharacterWait=function(QFoC,oRxuT2W2)local oRxuT2W2=oRxuT2W2 or 1
Field.fadeOutCharacter(QFoC,oRxuT2W2)Wait(oRxuT2W2)end
Field.fadeOutCharacterWaitV2=function(HHf5_PI,VR)Field.fadeOutCharacterWait(HHf5_PI,VR)
Field.setActive(HHf5_PI,false)end
Field.fadeInCharacter=function(o,i5lV)Field.setAlphaScale(o,0,0)
Field.setColorOffset(o,1,1,1,0)local i5lV=i5lV or 1;Field.setAlphaScale(o,1,i5lV)
Field.setColorOffset(o,0,0,0,i5lV)end
Field.fadeInCharacterWait=function(VK,tL5fZ)Field.fadeInCharacter(VK,tL5fZ)
Wait(tL5fZ)end
Field.fadeInCharacterV2=function(m,k)Field.setActive(m,true)
Field.fadeInCharacter(m,k)end
Field.fadeInCharacterWaitV2=function(l,Ar)Field.setActive(l,true)
Field.fadeInCharacter(l,Ar)Wait(Ar)end
Field.moveToAct=function(PqN0aIE,b4yX,Sd,ZK,dAj3jMx,zNFZ9l3D)Field.changeAnimation(PqN0aIE,ZK,1,dAj3jMx)
Field.turnToPosition(PqN0aIE,b4yX,0.4,AnimationMode.None)
Field.moveTo(PqN0aIE,b4yX,Sd,AnimationMode.None)if zNFZ9l3D then Field.waitTaskKey(PqN0aIE)
Field.changeAnimation(PqN0aIE,"FieldIdle",1,0.6)end end
Field.activeEventCharacterWait=function(eTRY)EmptyEvent(eTRY)
Field.waitAsyncInstance(eTRY)end
Field.prepareEventCharacter=function(Qgg2HyX7,sGai1L)EmptyEvent(Qgg2HyX7)
Field.waitAsyncInstance(Qgg2HyX7)
if sGai1L==false then Field.setActive(Qgg2HyX7,sGai1L)end end
Field.prepareEventCharacterV2=function(UDgYtFM3,PJ0wBs0R)EmptyEvent(UDgYtFM3)
Field.waitAsyncInstanceV2(UDgYtFM3)Field.setCharacterCullingEnabled(UDgYtFM3,false)
if
PJ0wBs0R==false then Field.setActive(UDgYtFM3,PJ0wBs0R)end end
Field.prepareEventCharacterV3=function(N9b,SQPOQ)EmptyEvent(N9b)
Field.waitAsyncInstanceV2(N9b)Field.setupEventCharacter(N9b)if SQPOQ==false then
Field.setActive(N9b,SQPOQ)end end
Field.startQuestCutsceneFadeIn=function(Js)Adv.fadeOut(0)if Js~=nil then Js()end
Wait(0.250)Transition.finish()Adv.fadeIn(1.0)end
Field.zoomShakeWithEffect=function(vIOR,bBO,Wye_Q3,X3xNOK,u,a9,zIZ7PnbU)
local MAC=Adv.effect("Adventure/LineWork/LineWork",nil,nil,Adv.getPosition(vIOR))local khBC1k=false;local Cg5h1ij=Field.getCameraFov()
if not a9 then Adv.show(MAC)if
zIZ7PnbU then Sound.play("AS_Deforme_Proud")end end
local YZd=Routine(function()
if not u then
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(vIOR,0.5,0.1)end;if not X3xNOK then Field.setCameraFov(Cg5h1ij*0.8,0.2,1,1)
Adv.scale(vIOR,1.1,0.2,1,1)end;if bBO~=nil then
Adv.act(vIOR,bBO)end;Wait(1.5)
if khBC1k==false then
if not u then Adv.stopShake(vIOR)end;if not X3xNOK then Field.setCameraFov(Cg5h1ij,0.4,1,1)
Adv.scale(vIOR,1,0.4,1,1)end
if not a9 then Adv.remove(MAC)end;khBC1k=true end end)Wye_Q3()StopRoutine(YZd)
if khBC1k==false then if not u then
Adv.stopShake(vIOR)end
if not X3xNOK then
Field.setCameraFov(Cg5h1ij,0.4,1,1)Adv.scale(vIOR,1,0.4,1,1)end;if bBO~=nil then Adv.act(vIOR,bBO)end;if not a9 then
Adv.remove(MAC)end end end
Field.trailOut=function(u7_)
Routine(function()
Field.changeAnimationWait(u7_,"BattleTeleportDisappear")Field.fadeOutCharacter(u7_,0.3)
Sound.play("AS_12dayFly02")local JY7zPiT="TrailOut_"..u7_
Field.setParentEx(JY7zPiT,u7_,"Spine")Field.setActive(JY7zPiT,true)end)end
Field.transportLeft=function(g,YC_Xd,BBY,EkL1)Field.transport(g,YC_Xd,true,BBY,EkL1)end
Field.transportLeftV2=function(g,X,XtuY5W,zQb)Field.transportV2(g,X,true,XtuY5W,zQb)end
Field.transportLeftV3=function(iswz,w,N25WjMv,v_p4Pd,ukSQIo,AUx)
Field.transportV3(iswz,w,true,N25WjMv,v_p4Pd,ukSQIo,AUx)end
Field.transportRight=function(x,ltEwAA2P,Lz3_fzf,lXEUa28)
Field.transport(x,ltEwAA2P,false,Lz3_fzf,lXEUa28)end
Field.transportRightV2=function(fEWMgBdG,hH9l,oKaZ,jxJbfO)
Field.transportV2(fEWMgBdG,hH9l,false,oKaZ,jxJbfO)end
Field.transportRightV3=function(iU,y7hvqdr,NXGJhdEc,VuHxStQ,p,_d)
Field.transportV3(iU,y7hvqdr,false,NXGJhdEc,VuHxStQ,p,_d)end
Field.transport=function(YL_,Uy,lLw,NC,sax_O)sax_O=sax_O or Vec(0,0,270)
Routine(function()local M="Out_"..YL_
local KIbb
if lLw then KIbb="LineLeft_"..YL_ else KIbb="LineRight_"..YL_ end
Routine(function()Wait(0.15)Sound.play("AS_Teleport")end)
Field.changeAnimationWait(YL_,"BattleTeleportDisappear")Field.fadeOutCharacter(YL_,0.3)
Field.setParentEx(M,YL_,"Spine")Field.setParentEx(KIbb,YL_,"Spine")
Field.turnToTarget(KIbb,Uy,0)if NC then Field.rotateBy(KIbb,sax_O,0)end
Field.setActive(M,true)Field.setActive(KIbb,true)end)end
Field.transportV2=function(FdO1zdp,zl,RtnI,hRAYw,_oi)_oi=_oi or Vec(0,0,270)
Routine(function()
local GDpnbWH="Out_"..FdO1zdp;local h1
if RtnI then h1="LineLeft_"..FdO1zdp else h1="LineRight_"..FdO1zdp end
Routine(function()Wait(0.15)Sound.play("AS_Teleport")end)
Field.changeAnimationWait(FdO1zdp,"BattleTeleportDisappear")Field.fadeOutCharacter(FdO1zdp,0.3)
Field.setParentEx(GDpnbWH,FdO1zdp,"Spine")Field.setParentEx(h1,FdO1zdp,"Spine")
Field.turnToTarget(h1,zl,0)if hRAYw then Field.rotateBy(h1,_oi,0)end
Field.setActive(GDpnbWH,true)Field.setActive(h1,true)Wait(1)
Field.setActive(FdO1zdp,false)end)end
Field.transportV3=function(J,ik8J,iwqAq6,nOHRPf,Y0d,D1,Qig)Y0d=Y0d or Vec(0,0,270)
Routine(function()local OUTJy="Out_"..J;local fcA;if iwqAq6 then fcA=
"LineLeft_"..J else fcA="LineRight_"..J end
Routine(function()
Wait(0.15)Sound.playEx2("AS_Teleport")end)
Field.changeAnimationWait(J,"BattleTeleportDisappear")Field.fadeOutCharacter(J,0.3)
if
GetLocalFlag(J.."_AlreadyCalled_Out")==0 then Field.setParentEx(OUTJy,J,"Spine")SetLocalFlag(
J.."_AlreadyCalled_Out",1)end
if iwqAq6 then if
GetLocalFlag(J.."_AlreadyCalled_LineLeft")==0 then Field.setParentEx(fcA,J,"Spine")
SetLocalFlag(J.."_AlreadyCalled_LineLeft",1)end else if GetLocalFlag(J..
"_AlreadyCalled_LineRight")==0 then
Field.setParentEx(fcA,J,"Spine")
SetLocalFlag(J.."_AlreadyCalled_LineRight",1)end end;Field.turnToTarget(fcA,ik8J,0)if nOHRPf then
Field.rotateBy(fcA,Y0d,0)end;Field.setActive(OUTJy,true)
Field.setActive(fcA,true)Wait(0.3)
if D1 ~=nil then Field.detachEquipment(J,"Weapon")end
if Qig~=nil then Field.setCharacterShadowVisible(J,false)end end)end
Field.resetTransportV3=function(kSiz5Frw,F1,im)
SetLocalFlag(kSiz5Frw.."_AlreadyCalled_LineLeft",0)
SetLocalFlag(kSiz5Frw.."_AlreadyCalled_LineRight",0)
SetLocalFlag(kSiz5Frw.."_AlreadyCalled_Out",0)local JViK="Out_"..kSiz5Frw;local RnTQ;if F1 then RnTQ="LineLeft_"..kSiz5Frw else RnTQ=
"LineRight_"..kSiz5Frw end
Field.setParent(JViK,im)Field.setParent(RnTQ,im)
Field.setActive(JViK,false)Field.setActive(RnTQ,false)end
Field.transportIn=function(cwFWorsD,I6dJ)
Routine(function()local A8="In_"..cwFWorsD
Field.moveBy(cwFWorsD,Vec(0,1,0),0,AnimationMode.None)Field.setParentEx(A8,cwFWorsD,"Spine")
Field.setActive(A8,true)Sound.play("AS_Land_from_Heli")
Sound.play("AS_Fly_Above")if I6dJ then Field.setActive(cwFWorsD,true)else
EmptyEvent(cwFWorsD)end
Field.moveBy(cwFWorsD,Vec(0,-1,0),0.3,AnimationMode.None)Field.fadeInCharacter(cwFWorsD,0.3)
Field.changeAnimation(cwFWorsD,"BattleTeleportAppear")end)end
Field.transportInV2=function(SJHrnj,v6a34xv,xQYwPMo)
Routine(function()local uZ="In_"..SJHrnj
local v=Field.getRotation(SJHrnj)local WCUL=math.rad(v.y)local _ALQ0c;local uZd
_ALQ0c=-15*math.sin(WCUL)uZd=-15*math.cos(WCUL)
if v6a34xv then
local DDbY="LineLeft_"..SJHrnj;Sound.play("AS_Teleport")
Field.setPosition(DDbY,
Field.getPosition(SJHrnj)+Vec(_ALQ0c,2,uZd))Field.turnToTarget(DDbY,SJHrnj,0)
Field.setActive(DDbY,true)Wait(0.22)end
Field.setPosition(uZ,Field.getPosition(SJHrnj)+Vec(0,2,0))Field.setActive(uZ,true)
Sound.playEx2("AS_Land_from_Heli")Sound.playEx2("AS_Fly_Above")if xQYwPMo then xQYwPMo(SJHrnj)else
Field.setActive(SJHrnj,true)end
Field.changeAnimation(SJHrnj,"BattleTeleportAppear",1.0,0)Field.fadeInCharacter(SJHrnj,0.3)end)end
Field.transportInV3=function(Mp_imbx,faNviCn7,A)
Routine(function()local TVbHco6="In_"..Mp_imbx
local slOJ=Field.getRotation(Mp_imbx)local Pz66yT=math.rad(slOJ.y)local YJAMZ;local p
YJAMZ=-15*math.sin(Pz66yT)p=-15*math.cos(Pz66yT)local lAKmM2nx
if faNviCn7 then
lAKmM2nx="LineLeft_"..Mp_imbx;Sound.play("AS_Teleport")
Field.setPosition(lAKmM2nx,
Field.getPosition(Mp_imbx)+Vec(YJAMZ,2,p))Field.turnToTarget(lAKmM2nx,Mp_imbx,0)
Field.setActive(lAKmM2nx,true)Wait(0.22)end
Field.setPosition(TVbHco6,Field.getPosition(Mp_imbx)+Vec(0,2,0))Field.setActive(TVbHco6,true)
Sound.playEx2("AS_Land_from_Heli")Sound.playEx2("AS_Fly_Above")if A then A(Mp_imbx)else
Field.setActive(Mp_imbx,true)end
Field.changeAnimation(Mp_imbx,"BattleTeleportAppear",1.0,0)Field.fadeInCharacter(Mp_imbx,0.3)Wait(0.1)
Field.setActive(TVbHco6,false)
if lAKmM2nx~=nil then Field.setActive(lAKmM2nx,false)end end)end
Field.stopCameraComposition=function()Field.stopTaskKey("CameraComposition")
Field.stopTaskKey("Camera")end
Field.waitCameraComposition=function()Field.waitTaskKey("CameraComposition")
Field.waitTaskKey("Camera")end
Field.talkByGayaBalloonJustOnce=function(H,ElyKaw7,B,FjYB2iKs,YkHzh,uULvHqf,KRK)if
GetLocalFlag(H.."_Gaya再生済")==0 then SetLocalFlag(H.."_Gaya再生済",1)
Field.talkByGayaBalloon(H,ElyKaw7,B,FjYB2iKs,YkHzh,uULvHqf,KRK)end end
Field.moveByCharaDir=function(Lxkch4,K8,h,Z)K8=K8 or 1;h=h or 1;Z=Z or false
local ymC8Tzi=Field.getRotation(Lxkch4)local Ef2Wz=math.rad(ymC8Tzi.y)local _sWmAU;local K
if not Z then
_sWmAU=K8*math.sin(Ef2Wz)K=K8*math.cos(Ef2Wz)else
_sWmAU=K8*math.cos(Ef2Wz)K=K8*math.sin(Ef2Wz)end;local g5oIm=Field.moveBy(Lxkch4,Vec(_sWmAU,0,K),h)
return g5oIm end
Field.moveByCharaDirV2=function(XP,GLj2,xVYvB,Bw,K)GLj2=GLj2 or 1;xVYvB=xVYvB or 1;Bw=Bw or false;K=K or
AnimationMode.Auto;local FB=Field.getRotation(XP)
local NW22j19d=math.rad(FB.y)local xqP;local j
if not Bw then xqP=GLj2*math.sin(NW22j19d)j=GLj2*
math.cos(NW22j19d)else xqP=GLj2*math.cos(NW22j19d)j=GLj2*
math.sin(NW22j19d)end;local uVl12=Field.moveBy(XP,Vec(xqP,0,j),xVYvB,K)return uVl12 end
Field.moveByCharaDirWait=function(QlCJXU,J,PWFMNs6N,mhE3)
Field.moveByCharaDir(QlCJXU,J,PWFMNs6N,mhE3)Wait(PWFMNs6N)end
Field.moveByCharaDirWaitV2=function(sAEuFEAE,Q,rLPDOaJP,Hq6i8,yCd6l)
Field.moveByCharaDirV2(sAEuFEAE,Q,rLPDOaJP,Hq6i8,yCd6l)Wait(rLPDOaJP)end
Field.setCatChaseTarget=function(Mst,IB,qaHJ)
if IsExist(Mst)then qaHJ=qaHJ or false
Field.setChaseTarget(Mst,IB,qaHJ,true)Field.setChaseOffset(Mst,-0.60*2,0,-1.10)if qaHJ then
Field.resetFollowerPosition()end end end
Field.getByTargetPosition=function(r8au,LD1z,LDuJaKua,iiki6_93)LD1z=LD1z or 1;LDuJaKua=LDuJaKua or 0
iiki6_93=iiki6_93 or false;local U;local qso;local ITwM9FF=math.rad(LDuJaKua)
if iiki6_93 then
local d=Field.getRotation(r8au)local lk=math.rad(d.y)ITwM9FF=ITwM9FF+lk end;U=LD1z*math.sin(ITwM9FF)
qso=LD1z*math.cos(ITwM9FF)local jW=Field.getPosition(r8au)+Vec(U,0,qso)return
jW end
Field.getCharaDistance=function(Zi3,wrzu)local whn6bk=Field.getPosition(Zi3)
local G34_RQoV=Field.getPosition(wrzu)local JeHgQHPF=whn6bk.x-G34_RQoV.x
local O86VK7nM=whn6bk.z-G34_RQoV.z
local YYZXKhh0=math.sqrt(JeHgQHPF*JeHgQHPF+O86VK7nM*O86VK7nM)return YYZXKhh0 end
Field.waitForPlayerDistance=function(W_YCZF,qKsjnHsO,km)km=km or 0.10
while true do
if not IsExist(W_YCZF)then return end
if Field.getCharaDistance("Player",W_YCZF)<qKsjnHsO then return end;Wait(km)end end
Field.SetOverwriteTimeFrame=function(enc)
CS.LuaMethod.Field_setOverwriteTimeFrame(enc)end
Field.ResetOverwriteTimeFrame=function()
Field.setTimeFrameForOverWrite(TimeFrame.Default)end
Field.goToGateBoss=function(Bne)local LreIk;local LY;LreIk,LY=Garden.GetPlacement(Bne)
Field.setResetPositionOptions(true,0,true,LY)Exit_FieldAndChange(LreIk,Bne)end
Field.goToLimitBreakPowerSpot=function(JCoOpTk4)local jR4cj;local fOFd4
jR4cj,fOFd4=Garden.GetPlacement(JCoOpTk4)Field.setResetPositionOptions(true,0,true,fOFd4)
Exit_FieldAndChange(jR4cj,JCoOpTk4)end
Field.darkeningAfterWorldBattle=function(d8tON)local d8tON=d8tON or 1;Adv.fadeOut(0)Wait(d8tON)
Transition.start(0)Adv.fadeIn(0)end
Field.setPostEffetMovie=function(QH3H)QH3H=QH3H or 0
Adv.setPostEffectBloomIntensity(0.4,QH3H)Adv.setPostEffectBloomThreshold(0.8,QH3H)
Adv.setPostEffectBloomColor(
255.0/255.0,215.0/255.0,191.0/255.0,QH3H)
Field.setPostEffectColorGradingTemperature(9.2,QH3H)
Field.setPostEffectColorGradingSaturation(-30.1,QH3H)
Field.setPostEffectColorGradingBrightness(-10.7,QH3H)
Field.setPostEffectColorGradingContrast(21.4,QH3H)
Field.setPostEffectColorGradingMixerRed(119,-17,-16,QH3H)Field.setPostEffectVignetteIntensity(0.598,QH3H)
Field.setPostEffectVignetteSmoothness(0.775,QH3H)Field.setPostEffectVignetteRoundness(0.46,QH3H)
Field.setPostEffectChromaticAberration(0.15,QH3H)end
Field.kickEffectTrigger=function(e2LI,XDMT)
CS.LuaMethod.KickEffectTrigger(parent,e2LI,XDMT)end
Field.multiPointMove=function(ZBhbu)
if ZBhbu.ready==true then
Routine(function()ZBhbu.ready=false;if ZBhbu.startWait then
Wait(ZBhbu.startWait)end
if ZBhbu.disableLookAt then
ZBhbu.disableLookAtDuration=ZBhbu.disableLookAtDuration or 0.1
Field.disableLookAt(ZBhbu.name,ZBhbu.disableLookAtDuration)end;local qi=true
while qi do local g5U_y1=#ZBhbu.pos.vector;local JVGw=ZBhbu.next
local h5K3=ZBhbu.order;local Wxn=ZBhbu.next;local VCP=ZBhbu.next;local iMnPR=ZBhbu.order
if h5K3 =="asc"then
Wxn=(JVGw-1)
if JVGw==g5U_y1 then iMnPR="desc"VCP=(JVGw-1)else VCP=(JVGw+1)end else Wxn=JVGw
if JVGw==1 then iMnPR="asc"VCP=(JVGw+1)else VCP=(JVGw-1)end end;local IGzoW=ZBhbu.animation;local gPvS
if IGzoW then
Field.changeAnimation(ZBhbu.name,IGzoW,1)
gPvS=Field.moveTo(ZBhbu.name,ZBhbu.pos.vector[ZBhbu.next],ZBhbu.pos.time[Wxn],AnimationMode.None)else
gPvS=Field.moveTo(ZBhbu.name,ZBhbu.pos.vector[ZBhbu.next],ZBhbu.pos.time[Wxn])end;Wait(ZBhbu.pos.time[Wxn])
Field.waitTaskKey(gPvS)ZBhbu.order=iMnPR;ZBhbu.next=VCP;if ZBhbu.pos.nowait[Wxn]then qi=true else
qi=false end end;ZBhbu.ready=true end)end end
Field.multiCharactersPointMove=function(R_oxJpD)
for uYD7YK1,C0hz in pairs(R_oxJpD)do
if C0hz.ready==true then
Routine(function()C0hz.ready=false;if
C0hz.startWait then Wait(C0hz.startWait)end;if C0hz.disableLookAt then C0hz.disableLookAtDuration=
C0hz.disableLookAtDuration or 0.1
Field.disableLookAt(C0hz.name,C0hz.disableLookAtDuration)end
local bx4S1pU=true
while bx4S1pU do local FMy=#C0hz.pos.vector;local c=C0hz.next;local i=C0hz.order
local zsXy=C0hz.next;local Q=C0hz.next;local TWm3zv=C0hz.order;if i=="asc"then zsXy=(c-1)if c==FMy then TWm3zv="desc"
Q=(c-1)else Q=(c+1)end else zsXy=c
if c==1 then TWm3zv="asc"Q=(c+1)else Q=(c-1)end end
local DPQT=C0hz.animation;local Y2
if DPQT then Field.changeAnimation(C0hz.name,DPQT,1)
Y2=Field.moveTo(C0hz.name,C0hz.pos.vector[C0hz.next],C0hz.pos.time[zsXy],AnimationMode.None)else
Y2=Field.moveTo(C0hz.name,C0hz.pos.vector[C0hz.next],C0hz.pos.time[zsXy])end;Wait(C0hz.pos.time[zsXy])
Field.waitTaskKey(Y2)C0hz.order=TWm3zv;C0hz.next=Q;if C0hz.pos.nowait[zsXy]then bx4S1pU=true else
bx4S1pU=false end end;C0hz.ready=true end)end end end
Field.InformCalamity=function()Sound.playEx("AS_Earthquake")
local XCDSNuR=Routine(function()
Field.setPostEffectBrightness(0.2,0.02)Field.setPostEffectContrast(1,0.02)Wait(0.2)
Field.setPostEffectBrightness(0,0.02)Field.setPostEffectContrast(0,0.02)Wait(0.1)
Field.setPostEffectBrightness(0.2,0.02)Field.setPostEffectContrast(1,0.02)Wait(0.1)
Field.setPostEffectBrightness(0,0.02)Field.setPostEffectContrast(0,0.02)end)Field.startCameraImpact(0.2,0.2,0.2)end
Field.hideCancerWithCutOff=function(riB)local PMndXt=0.75
Field.changeMaterialProperty(riB,"_Cutoff",0)
Field.changeMaterialProperty(riB,"_Cutoff",1,PMndXt)Field.setColorOffset(riB,1,1,1,PMndXt)
Field.changeMaterialKeyword(riB,"_Cutoff_Toggle",true)Wait(PMndXt)Field.setActive(riB,false)end
Field.setPosAndRot=function(L,d,EUeZ,j)Field.moveTo(L,d,0,AnimationMode.None)
if
type(EUeZ)=='string'then
Field.turnToTarget(L,EUeZ,0,AnimationMode.None)elseif type(EUeZ)=='number'then
Field.turnTo(L,EUeZ,0,AnimationMode.None)end;if j then Field.changeAnimation(L,j,1,0)end end
Field.setRandomEncount=function(d1npILiq,E1A0,_U9gbw8,t,U)
CS.LuaMethod.Field_setEncountLabel(parent,d1npILiq)Field.setEncountRange(E1A0,_U9gbw8)
Field.setEncountFunction(function()
Battle.waitLoadEnd()Sound.stopAllENV()if type(t)=='string'then
Sound.playBattleBGM(t)elseif type(t)=='table'then local a=math.random(1,#t)
Sound.playBattleBGM(t[a])end
Battle.waitPreResult()Sound.playBattleBGM(U)end)end
Field.createFollowerNNanaseBike=function()Field.createFollower("NNanaseRider")
Field.setChaseOffset("Follower/NNanaseRider",1,0,1)end
Field.faceMoveNod=function(v4y8CxT,MDmGXK,A,lA,U3P)MDmGXK=MDmGXK or 0;A=A or 1.1;lA=lA or 0.4;U3P=U3P or 0.1
Field.setLookAtPosition(v4y8CxT,
Field.getByTargetPosition(v4y8CxT,5,MDmGXK,true)+Vec(0,-1*A,0),lA)Wait(lA)Wait(U3P)
Field.setLookAtPosition(v4y8CxT,
Field.getByTargetPosition(v4y8CxT,5,MDmGXK,true)+Vec(0,A,0),lA)end
Field.faceMoveNodReverse=function(hZo,qJ,G,ADjB,_)qJ=qJ or 0;G=G or 1.1;ADjB=ADjB or 0.4;_=_ or 0.1
Field.setLookAtPosition(hZo,
Field.getByTargetPosition(hZo,5,qJ,true)+Vec(0,2*G,0),ADjB)Wait(ADjB)Wait(_)
Field.setLookAtPosition(hZo,
Field.getByTargetPosition(hZo,5,qJ,true)+Vec(0,G,0),ADjB)end
Field.setLookAtAngle=function(WEO,Mhpns,Hm5BjTa,id)Mhpns=Mhpns or 0;Hm5BjTa=Hm5BjTa or 1.1;id=id or 0.4
Field.setLookAtPosition(WEO,
Field.getByTargetPosition(WEO,5,Mhpns,true)+Vec(0,Hm5BjTa,0),id)end;function SetTreasureChestEvent()
Field.setAllTreasureChestGimmickEvent(function()
StartEvent(function()TreasureChestEvent()end)end)end
function TreasureChestEvent()
Routine(function()
PlayerLock(null,false)local ZAdDa=Field.getTouchingTreasureChest()
Log("宝箱ラベル: "..ZAdDa)Field.pickupTreasureChest(ZAdDa)Wait(1)
Field.fadeOutTreasureChest(ZAdDa)PlayerUnLock(null,false)end)end
Field.endWorldFadeOut=function(nmakk,Aehk5,p8xZy,U3t,P1Rp6x,O8)nmakk=nmakk or 2;if Aehk5 ==nil then Aehk5=true end
p8xZy=p8xZy or 4;U3t=U3t or 4;Adv.fadeOut(nmakk,Aehk5)if not P1Rp6x then
Sound.stopBGM(p8xZy)end
if not O8 then Sound.stopAllEnvV2(p8xZy)end;Wait(U3t)Transition.start(0)end