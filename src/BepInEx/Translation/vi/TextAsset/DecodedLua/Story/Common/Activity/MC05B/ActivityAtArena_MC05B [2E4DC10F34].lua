INCLUDE("Lua/Include/GetArenaRewardByNNanase")
INCLUDE("Lua/Include/ArenaTutorial")function init()refresh()end
function refresh()
TouchEvent("ArenaGate",TriggerArenaBattleMC05B)if GetFlag("IsHomeToArena")==1 then
StartEvent(GotoArenaFromHomeMC05B)end end
TriggerArenaBattleMC05B=function()
Adv.kayamoriTalk([[(Maybe I'll do some training at the arena...)]],"VC_ActivityAtArena_00000_RKayamori",nil)if
Field.isItPossibleActivity([[Train at the arena today?]],[[Train]],[[Leave]])then GotoArenaMC05B()end end
GotoArenaMC05B=function()local A;local w0qyLbH
Field.goToArena(function()local nsgji=GetTimeFrame()
if
nsgji==TimeFrame.Noon then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif nsgji==TimeFrame.Evening then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif nsgji==TimeFrame.Night then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(A,0)end,true)CallArenaMainFlowMC05B(A,w0qyLbH)end
GotoArenaFromHomeMC05B=function()local bClTIa;local rDzL7SVO;Transition.start(0.01)
Field.goToArenaFromHome(function()
local BW0WFP=GetTimeFrame()
if BW0WFP==TimeFrame.Noon then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif BW0WFP==TimeFrame.Evening then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif BW0WFP==TimeFrame.Night then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(bClTIa,0)end,true)CallArenaMainFlowMC05B(bClTIa,rDzL7SVO)end
CallArenaMainFlowMC05B=function(X8,JQT)local AtYtR=Adv.characterAsync("NNanase")
local ND2BCh3=Adv.characterAsync("RKayamori")local IODBg=Adv.characterAsync("STezuka")PurgeField()
local YRDu=nil
Field.startNovel(function()local CWRiP=GetTimeFrame()
local LB0A=Domain.getDivingChapter()local dl=Domain.getDivingDay()
Layout.createStageZoomOut(X8,Position.BG_CENTER)
Layout.show({IODBg,"0002"},{AtYtR,"0002"})Transition.finish()Wait(1)
Layout.changeStageFixBg(AdvStage_get(AtYtR),Position.BG_CENTER)
Adv.talkWithFacial(nil,nil,AtYtR,[[Hello, Cadet Kayamori. Are you here to train?]],"VC_Z_905900203_NNanase")Layout.createStageFixBg(X8,Position.BG_RIGHT)
Layout.showEx({ND2BCh3,"1102"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Yeah, I wanted to get some training in to prep for the operation.]],"VC_Z_905900200_RKayamori")Layout.createStageFixBg(X8,Position.BG_LEFT)
Layout.showEx({AtYtR,"0002"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Please wait a moment while I boot up the system.]],"VC_Z_905900204_NNanase")Transition.start()Layout.show()Adv.hide(X8)
Transition.finish()UI.PushHudVisible("ActivityAtArena",false)
CallArenaBattleLoopMC05B(X8)ArenaExitConversationMC05B(X8,AtYtR,ND2BCh3,IODBg)end)ArenaExitMC05B()end
CallArenaBattleLoopMC05B=function(sKPjQkdn)GetArenaReward()
Routine(function()
if
GetFlag("アリーナ_バトル指南初回チュートリアル終了")==0 and
Domain.getDivingStory()>="MC01_05"then
TutorialArenaBattleGuideFirst()
SetFlag("アリーナ_バトル指南初回チュートリアル終了",1)end
if

GetFlag("アリーナ_訓練場初回チュートリアル終了")==0 and Domain.getDivingStory()>="MC02_03"then TutorialArenaTrainingFirst()
SetFlag("アリーナ_訓練場初回チュートリアル終了",1)end
if


GetFlag("アリーナ_チャレンジ演習初回チュートリアル終了")==0 and
GetFlag("アリーナ_チャレンジ演習開放フラグ")==1 or Domain.isClearStory(MC02_23)==1 then TutorialArenaChallengeFirst()
SetFlag("アリーナ_チャレンジ演習初回チュートリアル終了",1)end end)
while true do local HHH9IlJp,uYz2ryy4,zVPRGDnG=UI.arena()if HHH9IlJp==""then
UI.PopHudVisible("ActivityAtArena")break end;local IKxw=zVPRGDnG
if IKxw==""then
IKxw=function()local UgXzI_C=0;local MLFLplLe=0
Field.finishEvent(0)Battle.waitLoadEnd()Adv.fadeIn(0.5)
while true do
Battle.waitPreResult()Sound.playBattleBGM("SB0010")
if

(Battle.getEnemyLabel(0)==
"STezuka_MC05A_PlusReleaseMaterial"or
Battle.getEnemyLabel(0)=="STezuka_MC05B_Arena")and GetLocalFlag("手塚訓練をクリアした")~=1 then SetLocalFlag("手塚訓練をクリアした",1)end;Battle.waitPostResult()
if Field.getArenaBattleState()==
ArenaBattleState.Playing then Battle.waitDestroyEnd()
Sound.playBattleBGM("SB0004")Battle.waitLoadEnd()else break end end end end;Adv.show(sKPjQkdn,0)Transition.finish(nil,0.2)
Transition.wait()Sound.playBattleBGM("SB0004")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,0)
Adv.playCutIn("RKayamori","Default","Superiority",[[Okay, let's rock!!!]],"VC_ActivityAtArena_00026_RKayamori",1,0,nil)Transition.setArenaTransition()
Transition.start()Wait(1.0)Adv.hide(sKPjQkdn)
local w0=ArenaBattle(IKxw,function()
ArenaBattleEndCallBackMC05B(sKPjQkdn)end,HHH9IlJp,uYz2ryy4)Sound.stopBattleBGMLayer(1,1)if w0 =="Lose"then
Sound.returnFieldBGM()end;Transition.start(0.2)
Layout.show()Adv.hide(sKPjQkdn)Transition.finish()end end
ArenaBattleEndCallBackMC05B=function(jwq)Layout.createStage(jwq)
Transition.finish()Layout.show()end
showBgDependsOnTimeMC05B=function(kw3ei0a,EspneS5)local LZeg0=GetTimeFrame()
if LZeg0 ==TimeFrame.Noon then
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Default")
EspneS5=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif LZeg0 ==TimeFrame.Evening then
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Default")
EspneS5=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif LZeg0 ==TimeFrame.Night then
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Default")
EspneS5=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(kw3ei0a,0)end
ArenaExitConversationMC05B=function(OJZ,nmuj,bP,b4IqQW)Transition.start()
if
GetLocalFlag("手塚訓練をクリアした")==1 then Wait(1.5)
Layout.createStageZoomOut(OJZ,Position.BG_CENTER)
Layout.show({b4IqQW,"0002"},{nmuj,"0002"},nil,0)Transition.finish()
Adv.talkWithFacial(nil,nil,nmuj,[[Well done.]],"VC_Z_905900205_NNanase")
Adv.talkWithFacial("0000",nil,b4IqQW,[[Good work.]],"VC_Z_906100009_STezuka")Layout.createStageFixBg(OJZ,Position.BG_RIGHT)
Layout.show({bP,"0702"})
Adv.talkWithFacial(nil,nil,bP,[[Thanks for sparring with me!]],"VC_Z_905900201_RKayamori")
Layout.createStageFixBg(OJZ,Position.BG_CENTER)Layout.show({b4IqQW,"0002"})
Adv.talkWithFacial(nil,nil,b4IqQW,[[Come see me if you'd like another round.]],"VC_Z_906100010_STezuka")Layout.createStageFixBg(OJZ,Position.BG_RIGHT)
Layout.show({bP,"1102"})
Adv.talkWithFacial(nil,nil,bP,[[That sounds good. I think I'll do that.]],"VC_Z_905900202_RKayamori")SetLocalFlag("手塚訓練をクリアした",0)else
Layout.createStageZoomOut(OJZ,Position.BG_CENTER)Layout.show({nmuj,"000202"})
Transition.finish()
Adv.talkWithFacial(nil,nil,nmuj,[[Well done.]],"VC_Z_905900205_NNanase")end;Transition.start()Layout.show()end
ArenaExitMC05B=function()
if GetFlag("IsHomeToArena")==1 then ReturnTerminal()else
Field.setFieldEventState("FromArena")
Exit_FieldAndChange("MainStreet_LateAutumn","ArenaPoint")end end