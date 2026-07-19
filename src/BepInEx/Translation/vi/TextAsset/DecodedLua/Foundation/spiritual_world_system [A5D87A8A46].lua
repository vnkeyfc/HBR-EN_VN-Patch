local w0qyLbH=require'xlua.util'Recollection={}
Recollection.isAvailablePiece=function(nsgji)return
CS.LuaMethod.IsAvailableRecollectionPiece(parent,nsgji)end
Recollection.initPiecePlacement=function(bClTIa)
local rDzL7SVO=Recollection.isAvailablePiece(bClTIa)
if rDzL7SVO then Field.setBalloonType(bClTIa,"Normal")end;Field.setActive(bClTIa,rDzL7SVO)end
Recollection.pickupPiece=function(BW0WFP,X8)local JQT=X8 or 0.5
Field.turnToTargetWait("Player",BW0WFP,JQT)Wait(0.3)end
Recollection.RequirePiece=function(AtYtR)
CS.LuaMethod.RequireRecollectionPiece(parent,AtYtR)end
Recollection.SetEffectMoveFuncToPiece=function(ND2BCh3,IODBg)
CS.LuaMethod.SetEffectMoveFuncToRecollectionPiece(parent,ND2BCh3,function()if IODBg then
Routine(IODBg)end end)end
Recollection.CallEffectMoveFuncInPiece=function(YRDu)
CS.LuaMethod.CallEffectMoveFuncInRecollectionPiece(parent,YRDu)end
Recollection.CallPieceEffectMoveRoutine=function(CWRiP)return
CS.LuaMethod.CallRecollectionPieceEffectMoveCoroutine(parent,CWRiP)end
Recollection.initStoryPlacement=function()
CS.LuaMethod.InitRecollectionPiecePlacement(parent)end
Recollection.IsClearedStory=function(LB0A)
return CS.LuaMethod.IsTriggeredRecollectionStory(LB0A)end
Recollection.IsEnableStory=function(dl)
return CS.LuaMethod.IsEnableRecollectionStory(dl)end
Recollection.CanPlayStoryInGimmick=function(sKPjQkdn)return
CS.LuaMethod.CanPlayRecollectionStoryInGimmick(sKPjQkdn)end
Recollection.CanPlayStoryInAlbum=function(HHH9IlJp)return
CS.LuaMethod.CanPlayRecollectionStoryInAlbum(HHH9IlJp)end
Recollection.StartStoryFromGimmick=function(uYz2ryy4)
CS.LuaMethod.StartRecollectionStory(uYz2ryy4,"Gimmick")end
Recollection.StartStoryFromAlbum=function(zVPRGDnG)
CS.LuaMethod.StartRecollectionStory(zVPRGDnG,"Album")end
Recollection.IsReturnedStory=function()
local IKxw=CS.LuaMethod.GetFinishedRecollectionStoryLabel()if IKxw==""then return false end;return true end
Recollection.GetFinishedRecollectionStoryLabel=function()return
CS.LuaMethod.GetFinishedRecollectionStoryLabel()end
Recollection.KickStoryNoiseBreakTrigger=function(w0)
CS.LuaMethod.KickRecollectionStoryNoiseBreakTrigger(parent,w0)end
Recollection.ClearFinishedStory=function()if not Recollection.IsReturnedStory()then
return end
StartEvent(function()
local UgXzI_C=CS.LuaMethod.GetFinishedRecollectionStoryLabel()
if Recollection.IsTriggeredFromGimmick(UgXzI_C)then
local MLFLplLe=GenerateUniqueName("Recollection.ClearFinishedStory_",UgXzI_C)PlayerLock(MLFLplLe)
local jwq=Recollection.IsInitializedStoryDirectionParam()
if(jwq)then
local nmuj=Recollection.GetStoryDirectionPlayerPos()Field.setPosition("Player",nmuj)Wait(0.5)end;local kw3ei0a=Field.getPosition("BaseCamera")
local EspneS5=Field.getRotation("BaseCamera")local LZeg0=Field.getDefaultCameraFov()
if(jwq)then
Field.setCameraCompositionExWithListener(Recollection.GetStoryDirectionEndCameraPos(),Recollection.GetStoryDirectionEndCameraRot(),Recollection.GetStoryDirectionEndCameraFov())Transition.finish()Wait(1)
Field.setCameraCompositionExWithListenerWait(Recollection.GetStoryDirectionStartCameraPos(),Recollection.GetStoryDirectionStartCameraRot(),Recollection.GetStoryDirectionStartCameraFov(),2.0,
nil,0)else Transition.finish()Wait(1)end
Recollection.PlayRemoveStoryNoiseDirection(UgXzI_C)
local OJZ=Adv.FormatText("Remembered {0}.",Recollection.GetStoryTitle(UgXzI_C))UI.showLineInfo(OJZ,2,2)
CS.LuaMethod.FinishRecollectionStory(parent,UgXzI_C)
if(jwq)then
Field.setCameraCompositionExWithListenerWait(kw3ei0a,EspneS5,LZeg0,1.5,nil,0)Field.setCameraCompositionEnabled(false)end
CS.LuaMethod.RefreshAllRecollectionStories(parent)
CS.LuaMethod.RefreshAllRecollectionPieces(parent)Field.refreshScripts()PlayerUnLock(MLFLplLe)else
CS.LuaMethod.FinishRecollectionStory(parent,UgXzI_C)Field.setPosition("Player",Vec(-1.3,0,0.2))Field.turnTo("Player",
-90,0)Sound.playBGM("SB0141")
Sound.playENV("EN_Spiritual_World_House_Room_Noon_Loop")
Field.setCameraCompositionExWithListener(Vec(-1.000,2.000,0.400),Vec(50.000,270.000,0.000),18.00)Field.waitCameraComposition()
Field.setCameraCompositionExWithListener(Vec(-1.000,2.000,0.400),Vec(50.000,270.000,0.000),24.00,3,
nil,0)
Field.changeAnimation("AlbumDefault_Field","FieldUnique02",1,0.1)Sound.playEx2("AS_Close_Book")
Transition.finish(nil,1)Wait(3)Field.crossFade(0.5)
Field.recoverPlayableCamera(0.01)end end)end
Recollection.GetStoryTitle=function(bP)
return CS.LuaMethod.GetRecollectionStoryTitle(bP)end
Recollection.GetTriggeredStoryCount=function()return
CS.LuaMethod.GetTriggeredRecollectionStoryCount()end
Recollection.StoryStartField=function(b4IqQW,iuGb,koZU)
CS.LuaMethod.SetRecollectionStoryStartField(b4IqQW,iuGb,koZU)end
Recollection.GetStoryState=function(C)
return CS.LuaMethod.GetRecollectionStoryState(C)end
Recollection.ProgressStoryState=function(nmJGp_)
CS.LuaMethod.ProgressRecollectionStoryState(nmJGp_)end
Recollection.IsTriggeredFromGimmick=function(h0v3PIV)
if
CS.LuaMethod.GetRecollectionStoryTriggerType(h0v3PIV)=="Gimmick"then return true end;return false end
Recollection.IsTriggeredFromAlbum=function(Uc)
if
CS.LuaMethod.GetRecollectionStoryTriggerType(Uc)=="Album"then return true end;return false end
Recollection.GetStoryStep=function(JSkUQL)if
Recollection.GetStoryState(JSkUQL)~="OnGoing"then return 0 end;return
CS.LuaMethod.GetRecollectionStoryStep(JSkUQL)end
Recollection.StateStep=function(PTUZ2v,qlZeO3Pr)if
Recollection.GetStoryState(PTUZ2v)~="OnGoing"then return false end;if
Recollection.GetStoryStep(PTUZ2v)~=qlZeO3Pr then return false end
return true end
Recollection.SetStoryStep=function(fG9zS,WiXG)
CS.LuaMethod.SetRecollectionStoryStep(fG9zS,WiXG)end
Recollection.IsInitializedStoryDirectionParam=function()return
CS.LuaMethod.IsInitializedRecollectionStoryDirectionParam()end
Recollection.InitStoryDirectionParam=function(QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0)
CS.LuaMethod.InitRecollectionStoryDirectionParam(QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0)end
Recollection.GetStoryDirectionPlayerPos=function()
local cilhu=CS.LuaMethod.GetRecollectionStoryDirectionPlayerPos()return Vec(cilhu.x,cilhu.y,cilhu.z)end
Recollection.GetStoryDirectionStartCameraPos=function()
local eVfN=CS.LuaMethod.GetRecollectionStoryDirectionStartCameraPos()return Vec(eVfN.x,eVfN.y,eVfN.z)end
Recollection.GetStoryDirectionStartCameraRot=function()
local LBIJ=CS.LuaMethod.GetRecollectionStoryDirectionStartCameraRot()return Vec(LBIJ.x,LBIJ.y,LBIJ.z)end
Recollection.GetStoryDirectionStartCameraFov=function()return
CS.LuaMethod.GetRecollectionStoryDirectionStartCameraFov()end
Recollection.GetStoryDirectionEndCameraPos=function()
local CSSp=CS.LuaMethod.GetRecollectionStoryDirectionEndCameraPos()return Vec(CSSp.x,CSSp.y,CSSp.z)end
Recollection.GetStoryDirectionEndCameraRot=function()
local CBZIwYHI=CS.LuaMethod.GetRecollectionStoryDirectionEndCameraRot()return Vec(CBZIwYHI.x,CBZIwYHI.y,CBZIwYHI.z)end
Recollection.GetStoryDirectionEndCameraFov=function()return
CS.LuaMethod.GetRecollectionStoryDirectionEndCameraFov()end
Recollection.SetActiveEffectObject=function(x1vCS0,Herp)return
CS.LuaMethod.SetActiveRecollectionEffectObject(parent,x1vCS0,Herp,false)end
Recollection.KickEffectTrigger=function(TNczSeT,Sb)return
CS.LuaMethod.KickRecollectionEffectTrigger(parent,TNczSeT,Sb)end
Recollection.OpenSpiritualWorldAlbum=function(_OwI)local GBDhi2D=""
CoroutineYield(CS.LuaMethod.OpenSpiritualWorldAlbum(parent,_OwI,function(XDYs)
GBDhi2D=XDYs end))return GBDhi2D end
Recollection.IsDisplayablePieceMapPin=function(JyOmN)return
CS.LuaMethod.IsDisplayableRecollectionPieceMapPin(JyOmN)end
Recollection.IsDisplayableStoryMapPin=function(Gu2sqpyD)return
CS.LuaMethod.IsDisplayableRecollectionStoryMapPin(Gu2sqpyD)end
Recollection.ExistsPlayablePieceOrStory=function()return
CS.LuaMethod.ExistsPlayableRecollectionPieceOrStory()end
IsInSpiritualWorld=function()return CS.LuaMethod.IsInSpiritualWorld()end
function OnRecollectionPieceEvent(N_Pk,G_v887o0,oiM7BRAl)
Routine(function()
local s4=GenerateUniqueName("RecollectionPieceEvent",N_Pk)PlayerLock(s4)
Recollection.pickupPiece(G_v887o0)Yield(oiM7BRAl)Field.changeCameraToPlayable(2)
Recollection.RequirePiece(N_Pk)
CS.LuaMethod.RefreshAllRecollectionPieces(parent)
CS.LuaMethod.RefreshAllRecollectionStories(parent)PlayerUnLock(s4)
if N_Pk=="RecollectionPiece07_01"then
SetAutoModePointName("")else Recollection.SetAutoMovePoint()end end)end
function OnRecollectionStoryEvent(EF,wYFDyw8,JyI,hncZR4my)
Routine(function()
local KqeVtj=GenerateUniqueName("RecollectionStoryEvent",EF)PlayerLock(KqeVtj)
Field.turnToTargetWait("Player",wYFDyw8,0.5)Wait(0.3)
if Recollection.CanPlayStoryInGimmick(EF)then
Recollection.StartStoryFromGimmick(EF)Yield(hncZR4my)Transition.start()Wait(1)
CoroutineYield(CS.LuaMethod.RecollectionEventWorld(parent,EF))Recollection.SetTriggeredStory(EF)else
Sound.reverbMonolog()
Field.showAdvHudWrapper(function()
Adv.talkWithIcon("RKayamori",[[(I can feel it... An important memory lies slumbering here...)]],"VC_MC05A_v005_00187_RKayamori")end)Sound.reverbMonolog(0)end;PlayerUnLock(KqeVtj)end)end
function OnRecollectionStoryEventToAlbum(LD,Q)
Routine(function()
local QKTF34q3=GenerateUniqueName("RecollectionStoryEvent",LD)PlayerLock(QKTF34q3)
Recollection.StartStoryFromAlbum(LD)Yield(Q)Transition.start()Wait(1)
CoroutineYield(CS.LuaMethod.RecollectionEventWorld(parent,LD))Recollection.SetTriggeredStory(LD)
PlayerUnLock(QKTF34q3)end)end