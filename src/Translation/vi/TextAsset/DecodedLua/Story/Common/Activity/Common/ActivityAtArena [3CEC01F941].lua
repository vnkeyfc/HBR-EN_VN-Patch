INCLUDE("Lua/Include/GetArenaRewardByNNanase")
INCLUDE("Lua/Include/ArenaTutorial")function init()refresh()end
function refresh()
TouchEvent("ArenaGate",TriggerArenaBattle)if GetFlag("IsHomeToArena")==1 then
StartEvent(GotoArenaFromHome)end end
TriggerArenaBattle=function()
Adv.kayamoriTalk([[(Maybe I'll do some training at the arena...)]],"VC_ActivityAtArena_00000_RKayamori",nil)if
Field.isItPossibleActivity([[Train at the arena today?]],[[Train]],[[Leave]])then GotoArena()end end
GotoArena=function()local A;local w0qyLbH
Field.goToArena(function()local nsgji=GetTimeFrame()
if nsgji==TimeFrame.Noon then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif nsgji==TimeFrame.Evening then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif nsgji==TimeFrame.Night then
A=Adv.loadBGAsync("Background/Arena/Arena_Default")
w0qyLbH=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(A,0)end,true)CallArenaMainFlow(A,w0qyLbH)end
GotoArenaFromHome=function()local bClTIa;local rDzL7SVO;Transition.start(0.01)
Field.goToArenaFromHome(function()
local BW0WFP=GetTimeFrame()
if BW0WFP==TimeFrame.Noon then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif BW0WFP==TimeFrame.Evening then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif BW0WFP==TimeFrame.Night then
bClTIa=Adv.loadBGAsync("Background/Arena/Arena_Default")
rDzL7SVO=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(bClTIa,0)end,true)CallArenaMainFlow(bClTIa,rDzL7SVO)end
CallArenaMainFlow=function(X8,JQT)local AtYtR=Adv.characterAsync("NNanase")
local ND2BCh3=Adv.characterAsync("RKayamori")PurgeField()local IODBg=nil
Field.startNovel(function()
Layout.createStageZoomOut(X8,Position.BG_CENTER)Layout.show(AtYtR)Transition.finish()Wait(1)
Layout.changeStageFixBg(AdvStage_get(AtYtR),Position.BG_CENTER)local YRDu=GetTimeFrame()
if YRDu==TimeFrame.Noon then
Adv.talk(AtYtR,[[Hello, Cadet Kayamori.]],"VC_ActivityAtArena_00001_v003_NNanase")elseif YRDu==TimeFrame.Evening then
Adv.talk(AtYtR,[[Hello, Cadet Kayamori.]],"VC_ActivityAtArena_00001_v003_NNanase")elseif YRDu==TimeFrame.Night then
Adv.talk(AtYtR,[[Good evening, Kayamori.]],"VC_ActivityAtArena_00003_v003_NNanase")end;local CWRiP=Field.hasArenaBattleBonus()
if CWRiP then
Adv.talkWithFacial(nil,nil,AtYtR,[[Will you help us calibrate the test run?]],"VC_ActivityAtArena_00001_NNanase")Layout.show({ND2BCh3,"1103"},AtYtR)
Adv.act(AtYtR,"0001")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Yeah, of course! I'd do anything for you, Nanamin!]],"VC_ActivityAtArena_00002_RKayamori",nil)
Adv.talkWithFacial(nil,nil,AtYtR,[[Thank you. When you clear the specified missions for the first time, you will be granted some bonus credits as a reward.]],"VC_Activity_00000_v001_NNanase")else
Adv.talkWithFacial(nil,nil,AtYtR,[[Did you come here to train today?]],"VC_ActivityAtArena_00004_NNanase")Layout.show({ND2BCh3,"1103"},AtYtR)
Adv.act(AtYtR,"0001")
Adv.talkWithFacial("1103",nil,ND2BCh3,[[Yep, aren't I super diligent? I'm using my free time for this!]],"VC_ActivityAtArena_00005_RKayamori",nil)end
Adv.talkWithFacial("000001",nil,AtYtR,[[Please wait a moment while I boot up the system.]],"VC_ActivityAtArena_00009_v003_NNanase")Transition.start()Layout.show()Adv.hide(X8)
Transition.finish()UI.PushHudVisible("ActivityAtArena",false)
CallArenaBattleLoop(X8)ArenaExitConversation(X8,AtYtR)end)ArenaExit()end
CallArenaBattleLoop=function(LB0A)GetArenaReward()
Routine(function()if
GetFlag("アリーナ初回チュートリアル終了")==0 then TutorialArenaFirst()
SetFlag("アリーナ初回チュートリアル終了",1)end
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
while true do local dl,sKPjQkdn,HHH9IlJp=UI.arena()if dl==""then
UI.PopHudVisible("ActivityAtArena")break end;local uYz2ryy4=HHH9IlJp
if uYz2ryy4 ==""then
uYz2ryy4=function()local IKxw=0;local w0=0
Field.finishEvent(0)Battle.waitLoadEnd()Adv.fadeIn(0.5)
if
GetFlag("Permission.BattleAuto")==1 and
GetFlag("バトルオートチュートリアル終了")==0 then w0=1
SetFlag("バトルオートチュートリアル終了",1)end
if w0 ==1 then Battle.addHideSubMenuFactor()
Battle.disableMiniCutIn()Battle.waitStartEffectEnd()
local UgXzI_C=Tutorial.start()Battle.waitCommandSelect(1)Wait(0.5)
Tutorial.showMask()
if IsDPadAsAxis()then Battle.removeHideSubMenuFactor()
Tutorial.setMessage([[Press the L2 button to open a sub-menu where\nyou can tweak the auto-battle mode settings.]],
-300,400)
Tutorial.showFocusButtonRect("HudMenu/UIBattleSubMenu/container/contentsOff/btnMore",nil,nil,nil,"Auto-Battle Mode Sub Menu","pad_triggerLeft")Wait(0.5)
Tutorial.setFocusRect("HudMenu/UIBattleSubMenu/container/contentsOn/ringMenuFrame/ringMenu/item02/btnFullAuto/focused")
Tutorial.setMessage([[Selecting FULL will allow the units to use all of their skills in auto-battle mode.]],-350,250)Tutorial.show()
Tutorial.setFocusRect("HudMenu/UIBattleSubMenu/container/contentsOn/ringMenuFrame/ringMenu/item01/btnNormalAuto/focused")
Tutorial.setMessage([[Selecting NORMAL will prevent the use of skills with usage limits during auto-battle mode.]],-250,350)Tutorial.show()else
Tutorial.setMessage([[Press this button to enter auto-battle mode.]],-350,300,[[Press the right directional button to enter auto-battle mode.]])
Tutorial.showFocusButton("Main/UIBattleHudMenu/layoutContainer/btnAutoModeOff",nil,nil,nil,"Next Page","pad_ok")
Tutorial.setFocus("Main/UIBattleHudMenu/layoutContainer/btnAutoModeOff/frameAutoNomal/baseActive/frameOnOff/btnOff/btnAutoModeFull")
Tutorial.setMessage([[Selecting FULL will allow the units to use all of their skills in auto-battle mode.]],-350,300,[[Selecting FULL via the R2 button will allow your units to use all of their skills in auto-battle mode.]])Tutorial.show()
Tutorial.setFocus("Main/UIBattleHudMenu/layoutContainer/btnAutoModeOff/frameAutoNomal/baseActive/frameOnOff/btnOff/btnAutoModeSaving")
Tutorial.setMessage([[Selecting NORMAL will prevent the use of skills with usage limits during auto-battle mode.]],-350,300,[[Selecting NORMAL via the L2 button will prevent the use of skills with usage limits during auto-battle mode.]])Tutorial.show()end;Battle.addHideSubMenuFactor()
Tutorial.setMessage([[You can also individually set which skills are allowed to be used in auto-battle mode.]])Tutorial.show()
Tutorial.showBattleMemberFocusButton(0)Tutorial.waitSkillMenuOpen()
Tutorial.showFocusButton("Main/UIBattleSkillMenu/btnAuto")
if
Tutorial.isObjectActive("Main/UIBattleSkillMenu/scrollViewContainer/scrollview/Viewport/Content/skillContainerTemplate(Clone)/skillContaner/enableAutoConfig/checkMark")then
Tutorial.setFocusScrollView("Main/UIBattleSkillMenu/scrollViewContainer/scrollview/Viewport/Content/","skillContainerTemplate(Clone)/skillContaner/enableAutoConfig/checkMark",0)
Tutorial.setMessage([[Select and toggle the skills you want to use.]],300,200,[[Select and toggle the check box of the skills you want to use with the □ button.]])Tutorial.show()end
Tutorial.setFocus("Main/UIBattleSkillMenu/btnAuto")
Tutorial.setMessage([[After adjusting each member's settings, tap here again to return to normal and proceed to fight.]],-350,300,[[After adjusting each squad member's settings, press the △ button again to return to normal and proceed to fight.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(UgXzI_C)Battle.enableMiniCutIn()end
while true do Battle.waitPreResult()
Sound.playBattleBGM("SB0010")Battle.waitPostResult()
if Field.getArenaBattleState()==
ArenaBattleState.Playing then Battle.waitDestroyEnd()
Sound.playBattleBGM("SB0004")Battle.waitLoadEnd()else break end end end end;Adv.show(LB0A,0)Transition.finish(nil,0.2)
Transition.wait()Sound.playBattleBGM("SB0004")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.8,0)
Adv.playCutIn("RKayamori","Default","Superiority",[[Okay, let's rock!!!]],"VC_ActivityAtArena_00026_RKayamori",1,0,nil)Transition.setArenaTransition()
Transition.start()Wait(1.0)Adv.hide(LB0A)
local zVPRGDnG=ArenaBattle(uYz2ryy4,function()
ArenaBattleEndCallBack(LB0A)end,dl,sKPjQkdn)Sound.stopBattleBGMLayer(1,1)if zVPRGDnG=="Lose"then
Sound.returnFieldBGM()end;Transition.start(0.2)
Layout.show()Adv.hide(LB0A)Transition.finish()end end
ArenaBattleEndCallBack=function(MLFLplLe)Layout.createStage(MLFLplLe)
Transition.finish()Layout.show()end
showBgDependsOnTime=function(jwq,kw3ei0a)local EspneS5=GetTimeFrame()
if EspneS5 ==TimeFrame.Noon then
jwq=Adv.loadBGAsync("Background/Arena/Arena_Default")
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif EspneS5 ==TimeFrame.Evening then
jwq=Adv.loadBGAsync("Background/Arena/Arena_Default")
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Battle")elseif EspneS5 ==TimeFrame.Night then
jwq=Adv.loadBGAsync("Background/Arena/Arena_Default")
kw3ei0a=Adv.loadBGAsync("Background/Arena/Arena_Battle")end;Adv.show(jwq,0)end
ArenaExitConversation=function(LZeg0,OJZ)Transition.start()
Layout.createStageZoomOut(LZeg0,Position.BG_CENTER)Layout.show({OJZ,"000202"})
Transition.finish()
Adv.talkWithFacial(nil,nil,OJZ,[[Thank you all for your hard work.]],"VC_ActivityAtArena_00012_v003_NNanase")Transition.start()Layout.show()end
ArenaExit=function()
if GetFlag("IsHomeToArena")==1 then ReturnTerminal()else
Field.setFieldEventState("FromArena")Exit_FieldAndChange("MainStreet","ArenaPoint")end end