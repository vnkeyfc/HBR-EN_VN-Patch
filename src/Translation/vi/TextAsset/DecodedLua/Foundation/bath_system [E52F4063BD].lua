Bath={}BathInviteMode={}BathInviteMode.Active="Active"
BathInviteMode.Active_Stand="Active_Stand"BathInviteMode.Active_Walk="Active_Walk"
BathInviteMode.Passive="Passive"BathInviteMode.Etc="Etc"
Bath.startBathTimeEvent=function(A,w0qyLbH,nsgji)Adv.fadeOut(0)Field.prepareEventCharacter(
""..A.."_Bath")
Field.startEvent()
local bClTIa=Field.getWaypointPosition("StartPoint")+Vec(-7,0,1)
local rDzL7SVO=Field.getWaypointPosition("StartPoint")+Vec(-3,0,0)Field.moveTo("Camera",bClTIa,0)
Field.setCameraAngleH(
Field.getDefaultCameraAngleH()-50,0)
Field.setCameraFov(Field.getDefaultCameraFov()*0.7,0)
if(w0qyLbH==BathInviteMode.Active)then
Field.setPosition("Player",rDzL7SVO)Adv.fadeIn(1.0)
Field.moveByWait("Player",Vec(-2),2)
Field.faceToFaceTalk(""..A.."_Bath",FaceToFaceMode.None,FaceToFaceMode.Auto)elseif(w0qyLbH==BathInviteMode.Active_Stand)then
Field.moveToWait(""..A..
"_Bath",Field.getWaypointPosition("BigBathPoint")+Vec(-1.5,0,1.5),0.1)
Field.turnTo(""..A.."_Bath",0,0,AnimationMode.None)Field.setPosition("Player",rDzL7SVO)
Adv.fadeIn(1.0)Field.moveByWait("Player",Vec(-2),2)
Field.faceToFaceTalk(""..
A.."_Bath",FaceToFaceMode.None,FaceToFaceMode.Auto)elseif(w0qyLbH==BathInviteMode.Active_Walk)then
Field.moveTo(""..
A.."_Bath",Field.getWaypointPosition("WalkStartPoint2"),0,AnimationMode.None)
local AtYtR=Field.moveOnRoute(""..A.."_Bath","WalkEndPoint2",1)Field.setPosition("Player",rDzL7SVO)Wait(0.1)
Adv.fadeIn(1.0)Field.moveBy("Player",Vec(-2),2)
Field.waitTask(AtYtR)
Field.faceToFaceTalk(""..A.."_Bath",FaceToFaceMode.None,FaceToFaceMode.Auto)elseif(w0qyLbH==BathInviteMode.Passive)then
local ND2BCh3=Field.getWaypointPosition("StartPoint")Field.resetPosition("BigBathPoint")
Field.turnTo("Player",30)Field.changeAnimation("Player","FieldItemStart")Field.setPosition(
""..A.."_Bath",rDzL7SVO)
Adv.fadeIn(1.0)
Field.moveByWait(""..A.."_Bath",Vec(-2),2)
Field.setLookAtTarget(""..A.."_Bath","Player",0.3)elseif(w0qyLbH==BathInviteMode.Etc)then end;local BW0WFP=Adv.characterAsync("RKayamori")
local X8=Adv.characterAsync(A)local JQT;Adv.waitAsyncInstanceAll()
Layout.createStage()JQT=nsgji(BW0WFP,X8)Layout.show()
if
(w0qyLbH==BathInviteMode.Active)then if JQT==0 then elseif JQT==1 then Field.disableLookAt("Player")
Field.moveBy("Player",Vec(0,0,10),8)end elseif(w0qyLbH==
BathInviteMode.Active_Stand)then
Field.disableLookAt("Player")Field.moveBy("Player",Vec(0,0,10),8)
if JQT==0 then
Wait(0.3)
Field.moveToAct(""..A.."_Bath",Field.getPosition(""..A.."_Bath")+
Vec(0,0,10),8,"FieldWalk",0.4)elseif JQT==1 then end elseif(w0qyLbH==BathInviteMode.Active_Walk)then
Field.disableLookAt("Player")Field.moveBy("Player",Vec(0,0,10),8)
if JQT==0 then
Wait(0.3)
Field.moveToAct(""..A.."_Bath",Field.getPosition(""..A.."_Bath")+
Vec(0,0,10),8,"FieldWalk",0.4)elseif JQT==1 then end elseif(w0qyLbH==BathInviteMode.Passive)then Field.disableLookAt(""..
A.."_Bath")
Field.moveBy(""..A.."_Bath",Vec(0,0,10),8)Wait(0.3)
if JQT==0 then
Field.moveToAct("Player",Field.getPlayerPosition()+Vec(0,0,10),8,"FieldWalk",0.4)elseif JQT==1 then Field.disableLookAt("Player",0.5)end elseif(w0qyLbH==BathInviteMode.Etc)then end;Wait(0.5)Adv.fadeOut(1)
Field.stopTaskKey("Player")Field.stopTaskKey(""..A.."_Bath")
Field.finishEvent()Wait(2)return JQT end;BathQuestEventFromUserData=function()
CS.LuaMethod.BathQuestEventFromUserData(parent)end
BathTimebox=function(IODBg,YRDu)
if
CS.LuaMethod.StartBathTime()then
Timebox(IODBg,"",function()local CWRiP=Domain.getCurrentStorySeasonType()local LB0A
if CWRiP==
StorySeasonType.AutumnSummer then LB0A="_AutumnSummer"else LB0A=""end
World("Lua/Story/Common/BathTime/World/BathTime","Dormitory1F"..LB0A,"BigBathPoint")end,YRDu)CS.LuaMethod.EndBathTime()
if not
Domain.lastDiveIsMainStoryLatestDay()then
local dl=UI.showMessageDialog([[Quay về Màn hình chính?]],1,0,"Notification")if dl==Dialog.OK then ReturnTerminal()end end end end
Bath.startBathTimeNovel=function(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0)local UgXzI_C=Adv.characterAsync("RKayamori")
local MLFLplLe=Adv.characterAsync(sKPjQkdn)local jwq=Adv.imageAsync("Background/TmpBG/TmpBG","BG")
local kw3ei0a=Adv.imageAsync("Background/DressingRoom/DressingRoom","BG")
local EspneS5=Adv.imageAsync("Still/MC01/Still_MC01_10_10_00_002","BG")
local LZeg0=Adv.loadImageAsync("Still/BathRoomWashingPlace/Still_BathRoomWashingPlace","ForegroundStill",0,0,1.2,0)local OJZ;HHH9IlJp=HHH9IlJp or"SB0081"
Adv.waitAsyncInstanceAll()Field.setSleep(true)Field.startEvent()
Layout.createStagePan(kw3ei0a,Position.BG_CENTER,5)Layout.show()Sound.playBGM(HHH9IlJp,1,1)
Adv.fadeIn(1)Wait(1)Sound.play("AS_Rubbing_Clothes")Wait(1)
Adv.whiteOut(1,true)Transition.setBathTransition()
Transition.start()
Routine(function()Sound.play("AS_Open_slidedoor")Wait(1.7)
Sound.play("AS_Open_slidedoor")end)if uYz2ryy4 =="Wash"then
Adv.showStill(LZeg0,1,60,Direction.RIGHT)end;Wait(2.2)Adv.whiteIn(0)
Transition.finish()Wait(2)zVPRGDnG(UgXzI_C,MLFLplLe,LZeg0,OJZ)Routine(function()Wait(3)
Adv.whiteOut(4)end)
Transition.setBathTransition()Transition.start()Adv.hide(LZeg0)
Transition.finish()Wait(1)Sound.play("AS_Echo_Bathsplashes")Wait(1)
Adv.waitAsyncInstanceAll()Adv.hide(jwq,0)Adv.showBG(EspneS5)
if not IKxw then
Adv.whiteIn(2)Wait(1)
if w0 ==nil then
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Nothing beats bath time.]],"VC_ADate_Lv1_Novel_00015_RKayamori")else w0(UgXzI_C,MLFLplLe)end;Wait(0.5)end;Transition.start()Sound.stopBGM(2)Wait(0.5)
Field.finishEvent()Adv.resetPostEffect()Field.setSleep(false)end
Bath.BathQuestion=function(nmuj,bP,b4IqQW,iuGb,koZU,C)
if(iuGb==BathInviteMode.Active)then elseif(iuGb==
BathInviteMode.Active_Stand)then elseif
(iuGb==BathInviteMode.Active_Walk)then elseif(iuGb==BathInviteMode.Passive)then Field.setLookAtTarget("Player",""..
nmuj.."_Bath",0.5)
Wait(0.5)elseif(iuGb==BathInviteMode.Etc)then end;local nmJGp_=Adv.question(bP,b4IqQW)
if
(iuGb==BathInviteMode.Active)then
if nmJGp_==0 then
Field.moveByWait("Player",Vec(-2.5,0,1.5),1.8)Field.changeAnimation("Player","FieldWalk",1,0.2)
Field.turnToTargetWait("Player",
""..nmuj.."_Bath",0.4,AnimationMode.None)Field.changeAnimation("Player","FieldIdle",1,0.2)
Field.setLookAtTarget(
""..nmuj.."_Bath","Player",0.4)koZU()elseif nmJGp_==1 then C()end elseif(iuGb==BathInviteMode.Active_Stand)then if nmJGp_==0 then Field.moveByWait("Player",Vec(
-1.5,0,1),1.5)koZU()elseif nmJGp_==1 then
C()end elseif
(iuGb==BathInviteMode.Active_Walk)then
if nmJGp_==0 then
Field.moveToWait("Player",Field.getByTargetPosition("Player",1.8,40,true),1)koZU()elseif nmJGp_==1 then C()end elseif(iuGb==BathInviteMode.Passive)then
if nmJGp_==0 then
Field.disableLookAt("Player",0.5)Field.changeAnimation("Player","FieldItemEnd",1,0)
Wait(1)
Field.turnToTarget("Player",""..nmuj.."_Bath",0.5)Wait(0.5)koZU()elseif nmJGp_==1 then C()end elseif(iuGb==BathInviteMode.Etc)then
if nmJGp_==0 then koZU()elseif nmJGp_==1 then C()end end;return nmJGp_ end
Bath.turnToPlayerWait=function(h0v3PIV)
Field.turnToTargetWait(""..h0v3PIV.."_Bath","Player",0.5)end