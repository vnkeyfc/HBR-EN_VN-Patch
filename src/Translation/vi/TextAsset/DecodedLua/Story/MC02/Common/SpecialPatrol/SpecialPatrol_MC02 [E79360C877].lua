local rDzL7SVO="MC02.SpecialPatrol."..WorldLabel()
local BW0WFP=Domain.getDivingChapter()local X8=Domain.getDivingDay()
local JQT=


GetFlag("有明エリア1のMAP開放率100%_2章Day11")+GetFlag("有明エリア1のMAP開放率100%_2章Day12")+GetFlag("有明エリア1のMAP開放率100%_2章Day13")+GetFlag("有明エリア1のMAP開放率100%_2章Day14")
function preload()
ExEventScene("MC02_SpecialPatrol01","Area01","Assets/Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02_01_Area01.unity")
ExEventScene("MC02_SpecialPatrol01","Area03","Assets/Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02_01_Area03.unity")
ExEventScene("MC02_SpecialPatrol02","Area01","Assets/Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02_02_Area01.unity")
ExEventScene("MC02_SpecialPatrol02","Area02","Assets/Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02_02_Area02.unity")end
function init()if IsPlayingStoryHardMode()then ClearWorldEventStep(rDzL7SVO)
Adv.fadeOut(0)end
Expedition.useExpeditionCost()refresh()end
function update()local AtYtR=Expedition.progressRate()local ND2BCh3=(BW0WFP=="MC02")and
(
X8 ==11 or X8 ==12 or X8 ==13 or X8 ==14)
if

