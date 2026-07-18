local bClTIa="CaveB1."..WorldLabel()
local rDzL7SVO=Domain.getDivingChapter()local BW0WFP=Domain.getDivingDay()
function preload()
ExEventScene("MC02_Phase01","Area11","Assets/Lua/Story/MC02/Common/Expedition/Expedition_MC02_Phase01_Area11.unity")
ExEventScene("MC02_Phase01","Area08","Assets/Lua/Story/MC02/Common/Expedition/Expedition_MC02_Phase01_Area08.unity")
ExEventScene("MC02_Phase01","Area06","Assets/Lua/Story/MC02/Common/Expedition/Expedition_MC02_Phase01_Area06.unity")
ExEventScene("MC02_Phase01","Area02","Assets/Lua/Story/MC02/Common/Expedition/Expedition_MC02_Phase01_Area02.unity")end
function init()Sound.playBGM("SB0008",1,1)
Sound.playENV("EN_Arena_Startup_Loop")if BW0WFP==3 then
Field.setCutInGroupSetting("MC02_exercise_day3",35,true)else
Field.setCutInGroupSetting("MC02_exercise",35,true)end
refresh()end
function refresh()Expedition.passAllRoute()
Expedition.unlockField("MC02_Phase01")Expedition.lockField("MC02_Phase02")
local X8=AreaName()local JQT=GetWorldEventStep(bClTIa)
Field.setEncountRange(50,80)
Field.setEncountLabel("RandomEncount.ForestExercise01_Map01")
if JQT==0 then
if X8 =="Area11"then
if BW0WFP==4 then
Field.setCameraCompositionEx(Vec(-1.600,1.400,-6.000),Vec(5.000,15.000,0.000),35.00)EmptyEvent("YIzumi")EmptyEvent("EAoi")
EmptyEvent("Byakko")EmptyEvent("SMinase")EmptyEvent("IMinase")elseif BW0WFP==5 then
Field.setCameraCompositionEx(Vec(
-1.600,1.400,-6.000),Vec(5.000,15.000,0.000),35.00)EmptyEvent("YIzumi_Day5")EmptyEvent("EAoi_Day5")
EmptyEvent("TKunimi_Day5")end
StartEvent_NextWorldEventStep(bClTIa,ExpeditionStart)else NextWorldEventStep(JQT)end elseif JQT==1 then
Expedition.openPlacement("TargetPoint.MC02_Phase01_Placement.Area02.01")ReachEvent("Goal",Goal)elseif JQT==2 then StartEvent(afterBattle)end
if GetFlag("MC02_Phase01_SavePoint01をTAP")==0 then
Expedition.openPlacement("TargetPoint.MC02_Phase01_Placement.Area08.02")
ReachEvent("TargetPoint.MC02_Phase01_Placement.Area08.02",SavePoint01)else
Expedition.openPlacement("SavePoint.MC02_Phase01_Placement.Area08.00")
Expedition.closePlacement("TargetPoint.MC02_Phase01_Placement.Area08.02")end
if GetFlag("MC02_Phase01_SavePoint02をTAP")==0 then
Expedition.openPlacement("TargetPoint.MC02_Phase01_Placement.Area06.02")
ReachEvent("TargetPoint.MC02_Phase01_Placement.Area06.02",SavePoint02)
if GetLocalFlag("1度だけdisable")==0 then
Expedition.openPlacement("SavePoint.MC02_Phase01_Placement.Area06.01")
Expedition.disablePlacement("SavePoint.MC02_Phase01_Placement.Area06.01")SetLocalFlag("1度だけdisable",1)end else
Expedition.openPlacement("SavePoint.MC02_Phase01_Placement.Area06.01")
Expedition.closePlacement("TargetPoint.MC02_Phase01_Placement.Area06.02")end
if BW0WFP==3 then
Expedition.closePlacement("SavePoint.MC02_Phase01_Placement.Area06.01")
Expedition.closePlacement("TargetPoint.MC02_Phase01_Placement.Area06.02")
Expedition.closePlacement("TargetPoint.MC02_Phase01_Placement.Area02.01")
Expedition.openPlacement("TargetPoint.MC02_Phase01_Placement.Area08.02")
ReachEvent("TargetPoint.MC02_Phase01_Placement.Area08.02",SavePoint01)elseif BW0WFP==4 then
Expedition.closePlacement("TargetPoint.MC02_Phase01_Placement.Area02.01")
Expedition.openPlacement("TargetPoint.MC02_Phase01_Placement.Area06.02")
ReachEvent("TargetPoint.MC02_Phase01_Placement.Area06.02",SavePoint02)end end;function ShowFieldTitle()local AtYtR="Phase One"local ND2BCh3="Training"
UI.showLocationTitle(AtYtR,ND2BCh3)end
function ExpeditionStart()
StartEvent(ShowFieldTitle)Field.waitTaskKey("Player")
if BW0WFP==3 then
Field.changeAnimation("Player","FieldIdleAction")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Whoooa, look at that mountain! Feels like we're on a hiking trip.]],"VC_Expedition_MC02_Phase01_00000_RKayamori",
nil)
Adv.kayamoriTalk([[No. Can't let myself get distracted, or the commander will throw a fit. Get your head in the game!]],"VC_Z_900400111_RKayamori",nil)Field.finishEvent()elseif BW0WFP==4 then
local IODBg=Adv.characterAsync("RKayamori")local YRDu=Adv.characterAsync("YIzumi")
local CWRiP=Adv.characterAsync("EAoi")local LB0A=Adv.characterAsync("Byakko")
local dl=Adv.characterAsync("SMinase")local sKPjQkdn=Adv.characterAsync("IMinase")
Field.startTalk("Byakko",FaceToFaceMode.None,function()
Layout.show(IODBg)
Adv.talkWithFacial(nil,nil,IODBg,[[Moving together with another squad's pretty different.]],"VC_MC02_00036_v001_RKayamori")Layout.show({dl,"0602"},sKPjQkdn)
Adv.talkWithFacial(nil,nil,dl,[[We're so slow when we're all stuck together like this, meow...]],"VC_MC02_00037_v001_SMinase")
Adv.talkWithFacial("0302",nil,sKPjQkdn,[[You can say that again. Yo, Aoi! Hurry the hell up! You're slowin' us down.]],"VC_MC02_00038_v001_IMinase")Layout.show({IODBg,"0902"})
Adv.talkWithFacial(nil,nil,IODBg,[[Ha! The only one slowing us down is ME.]],"VC_MC02_00039_v001_RKayamori")
if GetFlag("MC02_Phase01_SavePoint01をTAP")==0 then
Layout.show({YRDu,"1302"})
Adv.talkWithFacial(nil,nil,YRDu,[[Proudly boasting your bad results is hardly cool, you know.]],"VC_MC02_00040_v001_YIzumi")else Layout.show({YRDu,"1302"})
Adv.talkWithFacial(nil,nil,YRDu,[[Don't say that. You worked hard yesterday. Take some pride in that.]],"VC_MC02_00041_v001_YIzumi")Layout.show({IODBg,"1102"})
Adv.talkWithFacial(nil,nil,IODBg,[[Good point. Let's go all out today!]],"VC_MC02_00042_v001_RKayamori")Layout.show(YRDu)
Adv.talkWithFacial(nil,nil,YRDu,[[Don't get too carried away, alright?]],"VC_MC02_00043_v001_YIzumi")end;Layout.show({CWRiP,"0702"},LB0A)
Adv.talkWithFacial(nil,nil,CWRiP,[[Squad 31-B, please follow behind 31-A and keep watch. Let's get a move on!]],"VC_MC02_00044_v001_EAoi")
Adv.talkWithFacial(nil,nil,LB0A,[[Rawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")Transition.start()end)Field.setCameraCompositionEnabled(false)
Field.setActive("YIzumi",false)Field.setActive("EAoi",false)
Field.setActive("Byakko",false)Field.setActive("SMinase",false)
Field.setActive("IMinase",false)Field.turnTo("Player",90,0)Wait(1)
Transition.finish()
if GetFlag("MC02_Phase01_SavePoint01をTAP")==1 then
local HHH9IlJp=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Tap the mini-map in the top right to fast travel to checkpoints you have already reached.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(HHH9IlJp)end elseif BW0WFP==5 then local uYz2ryy4=Adv.characterAsync("RKayamori")
local zVPRGDnG=Adv.characterAsync("YIzumi")local IKxw=Adv.characterAsync("EAoi")
local w0=Adv.characterAsync("TKunimi")
Field.startTalk("TKunimi_Day5",FaceToFaceMode.None,function()
if
GetFlag("MC02_Phase01_SavePoint01をTAP")==0 then Layout.show(uYz2ryy4)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Already the last day of Phase One...]],"VC_Z_900400112_RKayamori")
Adv.talkWithFacial("150202",nil,uYz2ryy4,[[Hmm, I get the sense that if we fall behind here, it won't be pretty.]],"VC_Expedition_MC02_Phase01_00007_RKayamori")Layout.show({zVPRGDnG,"210202"},w0)
Adv.act(w0,"0801")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[We're really in a bind.]],"VC_MC02_00046_v001_YIzumi")
Adv.talkWithFacial("220202",nil,w0,[[W-We'll be discharged!]],"VC_MC02_00047_v001_TKunimi")Layout.show({uYz2ryy4,"070201"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Can't let that happen. Let's pick up the pace.]],"VC_MC02_00048_v001_RKayamori")Layout.show({IKxw,"020202"})
Adv.talkWithFacial(nil,nil,IKxw,[[My apologies. My squad is just not up to par.]],"VC_MC02_00049_v001_EAoi")Layout.show({uYz2ryy4,"1102"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[That's not true at all. C'mon.]],"VC_MC02_00050_v001_RKayamori")else
if GetFlag("MC02_Phase01_SavePoint02をTAP")==0 then
Layout.show(uYz2ryy4)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Today's the end of Phase One, huh?]],"VC_Expedition_MC02_Phase01_00009_RKayamori",nil)
Adv.talkWithFacial("070202",nil,uYz2ryy4,[[It kinda feels like we're lagging behind. Not more pit stops, okay?]],"VC_Expedition_MC02_Phase01_00010_RKayamori",
nil)Layout.show(zVPRGDnG,w0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Isn't that obvious?]],"VC_MC02_00051_v001_YIzumi")
Adv.talkWithFacial("280202",nil,w0,[[Aye aye! Don't want to get discharged!]],"VC_MC02_00052_v001_TKunimi")Layout.show({IKxw,"020202"})
Adv.talkWithFacial(nil,nil,IKxw,[[My apologies. My squad is just not up to par.]],"VC_MC02_00053_v001_EAoi")Layout.show({zVPRGDnG,"0003"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Looks like you girls aren't doing so hot either, but try to hang in there.]],"VC_MC02_00054_v001_YIzumi")else Layout.show({uYz2ryy4,"1102"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Today marks the final day of Phase One. Let's do this thing!]],"VC_MC02_00055_v001_RKayamori")
Layout.show({zVPRGDnG,"1302"},{IKxw,"0802"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Wow, you're certainly motivated. If only that were always the case...]],"VC_MC02_00056_v001_YIzumi")
Adv.talkWithFacial("0000",nil,IKxw,[[It's inspiring. I need to learn from her example.]],"VC_MC02_00057_v001_EAoi")end end;Transition.start()end)Field.setCameraCompositionEnabled(false)
Field.setActive("YIzumi_Day5",false)Field.setActive("EAoi_Day5",false)
Field.setActive("TKunimi_Day5",false)Field.turnTo("Player",90,0)Wait(1)
Transition.finish()
if GetFlag("MC02_Phase01_SavePoint01をTAP")==1 then
local UgXzI_C=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Tap the mini-map in the top right to fast travel to checkpoints you have already reached.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(UgXzI_C)end end end
function SavePoint01()
if rDzL7SVO=="MC02"and BW0WFP==3 then
local kw3ei0a=UI.showMessageDialog([[Continuing further will conclude training for the day.\nDo you wish to proceed?]],1)
if kw3ei0a==Dialog.CANCEL then Field.cancelAutoMove()
Transition.start()Field.resetPosition("GatePoint_2")Wait(1)return end end;Field.moveBy("Player",Vec(-2),2)Wait(1)
Transition.start()Field.stopTaskKey("Player")
Field.setCameraCompositionEx(Vec(15.000,1.000,-6.000),Vec(0.000,15.000,0.000),40.00)
Expedition.openPlacement("SavePoint.MC02_Phase01_Placement.Area08.00")
Field.setActive("SavePoint.MC02_Phase01_Placement.Area08.00",false)
Field.setActive("TargetPoint.MC02_Phase01_Placement.Area08.02",false)EmptyEvent("YIzumi")
Field.setByWaypointPosition("Player","SavePoint_3Right",Vec(1))Wait(0.5)Field.moveBy("Player",Vec(-3),3)Field.moveBy("YIzumi",Vec(
-1.5),1.5)Wait(0.3)
Transition.finish()Field.waitTaskKey("YIzumi")
Field.turnToTarget("YIzumi","Player",0.3)Wait(0.5)local MLFLplLe=Adv.characterAsync("RKayamori")
local jwq=Adv.characterAsync("YIzumi")
Field.startTalkEx("YIzumi",FaceToFaceMode.Auto,FaceToFaceMode.None,function()
Layout.show({jwq,"000202"})Field.waitTaskKey("Player")
Field.turnToTarget("Player","YIzumi",0.3)
Adv.talkWithFacial(nil,nil,jwq,[[Hey, Ruka. That torii gate we just passed is that Afuri Shrine the commander was talking about.]],"VC_Expedition_MC02_Phase01_00013_YIzumi")Layout.show({MLFLplLe,"110201"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Cool! Then that's all for training today.]],"VC_Expedition_MC02_Phase01_00014_RKayamori")
if BW0WFP==3 then Layout.show({jwq,"090002"})
Adv.talkWithFacial(nil,nil,jwq,[[Yup. Good work.]],"VC_Expedition_MC02_Phase01_00015_YIzumi")else Layout.show({jwq,"130202"})
Adv.talkWithFacial(nil,nil,jwq,[[Not yet. Let's get a move on.]],"VC_Expedition_MC02_Phase01_00016_YIzumi")SetFlag("Expedition_MC02_01_01_Late",1)end;Layout.show()
UI.showLineInfo([[Route fully secured!]],1,3)SetFlag("MC02_Phase01_SavePoint01をTAP",1)
if
rDzL7SVO=="MC02"and BW0WFP==3 then
Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Training complete! Let's head back.]],"VC_Expedition_MC02_Phase01_00017_RKayamori")Expedition.showResult()Expedition.trueEnd()
Exit_World()end;Transition.start()end)
Field.setActive("SavePoint.MC02_Phase01_Placement.Area08.00",true)
Field.setActive("TargetPoint.MC02_Phase01_Placement.Area08.02",false)Field.setActive("YIzumi",false)
Field.resetPosition("SavePoint_3")Field.setCameraCompositionEnabled(false)
Field.turnTo("Player",-90,0)Transition.finish()
if rDzL7SVO=="MC02"and BW0WFP==4 then
Adv.kayamoriTalk([[We made up for yesterday! Just a little bit more!]],"VC_Expedition_MC02_Phase01_00018_RKayamori")elseif rDzL7SVO=="MC02"and BW0WFP==5 then
Adv.kayamoriTalk([[We made up for two days ago! Just a little bit more!]],"VC_Expedition_MC02_Phase01_00019_RKayamori")end;Field.refreshScripts()end
function SavePoint02()
if rDzL7SVO=="MC02"and BW0WFP==4 then
local nmuj=UI.showMessageDialog([[Continuing further will conclude training for the day.\nDo you wish to proceed?]],1)
if nmuj==Dialog.CANCEL then Field.cancelAutoMove()
Transition.start()Field.resetPosition("GatePoint_2")Wait(1)return end end;Transition.start()EmptyEvent("EAoi")
EmptyEvent("SMinase")EmptyEvent("IMinase")
Expedition.openPlacement("SavePoint.MC02_Phase01_Placement.Area06.01")
Field.setActive("SavePoint.MC02_Phase01_Placement.Area06.01",false)
Field.setActive("TargetPoint.MC02_Phase01_Placement.Area06.02",false)
Field.setCameraCompositionEx(Vec(34.500,1.300,-7.440),Vec(0.000,345.000,0.000),30.00)Field.turnToTarget("Player","EAoi",0)Wait(1)
Transition.finish()Wait(1)local EspneS5=Adv.characterAsync("RKayamori")
local LZeg0=Adv.characterAsync("EAoi")local OJZ=Adv.characterAsync("IMinase")
Field.startTalk("EAoi",FaceToFaceMode.None,function()
Field.setCameraCompositionExWait(Vec(34.500,1.300,
-7.440),Vec(0.000,345.000,0.000),21.00,1)Field.turnToTargetWait("EAoi","Player",0.3)
Wait(0.5)Layout.show({LZeg0,"010201"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Whew... So this is Yabitsu Pass... Point Alpha.]],"VC_MC02_00058_v001_EAoi")Layout.show({EspneS5,"040002"})
Adv.talkWithFacial(nil,nil,EspneS5,[[That reminds me...there was a study that found my music produces alpha waves.]],"VC_Expedition_MC02_Phase01_00021_RKayamori",
nil)Layout.show({LZeg0,"0802"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Wow, that's incredible! Does that mean you can soothe the people around you?]],"VC_MC02_00059_v001_EAoi")Layout.show()
Field.moveBy("IMinase",Vec(-3),2.5)
Field.setCameraCompositionEx(Vec(34.500,1.300,-7.440),Vec(0.000,345.000,0.000),30.00,1)Field.waitTaskKey("IMinase")
Field.turnToTargetWait("EAoi","IMinase",0.3)Wait(0.5)
Layout.show({LZeg0,"0803"},{OJZ,"0302"})
Adv.talkWithFacial(nil,nil,OJZ,[[Ugggh, I'm beat. Quit flappin' your mouth and give us our next orders, Aoi.]],"VC_MC02_00060_v001_IMinase")
Adv.talkWithFacial("020302",nil,LZeg0,[[R-Right. My apologies.]],"VC_MC02_00061_v001_EAoi")Layout.show()
UI.showLineInfo([[Route fully secured!]],1,3)SetFlag("MC02_Phase01_SavePoint02をTAP",1)
if
rDzL7SVO=="MC02"and BW0WFP==4 then
Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Training complete! Let's head back.]],"VC_Expedition_MC02_Phase01_00017_RKayamori")Expedition.showResult()Expedition.trueEnd()
Exit_World()end;Transition.start()end)
Field.setActive("SavePoint.MC02_Phase01_Placement.Area06.01",true)
Field.setActive("TargetPoint.MC02_Phase01_Placement.Area06.02",false)Field.setActive("EAoi",false)
Field.setActive("IMinase",false)Field.setCameraCompositionEnabled(false)
Field.turnTo("Player",-90,0)Transition.finish()
if rDzL7SVO=="MC02"and BW0WFP==5 then
Adv.kayamoriTalk([[We made up for yesterday! Just a little bit more!]],"VC_Expedition_MC02_Phase01_00018_RKayamori")end;Field.refreshScripts()end
function Goal()
local bP=UI.showMessageDialog([[Continuing further will conclude training for the day.\nDo you wish to proceed?]],1)
if bP==Dialog.CANCEL then Field.cancelAutoMove()
Transition.start()Field.resetPosition("GatePoint_1")Wait(1)return end;Field.moveBy("Player",Vec(3),3)Wait(0.5)
Transition.start()Wait(2)local b4IqQW=Adv.characterAsync("RKayamori")
local iuGb=Adv.characterAsync("EAoi")local koZU=Adv.characterAsync("SMinase")
local C=Adv.characterAsync("IMinase")Adv.waitAsyncInstanceAll()
Field.setActive("TargetPoint.MC02_Phase01_Placement.Area02.01",false)Field.setActive("Player",false)
EmptyEvent("RKayamori")EmptyEvent("EAoi")EmptyEvent("SMinase")
EmptyEvent("IMinase")EmptyEvent("AbyssKnocker")Sound.playBGM("SB0038")
Adv.setPostEffectVignetteIntensity(0.4,0)
Field.setCameraCompositionEx(Vec(30.000,0.600,1.200),Vec(0.000,10.000,0.000),30.00)
Field.setCameraCompositionEx(Vec(30.000,0.600,1.200),Vec(345.000,10.000,0.000),35.00,6)Transition.finish(nil,3)Wait(3.5)
Transition.start()Field.stopTaskKey("CameraComposition")Wait(2)
Field.setCameraCompositionEx(Vec(31.000,1.200,
-2.800),Vec(0.000,4.000,0.000),40.00)Wait(0.1)
Field.setCameraCompositionEx(Vec(31.000,1.200,-2.800),Vec(0.000,4.000,0.000),50.00,2)Adv.setPostEffectVignetteIntensity(0,2)
Transition.finish(nil,2)Field.waitTaskKey("CameraComposition")Wait(1)
Field.showAdvHudWrapper(function()
Layout.show({b4IqQW,"0702"},{iuGb,"070203"})
Adv.talkWithFacial(nil,nil,iuGb,[[Ruka! Enemy incoming at 12 o'clock!]],"VC_MC02_00062_v001_EAoi")
Adv.talkWithFacial(nil,nil,b4IqQW,[[Not if I can help it!]],"VC_MC02_00063_v001_RKayamori")Layout.show({C,"0902"},{koZU,"1002"})
Adv.talkWithFacial(
nil,nil,C,[[Alright! LET'S DO THIS!]],"VC_MC02_00064_v001_IMinase")
Adv.talkWithFacial(nil,nil,koZU,[[This'll be a clean kill, meow.]],"VC_MC02_00065_v001_SMinase")Layout.show(b4IqQW,{iuGb,"290201"})
Adv.talkWithFacial(nil,nil,iuGb,[[Everyone, we are serving as backup for 31-A! Don't go too far to the front!]],"VC_MC02_00066_v001_EAoi")
Adv.talkWithFacial("0703",nil,b4IqQW,[[Aoi, we're fine on our end. Go support Ichigo and the others!]],"VC_MC02_00067_v001_RKayamori")
Adv.talkWithFacial("0801",nil,iuGb,[[Y-Yes!!]],"VC_MC02_00068_v001_EAoi")Layout.hide()Field.trailOut("RKayamori")
Wait(0.1)Field.trailOut("EAoi")Wait(0.1)
Field.trailOut("IMinase")Field.trailOut("SMinase")Wait(0.4)
Field.setCameraCompositionEx(Vec(31.000,1.200,-
3.300),Vec(346.000,4.000,0.000),30.0,0.2)Wait(0.65)
Transition.setSymbolEncountTransition()Transition.start()end)Field.setCameraCompositionEnabled(false)
local nmJGp_=Field.BattleWithoutPartySelect(bClTIa,"Battle.MC02ExpForestVirtual01_BOSS01",function()
Sound.playBGM("SV0002",0,2)Battle.waitLoadEnd()Battle.waitPreResult()
Sound.playBGM("SB0010_ALT")end)Field.refreshScripts()end
function afterBattle()Sound.playBGM("SB0008")
Field.setActive("Player",false)Field.setActive("AbyssKnocker",false)
Field.setActive("SMinase",false)Field.setActive("IMinase",false)
Field.setCameraCompositionEx(Vec(31.000,1.600,-6.000),Vec(5.000,0.000,0.000),35.00)EmptyEvent("RKayamori_2")EmptyEvent("EAoi_2")
EmptyEvent("YIzumi")Transition.finish()
local h0v3PIV=Adv.loadBGAsync("Background/Forest/Forest_Arena")local Uc=Adv.characterAsync("RKayamori")
local JSkUQL=Adv.characterAsync("YIzumi")local PTUZ2v=Adv.characterAsync("MAikawa")
local qlZeO3Pr=Adv.characterAsync("EAoi")local fG9zS=Adv.characterAsync("SMinase")
local WiXG=Adv.characterAsync("IMinase")
Field.startTalk("RKayamori",FaceToFaceMode.None,function()
Adv.act(Uc,"040001",AdvCharacterMouth.Mouth03,0)Layout.show(Uc,{qlZeO3Pr,"000101"})
Adv.talkWithFacial(nil,nil,Uc,[[Phew, we did it.]],"VC_MC02_00069_v001_RKayamori")
Adv.talkWithFacial("020102",nil,qlZeO3Pr,[[My apologies. Our squad was too far forward, wasn't it?]],"VC_MC02_00070_v001_EAoi")
Adv.talkWithFacial("0703",nil,Uc,[[Not at all. Dead Cancers don't tell any tales, or leave any trails.]],"VC_MC02_00071_v001_RKayamori")Layout.show({JSkUQL,"1302"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[I know you tried to sound cool there, but it didn't make any sense. You just sound dumb.]],"VC_MC02_00072_v001_YIzumi")
Transition.setOutdoor("","Nanohana View Terrace")Transition.start()Layout.show()
Field.setCameraCompositionEnabled(false)end)Wait(2)
Field.startNovel(function()
Layout.createStageZoomOut(h0v3PIV,Position.BG_CENTER)Layout.show(PTUZ2v)Transition.finish()Wait(1)
Adv.talkWithFacial("0002",
nil,PTUZ2v,[[So, right around here's Point Beta, huh?]],"VC_Expedition_MC02_Phase01_00025_MAikawa")Layout.show({Uc,"110301"},PTUZ2v)
Adv.act(PTUZ2v,"0001")
Adv.talkWithFacial(nil,nil,Uc,[[And that means, we're done for the day! Let's all shout "Woohoo!" from the terrace!]],"VC_Expedition_MC02_Phase01_00026_RKayamori")
Adv.talkWithFacial("0701",nil,PTUZ2v,[[What we <i>really</i> need is the longest "yeehaw" ever. I'll show ya!]],"VC_Expedition_MC02_Phase01_00027_MAikawa",
nil,nil,AdvCharacterMouth.Close)Layout.createStageMainChara(h0v3PIV)
Layout.show({qlZeO3Pr,"0102"})
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Hehe.]],"VC_MC02_00073_v001_EAoi")Layout.createStagePanR(h0v3PIV,Vec(-150))
Adv.act(fG9zS,"0602",AdvCharacterMouth.Close,0)Layout.show({WiXG,"0302"},{fG9zS,nil})
Adv.talkWithFacial(
nil,nil,WiXG,[[Not even a little shaken.]],"VC_MC02_00074_v001_IMinase")
Adv.talkWithFacial(nil,nil,fG9zS,[[They got nerve, I'll give 'em that, meow.]],"VC_MC02_00075_v001_SMinase")Layout.hide()
UI.showLineInfo([[Phase One: Complete!]],1,3)Expedition.showResult(0)Expedition.trueEnd()end)end