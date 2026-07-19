INCLUDE("Lua/Include/HomeTutorial")
INCLUDE("Lua/Include/ArenaTutorial")local rDzL7SVO=OpenHomeType.None;local BW0WFP=false;local X8="SB0036"local JQT=""
function preload()
EventScene(Terminal.GetHomeFieldLabel(),"Assets/Lua/Jamaisvu/Home.unity")
EventScene("MainStreet","Assets/Lua/Jamaisvu/Garden/Garden_MainStreet.unity")
EventScene("FriendStreet","Assets/Lua/Jamaisvu/Garden/Garden_FriendStreet.unity")
EventScene("BackStreet","Assets/Lua/Jamaisvu/Garden/Garden_BackStreet.unity")
EventScene("Grave","Assets/Lua/Jamaisvu/Garden/Garden_Grave.unity")
EventScene("Dormitory1F","Assets/Lua/Jamaisvu/Garden/Garden_Dormitory1F.unity")
EventScene("School1F","Assets/Lua/Jamaisvu/Garden/Garden_School1F.unity")
EventScene("ShoppingStreet","Assets/Lua/Jamaisvu/Garden/Garden_ShoppingStreet.unity")end
function init()if
DimensionBattle.CanChangeHome()and Terminal.IsDefaultMode()then X8="SB0137"else X8="SB0036"end
GCCollectAsync(7)PurgeCacheAsync()refresh()end
function refresh()local AtYtR=GardenExpedition.getState()
if AtYtR==
GardenExpeditionState.Playing then StartEvent(ResumeExpedition)end;if ClockTower.ClockTowerLabel()~=""then
StartEvent(ResumeClockTower)end;if WaveBattle.isPlaying()then
StartEvent(ResumeWaveBattle)end
if FieldLabel()=="ClockTower"then elseif FieldLabel()==
Terminal.GetHomeFieldLabel()then
PlayerLock(GenerateUniqueName("JamaisvuHome","SafetyLock",true))StartEvent(StartHome)else
InitScript('Lua/Jamaisvu/Garden/Garden')end;BW0WFP=Campaign.IsActive()end
function ZoomOutPrism()Adv.whiteOut(0)
local ND2BCh3=Field.getPosition("Prisum")Field.turnToTarget("Player","Prisum",0)Field.moveTo("Camera",ND2BCh3+
Vec(0,0,0),0)
Field.setCameraFov(12,0)Field.setEnvironmentBackgroundColor(1,1,1,0)
Field.waitTaskKey("Camera")Wait(0.3)Adv.whiteIn(1,true)
local IODBg=Field.getPosition("Player")
Field.moveTo("Camera",ND2BCh3+Vec(-2,0.05,1),0.7,1,0.2)local YRDu=Field.getPosition("Kamisama")local CWRiP=
(YRDu-IODBg)*0.50+IODBg;Wait(0.7)
Field.waitTaskKey("Camera")Field.setCameraFov(21,0.7,1,0.2)
Field.moveTo("Camera",CWRiP,0.7,AnimationMode.Auto,1,0.2)Field.setCameraHeight(1.25,0.7)
Field.waitTaskKey("Camera")Wait(0.5)end
function ZoomOutPicture()local LB0A=Field.getPosition("PictureFrame")
Field.turnToTarget("Player","PictureFrame",0.3)
Field.moveTo("Camera",LB0A+Vec(0,-1.5,-0.5),0)
Field.setCameraFov(Field.getCameraFov()*0.6,0)Wait(0.5)Adv.whiteIn(1,true)
local dl=Field.getPosition("Player")local sKPjQkdn=Field.getPosition("Kamisama")local HHH9IlJp=
(sKPjQkdn-dl)*0.50+dl
Field.setCameraFov(21,1,1,0.2)
Field.moveTo("Camera",HHH9IlJp,1,AnimationMode.Auto,1,0.2)Field.setCameraHeight(1.25,1)
Field.waitTaskKey("Camera")Wait(0.5)end
function ZoomOutSnowGlobe()
local uYz2ryy4=Field.getPosition("Snowdome")+Vec(2,-1.1,-0.35)Field.turnToTarget("Player","Snowdome",0)
Field.moveTo("Camera",uYz2ryy4,0)Field.setCameraFov(10,0)
Field.setEnvironmentBackgroundColor(1,1,1,0)Adv.whiteIn(1,true)
local zVPRGDnG=Field.getPosition("Player")local IKxw=Field.getPosition("Kamisama")local w0=
(IKxw-zVPRGDnG)*0.50+zVPRGDnG
Field.setCameraFov(21,1.2)Field.moveTo("Camera",w0,1.2)
Field.setCameraHeight(1.25,1.2)Field.waitTaskKey("Camera")Wait(0.5)end
function ZoomOutMiniatureHouse()
if not IsExist("MiniatureHouse")then
Transition.setWhite()Transition.start(0.6)return end
local UgXzI_C=Field.getPosition("MiniatureHouse")+Vec(2,-1.1,-0.35)Field.turnToTarget("Player","MiniatureHouse",0)
Field.moveTo("Camera",UgXzI_C,0)Field.setCameraFov(10,0)
Field.setEnvironmentBackgroundColor(1,1,1,0)Transition.finish(nil,0)Wait(1)
Adv.whiteIn(1,true)local MLFLplLe=Field.getPosition("Player")
local jwq=Field.getPosition("Kamisama")local kw3ei0a=(jwq-MLFLplLe)*0.50+MLFLplLe
Field.setCameraFov(21,1.2)Field.moveTo("Camera",kw3ei0a,1.2)
Field.setCameraHeight(1.25,1.2)Field.waitTaskKey("Camera")Wait(0.5)end
function ZoomOutConquest()Adv.whiteOut(0)
local EspneS5=Field.getPosition("Player")local LZeg0=Field.getPosition("Kamisama")local OJZ=
(LZeg0-EspneS5)*0.50+EspneS5
Field.waitTaskKey("Camera")Field.setCameraFov(21,0.0)
Field.moveTo("Camera",OJZ,0.0,AnimationMode.Auto,1,1)Field.setCameraHeight(1.25,0.0)
Field.waitTaskKey("Camera")Adv.whiteIn(1,true)end
function ZoomInPictureFrame(nmuj)
if not Terminal.IsDefaultMode()then if nmuj then
CardModeInBlack()else CardModeInWhite()end;return end;local bP=Field.getPosition("PictureFrame")Wait(0.3)Field.startEvent(
nil,false,false,true)
Field.turnToTarget("Player","PictureFrame",0.3)
Field.moveTo("Camera",bP+Vec(-0.2,-1.7,-0.5),0.8)
Field.setCameraFov(Field.getCameraFov()*0.6,0.8)Transition.setWhite()Transition.start(0.6)
Transition.setWhite()end
function ZoomInSnowGlobe()if not Terminal.IsDefaultMode()then CardModeInWhite()
return end;Wait(0.3)
Field.turnToTarget("Player","Snowdome",0.3)
Field.setCameraCompositionExWithListener(Vec(3.500,1.000,0.760),Vec(1.600,105.000,0.000),15.00,1.9,0.3)Wait(1)Transition.setWhite()
Transition.start(0.6)Field.setCameraCompositionEnabled(false)end
function ZoomInMiniatureHouse()if not Terminal.IsDefaultMode()then
CardModeInWhite()return end
if not IsExist("MiniatureHouse")then
Transition.setWhite()Transition.start(0.6)return end;Wait(0.3)
Field.turnToTarget("Player","MiniatureHouse",0.3)
Field.setCameraCompositionExWithListener(Vec(3.500,1.000,0.760),Vec(1.000,107.000,0.000),15.00,1.9,0.3)Wait(1)Transition.setWhite()
Transition.start(0.6)Field.setCameraCompositionEnabled(false)end
function StartHome()
Field.setCharacterFootstepEnabled("Player",false)
if
GetFlag("ストーリー以外バトルでオート解放")==1 then SetFlag("Permission.BattleAuto",1)end;Field.deleteFollowerAll()
SetFlag("TerminalButton",1)SetFlag("IsHomeToArena",0)SetFlag("IsHomeToShop",0)
rDzL7SVO=Terminal.GetAndResetOpenHomeType()Log("OpenHomeType"..rDzL7SVO)if
rDzL7SVO==OpenHomeType.Conquest then Field.fadeInCharacter("Player",0)
StartHomeFromConquest()return end
if
not
Terminal.IsDefaultMode()and GetFlag("TerminalHome_BlackOut")==1 then Adv.fadeOut(0)else Adv.whiteOut(0)end;Field.fadeInCharacter("Player",0)if
rDzL7SVO==OpenHomeType.GateBoss then Field.restorePartyCharacters()
Transition.finish()end
if
not Terminal.IsDefaultMode()then SetFlag("Dive.Garden",0)
SetFlag("IsInPastStoryForHome",0)SetFlag("Dive.VariableChallenge",0)
SetFlag("ZoomInToPicture",0)
if GetFlag("DimensionBattleBack")==1 then
SetFlag("DimensionBattleBack",0)Wait(2)local nmJGp_=Sound.playBGM(X8,0,0)
Sound.setBlockIndex(nmJGp_,1)Transition.finish()end
if GetFlag("Event.Expedition")>0 then Adv.whiteIn(1,true)
SetFlag("Event.Expedition",0)Transition.setFlyReturn(TimeFrame.Evening)
Transition.start()Wait(3)Transition.finish()Adv.whiteOut(0)end
if GetFlag("ClockTower")>0 then SetFlag("ClockTower",0)
Transition.setWhite()Transition.finish()Adv.whiteOut(0)end;if GetFlag("Transition.CampaignRoom")~=0 then
SetFlag("Transition.CampaignRoom",0)Transition.setWhite()Transition.finish()
Adv.whiteOut(0)end;if
GetFlag("Transition.WaveBattle")>0 then SetFlag("Transition.WaveBattle",0)
Transition.finish()end
Sound.playBGM(X8,2,2)JQT=UI.showTerminalHomeBackground()
Field.startEvent(nil,false,false,true)local b4IqQW=Field.getWaypointPosition("StartPoint")
Field.setPosition("Player",b4IqQW)Field.moveCameraTargetWait("Player",0)
Field.waitTaskKey("Player")local iuGb=Field.getPosition("Player")
local koZU=Field.getPosition("Kamisama")local C=(koZU-iuGb)*0.50+iuGb
Field.setCameraFov(21,0)Field.moveTo("Camera",C,0,AnimationMode.Auto)
Field.setCameraHeight(1.25,0)Field.waitTaskKey("Camera")
Field.faceToFace("Kamisama",0)Field.setCharacterFootstepEnabled("Player",true)Field.finishEvent(
nil,nil,true)Wait(0.5)
Routine(function()Wait(0.5)
if
GetFlag("TerminalHome_BlackOut")==1 then Adv.fadeIn(1)else Adv.whiteIn(1)end;Wait(1)SetFlag("TerminalHome_BlackOut",0)end)Wait(1)TalkToCat()return end;JQT=UI.showTerminalHomeBackground()
if
GetFlag("Dive.Garden")>0 then Sound.playBGM(X8,2,2)SetFlag("Dive.Garden",0)Field.startEvent(
nil,false,false,true)
Field.resetPosition("StartPoint")ZoomOutPicture()elseif GetFlag("IsInPastStoryForHome")==1 then
SetFlag("IsInPastStoryForHome",0)Sound.playBGM(X8,2,2)
Field.startEvent(nil,false,false,true)Field.resetPosition("StartPoint")ZoomOutPrism()elseif
GetFlag("ZoomInToPicture")==1 then Sound.playBGM(X8,2,2)
SetFlag("ZoomInToPicture",0)Field.startEvent(nil,false,false,true)
Field.resetPosition("StartPoint")
if IsExist("MiniatureHouse")then ZoomOutMiniatureHouse()elseif
IsExist("Snowdome")then ZoomOutSnowGlobe()else Adv.whiteIn(1,true)end elseif rDzL7SVO==OpenHomeType.Event then
if GetFlag("Event.Expedition")>0 then
Adv.whiteIn(1,true)SetFlag("Event.Expedition",0)
Transition.setFlyReturn(TimeFrame.Evening)Transition.start()Wait(3)Transition.finish()
Adv.whiteOut(0)end;Sound.playBGM(X8,2,2)
Field.startEvent(nil,false,false,true)SetCameraStartPosition()Adv.whiteIn(1,true)
SetPlayerStartPosition()elseif GetFlag("Event.Expedition")>0 then Adv.whiteIn(1.5,true)
SetFlag("Event.Expedition",0)Transition.setFlyReturn(TimeFrame.Evening)
Transition.start()Wait(3)Transition.finish()Adv.whiteOut(0)
Sound.playBGM(X8,2,2)Field.startEvent(nil,false,false,true)
SetCameraStartPosition()Adv.whiteIn(1,true)SetPlayerStartPosition()elseif
Campaign.IsActive()and
GetFlag("Transition.CampaignRoom")==Campaign.GetCampaignId()then Sound.playBGM(X8,2,2)
SetFlag("Transition.CampaignRoom",0)Field.startEvent(nil,false,false,true)
Field.resetPosition("StartPoint")ZoomOutMiniatureHouse()elseif
GetFlag("Dive.VariableChallenge")==1 then Sound.playBGM(X8,2,2)
SetFlag("Dive.VariableChallenge",0)Field.startEvent(nil,false,false,true)
Field.resetPosition("StartPoint")ZoomOutPicture()elseif GetFlag("DimensionBattleBack")==1 then
SetFlag("DimensionBattleBack",0)Wait(2)local h0v3PIV=Sound.playBGM(X8,0,0)
Sound.setBlockIndex(h0v3PIV,1)Transition.finish()
Field.startEvent(nil,false,false,true)Field.resetPosition("StartPoint")
Adv.whiteIn(1,true)SetPlayerStartPosition()elseif GetFlag("ClockTower")==1 then
Sound.playBGM(X8,2,2)SetFlag("ClockTower",0)Transition.finish()Field.startEvent(
nil,false,false,true)
Field.resetPosition("StartPoint")ZoomOutPicture()elseif GetFlag("Transition.WaveBattle")==1 then
SetFlag("Transition.WaveBattle",0)Sound.playBGM(X8,2,2)Transition.finish()
Field.startEvent(nil,false,false,true)Field.resetPosition("StartPoint")
Adv.whiteIn(1,true)SetPlayerStartPosition()elseif rDzL7SVO~=OpenHomeType.None then
Sound.playBGM(X8,2,2)Field.startEvent(nil,false,false,true)
Field.resetPosition("StartPoint")if rDzL7SVO==OpenHomeType.StoryHardMode then ZoomOutPrism()else
ZoomOutPicture()end else Sound.playBGM("",2)
Wait(2)Sound.playBGM(X8,0,0)
local Uc=Field.getWaypointPosition("StartPoint")local JSkUQL=4
Field.changeAnimation("Door","FieldOpenDoor",1.3)Field.setPosition("Player",Uc-Vec(5))
Field.startEvent(nil,false,false,true)Field.moveCameraTargetWait("Player",0)Field.setCameraAngleH(
Field.getCameraAngleH()+130,0)
Field.setCharacterFootstepEnabled("Player",true)Field.moveTo("Player",Uc,JSkUQL)
Field.moveTo("Camera",Uc,JSkUQL)
Field.setCameraAngleH(Field.getCameraAngleH()-130,JSkUQL)Field.resetPosition("StartPoint")Adv.whiteIn(2)
Field.waitTaskKey("Player")Field.waitTaskKey("Camera")Field.resetPosition()
SetPlayerStartPosition()end
StartEvent(function()Transition.finish()
Field.setCharacterFootstepEnabled("Player",true)TalkToCat()end)end
function StartHomeFromConquest()SetFlag("Dive.Garden",0)
SetFlag("IsInPastStoryForHome",0)SetFlag("Dive.VariableChallenge",0)
SetFlag("ZoomInToPicture",0)SetFlag("ClockTower",0)SetFlag("Event.Expedition",0)
SetFlag("DimensionBattleBack",0)SetFlag("Transition.CampaignRoom",0)
SetFlag("Transition.WaveBattle",0)Transition.setWhite()Transition.start(0)Sound.playBGM("SB0160",2,2,
nil,true)
if Terminal.IsDefaultMode()then Field.startEvent(
nil,false,false,true)
Field.resetPosition("StartPoint")ZoomOutConquest()else Field.faceToFace("Kamisama",0)end;JQT=UI.showTerminalHomeBackground()TalkToCat()end
function TalkToCat()Field.resetFieldEventState()
local PTUZ2v=Domain.getLatestChapterLabel()local qlZeO3Pr=Domain.getLatestDayNum()
local fG9zS=Domain.getPlayerRank()
if Domain.isClearStory("MC01_01")then
SetFlag("すべてのバトルでオート解放",1)
SetFlag("ストーリー以外バトルでオート解放",1)SetFlag("Permission.BattleAuto",1)end;SetFlag("Permission.BattleSpeed",1)
SetFlag("Permission.BattleOverdrive",1)SetFlag("Permission.Menu",1)
SetFlag("Permission.Gacha",1)SetFlag("逢川國見合流済み",1)
SetFlag("Permission.FieldAuto",1)SetFlag("Permission.AutoTrainingPowerSaving",1)
SetFlag("Event.Expedition",0)SetFlag("TerminalHome_BlackOut",0)
Field.startEvent(nil,false,false,true)
if Terminal.IsDefaultMode()then Field.faceToFace("Kamisama")if rDzL7SVO~=
OpenHomeType.None then Wait(0.25)end end
if rDzL7SVO==OpenHomeType.None then if Terminal.IsDefaultMode()then
TerminalHome_ShowWelcomeMessage(PTUZ2v,qlZeO3Pr)end
TerminalHome_ShowRewardInfo()openNewChapter()
TerminalHome_OpenNewFunction(PTUZ2v,qlZeO3Pr)
local WiXG=Domain.GetCurrentItemLottery("SpecialPresent")
if WiXG~=nil then UI.showSpecialPresentDialog(WiXG)end;local QgyWztK=TerminalHome_FragmentDialog(PTUZ2v)if QgyWztK~=""then
rDzL7SVO=OpenHomeType.Event end
if QgyWztK==""then
QgyWztK=UI.ShowEventRecommendDialog()if QgyWztK~=""then rDzL7SVO=OpenHomeType.Event end end
if Terminal.IsDefaultMode()then if rDzL7SVO==OpenHomeType.None then
Adv.talkNoCharacter("???","Liệu tôi có thể giúp gì cho bạn?","VC_Jamaisvu_00065_")end end
if IsOpened("release.HomeInformation_AC0024_01")and
GetFlag("HomeInformation_AC0024_01")==0 then
SetFlag("HomeInformation_AC0024_01",1)Tutorial.flagSave()UI.announcement(100000131)end
if IsOpened("release.HomeInformation_2ndAnniv")and
GetFlag("HomeInformation_2ndAnniv")==0 then
SetFlag("HomeInformation_2ndAnniv",1)Tutorial.flagSave()UI.announcement(100000142)end
if IsOpened("release.HomeInformation_2.5thAnniv")and
GetFlag("HomeInformation_2.5thAnniv")==0 then
SetFlag("HomeInformation_2.5thAnniv",1)Tutorial.flagSave()UI.announcement(100000171)end
if IsOpened("release.HomeInformation_3rdAnniv")and
GetFlag("HomeInformation_3rdAnniv")==0 then
SetFlag("HomeInformation_3rdAnniv",1)Tutorial.flagSave()UI.announcement(100000197)end
if IsOpened("release.HomeInformation_3.5thAnniv")and
GetFlag("HomeInformation_3.5thAnniv")==0 then
SetFlag("HomeInformation_3.5thAnniv",1)Tutorial.flagSave()UI.announcement(100000223)end;if rDzL7SVO~=OpenHomeType.Event then
TerminalHome_UITutorial(rDzL7SVO)end end;Wait(0.1)openTerminal()Field.finishEvent()end
function openTerminal()
while true do local Oo6ecUO=Domain.getLatestChapterLabel()
local b6SL0yka=Domain.getLatestDayNum()
local hEk,E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ,CSSp,CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb=UI.terminalHome(rDzL7SVO,BW0WFP,JQT,GetJamaisvuShopLabel(),confirmMainStory)rDzL7SVO=OpenHomeType.None
if hEk=="Arena"then ArenaAtHome()elseif hEk=="Battle"or hEk==
"JewelPrism"then local _OwI=E8o;local GBDhi2D=TdqFo;local XDYs=ykLF0
if _OwI~=""then local JyOmN=""
local Gu2sqpyD=0;ZoomInPictureFrame()Transition.start()
PurgeField()JyOmN,Gu2sqpyD=PrismBattleStart(_OwI,GBDhi2D,XDYs)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()break end elseif hEk=="GateBoss"then local N_Pk=E8o
if N_Pk~=""then ZoomInPictureFrame()
local G_v887o0="オーブボス"..
GateBoss.GetTabIndex(N_Pk)+1 .."挑戦済み"SetFlag(G_v887o0,1)PurgeField()GateBossWorld(N_Pk)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")break end elseif hEk=="GateBossNoZoomIn"then local oiM7BRAl=E8o
if oiM7BRAl~=""then
Transition.setWhite()SetFlag("Dive.Garden",1)SetFlag("StartGarden",1)
Field.setFieldEventState("FromHomeShortcut")Field.goToGateBoss(oiM7BRAl)break end elseif hEk=="VariableChallenge"then local s4=E8o
if s4 ~=""then local EF=""local wYFDyw8=0
ZoomInPictureFrame()SetFlag("Dive.VariableChallenge",1)
Transition.start()PurgeField()
EF,wYFDyw8=VariableChallengeBattleStart(s4,function()
Sound.playBattleBGM("SB0004")Battle.waitPreResult()
Sound.playBattleBGM("SB0010")Battle.waitPostResult()end)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()break end elseif hEk=="PastStory"then FaceToPrism()
Routine(function()tutorial=Tutorial.start()
Wait(1)Adv.whiteIn(1)Tutorial.finish(tutorial)end)SetFlag("IsInPastStoryForHome",1)UI.daySelect()
FaceToCat()SetFlag("IsInPastStoryForHome",0)elseif hEk=="Freetime"then
FaceToPrism()
Routine(function()Wait(1)Adv.whiteIn(1)end)SetFlag("IsInPastStoryForHome",1)UI.GoToFreetime()
break elseif hEk=="Communication"then FaceToPrism()
Routine(function()
tutorial=Tutorial.start()Wait(1)Adv.whiteIn(1)Tutorial.finish(tutorial)end)SetFlag("IsInPastStoryForHome",1)
UI.communicationSelect()FaceToCat()SetFlag("IsInPastStoryForHome",0)elseif
hEk=="MainStory"then
if Terminal.IsDefaultMode()then
Adv.talkNoCharacter("???",[[If you ever get stuck, come visit me here.\nUntil we meet again...]],"VC_Jamaisvu_00074_")Field.finishEvent()
Field.startEventScriptCamera()
local hncZR4my=Field.getWaypointPosition("StartPoint")+Vec(-4)
Field.setCameraAngleH(Field.getCameraAngleH()+130,4)Field.setCharacterFootstepEnabled("Player",true)
Field.moveTo("Player",hncZR4my,4)Field.moveTo("Camera",hncZR4my,4)Wait(2)
Adv.whiteOut(1)Field.finishEventScriptCamera()Wait(1)else
Field.finishEvent()Wait(0.5)end;local JyI=GetLatestFragmentLabel(Oo6ecUO)
Exit_GotoLatestDay(JyI)break elseif hEk=="ScoreAttack"then ZoomInPictureFrame()local KqeVtj=E8o;local LD=TdqFo
OnScoreAttack(KqeVtj,TNczSeT,LD,Sb)break elseif hEk=="EventExpedition"then ZoomInPictureFrame()
SetFlag("Event.Expedition",1)OnExpeditionEvent()break elseif hEk=="EventBattle"then local Q=E8o;local QKTF34q3=TdqFo
local z=ykLF0;if Q~=""and QKTF34q3 ~=nil then ZoomInPictureFrame()
OnPrismBattleEvent(Q,QKTF34q3,z)break end elseif hEk=="LimitBreakPower"then
ZoomInPictureFrame()SetFlag("Dive.Garden",1)SetFlag("StartGarden",1)
Field.setFieldEventState("FromHomeShortcut")Field.setResetPositionOptions(true,0,true)
Field.goToLimitBreakPowerSpot("Garden.LimitBreak")break elseif hEk=="HardMode"then local UD61M=E8o;local Kmr_vDN=ykLF0;local VJw9J2c=LBIJ;local Q5oEQY=CSSp
FaceToPrism()Transition.setWhite()Transition.start()
Adv.whiteIn(0)
Exit_StartStoryHardMode(UD61M,Kmr_vDN,VJw9J2c,Q5oEQY)break elseif hEk=="Live"then ZoomInPictureFrame(true)
SetFlag("ZoomInToPicture",1)OnLive()break elseif hEk=="Arcade"then ZoomInPictureFrame(true)
SetFlag("ZoomInToPicture",1)OnArcade()break elseif hEk=="Diorama"then ZoomInPictureFrame(true)
SetFlag("ZoomInToPicture",1)OnDiorama()break elseif hEk=="Campaign"then
SetFlag("Transition.CampaignRoom",Campaign.GetCampaignId())if IsExist("MiniatureHouse")then ZoomInMiniatureHouse()elseif IsExist("Snowdome")then
ZoomInSnowGlobe()end
Campaign.CampaignRoomWorld()break elseif hEk=="DimensionBattle"then OnDimensionBattle()elseif hEk=="Conquest"then
OnConquest(CBZIwYHI)break elseif hEk=="ConquestPrologue"then
OnConquestPrologue(CBZIwYHI,x1vCS0,Herp)break elseif hEk=="Expedition"then ZoomInPictureFrame()
SetFlag("Event.Expedition",1)OnExpeditionEvent()break elseif hEk=="Shop"then ShopAtHome()elseif hEk=="Garden"then
ZoomInPictureFrame()SetFlag("Dive.Garden",1)SetFlag("StartGarden",1)
Exit_FieldAndChange("MainStreet","ArenaPoint")break elseif hEk=="ClockTower"then SetFlag("ClockTower",1)
ZoomInPictureFrame()Transition.setWhite()Transition.start()
Transition.setWhite()PurgeField()
ClockTowerWorld("ClockTower.Renewal",eVfN)Transition.finish()break elseif hEk=="WaveBattle"then
SetFlag("Transition.WaveBattle",1)OnWaveBattle()end end end
function FaceToPrism()
if Terminal.IsDefaultMode()then
Field.turnToTarget("Player","Prisum",0.3)
Field.moveTo("Camera",Field.getPosition("Prisum")+Vec(0,0.1),1,AnimationMode.Auto,0)
Field.setCameraFov(Field.getCameraFov()*0.1,1,0)Field.setEnvironmentBackgroundColor(0,0,0,1)
Wait(0.5)Adv.whiteOut(0.5)Field.waitTaskKey("Camera")else
Adv.whiteOut(0.6)UI.setActiveTerminalHomeBackground(JQT,false)
Wait(1)end end
function FaceToCat()Transition.setWhite()Transition.start(0)
Transition.setWhite()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()
if Terminal.IsDefaultMode()then
ZoomOutPrism()Field.faceToFace("Kamisama")else Adv.whiteOut(0)
UI.setActiveTerminalHomeBackground(JQT,true)Wait(1)Adv.whiteIn(0.6)end end;function CardModeInBlack()SetFlag("TerminalHome_BlackOut",1)
Transition.start(0.6)UI.setActiveTerminalHomeBackground(JQT,false)
Wait(0.3)end
function CardModeInWhite()
Transition.setWhite()Transition.start(0.6)
UI.setActiveTerminalHomeBackground(JQT,false)Wait(0.3)Transition.setWhite()end
function confirmMainStory()local eVzQHT=Domain.getLatestChapterLabel()
local bdl6box_=Domain.getLatestDayNum()local o,RMqe=checkPermissionMainStory(eVzQHT,bdl6box_)
if o~=nil then
return o,""else local c6H01I5a;local CuoodPvK=GetLatestFragmentLabel(eVzQHT)if CuoodPvK~=""then
c6H01I5a=UI.getChapterTitle(CuoodPvK)bdl6box_=Domain.getLatestDayNum(CuoodPvK)RMqe=""else
c6H01I5a=UI.getChapterTitle(eVzQHT)end
local e1iM=tostring(math.max(bdl6box_,0))
local bN32Fa=Adv.FormatText([[Resume play from {0}, Day {1}?{2}]],c6H01I5a,e1iM,RMqe)if bdl6box_<0 then
bN32Fa=Adv.FormatText([[{0} Resume play from the prologue?{1}]],c6H01I5a,RMqe)end;if CuoodPvK~=""then
bN32Fa=Adv.FormatText([[{0}\n*If another Event Story is in progress, its current day's progression info will be lost.]],bN32Fa)end;return
"",bN32Fa end end
function checkPermissionMainStory(Ub,fQEH)local _om;local kEI4=""
if Ub=="MC05B"and fQEH==12 and
Domain.isClearedChapter(Ub)then local DSsD0=GetLatestFragmentLabel(Ub)if
DSsD0 ~=""then _om=nil else
_om="公開中のメインストーリーはすべてクリア済みです。"end else _om=nil end
if Ub=="MC01"and fQEH==6 then kEI4="\n(Recommended Rating: 2,000)"elseif Ub=="MC01"and
fQEH==12 then kEI4="\n(Recommended Rating: 3,800)"elseif Ub=="MC02"and fQEH==5 then
kEI4="\n(Recommended Rating: 4,000 / Slash)"elseif Ub=="MC02"and fQEH==8 then kEI4="\n(Recommended Rating: 4,500 / Crush)"elseif
Ub=="MC02"and fQEH==15 then kEI4="\n(Recommended Rating: 5,000 / Pierce)"elseif Ub=="MC02"and
fQEH==19 then kEI4="\n(Recommended Rating: 6,000 / Pierce)"elseif
Ub=="MC02"and fQEH==24 then kEI4="\n(Recommended Rating: 7,000)"elseif Ub=="MC02"and fQEH==25 then
kEI4="\n(Recommended Rating: 7,000)"elseif Ub=="MC03"and fQEH==6 then kEI4="\n(Recommended Rating: 8,000)"elseif Ub=="MC03"and
fQEH==9 then kEI4="\n(Recommended Rating: 8,500)"elseif Ub=="MC03"and fQEH==11 then
kEI4="\n(Recommended Rating: 9,000)"elseif Ub=="MC03"and fQEH==14 then kEI4="\n(Recommended Rating: 10,000)"elseif Ub=="MC03"and fQEH==
17 then kEI4="\n(Recommended Rating: 10,500)"elseif
Ub=="MC03"and fQEH==21 then kEI4="\n(Recommended Rating: 11,500)"end;return _om,kEI4 end
function openNewChapter()notifyNewOpenChapter("MC05A","MC05B")
if

IsOpened("release.MC05B2_start")and GetFlag("MC05B2公開通知済み")==0 then SetFlag("MC05B2公開通知済み",1)
if

Domain.isClearStory("MC05B_06")and not Domain.isClearStory("MC05B2_05")then
UI.showMessageDialog("Main Scenario: Chapter 5—Part 2, Act II unlocked")end end end
function notifyNewOpenChapter(jRQUk,M)
if Domain.isClearedChapter(jRQUk)then
local p_I=M.."公開通知済み"
if GetFlag(p_I)==0 and Domain.isOpenedChapter(M)then
UI.showMessageDialog(Adv.FormatText("You've unlocked Main Scenario: {0}.",UI.getChapterTitle(M)))SetFlag(p_I,1)end end end
function GetLatestFragmentLabel(ka)
local OAvmrJ=Domain.getLatestFragmentChapterLabel()if OAvmrJ~=""then return OAvmrJ end;return""end
function OnScoreAttack(i,BBJcTiAS,m7jWgGw,cq)
Routine(function()local Mk3=""local jUhLQEm=0;Transition.start()PurgeField()
Mk3,jUhLQEm=ScoreAttackStart(i,BBJcTiAS,m7jWgGw,cq)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()end)end
function OnPrismBattleEvent(Ed4qx,ZrR2o,_g)
Routine(function()local _NgROQrI=""local _E8uiG0=0;Transition.start()
PurgeField()_NgROQrI,_E8uiG0=PrismBattleStart(Ed4qx,ZrR2o,_g)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()end)end
function OnLive()
Routine(function()Transition.start()PurgeField()UI.live()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()end)end
function OnArcade()
Routine(function()Transition.start()PurgeField()UI.arcade()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()end)end
function OnDiorama()
Routine(function()Transition.start()PurgeField()UI.Diorama()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")Transition.finish()end)end
function OnDimensionBattle()
if DimensionBattle.IsBlock()then
Adv.talkNoCharacter("???","Looks like you can't attempt that just yet.","VC_Jamaisvu_00067_")
local SK=DimensionBattle.GetChallengeConditionMessage()Adv.addLocalizedString(SK)
UI.showMessageDialog(SK)return end
if Terminal.IsDefaultMode()then Transition.setWhite()
Transition.start()Transition.setWhite()else Transition.start()end;UI.setActiveTerminalHomeBackground(JQT,false)
Field.finishEventScriptCamera()Wait(1)SetFlag("DimensionBattleBack",1)
SetFlag("OnDimensionBattle",0)
DimensionBattle.BriefingRoomWorld("Lua/Jamaisvu/DimensionBattle/DimensionBattle","BriefingRoom","","StartPoint")end
function OnExpeditionEvent()local J7K570R=GardenExpedition.getState()
if J7K570R==
GardenExpeditionState.Playing then
Transition.setFlyGoEx(TimeFrame.Evening)PurgeField()
Field.setFieldEventState("FromHomeEvent")Transition.start()
local fDGKa=GardenExpedition.getLabel()GardenExpeditionWorld(fDGKa,false,true)end end
function ResumeExpedition()Transition.setWhite()
Transition.start(0)Wait(2)PurgeField()
Field.setFieldEventState("FromHeliport")local Q=GardenExpedition.getLabel()
GardenExpeditionWorld(Q,true,true)end
function OnConquest(ZukFflVc)Log("OnConquest"..ZukFflVc)
Routine(function()PurgeField()
Field.setFieldEventState("FromHomeEvent")Conquest.Start(ZukFflVc)end)end
function OnConquestPrologue(oJgQv,J8T,Hc)Log("OnConquestPrologue"..oJgQv)
Routine(function()
PurgeField()Field.setFieldEventState("FromHomeEvent")
Conquest.StartPrologue(oJgQv,J8T,Hc)end)end
function ResumeVariableChallenge()Transition.setWhite()
Transition.start(0)PurgeField()
local yu=ResumeAutoTrainingOfVariableChallenge(function()
Sound.playBattleBGM("SB0004")Battle.waitLoadEnd()Battle.waitPreResult()
Sound.playBattleBGM("SB0010")Battle.waitPostResult()end,function()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")end)Transition.finish()end
function ArenaAtHome()Transition.start(0)
local IbCB=Adv.loadBGAsync("Background/Arena/Arena_Default")local ipjC14vX=Adv.characterAsync("NNanase")
Adv.waitAsyncInstanceAll()PurgeFieldV2()Wait(1)
Layout.createStageZoomOut(IbCB,Position.BG_CENTER)Layout.show(ipjC14vX)Transition.finish()
Field.showAdvHudCustom(false)
Adv.talk(ipjC14vX,[[Xin chào, Kayamori.]],"VC_ActivityAtArena_00001_v003_NNanase")
Adv.talkWithFacial(nil,nil,ipjC14vX,[[Cô đến đây để huấn luyện sao?]],"VC_ActivityAtArena_00004_NNanase")
Adv.talkWithFacial("000001",nil,ipjC14vX,[[Tôi đang chuẩn bị khởi động hệ thống, xin vui lòng đợi một lát.]],"VC_ActivityAtArena_00009_v003_NNanase")Field.hideAdvHudCustom()Transition.start()
Layout.show()Adv.hide(IbCB)Transition.finish()
ArenaBattleLoop(IbCB)ArenaBattleEnd(ipjC14vX,IbCB)
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")end
function ArenaBattleLoop(zr8xFL0)
Routine(function()
if

GetFlag("アリーナ_バトル指南初回チュートリアル終了")==0 and
GetFlag("アリーナ_バトル指南開放フラグ")==1 then TutorialArenaBattleGuideFirst()
SetFlag("アリーナ_バトル指南初回チュートリアル終了",1)end
if

GetFlag("アリーナ_訓練場初回チュートリアル終了")==0 and GetFlag("アリーナ_訓練場開放フラグ")==1 then TutorialArenaTrainingFirst()
SetFlag("アリーナ_訓練場初回チュートリアル終了",1)end
if

GetFlag("アリーナ_チャレンジ演習初回チュートリアル終了")==0 and
GetFlag("アリーナ_チャレンジ演習開放フラグ")==1 then TutorialArenaChallengeFirst()
SetFlag("アリーナ_チャレンジ演習初回チュートリアル終了",1)end end)
while true do local _QfE,hV8urDO,a=UI.arena(true)if _QfE==""then break end;local jv=a
if jv==""then
jv=function()
while true do
Battle.waitPreResult()Sound.playBattleBGM("SB0010")
Battle.waitPostResult()
if Field.getArenaBattleState()==ArenaBattleState.Playing then
Battle.waitDestroyEnd()Sound.playBattleBGM("SB0004")
Battle.waitLoadEnd()else break end end end end;Adv.show(zr8xFL0,0)Transition.finish(nil,0.2)
Transition.wait()Sound.playBattleBGM("SB0004")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,0)
Adv.playCutIn("RKayamori","Default","Superiority",[[Quẩy thôi!!]],"VC_ActivityAtArena_00026_RKayamori",1,0,nil)Transition.setArenaTransition()
Transition.start()Wait(1.0)Adv.hide(zr8xFL0)
local v=ArenaBattle(jv,function()
Layout.createStage(zr8xFL0)Transition.finish()Layout.show()end,_QfE,hV8urDO)Sound.stopBattleBGMLayer(1,1)if v=="Lose"then
Sound.playBGM("SB0013")end;Transition.start(0.2)
Layout.show()Adv.hide(zr8xFL0)Transition.finish()end end
function ArenaBattleEnd(tA_,XRbckaF)Transition.start()
Layout.createStageZoomOut(XRbckaF,Position.BG_CENTER)Layout.show({tA_,"000202"})
Transition.finish()Field.showAdvHudCustom(false)
Adv.talkWithFacial(nil,nil,tA_,[[Mọi người vất vả rồi.]],"VC_ActivityAtArena_00012_v003_NNanase")Field.hideAdvHudCustom()Transition.start()
Layout.show()end
function ShopAtHome()Transition.start(0)
local ruef=Domain.getLatestHomeSatsukiShopLabel()ruef=ruef or"Shop.Normal101"
local rMVr1Ks=character or Adv.characterAsync("MSatsuki")
local zyXWQodW=Adv.loadBGAsync("Background/FriendStreetShop/FriendStreetShop")Adv.waitAsyncInstanceAll()Wait(1)
Layout.createStage(zyXWQodW)Layout.show(rMVr1Ks)PurgeFieldV2()
Transition.finish()Field.showAdvHudCustom(false)
Adv.talk(rMVr1Ks,[[Kính chào quý khách!! Đồ ở shop toàn là hàng "tiền nào của nấy", đảm bảo công hiệu luôn ♪]],"VC_Z_900400088_MSatsuki")Field.hideAdvHudCustom()
Layout.createStage(zyXWQodW)Layout.show()
UI.shop(ruef,[[Tất cả đều rất đáng để mua đó! ♪]])Layout.createStage(zyXWQodW)
Layout.show({rMVr1Ks,"000201"})Field.showAdvHudCustom(false)
Adv.talk(rMVr1Ks,[[Có đúng là "tiền nào của nấy" không ạ? ♪ Quý khách nhớ đi cày cho thật nhiều GP rồi vác mặt về đây tiếp nhé ♪]],"VC_Z_900400091_MSatsuki")Field.hideAdvHudCustom()Transition.start()
Layout.show()
Exit_FieldAndChange(Terminal.GetHomeFieldLabel(),"StartPoint")end
function GetJamaisvuShopLabel()shopRank=GetFlag("Jamaisvu.ShopRank")
if shopRank<=1 then return
"Shop.Garden001"elseif shopRank<=2 then return"Shop.Garden002"elseif shopRank<=3 then return"Shop.Garden003"elseif
shopRank<=4 then return"Shop.Garden004"elseif shopRank<=5 then return"Shop.Garden005"elseif shopRank<=6 then
return"Shop.Garden006"elseif shopRank<=7 then return"Shop.Garden007"else return"Shop.Garden008"end end
function SetCameraStartPosition()Field.resetPosition("StartPoint")
local VmovH=Field.getPosition("PictureFrame")Field.turnToTarget("Player","PictureFrame",0.3)
Field.moveTo("Camera",
VmovH+Vec(0,-1.5,-0.5),0)
Field.setCameraFov(Field.getCameraFov()*0.6,0)Wait(0.5)end
function SetPlayerStartPosition()local Q=Field.getPosition("Player")
local oGjJ=Field.getPosition("Kamisama")local G1BiG9x=(oGjJ-Q)*0.50+Q
Field.setCameraFov(21,1,1,0.2)
Field.moveTo("Camera",G1BiG9x,1,AnimationMode.Auto,1,0.2)Field.setCameraHeight(1.25,1)
Field.waitTaskKey("Camera")Wait(0.5)end
function ResumeClockTower()Transition.setWhite()
Transition.start(0)Transition.setWhite()Transition.start(0)
Transition.setWhite()ClockTowerWorld("ClockTower.Renewal",nil,true)end
function OnWaveBattle()
if Terminal.IsDefaultMode()then Transition.setWhite()
Transition.start()Transition.setWhite()else Transition.start()end;UI.setActiveTerminalHomeBackground(JQT,false)
Field.finishEventScriptCamera()Wait(1)SetFlag("WaveBattleBack",1)
SetFlag("OnWaveBattle",0)SetFlag("ResumeWaveBattle",0)
WaveBattle.ChangeWorld("Lua/Jamaisvu/WaveBattle/WaveBattle_FirstTimeADV","ArenaEntrance","","BenchRightPoint")end
function ResumeWaveBattle()Transition.setWhite()
Transition.start(0)Transition.setWhite()Transition.start(0)
Transition.setWhite()SetFlag("WaveBattleBack",1)SetFlag("OnWaveBattle",0)
SetFlag("ResumeWaveBattle",1)
WaveBattle.ChangeWorld("Lua/Jamaisvu/WaveBattle/WaveBattle_FirstTimeADV","ArenaEntrance","","BenchRightPoint")end