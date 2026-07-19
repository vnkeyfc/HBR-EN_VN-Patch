local w0qyLbH=require'xlua.util'
Recollection.SliderEvent=function()
TouchEventAt("SpiritualWorldPark","SlideBlocker1",function()
Field.setFreeMoveFall("Player",false)Field.crossFade(1)
Field.setCameraCompositionExWithListener(Vec(-19.000,3.500,0.000),Vec(0.000,355.000,0.000),30.00)Field.waitCameraComposition()
Field.setCameraCompositionExWithListener(Vec(-19.000,3.800,0.000),Vec(0.000,355.000,0.000),30.00,2.5,
nil,0)
Field.setPosition("MoveEyeBlocker",Vec(-19.450,2.6,5.500))
Field.setPosition("Player",Vec(-19.45,2.6,2.3))Field.turnTo("Player",0,0)
Field.waitCameraComposition()Wait(0.5)
Field.moveToComputedMoveTime("Player",Vec(-19.45,2.6,5.3),3,AnimationMode.None)Field.changeAnimation("Player","FieldRun",1,0.5)
Field.setCameraCompositionExWithListener(Vec(
-19.000,3.800,3.000),Vec(0.000,355.000,0.000),30.00,1,0.9)
Routine(function()Wait(0.8)Sound.playEx2("AS_Cloth_Stab")end)Field.waitTaskKey("Player")
Field.waitCameraComposition()
Field.rotateTo("Player",Vec(0,0,15),0.1,AnimationMode.None)Wait(0.1)
Field.changeAnimation("Player","FieldUnique26",0.6,0.3)Sound.playEx2("AS_Stumble_Kayamori_Athletic")
Field.rotateTo("Player",Vec(0,0,0),0.3,AnimationMode.None)Wait(0.3)
Field.changeAnimation("Player","FieldIdle",1,0.6)Wait(1)
Field.setLookAtTarget("Player","EyeBlocker",0.6)Wait(0.6)
Field.setCameraCompositionExWithListenerWait(Vec(-19.000,5.100,3.000),Vec(30.000,355.000,0.000),30.00,2,0)Wait(0.5)
Routine(function()Wait(2.5)
Field.disableLookAt("Player",0.5)end)
Field.moveToComputedMoveTime("Player",Vec(-19.45,2.6,8.8),1)
Field.moveToComputedMoveTime("MoveEyeBlocker",Vec(-19.45,2.6,9.0),1)
Field.setCameraCompositionExWithListener(Vec(-19.000,5.000,6.500),Vec(30.000,355.000,0.000),30.00,3)Field.waitTaskKey("Player")
Field.waitCameraComposition()Wait(0.5)
Field.setCameraCompositionExWithListener(Vec(-12.400,4.000,9.700),Vec(0.000,285.000,0.000),30.00,3.9,0,0)
Field.moveToComputedMoveTimeWait("Player",Vec(-19.45,2.6,12.7),1)Wait(0.5)
Field.changeAnimation("Player","FieldUnique33",1,0)Wait(0.1)Field.changeAnimationSpeed("Player",0)
Field.moveTo("Player",Vec(
-19.3,5.2,11.7),0,AnimationMode.None)Wait(0.1)Field.changeAnimationSpeed("Player",1)
Sound.playEx2("AS_Clim_WoodLadder")
Field.setCameraCompositionExWithListener(Vec(-12.400,4.800,9.700),Vec(2.000,285.000,0.000),30.00,1,0,0)Wait(1)
Field.setCameraCompositionExWithListener(Vec(-12.400,5.600,9.700),Vec(4.000,285.000,0.000),30.00,1,0,0)Wait(1)
Field.setCameraCompositionExWithListener(Vec(-12.400,6.600,9.700),Vec(6.500,285.000,0.000),30.00,3,0,0)Wait(2.5)
Sound.playEx2("AS_Climbed_Kayamori_Athletic")Wait(0.5)Field.changeCameraToPlayable(2)
SetAutoModePointName("")Field.setFreeMoveFall("Player",true)end,true)
TouchEventAt("SpiritualWorldPark","SlideBlocker2",function()
Field.setFreeMoveFall("Player",false)
if Field.getCharaDistance("Player","EyeBlocker")>0.5 then
Field.moveToComputedMoveTimeWait("Player",Vec(
-19.45,5.2,13.4),1)Wait(0.5)end
Field.setCameraCompositionExWithListener(Vec(-13.500,6.200,14.300),Vec(11.600,270.000,0.000),30.00,2,0,0)
Field.moveTo("Player",Vec(-19.45,5.2,13.15),2,AnimationMode.None)Field.turnTo("Player",0,1,AnimationMode.None)
Sound.playEx2("AS_SlideDown_Wood")
Field.changeAnimation("Player","FieldUnique41",1,1)Wait(1)Sound.playEx2("AS_Sit_Kayamori_Athletic")
Wait(0.7)
Field.changeAnimation("Player","FieldUnique42",1,1)
Field.setCameraCompositionExWithListener(Vec(-13.7,1.8,20.0),Vec(6.000,300.000,0.0),30.00,3,0,0)
Field.moveTo("Player",Vec(-19.7,0,23.5),2.5,AnimationMode.None,0,0.4)Wait(2.5)
Field.changeAnimation("Player","FieldUnique43",1,0.1)Wait(2)
Sound.playEx2("AS_Slide_Down_Kayamori_Athletic")
Field.moveTo("Player",Vec(-19.7,0,24),0.4,AnimationMode.None,1,0)Field.waitTaskKey("Player")
Field.changeCameraToPlayable(1.6)Recollection.SetAutoMovePoint()
Field.setFreeMoveFall("Player",true)end)end
Recollection.StartPieceEvent=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8)_AssertIsVector(nsgji)
_AssertIsVector(BW0WFP)_AssertIsVector(X8)
Field.setPosition("SpiritualWorld_FadeWhite",
Field.getPosition(bClTIa)+Vec(0,0.4))Field.crossFade(1)
Field.setCameraCompositionExWithListener(BW0WFP,X8,30.00)Field.setPosition("Player",nsgji)
Field.turnToTarget("Player",bClTIa,0)Field.waitCameraComposition()Field.setCameraCompositionExWithListener(BW0WFP,X8,24.00,3.6,
nil,0)
Field.changeAnimationWait("Player","FieldUnique31",1,1)
Field.changeAnimation("Player","FieldUnique32",1,0.5)Field.waitCameraComposition()
Field.setActive("SpiritualWorld_FadeWhite",true)
Field.kickEffectTrigger("SpiritualWorld_FadeWhite","FadeIn")Sound.playEx2("AS_Recollection_Memory_Start")
Wait(0.5)Field.setActive(rDzL7SVO,false)
Sound.stopAllENV(3)local JQT=Sound.pushBGM("",3)Wait(2.0)Adv.whiteOut(1)
Field.kickEffectTrigger("SpiritualWorld_FadeWhite","End")Field.hidePartyCharacters()
Field.setActiveWithTag("Effect",false)Field.setFootstepEnabled(false)
Sound.playENV("EN_Recollection_World")return JQT end
Recollection.FinishPieceEvent=function(AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,LB0A,dl)_AssertIsVector(CWRiP)
_AssertIsVector(LB0A)Field.setActiveWithTag("Effect",true)
Field.restorePartyCharacters()Field.changeAnimation("Player","FieldIdle")
Sound.stopAllENV(1)Sound.popBGM(AtYtR,1)Wait(1)
MC05A.SpiritualBaseENV()MC05A.SpiritualFreeMovementENVNoon()if dl then dl()else
Field.setCameraCompositionExWithListener(CWRiP,LB0A,24.00)end
Field.kickEffectTrigger("SpiritualWorld_FadeWhite","FadeOut")Sound.playEx2("AS_Recollection_Memory_End")
Wait(0.2)Adv.whiteIn(0.1)Wait(1.2)
Field.setActive(IODBg,true)
Recollection.KickEffectTrigger(IODBg,"01_Ball_Wait")if dl then Wait(1.5)else Field.changeCameraToPlayable(2)
Field.waitTaskKey("Camera")Wait(0.5)end
Field.setActive("SpiritualWorld_FadeWhite",false)
Recollection.CallEffectMoveFuncInPiece(ND2BCh3)Wait(1.5)Field.setFootstepEnabled(true)
Field.turnToTargetWait("Player",IODBg,0.5)end
Recollection.StartRecollectionEvent=function(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe)_AssertIsVector(sKPjQkdn)
_AssertIsVector(zVPRGDnG)_AssertIsVector(IKxw)_AssertIsVector(w0)MLFLplLe=MLFLplLe or
"VC_MC05A_v005_00161_RKayamori"
Recollection.KickEffectTrigger(uYz2ryy4,"01_Ball_Wait")Field.crossFade(1)
Field.setPosition("Player",sKPjQkdn)Field.turnToTargetWait("Player",HHH9IlJp,0)
Field.setCameraCompositionExWithListener(zVPRGDnG,IKxw,30.00)Field.waitCameraComposition()Field.setCameraCompositionExWithListener(zVPRGDnG,IKxw,24.00,3.6,
nil,0)
Recollection.InitStoryDirectionParam(sKPjQkdn,zVPRGDnG,IKxw,30.00,zVPRGDnG,IKxw,24.00)if UgXzI_C then UgXzI_C()end
Field.changeAnimationWait("Player","FieldUnique31",1,1)
Field.changeAnimation("Player","FieldUnique32",1,0.5)Field.waitCameraComposition()Wait(0.5)
Recollection.KickEffectTrigger(uYz2ryy4,"02_Ball_Move")Sound.playEx2("AS_Recollection_Event_Start")Field.setCameraCompositionExWithListener(zVPRGDnG,w0,30.00,1,
nil,0)
Wait(1.1)Adv.whiteOut(0.5,true,"ForegroundStill")Wait(0.5)
Field.setActive(uYz2ryy4,false)Wait(2.5)
Adv.talkWithIconMonolog("RKayamori",[[(I remember now...)]],MLFLplLe)
Log("[Recollection.StartRecollectionEvent]voice_label:"..MLFLplLe)Sound.playEmptyBGM(1.5)Sound.stopAllENV(1.5)
Transition.setWhite()Transition.start(1.5)Wait(2)
SetLocalFlag("思い出イベント中_環境音停止",1)Sound.playBGM("SB0153",nil,2)
Sound.setResumeBGM("")Sound.playENV("EN_Recollection_World",2)
Field.setActiveWithTag("Effect",false)Field.setFootstepEnabled(false)
Field.setCameraCompositionEnabled(false)end
Recollection.Exit_FinishRecollectionEvent=function(jwq,kw3ei0a)
local EspneS5=Recollection.IsTriggeredFromGimmick(jwq)
if EspneS5 then Field.setCameraCompositionEnabled(false)
Field.setActiveWithTag("Effect",true)Field.restorePartyCharacters()
Field.changeAnimation("Player","FieldIdle")
Recollection.SetActiveEffectObject(kw3ei0a,false)end;Sound.playEmptyBGM(3)Sound.stopAllENV(3)Wait(3)
Field.setFootstepEnabled(true)
SetLocalFlag("思い出イベント中_環境音停止",0)SetLocalFlag(jwq.."を見た",1)
Recollection.ProgressStoryState(jwq)Transition.start()Wait(1)Exit_World()end
Recollection.SetupSpiritualWorldAlbumInRukaRoom=function()Field.crossFade(1)
Field.setCameraCompositionExWithListener(Vec(
-1.000,2.000,0.600),Vec(50.000,260.000,0.000),21.00)Field.waitCameraComposition()
Field.setCameraCompositionExWithListener(Vec(-1.000,2.000,0.600),Vec(50.000,259.000,0.000),15.00,3.5,
nil,0)Wait(1)
Field.changeAnimation("AlbumDefault_Field","FieldUnique01",1,0.1)Sound.playEx2("AS_Open_Book")Wait(2)
Adv.whiteOut(0.5)Wait(1)Field.stopCameraComposition()Routine(function()Wait(0.2)
Adv.whiteIn(0.5)end)
local LZeg0=Recollection.OpenSpiritualWorldAlbum()
if LZeg0 ==""then Adv.whiteOut(0)Wait(0.5)
Field.setCameraCompositionExWithListener(Vec(-1.000,2.000,0.400),Vec(50.000,270.000,0.000),15.00)Field.waitCameraComposition()
Field.setCameraCompositionExWithListener(Vec(-1.000,2.000,0.400),Vec(50.000,270.000,0.000),21.00,3,
nil,0)
Field.changeAnimation("AlbumDefault_Field","FieldUnique02",1,0.1)Sound.playEx2("AS_Close_Book")Adv.whiteIn(1)
Wait(2.5)Field.crossFade(0.5)
Field.setCameraCompositionEnabled(false)Wait(0.5)Field.refreshScripts(true)else Adv.fadeOut(0)end end
Recollection.IsDisplayProp=function(OJZ)if not Recollection.IsEnableStory(OJZ)then
return false end
if Recollection.IsClearedStory(OJZ)then return false end;return true end
Recollection.PlayRemoveStoryNoiseDirection=function(nmuj)
if nmuj=="RecollectionStory02"then
RemoveChristmasTreeDirection()elseif nmuj=="RecollectionStory05"then RemoveKiteDirection()elseif
nmuj=="RecollectionStory06"then RemovePicnicSetDirection()elseif nmuj=="RecollectionStory07"then
RemoveHanamiSetDirection()else Recollection.KickStoryNoiseBreakTrigger(nmuj)
Sound.playEx2("AS_Recollection_Blocker_Disappear")Wait(2.0)end end
RemoveKiteDirection=function()local bP=FieldLabel()
if bP=="SpiritualWorldWheatField"then
Recollection.KickStoryNoiseBreakTrigger("RecollectionStory05")
Sound.playEx2("AS_Recollection_Blocker_Disappear")Field.startTimeline("KiteYellow_UV1")
Field.waitTimeline("FO")Wait(1)end end
RemovePicnicSetDirection=function()local b4IqQW=FieldLabel()
if b4IqQW=="SpiritualWorldForest"then
Recollection.KickStoryNoiseBreakTrigger("RecollectionStory06")
Sound.playEx2("AS_Recollection_Blocker_Disappear")Field.startTimeline("PicnicSet")
Field.waitTimeline("FO")Wait(1)end end
RemoveHanamiSetDirection=function()local iuGb=FieldLabel()
if iuGb=="SpiritualWorldPark"then
Recollection.KickStoryNoiseBreakTrigger("RecollectionStory07")
Sound.playEx2("AS_Recollection_Blocker_Disappear")Field.startTimeline("HanamiSet")
Field.waitTimeline("FO")Wait(1)end end
RemoveChristmasTreeDirection=function()local koZU=FieldLabel()
if koZU=="SpiritualWorldFrontStation"then
Recollection.KickStoryNoiseBreakTrigger("RecollectionStory02")
Sound.playEx2("AS_Recollection_Blocker_Disappear")Field.startTimeline("ChristmasTree")
Field.waitTimeline("FO")Wait(1)end end
Recollection.SpiritualWorldTableEventInRukaRoom1=function()
local C=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_001.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.turnTo("Player",-141,0)
Field.setCameraCompositionExWithListener(Vec(-0.600,1.500,1.500),Vec(4.000,219.000,0.000),30.00)Wait(1)Adv.moveTo(C,Vec(0,30),0)
Adv.showWait(C,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(These are my kites. I'd pick out a different one to fly every day based on the weather and my mood.)]],"VC_Z_904000019_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(I really didn't have a lot at this point, huh.)]],"VC_Z_904000020_RKayamori")Adv.remove(C)end)IncLocalFlag("机アイテム触った回数")
PurgeCache()end
Recollection.SpiritualWorldTableEventInRukaRoom2=function()
local nmJGp_=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_002.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(-1.300,1.700,0.100),Vec(36.000,257.000,0.000),21.00)Wait(1)Adv.moveTo(nmJGp_,Vec(0,30),0)
Adv.showWait(nmJGp_,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(And these are chocolate cigarettes. I've had a liking for them for longer than I realized.)]],"VC_Z_904000021_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(I started buying them just because I thought women looked cool with cigarettes in their mouths, but they're so delicious that I can't get enough of them even now.)]],"VC_Z_904000022_RKayamori")Adv.remove(nmJGp_)end)IncLocalFlag("机アイテム触った回数")
PurgeCache()end
Recollection.SpiritualWorldTableEventInRukaRoom3=function()
local h0v3PIV=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_003.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(-1.300,1.700,0.000),Vec(32.000,255.000,0.000),21.00)Wait(1)Adv.moveTo(h0v3PIV,Vec(0,30),0)
Adv.showWait(h0v3PIV,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(Lip balm... Everyone I knew seemed to carry this around, so I bought some for myself.)]],"VC_Z_904000023_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(Ended up not needing it, though. My lips are plump and moist 24/7, so it just languished in my room.)]],"VC_Z_904000024_RKayamori")Adv.remove(h0v3PIV)end)IncLocalFlag("机アイテム触った回数")
PurgeCache()end
Recollection.SpiritualWorldTableEventInRukaRoom4=function()
local Uc=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_004.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(-1.300,1.700,0.100),Vec(35.000,247.700,0.000),21.00)Wait(1)Adv.moveTo(Uc,Vec(0,30),0)
Adv.showWait(Uc,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(This is a bell to drive away bears.)]],"VC_Z_904000025_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(My dad was insistent I take it with me whenever I went into the forest, but I forgot it more often than not. Having fun made me forget all about bears.)]],"VC_Z_904000026_RKayamori")Adv.remove(Uc)end)IncLocalFlag("机アイテム触った回数")
PurgeCache()end
Recollection.SpiritualWorldBedEventInRukaRoom1=function()
local JSkUQL=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_007.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(0.900,2.000,0.300),Vec(55.000,174.000,0.000),24.00)Wait(1)Adv.moveTo(JSkUQL,Vec(0,30),0)
Adv.showWait(JSkUQL,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(What sort of games was I playing back then? There's a girl with black hair on the cover of this one... Maybe it's about romancing her?)]],"VC_Z_904000031_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(No, there's a ghost behind her! It's a horror game! Damn, I was into the spicy stuff from a young age.)]],"VC_Z_904000032_RKayamori")Adv.remove(JSkUQL)end)
IncLocalFlag("ベッドアイテム触った回数")PurgeCache()end
Recollection.SpiritualWorldBedEventInRukaRoom2=function()
local PTUZ2v=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_005.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.100,1.600,0.900),Vec(30.000,175.000,0.000),21.00)Wait(1)Adv.moveTo(PTUZ2v,Vec(0,30),0)
Adv.showWait(PTUZ2v,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(A fashion magazine... Angelmaker's July 2027 issue.)]],"VC_Z_904000027_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(At the time, I never imagined that an outfit I designed would be featured in the pages of this magazine.)]],"VC_Z_904000028_RKayamori")Adv.remove(PTUZ2v)end)
IncLocalFlag("ベッドアイテム触った回数")PurgeCache()end
Recollection.SpiritualWorldBedEventInRukaRoom3=function()
local qlZeO3Pr=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_006.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.100,1.700,0.400),Vec(30.000,175.500,0.000),24.00)Wait(1)Adv.moveTo(qlZeO3Pr,Vec(0,30),0)
Adv.showWait(qlZeO3Pr,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[That's right, I would always sleep with this hug pillow clutched to my chest. I didn't start using a regular pillow until life on the base.)]],"VC_Z_904000029_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(Could not get used to it at first. I fall asleep so fast it doesn't really bother me now, but I kinda want to start hugging something when I sleep again...)]],"VC_Z_904000030_RKayamori")Adv.remove(qlZeO3Pr)end)
IncLocalFlag("ベッドアイテム触った回数")PurgeCache()end
Recollection.SpiritualWorldBedEventInRukaRoom4=function()
local fG9zS=Adv.itemCutAsync("Assets/Contents/Image/ItemCut/MC05A/ItemCut_MC05A_05_12_03_008.prefab","ForegroundEffect")
Field.showAdvHudWrapper(function()Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.100,1.600,0.900),Vec(25.000,181.000,0.000),21.00)Wait(1)Adv.moveTo(fG9zS,Vec(0,30),0)
Adv.showWait(fG9zS,0.5)Wait(1)
Adv.talkWithIconMonolog("RKayamori",[[(A portable speaker. I used this baby in lieu of an alarm clock, woke me up real fast every morning.)]],"VC_Z_904000033_RKayamori")
Adv.talkWithIconMonolog("RKayamori",[[(When it was time for me to get up, it'd start playing one of my favorite songs, this real wall of noise. If not for this speaker, I would have given my mom a real hard time.)]],"VC_Z_904000034_RKayamori")Adv.remove(fG9zS)end)
IncLocalFlag("ベッドアイテム触った回数")PurgeCache()end
Recollection.SetAutoMovePoint=function(WiXG)
WiXG=WiXG or"SpiritualWorldWheatFieldFronthillTo"
local QgyWztK=CS.LuaMethod.GetRecollectionAutoMovePoint(WiXG)
if QgyWztK=="RecollectionPiece00_00"then QgyWztK="AutoMovePiece00_00"elseif
QgyWztK=="RecollectionPiece04_00"then QgyWztK="AutoMovePiece04_00"elseif QgyWztK=="RecollectionPiece07_01"then
QgyWztK="SlideBlocker1"elseif QgyWztK=="RecollectionPiece08_00"then QgyWztK="AutoMovePiece08_00"elseif
QgyWztK=="RecollectionStory04"then QgyWztK="AutoMoveStory04"elseif QgyWztK=="RecollectionStory08"then
QgyWztK="AutoMoveStory08"elseif QgyWztK=="RecollectionStory09"then QgyWztK="AutoMoveStory09"end;SetAutoModePointName(QgyWztK)end
Recollection.UpdateMiniMapPin=function()
if
Recollection.IsDisplayablePieceMapPin("RecollectionPiece00_00")then ShowMapPieceIcon("RecollectionPiece00_00")elseif
Recollection.IsDisplayablePieceMapPin("RecollectionPiece00_01")then HideMapPieceIcon("RecollectionPiece00_00")
ShowMapPieceIcon("RecollectionPiece00_01")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory00")then
HideMapPieceIcon("RecollectionPiece00_01")ShowMapPieceIcon("RecollectionStory00")else
HideMapPieceIcon("RecollectionStory00")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece01_00")then
ShowMapPieceIcon("RecollectionPiece01_00")elseif Recollection.IsDisplayablePieceMapPin("RecollectionPiece01_01")then
HideMapPieceIcon("RecollectionPiece01_00")ShowMapPieceIcon("RecollectionPiece01_01")elseif
Recollection.IsDisplayableStoryMapPin("RecollectionStory01")then HideMapPieceIcon("RecollectionPiece01_01")
ShowMapPieceIcon("RecollectionStory01")else HideMapPieceIcon("RecollectionStory01")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece02_00")then
ShowMapPieceIcon("RecollectionPiece02_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory02")then
HideMapPieceIcon("RecollectionPiece02_00")ShowMapPieceIcon("RecollectionStory02")else
HideMapPieceIcon("RecollectionStory02")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece03_00")then
ShowMapPieceIcon("RecollectionPiece03_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory03")then
HideMapPieceIcon("RecollectionPiece03_00")ShowMapPieceIcon("RecollectionStory03")else
HideMapPieceIcon("RecollectionStory03")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece04_00")then
ShowMapPieceIcon("RecollectionPiece04_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory04")then
HideMapPieceIcon("RecollectionPiece04_00")ShowMapPieceIcon("RecollectionStory04")else
HideMapPieceIcon("RecollectionStory04")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece05_00")then
ShowMapPieceIcon("RecollectionPiece05_00")elseif Recollection.IsDisplayablePieceMapPin("RecollectionPiece05_01")then
HideMapPieceIcon("RecollectionPiece05_00")ShowMapPieceIcon("RecollectionPiece05_01")elseif
Recollection.IsDisplayableStoryMapPin("RecollectionStory05")then HideMapPieceIcon("RecollectionPiece05_01")
ShowMapPieceIcon("RecollectionStory05")else HideMapPieceIcon("RecollectionStory05")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece06_00")then
ShowMapPieceIcon("RecollectionPiece06_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory06")then
HideMapPieceIcon("RecollectionPiece06_00")ShowMapPieceIcon("RecollectionStory06")else
HideMapPieceIcon("RecollectionStory06")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece07_00")then
ShowMapPieceIcon("RecollectionPiece07_00")elseif Recollection.IsDisplayablePieceMapPin("RecollectionPiece07_01")then
HideMapPieceIcon("RecollectionPiece07_00")ShowMapPieceIcon("RecollectionPiece07_01")elseif
Recollection.IsDisplayableStoryMapPin("RecollectionStory07")then HideMapPieceIcon("RecollectionPiece07_01")
ShowMapPieceIcon("RecollectionStory07")else HideMapPieceIcon("RecollectionStory07")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece08_00")then
ShowMapPieceIcon("RecollectionPiece08_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory08")then
HideMapPieceIcon("RecollectionPiece08_00")ShowMapPieceIcon("RecollectionStory08")else
HideMapPieceIcon("RecollectionStory08")end
if Recollection.IsDisplayablePieceMapPin("RecollectionPiece09_00")then
ShowMapPieceIcon("RecollectionPiece09_00")elseif Recollection.IsDisplayableStoryMapPin("RecollectionStory09")then
HideMapPieceIcon("RecollectionPiece09_00")ShowMapPieceIcon("RecollectionStory09")else
HideMapPieceIcon("RecollectionStory09")end end
Recollection.moveToTable=function()Field.setActive("Table1",false)
local Oo6ecUO=Field.getPlayerPosition()local b6SL0yka=Oo6ecUO.x;local hEk=Oo6ecUO.z
if b6SL0yka<-0.9 and
(-1.0 <hEk and hEk<0.9)then Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.500,1.500,2.300),Vec(6.000,240.000,0.000),18.00)Field.setPosition("Player",Vec(-1.3,0,0.2))Field.turnTo("Player",
-90,0)else
Field.turnToTargetWait("Player","Table1",0.5)Wait(0.5)Field.crossFade(0.5)
Field.setPosition("Player",Vec(-0.3,0,0.2))
Field.setCameraCompositionExWithListener(Vec(1.500,1.500,2.300),Vec(6.000,240.000,0.000),18.00)
Field.moveToComputedMoveTimeWait("Player",Vec(-1.3,0,0.2),1)end;Wait(1)end
Recollection.moveToBed=function()Field.setActive("Bed1",false)
local E8o=Field.getPlayerPosition()local TdqFo=E8o.x;local ykLF0=E8o.z
if TdqFo<0.8 then
if ykLF0 <0.2 and TdqFo>=0.2 then
Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(0.800,2.700,2.800),Vec(29.000,176.000,0.000),21.00)Field.setPosition("Player",Vec(0.2,0,0.1))Field.turnTo("Player",
-240,0)else
Field.turnToTargetWait("Player","Bed1",0.5)Wait(0.5)Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(0.800,2.700,2.800),Vec(29.000,176.000,0.000),21.00)
Field.setPosition("Player",Vec(-0.200,0,0.331))
Field.moveToComputedMoveTimeWait("Player",Vec(0.2,0,0.1),1)end else
if ykLF0 <-0.1 then Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.000,2.700,2.800),Vec(28.000,176.000,0.000),21.00)Field.setPosition("Player",Vec(2.0,0,-0.05))Field.turnTo("Player",
-143.2,0)else
Field.turnToTargetWait("Player","Bed1",0.5)Wait(0.5)Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(1.000,2.700,2.800),Vec(28.000,176.000,0.000),21.00)
Field.setPosition("Player",Vec(2.100,0,0.100))
Field.moveToComputedMoveTimeWait("Player",Vec(1.9,0,-0.2),1)end end;Wait(1)end
Recollection.moveToCloset=function()Field.setActive("Goal1",false)
local cilhu=Field.getPlayerPosition()local eVfN=cilhu.x;local LBIJ=cilhu.z
if eVfN>2.6 and LBIJ<1 then
Field.crossFade(0.5)
Field.setCameraCompositionExWithListener(Vec(0.700,2.000,2.800),Vec(14.500,137.500,0.000),24.00)Field.setPosition("Player",Vec(2.9,0,0.2))
Field.turnTo("Player",90,0)else Field.turnToTargetWait("Player","Goal2",0.5)
Wait(0.5)Field.crossFade(0.5)
Field.setPosition("Player",Vec(1.9,0,0.2))
Field.setCameraCompositionExWithListener(Vec(0.700,2.000,2.800),Vec(14.500,137.500,0.000),24.00)
Field.moveToComputedMoveTimeWait("Player",Vec(2.9,0,0.2),1)end;Wait(1)end