IsUnlockedPlayer()and ND2BCh3 and AtYtR==100 and JQT==0 and
GetLocalFlag("有明エリアのMAP解放率100%")==0 then
SetLocalFlag("有明エリアのMAP解放率100%",1)StartEvent(NotifyMapFullOpen)end end
function refresh()Sound.playENV("EN_Wind_Breeze_Loop")
Field.setEncountRange(50,90)
if not IsPlayingStoryHardMode()then
Field.setEncountLabel("RandomEncount.MC02ExpSpecialPatrol01")else
Field.setEncountLabel("RandomEncount.Hard_MC02ExpSpecialPatrol01")end;if BW0WFP=="MC02"and X8 ==19 then
Field.setCutInGroupSetting("MC02_SpecialPatrol_2",35)else
Field.setCutInGroupSetting("MC02_SpecialPatrol_1",35)end
local IODBg=FieldLabel()local YRDu=AreaName()
WorldEndButtonEvent(confirmFinishExpeditionMC02SpecialPatrol,true)
if BW0WFP=="MC02"and X8 >=11 and X8 <=13 then
Field.setSymbolEncountFunction(function()
Battle.waitPostResult()
if
GetFlag("哨戒任務シンボル後チュートリアルを既読")==0 then
SetFlag("哨戒任務シンボル後チュートリアルを既読",1)end end)end
if
GetFlag("哨戒任務シンボル後チュートリアルを既読")==1 then StartEvent(TutorialSpecialPatrol)end
if not(BW0WFP=="MC02"and X8 ==19)then
Expedition.lockField("MC02_SpecialPatrol02")if IODBg=="MC02_SpecialPatrol01"and YRDu=="Area03"then
TouchEvent("GatePoint_2",Block)end end;local CWRiP=GetWorldEventStep(rDzL7SVO)
if CWRiP==0 then
Sound.playBGM("SB0008")
if IsPlayingStoryHardMode()then NextWorldEventStep(rDzL7SVO)
StartEvent(BattleRotaryMole2)else StartEvent_NextWorldEventStep(rDzL7SVO,StartPatrol)end elseif CWRiP==1 then Sound.playBGM("SB0008")if IsPlayingStoryHardMode()then
StartEvent(BattleRotaryMole2)return end
if IODBg=="MC02_SpecialPatrol01"then
Expedition.closePlacement("TargetPoint.MC02_SpecialPatrol01_Placement.Area03.00")
Expedition.closePlacement("TargetPoint.MC02_SpecialPatrol01_Placement.Area03.01")
Expedition.closePlacement("TargetPoint.MC02_SpecialPatrol02_Placement.Area02.01")end
if
IODBg=="MC02_SpecialPatrol02"and YRDu=="Area01"and
GetLocalFlag("あたしらが来るのは初めてだな")==0 then
SetLocalFlag("あたしらが来るのは初めてだな",1)StartEvent(Start2F)end;local LB0A=(BW0WFP=="MC02"and X8 ==15)if LB0A and IODBg==
"MC02_SpecialPatrol01"then
Expedition.openPlacement("TargetPoint.MC02_SpecialPatrol01_Placement.Area03.00")end
if
LB0A and IODBg==
"MC02_SpecialPatrol01"and YRDu=="Area03"then ReachEvent("BlockerRotaryMole",BattleRotaryMole)end;local dl=(BW0WFP=="MC02"and X8 ==19)
if dl and IODBg==
"MC02_SpecialPatrol01"and
GetLocalFlag("2層に来た")==0 then
Expedition.openPlacement("TargetPoint.MC02_SpecialPatrol01_Placement.Area03.01")elseif dl and IODBg=="MC02_SpecialPatrol02"then
SetLocalFlag("2層に来た",1)
Expedition.closePlacement("TargetPoint.MC02_SpecialPatrol01_Placement.Area03.01")
Expedition.openPlacement("TargetPoint.MC02_SpecialPatrol02_Placement.Area02.01")elseif dl and GetLocalFlag("2層に来た")==1 then
Expedition.openPlacement("TargetPoint.MC02_SpecialPatrol02_Placement.Area02.01")end;if
dl and IODBg=="MC02_SpecialPatrol02"and YRDu=="Area02"then
ReachEvent("BlockerRotaryMoleLast",BattleRotaryMole2)end elseif CWRiP==2 then
StartEvent(function()
Adv.shield("CharacterFade")Transition.finish()if not IsPlayingStoryHardMode()then
Expedition.showResult(0)end;Expedition.trueEnd()end)end end
function StartPatrol()local sKPjQkdn=Adv.characterAsync("RKayamori")
local HHH9IlJp=Adv.characterAsync("YIzumi")local uYz2ryy4=Adv.characterAsync("MAikawa")
Adv.waitAsyncInstanceAll()
UI.showLocationTitle("Special Patrol Mission","  ")
if X8 ==11 then Field.moveBy("Player",Vec(2,0,4),4)Wait(1)
Transition.start()Field.stopTaskKey("Player")
EmptyEvent("RKayamori")EmptyEvent("YIzumi")EmptyEvent("MAikawa")
Field.setActive("Player",false)
Field.setCameraCompositionEx(Vec(-1.000,1.200,-1.050),Vec(0.000,9.000,0.000),25.00)Wait(2)
Field.showAdvHudWrapper(function()Transition.finish()
Field.changeAnimation("RKayamori","FieldIdleAction")Wait(2)
Field.setCameraCompositionExWait(Vec(-1.000,1.200,-1.050),Vec(0.000,9.000,0.000),20.00,0.8)Layout.createStage()
Layout.show({sKPjQkdn,"1102"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[You can see the ocean from here!]],"VC_MC02_00201_v001_RKayamori")Layout.show({uYz2ryy4,"0102"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Look at that view!]],"VC_MC02_00202_v001_MAikawa")Layout.show()local zVPRGDnG=Vec(-1.6,0,2.2)
local IKxw=Field.computeMoveTime("YIzumi",zVPRGDnG,1)Field.moveTo("YIzumi",zVPRGDnG,IKxw)Wait(1)
Field.stopCameraComposition()
Field.setCameraCompositionEx(Vec(-1.000,1.200,-1.050),Vec(0.000,0.000,0.000),25.00,1.2)Field.waitTaskKey("YIzumi")
Field.turnToTarget("MAikawa","YIzumi",0.3)Wait(0.1)
Field.turnToTargetWait("RKayamori","YIzumi",0.3)Layout.show({HHH9IlJp,"0802"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[You two need to calm down a bit. This area is full of collapsed buildings, so there are a lot of blind spots. Be wary of ambushes.]],"VC_MC02_00203_v001_YIzumi")Layout.show({sKPjQkdn,"070201"})
Adv.talkWithFacial("070201",nil,sKPjQkdn,[[Aside from the Medusa, the Cancers around here should just be regular ones, so let's sweep the area quick and speedy-like.]],"VC_MC02_00204_v001_RKayamori")end)elseif X8 ==15 then Transition.start()EmptyEvent("YIzumi_2")
Field.turnToTarget("Player","YIzumi_2",0)
Field.setCameraCompositionEx(Vec(-2.500,1.600,-7.500),Vec(6.000,8.000,0.000),24.00)Wait(2)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1)
Layout.createStage()
Layout.show({sKPjQkdn,"000302"},{HHH9IlJp,"0001"})
Adv.talkWithFacial("000302",nil,sKPjQkdn,[[Did we miss it during the patrols?]],"VC_MC02_00205_v001_RKayamori")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[According to the docs from the commander, the thing seems to have been hiding out in an area beyond the patrol zone.]],"VC_MC02_00206_v001_YIzumi")
Adv.talkWithFacial("0000",nil,sKPjQkdn,[[I thought Cancers just attack on the spot, but I guess certain types are more cautious?]],"VC_MC02_00207_v001_RKayamori")
Adv.talkWithFacial("000103",nil,HHH9IlJp,[[We don't have a whole lot of info on it, so don't go in with your guard down.]],"VC_MC02_00208_v001_YIzumi")
Adv.talkWithFacial("070301",nil,sKPjQkdn,[[Got it.]],"VC_MC02_00209_v001_RKayamori")end)elseif X8 ==19 then Transition.start()EmptyEvent("YIzumi_2")
Field.turnToTarget("Player","YIzumi_2",0)
Field.setCameraCompositionEx(Vec(-2.500,1.600,-7.500),Vec(6.000,8.000,0.000),24.00)Wait(2)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1)
Layout.createStage()
Layout.show({sKPjQkdn,"0703"},{HHH9IlJp,"0001"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Yukkie, can you handle navigations and lead us to the Medusa?]],"VC_Z_900600057_RKayamori")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Sure, leave it to me.]],"VC_Z_900600038_YIzumi")end)elseif JQT==0 then Transition.start()EmptyEvent("YIzumi_2")
Field.turnToTarget("Player","YIzumi_2",0)
Field.setCameraCompositionEx(Vec(-2.500,1.600,-7.500),Vec(6.000,8.000,0.000),24.00)Wait(2)
Field.showAdvHudWrapper(function()Transition.finish()Wait(1)
Layout.createStage()
Layout.show({sKPjQkdn,"0003"},{HHH9IlJp,"0001"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[We're going to continue patrolling from where we left off. Yukkie, can you guide us to the unexplored sections?]],"VC_MC02_00210_v001_RKayamori")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Sure, leave it to me.]],"VC_MC02_00211_v001_YIzumi")end)else
UI.showMessageDialog([[The map's completion level is already 100%.\nIf you run low on Energy, consider returning to base.]])return end;Transition.start()Layout.show()
Field.setCameraCompositionEnabled(false)Field.setActive("Player",true)
Field.setActive("RKayamori",false)Field.setActive("YIzumi",false)
Field.setActive("YIzumi_2",false)Field.setActive("MAikawa",false)
Field.resetPosition("GatePoint_1")Field.turnTo("Player",90,0)Wait(2)
Transition.finish()Wait(1)if X8 >=11 and X8 <=14 and JQT==0 then
UI.showMessageDialog([[Aim for 100% map completion by exploring.]])end end
function Start2F()Transition.start()
local w0=Adv.characterAsync("RKayamori")local UgXzI_C=Adv.characterAsync("YIzumi")
EmptyEvent("YIzumi")Field.turnToTarget("Player","YIzumi",0)
Field.setCameraCompositionEx(Vec(
-2.500,1.600,-7.500),Vec(6.000,10.000,0.000),30.00)Wait(2)
Field.showAdvHudWrapper(function()Transition.finish()
Field.changeAnimation("Player","FieldStand")Wait(1)Layout.createStage()
Layout.show({w0,"0003"},{UgXzI_C,"0001"})
Adv.talkWithFacial(nil,nil,w0,[[Is it here?]],"VC_MC02_00199_v001_RKayamori")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[This area was outside of our previous patrols, so it'll be our first time coming here.]],"VC_MC02_00200_v001_YIzumi")Transition.start()Layout.hide()end)Field.setCameraCompositionEnabled(false)
Field.setActive("YIzumi",false)Field.turnTo("Player",90,0)Wait(2)
Transition.finish()end
function Block()Transition.start()EmptyEvent("GatePoint_2")
EmptyEvent("YIzumi")
Field.setCameraCompositionEx(Vec(57.300,2.000,-10.900),Vec(5.000,25.000,0.000),12.00)Wait(2)Transition.finish()
local MLFLplLe=Adv.characterAsync("YIzumi")
Field.showAdvHudWrapper(function()Field.moveByWait("YIzumi",Vec(2),2)
Field.turnToTarget("Player","YIzumi",0.3)Wait(0.5)Layout.show(MLFLplLe)
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Hey, that's outside of our patrol area.]],"VC_MC02_00212_v001_YIzumi")end)Transition.start()Layout.hide()
Field.turnTo("Player",-90,0)Field.setActive("YIzumi",false)
Field.setCameraCompositionEnabled(false)Field.setPosition("YIzumi",Vec(58.5,0,-2.5))
Field.turnTo("YIzumi",90,0)Field.cancelAutoMove()Wait(2)
Transition.finish()Field.refreshScripts()end
function confirmFinishExpeditionMC02SpecialPatrol()PlayerLock()Wait(0.5)
local jwq=


GetFlag("有明エリア1のMAP開放率100%_2章Day11")+GetFlag("有明エリア1のMAP開放率100%_2章Day12")+GetFlag("有明エリア1のMAP開放率100%_2章Day13")+GetFlag("有明エリア1のMAP開放率100%_2章Day14")if X8 ==15 or X8 ==19 then
UI.showMessageDialog([[Cannot return to base at this time.]])return end
local kw3ei0a=UI.showMessageDialog([[Return to base?]],1)
if kw3ei0a==Dialog.CANCEL then return elseif kw3ei0a==Dialog.OK and jwq==1 then
Expedition.showResult()Expedition.goodEnd()end;Transition.start()
local EspneS5=Adv.characterAsync("RKayamori")local LZeg0=Adv.characterAsync("YIzumi")
Field.createFollower("YIzumi")Field.turnToTarget("Player","Follower/YIzumi",0)
Field.turnToTarget("Follower/YIzumi","Player",0)Adv.waitAsyncInstanceAll()
if X8 ==11 then
Field.startTalk("Follower/YIzumi",FaceToFaceMode.Face,function()
Wait(1)Transition.finish()Wait(1)
Layout.show({LZeg0,"0402"})
Adv.talkWithFacial(nil,nil,LZeg0,[[I think we should head back now. It's getting pretty late.]],"VC_MC02_00213_v001_YIzumi")Layout.show({EspneS5,"000202"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Yeah, that's enough for one day.]],"VC_MC02_00214_v001_RKayamori")end)Expedition.showResult()Expedition.goodEnd()elseif
X8 ==14 then local OJZ
Field.startTalk("Follower/YIzumi",FaceToFaceMode.Face,function()Wait(1)
Transition.finish()Wait(1)Layout.show({EspneS5,"0002"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Let's head back to base.]],"VC_MC02_00215_v001_RKayamori")Layout.show({LZeg0,"0802"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Today's the last day, though... You seriously want to head back?]],"VC_MC02_00216_v001_YIzumi")Layout.show({EspneS5,"0002"})
OJZ=Adv.question("",[[Keep patrolling|Return to base]])
if OJZ==0 then
Adv.talkWithFacial("000002",nil,EspneS5,[[Never mind. Let's just keep patrolling.]],"VC_MC02_00217_v001_RKayamori")Layout.show({LZeg0,"0002"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Fair enough.]],"VC_MC02_00218_v001_YIzumi")Transition.start()else
Layout.show({EspneS5,"0100"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Yep! I'm pooped! Let's just go home!]],"VC_MC02_00219_v001_RKayamori")Layout.show({LZeg0,"0602"})
Adv.talkWithFacial(nil,nil,LZeg0,[[If that's what you decided, then sure... But I have a bad feeling about this.]],"VC_MC02_00220_v001_YIzumi")end end)if OJZ==1 then Expedition.showResult()
Expedition.badEnd()end else
Field.startTalk("Follower/YIzumi",FaceToFaceMode.Face,function()Wait(1)
Transition.finish()Wait(1)Layout.show({EspneS5,"0002"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Let's head back to base.]],"VC_MC02_00221_v001_RKayamori")Layout.show({LZeg0,"0002"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Roger. I'll update the map with the areas we've already patrolled.]],"VC_MC02_00222_v001_YIzumi")end)Expedition.showResult()Expedition.goodEnd()end;Field.deleteFollowerAll()Wait(2)
Transition.finish()PlayerUnLock()end
function NotifyMapFullOpen()Field.changeAnimation("Player","FieldIdle")
UI.showLineInfo([[Map of the Ariake Area has reached 100% completion.]],1,3)
if BW0WFP=="MC02"and X8 ==11 then
SetFlag("有明エリア1のMAP開放率100%_2章Day11",1)elseif BW0WFP=="MC02"and X8 ==12 then
SetFlag("有明エリア1のMAP開放率100%_2章Day12",1)elseif BW0WFP=="MC02"and X8 ==13 then
SetFlag("有明エリア1のMAP開放率100%_2章Day13",1)elseif BW0WFP=="MC02"and X8 ==14 then
SetFlag("有明エリア1のMAP開放率100%_2章Day14",1)end;Wait(1)local nmuj=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[All maps have been completed. Return to base when you want.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(nmuj)local bP=Adv.question([[Head back to base?]],[[Yes|No]])
if
bP==0 then Expedition.showResult()Exit_World()else
local b4IqQW=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You can return to base at any time via the mePad button.\n(Your progress will not be lost.)]],0,0,[[You can return to base at any time by opening the mePad menu via the Options button.\n(Your progress will not be lost.)]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(b4IqQW)end end
function BattleRotaryMole()
local iuGb=UI.showMessageDialog([[Continuing further will trigger combat.\nDo you wish to proceed?]],1)
if iuGb==Dialog.CANCEL then Transition.start()
Field.resetPosition("GatePoint_1")Field.cancelAutoMove()
Field.turnTo("Player",90,0)Wait(2)Transition.finish()else
Field.moveBy("Player",Vec(3),3)Wait(1)Transition.start(1)
Field.stopTaskKey("Player")local koZU=Adv.characterAsync("RKayamori")
local C=Adv.characterAsync("YIzumi")local nmJGp_=Adv.characterAsync("TTojo")
local h0v3PIV=Adv.characterAsync("KAsakura")local Uc=Adv.characterAsync("Karen")
local JSkUQL=Adv.characterAsync("MAikawa")local PTUZ2v=Adv.characterAsync("TKunimi")
local qlZeO3Pr=Adv.effect("Adventure/LineWork/LineWork",AdvLayer.Main)
Field.setCameraCompositionEx(Vec(21.600,1.200,-5.100),Vec(357.000,350.000,0.000),18.00)Wait(2)EmptyEvent("RKayamori_1")
EmptyEvent("YIzumi_1")EmptyEvent("TTojo_1")EmptyEvent("KAsakura_1")
EmptyEvent("MAikawa_1")EmptyEvent("TKunimi_1")EmptyEvent("RotaryMole")
Field.setActive("Player",false)Field.moveBy("YIzumi_1",Vec(5),5)Wait(0.1)
Field.moveBy("RKayamori_1",Vec(5),5)Wait(0.1)Field.moveBy("TTojo_1",Vec(5),5)
Field.moveBy("KAsakura_1",Vec(5),5)Wait(0.1)Field.moveBy("TKunimi_1",Vec(5),5)
Wait(0.1)Field.moveBy("MAikawa_1",Vec(5),5)
Field.setCameraCompositionEx(Vec(21.600,1.200,
-5.100),Vec(359.000,23.000,0.000),27.00,4.3)
Field.showAdvHudWrapper(function()Transition.finish()
Routine(function()Wait(4)
Field.setLookAtTarget("YIzumi_1","RotaryMole")end)Field.waitTaskKey("YIzumi_1")
Field.disableLookAt("YIzumi_1")Wait(0.1)
Field.turnToTargetWait("YIzumi_1","RotaryMole",0.1)Sound.playBGM("SB0038")
Routine(function()Wait(0.3)
local E8o={"RKayamori","TTojo","KAsakura","MAikawa","TKunimi"}
for TdqFo in pairs(E8o)do Field.stopTaskKey(E8o[TdqFo].."_1")Field.turnToTarget(
E8o[TdqFo].."_1","RotaryMole",0.1)
Field.changeAnimation(
E8o[TdqFo].."_1","FieldIdleTension")end end)
Field.setCameraCompositionExWait(Vec(21.600,1.200,-5.100),Vec(359.000,23.000,0.000),20.000,0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)
Routine(function()Adv.show(qlZeO3Pr)Wait(0.8)Adv.remove(qlZeO3Pr)end)
Adv.playCutIn("YIzumi","Default","Anger",[[There it is! We found it!]],"VC_MC02_00223_v001_YIzumi")Field.stopCameraComposition()
Transition.start(1)EmptyEvent("RKayamori_2")EmptyEvent("YIzumi_2")
EmptyEvent("TTojo_2")EmptyEvent("KAsakura_2")EmptyEvent("MAikawa_2")
EmptyEvent("TKunimi_2")EmptyEvent("RotaryMole_2")Layout.hide()
Adv.setPostEffectVignetteIntensity(0.4,0)
Field.setCameraCompositionEx(Vec(52.800,1.200,-2.000),Vec(356.000,5.000,0.000),17.00)Wait(2)Adv.setPostEffectVignetteIntensity(0,3)
Field.setCameraCompositionEx(Vec(52.800,1.200,
-2.000),Vec(356.000,5.000,0.000),20.00,3)Transition.finish(nil,3)
Field.waitTaskKey("CameraComposition")Wait(0.5)
Layout.show({PTUZ2v,"1803"},{JSkUQL,"0302"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[It's kind of a weird lookin' thing, ain't it?]],"VC_MC02_00224_v001_MAikawa")
Adv.talkWithFacial("1803",nil,PTUZ2v,[[I feel like there hasn't been a Cancer that wasn't weird looking!]],"VC_MC02_00225_v001_TKunimi")
Adv.talkWithFacial("0301",nil,JSkUQL,[[YO, Tama!]],"VC_MC02_00226_v001_MAikawa")
Adv.talkWithFacial("180301",nil,PTUZ2v,[[Y-Yes!!]],"VC_MC02_00227_v001_TKunimi")
Adv.talkWithFacial("0700",nil,JSkUQL,[[If there's extraterrestrials out there, I bet they'd look even weirder.]],"VC_MC02_00228_v001_MAikawa")Layout.show({C,"1302"})
Adv.talkWithFacial(nil,nil,C,[[That's exactly what a Cancer is, dum-dum. What did you think we're fighting?]],"VC_MC02_00229_v001_YIzumi")
Adv.talkWithFacial("040202",nil,C,[[Ruka, what's the plan?]],"VC_MC02_00230_v001_YIzumi")Layout.show({koZU,"0702"})
Adv.talkWithFacial(nil,nil,koZU,[[I want you in the center, with me and Megumin at the front. Tsukassie, I want you to wait until we strike, and then we'll go all in.]],"VC_MC02_00231_v001_RKayamori")
Adv.talkWithFacial(nil,nil,koZU,[[Cappy and Karerin, stay in the back for support, and keep an eye out on our surroundings.]],"VC_MC02_00232_v001_RKayamori")Layout.hide()
Adv.preset(PTUZ2v,-650,0,0.9,0,0,AdvLayer.CharacterUp)Adv.preset(JSkUQL,-350,0,0.8,0,0)
Adv.preset(C,0,0,0.9,0,0,AdvLayer.CharacterUp)Adv.preset(nmJGp_,350,0,0.8,0,0)
Adv.preset(h0v3PIV,650,0,0.9,0,0,AdvLayer.CharacterUp)
Adv.act(nmJGp_,"070203",AdvCharacterMouth.Mouth03,0)
Adv.act(h0v3PIV,"070201",AdvCharacterMouth.Mouth01,0)
Adv.act(JSkUQL,"030202",AdvCharacterMouth.Mouth02,0)
Adv.act(PTUZ2v,"070202",AdvCharacterMouth.Mouth01,0)
Adv.act(C,"040201",AdvCharacterMouth.Mouth01,0)Adv.show(h0v3PIV,0.3)Adv.show(nmJGp_,0.3)
Adv.show(JSkUQL,0.3)Adv.show(PTUZ2v,0.3)Adv.show(C,0.3)
local WiXG=Adv.bubbleAngerAsync(PTUZ2v,[[Roger!]],6,Vec(-
650,300),"VC_MC02_00237_v001_TKunimi")
local QgyWztK=Adv.bubbleAngerAsync(JSkUQL,[[You got it!]],6,Vec(-350,300),"VC_MC02_00236_v001_MAikawa")
local Oo6ecUO=Adv.bubbleAngerAsync(C,[[Roger.]],6,Vec(0,300),"VC_MC02_00235_v001_YIzumi")
local b6SL0yka=Adv.bubbleAngerAsync(nmJGp_,[[Understood!]],6,Vec(350,300),"VC_MC02_00234_v001_TTojo")
local hEk=Adv.bubbleAngerAsync(h0v3PIV,[[Yes!]],6,Vec(650,300),"VC_MC02_00233_v001_KAsakura")WaitTap()Adv.hide(h0v3PIV,0.3)Adv.hide(nmJGp_,0.3)
Adv.hide(JSkUQL,0.3)Adv.hide(PTUZ2v,0.3)Adv.hide(C,0.3)
Adv.hide(hEk,0.3)Adv.hide(b6SL0yka,0.3)Adv.hide(QgyWztK,0.3)
Adv.hide(WiXG,0.3)Adv.hide(Oo6ecUO,0.3)
Field.trailOut("RKayamori_2")Wait(0.1)Field.trailOut("YIzumi_2")Wait(0.1)
Field.trailOut("TTojo_2")Field.trailOut("MAikawa_2")Wait(0.1)
Field.trailOut("TKunimi_2")Field.trailOut("KAsakura_2")Wait(0.4)
Field.setCameraCompositionEx(Vec(52.800,1.200,
-2.000),Vec(353.000,5.000,0.000),12.00,0.3)Wait(0.2)Transition.setSymbolEncountTransition()
Transition.start()Field.remove("YIzumi")
Field.remove("BlockerRotaryMole")Field.remove("RotaryMole")
Field.remove("RotaryMole_2")Field.remove("RKayamori_1")
Field.remove("YIzumi_1")Field.remove("TTojo_1")
Field.remove("KAsakura_1")Field.remove("MAikawa_1")
Field.remove("TKunimi_1")Field.remove("RKayamori_2")
Field.remove("YIzumi_2")Field.remove("TTojo_2")
Field.remove("KAsakura_2")Field.remove("MAikawa_2")
Field.remove("TKunimi_2")PurgeCache()end)Sound.stopBGM()
Field.setCameraCompositionEnabled(false)
local fG9zS=Field.BattleWithoutPartySelect(rDzL7SVO,"Battle.MC02ExpSpecialPatrol01_BOSS01",function()Battle.waitLoadEnd()
Sound.playBattleBGM("SV0002")Battle.waitStartEffectEnd()Battle.hideHud()
Battle.startEvent()
Battle.showAdvHudWrapper(function()Layout.show(koZU)
Adv.talkWithFacial(nil,nil,koZU,[[It might be big, but it's no match against us.]],"VC_MC02_00238_v001_RKayamori")
Layout.show({Uc,"090203"},{JSkUQL,"070201"},{C,"0402"})
Adv.talkWithFacial(nil,nil,Uc,[[HAHA, YESSS!!! I'll shred it into RIBBONS!]],"VC_MC02_00239_v001_Karen")
Adv.talkWithFacial(nil,nil,JSkUQL,[[And I'll use my psychic powers to dice it into CUBES!]],"VC_MC02_00240_v001_MAikawa")
Adv.talkWithFacial("1301",nil,C,[[Like hell you can do that.]],"VC_MC02_00241_v001_YIzumi")
Adv.act(PTUZ2v,"070202",AdvCharacterMouth.Mouth01)Layout.show({PTUZ2v})
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Let's go get 'em!]],"VC_MC02_00242_v001_TKunimi")Layout.hide()
Adv.playCutIn("RKayamori","Default","Encount",[[Let's go!]],"VC_MC02_00243_v001_RKayamori")end)Battle.showHud()Battle.resumeEvent()
while true do
Battle.waitPreCommandSelect()
if
Battle.Conel("CountBC(IsPlayer()==0 && IsBroken()) > 0")==true then Battle.disableMiniCutIn()
Battle.waitCommandSelect()Battle.startEvent()Battle.hideHud()
Battle.forceWin()break end end;Battle.playSkillBoardAnyText("Escaped")
Battle.startAndWaitTimeline("Assets/Contents/Enemy/RotaryMole/Timeline/RotaryMoleBattleEscape01.prefab",BattleTeam.Enemy,BattleTargetType.Self)Sound.stopBattleBGM()
Field.showAdvHudWrapper(function()
Layout.show({JSkUQL,"180201"},{PTUZ2v,"180201"})Wait(1.5)
Adv.talkWithFacial("150201",nil,JSkUQL,[[The sucker got away...]],"VC_MC02_00244_v001_MAikawa")
Adv.talkWithFacial("220201",nil,PTUZ2v,[[It was a lot faster than I expected...]],"VC_MC02_00245_v001_TKunimi")Adv.act(C,"0802",AdvCharacterMouth.Close,0)Layout.show({koZU,"0702"},{C,
nil})
Adv.talkWithFacial(nil,nil,koZU,[[There wasn't even enough time to really attack it.]],"VC_MC02_00246_v001_RKayamori")
Adv.talkWithFacial("0401",nil,C,[[Yeah. We managed to break its exoskeleton, but that's it.]],"VC_MC02_00247_v001_YIzumi")
Layout.show({JSkUQL,"0302"},{PTUZ2v,"0801"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[Shouldn't we chase it down the hole?]],"VC_MC02_00248_v001_MAikawa")Layout.show(koZU,{C,"0402"})
Adv.talkWithFacial("0402",nil,C,[[No, don't. There might not be any oxygen down there, and if the hole collapses on us, we'd be buried alive in an instant.]],"VC_MC02_00249_v001_YIzumi")Layout.show(JSkUQL,{PTUZ2v,"180202"})
Adv.talkWithFacial("180202",
nil,PTUZ2v,[[I don't like the sound of that!]],"VC_MC02_00250_v001_TKunimi")Layout.show({koZU,"1502"},C)
Adv.talkWithFacial("1502",nil,koZU,[[Damn. Guess we have to withdraw for now...]],"VC_MC02_00251_v001_RKayamori")
Adv.talkWithFacial("0401",nil,C,[[*sigh* What an awful mess we're in.]],"VC_MC02_00252_v001_YIzumi")Layout.hide()end)Battle.resumeEvent()
Sound.playBattleBGM("SB0010_ALT")end)Field.refreshScripts()end end
function BattleRotaryMole2()
if IsPlayingStoryHardMode()then Transition.start()
Adv.fadeIn(0,true)Field.discardAllExpeditionEnchant()else
local Herp=UI.showMessageDialog([[Continuing further will trigger combat.\nDo you wish to proceed?]],1)
if Herp==Dialog.CANCEL then Transition.start()
Field.resetPosition("GatePoint_1")Field.cancelAutoMove()
Field.turnTo("Player",90,0)Wait(2)Transition.finish()return end;Field.moveBy("Player",Vec(3),3)Wait(1)
Transition.start()end;Sound.stopBGM()local ykLF0=Adv.characterAsync("EAoi")
local cilhu=Adv.characterAsync("RKayamori")local eVfN=Adv.characterAsync("MAikawa")
local LBIJ=Adv.characterAsync("TKunimi")
local CSSp=Adv.effect("Adventure/LineWork/LineWork","ForegroundEffect")EmptyEvent("RotaryMole")
Adv.setPostEffectVignetteIntensity(0.4,0)
Field.setCameraCompositionEx(Vec(47.000,1.500,-5.600),Vec(357.000,331.000,0.000),27.00)Wait(1)
Field.setCameraCompositionEx(Vec(47.000,1.500,-5.600),Vec(357.000,343.700,0.000),27.00,3.5)
Field.showAdvHudWrapper(function()Transition.finish(nil,1)
Field.waitTaskKey("CameraComposition")
Field.setCameraCompositionEx(Vec(47.000,1.500,-5.600),Vec(357.000,357.000,0.000),12.00,0.1)
Field.startCameraImpact(0.20,0.20,0.20,0.720,0.500)
Routine(function()Adv.show(CSSp)Wait(0.8)Adv.remove(CSSp)end)
Adv.playCutIn("EAoi","Default","Anger",[[There it is... That's the Medusa!]],"VC_MC02_00253_v001_EAoi",nil,-400)Transition.start()
Field.stopCameraComposition()Sound.playBGM("SB0038")EmptyEvent("RKayamori")
EmptyEvent("YIzumi")EmptyEvent("TTojo")EmptyEvent("KAsakura")
EmptyEvent("MAikawa")EmptyEvent("TKunimi")EmptyEvent("EAoi")
Field.setCameraCompositionEx(Vec(46.600,1.500,
-5.000),Vec(5.000,0.000,0.000),24.00)Wait(1)
Field.setCameraCompositionEx(Vec(46.600,1.500,-5.000),Vec(5.000,0.000,0.000),33.00,3)Adv.setPostEffectVignetteIntensity(0,3)
Transition.finish(nil,3)Field.waitCameraComposition()Wait(1)
Layout.createStage()
Layout.show({LBIJ,"070202"},{eVfN,"0302"})
Adv.talkWithFacial(nil,nil,LBIJ,[[At last, we meet again!]],"VC_MC02_00254_v001_TKunimi")
Adv.talkWithFacial("030202",nil,eVfN,[[Yeah! Let's mince this thing!]],"VC_MC02_00255_v001_MAikawa")
Layout.show({cilhu,"0702"},{ykLF0,"0702"})
Adv.talkWithFacial("0702",nil,cilhu,[[Aoi, can you take the command?]],"VC_MC02_00256_v001_RKayamori",nil,nil,AdvCharacterMouth.Mouth01)
Adv.playCutIn("EAoi","Default","Chase",[[Of course\nEveryone, please lend me your strength!]],"VC_MC02_00257_v001_EAoi",nil,400)Layout.hide()Field.trailOut("EAoi")
Field.trailOut("RKayamori")Wait(0.1)Field.trailOut("MAikawa")
Field.trailOut("TKunimi")Wait(0.1)Field.trailOut("TTojo")
Field.trailOut("KAsakura")Wait(0.1)Field.trailOut("YIzumi")Wait(0.3)
Field.setCameraCompositionEx(Vec(46.600,1.500,
-5.000),Vec(350.000,0.000,0.000),24.00,0.3)Wait(0.3)Transition.setSymbolEncountTransition()
Transition.start()end)Sound.stopBGM()Field.remove("EAoi")
Field.remove("RKayamori")Field.remove("MAikawa")Field.remove("TKunimi")
Field.remove("TTojo")Field.remove("KAsakura")Field.remove("YIzumi")
Adv.purgeAsyncInstanceAll(false)local CBZIwYHI=Field.unloadBaseScene()PurgeCache()
Field.remove("RotaryMole")Wait(1)Field.setCameraCompositionEnabled(false)
local x1vCS0=Field.BattleWithoutPartySelect(rDzL7SVO,"Battle.MC02ExpSpecialPatrol01_BOSS02_01",function()
local TNczSeT=Adv.effect("Adventure/Slashing/Slashing","ForegroundEffect")Battle.waitLoadEnd()
Sound.playBattleBGM("SV0007")
while true do Battle.waitPreCommandSelect()
if
Battle.Conel("CountBC(IsPlayer()==0 && IsBroken()) > 0")==true then Battle.disableMiniCutIn()
Battle.waitCommandSelect()Battle.startEvent()Battle.hideHud()
Battle.forceWin()
Battle.prepareTimeline("Assets/Contents/Timeline/CutScene/MC02/CS10/MC02_RotaryMole_CS10.prefab")break end end;Battle.purgeSubPlayers()
Battle.showAdvHudWrapper(function()
Adv.playCutIn("RKayamori","Default","Superiority",[[How's that?!]],"VC_MC02_00258_v001_RKayamori")local XDYs=Adv.fadeOutWithShield(0)
cilhu=Adv.characterAsync("RKayamori")ykLF0=Adv.characterAsync("EAoi")
Sound.play("AS_Slashing_Clincher")Adv.show(TNczSeT,0.3)Wait(2)Adv.hide(TNczSeT,0)
Adv.waitAsyncInstanceAll()
Layout.show({cilhu,"0702"},{ykLF0,"290203"})Adv.hide(XDYs,0.5)
Adv.talkWithFacial(nil,nil,cilhu,[[The outer shell's destroyed! Aoi, you know the drill!]],"VC_MC02_00259_v001_RKayamori")
Adv.playCutIn("EAoi","Default","Chase",[[Got it! Please leave it to me!]],"VC_MC02_00260_v001_EAoi",nil,400)Layout.hide()Adv.remove(TNczSeT)end)Sound.stopBattleBGM(3)
Routine(function()
Wait(5.5)Adv.talkNoTap("Aoi Erika",[[Đừng hòng chạy thoát!]],nil,1.7,nil,nil,nil,true)
Field.waitTimeline("bgm")Wait(1)Sound.playBattleBGM("SI0002")end)
Battle.startAndWaitTimelineName("MC02_RotaryMole_CS10")Battle.enableMiniCutIn()Battle.resumeEvent()
Battle.waitStartEffectEnd()Battle.hideHud()Battle.startEvent()
Battle.destroyTimeline("MC02_RotaryMole_CS10")local Sb=Adv.characterAsync("YIzumi")
local LBIJ=Adv.characterAsync("TKunimi")local _OwI=Adv.characterAsync("KAsakura")
local eVfN=Adv.characterAsync("MAikawa")local GBDhi2D=Adv.characterAsync("TTojo")
Battle.showAdvHudWrapper(function()
Layout.show({Sb,"2002"},{LBIJ,"080202"})
Adv.talkWithFacial(nil,nil,Sb,[[It's changing forms! We haven't seen this before. Be careful!]],"VC_MC02_00261_v001_YIzumi")
Adv.talkWithFacial("070201",nil,LBIJ,[[But thankfully, it's not running away this time!]],"VC_MC02_00262_v001_TKunimi")Layout.show({cilhu,"0702"})
Adv.talkWithFacial(nil,nil,cilhu,[[I think the Cancer understands that it's cornered... And that's all thanks to Aoi's help.]],"VC_MC02_00263_v001_RKayamori")Layout.show({Sb,"0402"})
Adv.talkWithFacial("0402",nil,Sb,[[God, you're stupidly cool today...]],"VC_MC02_00264_v001_YIzumi")Layout.show({cilhu,"0702"})
Adv.talkWithFacial(nil,nil,cilhu,[[Full-frontal assault is our kind of game. Come on, we're going all out!]],"VC_MC02_00265_v001_RKayamori")Adv.purgeAsyncInstance(cilhu)
Layout.show({Sb,"0402"},{_OwI,"0702"},{GBDhi2D,"0702"})
local JyOmN=Adv.bubbleAngerAsync(Sb,[[Roger.]],6,Vec(-560,350),"VC_MC02_00266_v001_YIzumi")
local Gu2sqpyD=Adv.bubbleAngerAsync(_OwI,[[Yes!]],6,Vec(0,350),"VC_MC02_00267_v001_KAsakura")
local N_Pk=Adv.bubbleAngerAsync(GBDhi2D,[[Right!]],6,Vec(560,350),"VC_MC02_00268_v001_TTojo")Adv.playLipSync(Sb,0.5)Adv.playLipSync(_OwI,0.5)
Adv.playLipSync(GBDhi2D,0.5)WaitTap()Adv.hide(JyOmN,0.3)Adv.hide(Gu2sqpyD,0.3)
Adv.hide(N_Pk,0.3)Adv.purgeAsyncInstance(Sb)
Adv.purgeAsyncInstance(_OwI)Adv.purgeAsyncInstance(GBDhi2D)
Layout.show({eVfN,"0302"},{LBIJ,"070202"},{ykLF0,"0702"})
local G_v887o0=Adv.bubbleAngerAsync(eVfN,[[Ya got it!]],6,Vec(-560,350),"VC_MC02_00269_v001_MAikawa")
local oiM7BRAl=Adv.bubbleAngerAsync(LBIJ,[[Aye aye!]],6,Vec(0,350),"VC_MC02_00270_v001_TKunimi")
local s4=Adv.bubbleAngerAsync(ykLF0,[[Understood!]],6,Vec(560,350),"VC_MC02_00271_v001_EAoi")Adv.playLipSync(eVfN,0.7)Adv.playLipSync(LBIJ,0.8)
Adv.playLipSync(ykLF0,1)WaitTap()Adv.hide(G_v887o0,0.3)
Adv.hide(oiM7BRAl,0.3)Adv.hide(s4,0.3)Layout.hide()end)Wait(0.3)Adv.purgeAsyncInstanceAll()PurgeCache()
Wait(0.2)Battle.showHud()Battle.resumeEvent()
Battle.waitPreResult()Sound.playBattleBGM("SB0010_ALT")end)Field.restoreBaseScene(CBZIwYHI)
Field.refreshScripts()end
function TutorialSpecialPatrol()
Field.changeAnimation("Player","FieldIdle")Field.setForceActiveHud(true)
local EF=Tutorial.start()Tutorial.showMask()Wait(1)
Tutorial.waitUIOpen("UIExpeditionMain")
Tutorial.setFocusRect("HudMenu/UIExpeditionMain/expeditionGauge/tutorialFocusArea")
Tutorial.setMessage([[When exploring the dungeon, your squad's Energy is consumed based on battle turns.\nWhen your Energy reaches zero, your HP will begin to deplete instead.\nYou can reattempt these courses later, so feel free to evacuate if it gets too tough.]])Tutorial.show()
Tutorial.setFocusRect("HudMenu/UIExpeditionMain/btnMenu/button")
Tutorial.setMessage([[You can return to base at any time via the mePad button.\n(Your progress will not be lost.)]],0,0,[[You can return to base at any time by opening the mePad menu via the Options button.\n(Your progress will not be lost.)]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(EF)Field.setForceActiveHud(false)
SetFlag("哨戒任務シンボル後チュートリアルを既読",2)Tutorial.flagSave()end