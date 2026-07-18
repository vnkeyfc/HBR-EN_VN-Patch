local w0qyLbH="Quest_Lv1_SMinase"function init()Log("Called "..w0qyLbH)
refresh()end
function refresh()
if Quest.stateUnreceivable(w0qyLbH)then if
Quest.isHasAnyActive()then return end
TouchQuestEvent("SMinase_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("SMinase_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then
SetPeriodText("Find someone who has an empty can!")
if GetLocalFlag("Talked_YIzumi")==0 then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step2_YIzumi)else HideMapDestinationIcon("YIzumi_Quest")
EmptyEvent("YIzumi_Quest")end
if GetLocalFlag("Talked_KAsakura")==0 then
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step2_KAsakura)else HideMapDestinationIcon("KAsakura_Quest")
EmptyEvent("KAsakura_Quest")end
if GetLocalFlag("Talked_TTojo")==0 then
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step2_TTojo)else HideMapDestinationIcon("TTojo_Quest")
EmptyEvent("TTojo_Quest")end
if GetLocalFlag("Talked_MAikawa")==0 then
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step2_MAikawa)else HideMapDestinationIcon("MAikawa_Quest")
EmptyEvent("MAikawa_Quest")end
if GetLocalFlag("Talked_TKunimi")==0 then
Quest.TouchEvent("TKunimi_Quest3",w0qyLbH,Step2_TKunimi)else HideMapDestinationIcon("TKunimi_Quest3")
EmptyEvent("TKunimi_Quest3")end
if GetLocalFlag("SMinase_Quest")==0 then
TouchQuestEvent("SMinase_Quest",w0qyLbH,Step2_SMinase)else HideMapDestinationIcon("SMinase_Quest")
EmptyEvent("SMinase_Quest")end end
if Quest.stateStep(w0qyLbH,3)then
TouchQuestEvent("TKunimi_Quest3",w0qyLbH,Step3_TKunimi)
if GetLocalFlag("Talked_YIzumi")==0 then
SetFlag("すもも交流Lv1_和泉と話した",0)else SetFlag("すもも交流Lv1_和泉と話した",1)end
if GetLocalFlag("Talked_KAsakura")==0 then
SetFlag("すもも交流Lv1_朝倉と話した",0)else SetFlag("すもも交流Lv1_朝倉と話した",1)end
if GetLocalFlag("Talked_TTojo")==0 then
SetFlag("すもも交流Lv1_東城と話した",0)else SetFlag("すもも交流Lv1_東城と話した",1)end
if GetLocalFlag("Talked_MAikawa")==0 then
SetFlag("すもも交流Lv1_逢川と話した",0)else SetFlag("すもも交流Lv1_逢川と話した",1)end;SetPeriodText("Borrow money from Sumomo")
EmptyEvent("MAikawa_Quest")EmptyEvent("TTojo_Quest")
EmptyEvent("KAsakura_Quest")EmptyEvent("YIzumi_Quest")
Quest.TouchEvent("SMinase_Quest",w0qyLbH,Step3)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()local nsgji=Field.getPosition("Player")
local bClTIa=Adv.characterAsync("SMinase","Default")local rDzL7SVO=Adv.characterAsync("RKayamori")
local BW0WFP=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Monument_Night")Field.turnToTarget("Player","SMinase_Quest",0.3)
Wait(0.3)Transition.start()Field.startEvent()
Field.setActiveWithTag("KHiiragi",false)Field.setActiveWithTag("MiOhshima",false)Field.setCameraFov(
Field.getCameraFov()*0.9,0)
Field.setCameraComposition(Vec(54.3,0,74.26),Vec(0,
-13.1,0),0)
local X8=Field.getPosition("SMinase_Quest")+Vec(-2.5,0,-2.5)Field.setPosition("Player",X8)Wait(1)
Field.moveBy("Player",Vec(0,0.15,0),0)Transition.finish()
Field.moveBy("Player",Vec(0.5,0,0.5),1)Wait(1)
Adv.kayamoriTalk([[Ooh, it's Sumomo! Hey there!]],"VC_Quest_Lv1_SMinase_Quest_00000_RKayamori",nil)Layout.createStage()Adv.waitAsyncInstanceAll()
Field.setLookAtTarget("SMinase_Quest","Player",0.5)
Adv.talkWithIcon("SMinase",[[You're so noisy, meow. Don't talk to me. We're not friends, meow.]],"VC_Quest_Lv1_SMinase_Quest_00001_SMinase")
Adv.kayamoriTalk([[Come on, don't be like that. We're in the same squadron. Let's get along!]],"VC_Quest_Lv1_SMinase_Quest_00002_RKayamori")Field.disableLookAt("SMinase_Quest")
Field.turnToTarget("SMinase_Quest","Player",0.3)
Adv.talkWithIcon("SMinase",[[The only person I need by my side is my sister, meow.]],"VC_Quest_Lv1_SMinase_Quest_00003_SMinase")
Field.setCameraFov(Field.getCameraFov()*0.8,0.3)
Field.startNovel(function()
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.5,350)Sound.play("AS_Aim_Gun")
Layout.createStageZoomIn(BW0WFP,nil,0.3)
Layout.show({rDzL7SVO,"080301"},{bClTIa,"030104"})Adv.bubbleTalk("se",[[*clack*]])
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Huh? Is that a toy gun?]],"VC_Quest_Lv1_SMinase_Quest_00005_RKayamori",
nil)
Adv.talkWithFacial(nil,nil,bClTIa,[[Make a fool of me again and you'll find out if it's real or not, meow.]],"VC_Quest_Lv1_SMinase_Quest_00006_SMinase")
Adv.talkWithFacial("030301",nil,rDzL7SVO,[[My knees are shaking! Is that thing real?! How did you even get one?!]],"VC_Quest_Lv1_SMinase_Quest_00007_RKayamori")
Adv.talkWithFacial(nil,nil,bClTIa,[[Let's just say that it's for professional reasons, meow.]],"VC_Quest_Lv1_SMinase_Quest_00008_SMinase")
Adv.talkWithFacial("010001",nil,rDzL7SVO,[[Wow! I wanna fire a gun for myself! Can you show me how to do it?]],"VC_Quest_Lv1_SMinase_Quest_00009_RKayamori")
Adv.talkWithFacial(nil,nil,bClTIa,[[Sure. I just happen to have a great target, meow.]],"VC_Quest_Lv1_SMinase_Quest_00010_SMinase")
Adv.act(rDzL7SVO,"030001",AdvCharacterMouth.Close)
Adv.actDelay(2,rDzL7SVO,"030301",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Target? Wait...you don't mean me, do you?!]],"VC_Quest_Lv1_SMinase_Quest_00011_RKayamori")
Adv.actDelay(0,rDzL7SVO,"030301",AdvCharacterMouth.Close)end)Sound.setResumeBGM("SB0039")
local JQT=Quest.receive(w0qyLbH)
if JQT==QuestWindow.Receive then Transition.start()
Field.finishEvent(0)Quest.refreshState()else
Field.cancelQuest("SMinase_Quest",nsgji,true,function()
Adv.remove(BW0WFP)Field.finishEvent(0)end)end end
function Step1()Adv.fadeOut(0)local AtYtR=Field.getPosition("Player")
local ND2BCh3=Adv.characterAsync("SMinase","Default")local IODBg=Adv.characterAsync("RKayamori")
local YRDu=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Monument_Night")
Field.startNovel(function()Layout.createStage(YRDu)
Layout.show({IODBg,"080301"},{ND2BCh3,"030104"})Adv.fadeIn(0.5)Transition.finish()
Sound.playBGM("SB0039",0.5,0)
Routine(function()Adv.starShake(IODBg,nil,8,function()end)end)
Adv.talkWithFacial("0303",nil,IODBg,[[Hold up! I'll find an empty can or something for you!]],"VC_Quest_Lv1_SMinase_Quest_00012_RKayamori")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I think you'd make a great target, meow.]],"VC_Quest_Lv1_SMinase_Quest_00013_SMinase")
Routine(function()Adv.starShake(IODBg,nil,8,function()end)end)
Adv.talkWithFacial("030302",nil,IODBg,[[I'll die!]],"VC_Quest_Lv1_SMinase_Quest_00014_RKayamori")Transition.start()end)Field.resetPosition()Layout.hide()
Adv.remove(YRDu)Field.returnToDefaultStance("SMinase_Quest",0.1)
Wait(0.5)Transition.finish()Quest.clearStep(w0qyLbH)
Quest.refreshState()end
function Step2_SMinase()local CWRiP=Adv.characterAsync("SMinase","Default")
Field.startTalk("SMinase_Quest",FaceToFaceMode.Auto,function()
Layout.createStage()Layout.show({CWRiP,"030204"})
Adv.talkWithFacial(nil,nil,CWRiP,[[So can I shoot you or not, meow?]],"VC_Quest_Lv1_SMinase_Quest_00015_SMinase")end)end
function Step2_YIzumi()local LB0A=Adv.characterAsync("YIzumi")
local dl=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()Layout.createStage()
Layout.show({dl,"030302"},{LB0A,"130103"})
Adv.talkWithFacial(nil,nil,dl,[[Yukkie! Do you have an empty can?]],"VC_Quest_Lv1_SMinase_Quest_00016_RKayamori",nil)
Adv.talkWithFacial(nil,nil,LB0A,[[What? Are you gonna play kick the can or something? You really never grow up.]],"VC_Quest_Lv1_SMinase_Quest_00017_YIzumi")
Adv.talkWithFacial("150302",nil,dl,[[If I don't find an empty can, I'll end up with a hole in my head!]],"VC_Quest_Lv1_SMinase_Quest_00018_RKayamori",nil)
Adv.talkWithFacial("030102",nil,LB0A,[[Now that escalated quickly! What the hell have you gotten yourself into?]],"VC_Quest_Lv1_SMinase_Quest_00019_YIzumi")
Adv.talkWithFacial("000103",nil,LB0A,[[Try looking around the vending machines. Someone might've thrown one away.]],"VC_Quest_Lv1_SMinase_Quest_00020_YIzumi")
Adv.talkWithFacial("090301",nil,dl,[[Great! Thanks, Yukkie! I owe you my life!]],"VC_Quest_Lv1_SMinase_Quest_00021_RKayamori",nil)
Adv.talkWithFacial("030102",nil,LB0A,[[Damn, is someone seriously out for her life?! God only know what she got mixed up in...]],"VC_Quest_Lv1_SMinase_Quest_00022_YIzumi")end)SetLocalFlag("Talked_YIzumi",1)
Quest.refreshState()end
function Step2_TTojo()local sKPjQkdn=Adv.characterAsync("TTojo")
local HHH9IlJp=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()Layout.createStage()
Layout.show({HHH9IlJp,"030302"},{sKPjQkdn,"000101"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Tsukassie! Do you have an empty can?]],"VC_Quest_Lv1_SMinase_Quest_00023_RKayamori",nil)
Adv.talkWithFacial("080102",nil,sKPjQkdn,[[An empty can? Well...I don't see any on the ground.]],"VC_Quest_Lv1_SMinase_Quest_00024_TTojo")
Adv.talkWithFacial("150302",nil,HHH9IlJp,[[If I don't find an empty can, I'll end up with a hole in my head!]],"VC_Quest_Lv1_SMinase_Quest_00018_RKayamori",
nil)
Adv.talkWithFacial("070103",nil,sKPjQkdn,[[What in the world did you get yourself into?! Well, the trash gets collected in the morning, so maybe you could ask the collector then?]],"VC_Quest_Lv1_SMinase_Quest_00026_TTojo")
Adv.talkWithFacial("070301",nil,HHH9IlJp,[[Great idea! But I'll be dead by then... Well, thanks anyway!]],"VC_Quest_Lv1_SMinase_Quest_00027_RKayamori",nil)
Adv.talkWithFacial("020002",nil,sKPjQkdn,[[Ugh... How can I be so powerless?!]],"VC_Quest_Lv1_SMinase_Quest_00028_TTojo")end)SetLocalFlag("Talked_TTojo",1)Quest.refreshState()end
function Step2_KAsakura()local uYz2ryy4=Adv.characterAsync("KAsakura")
local zVPRGDnG=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()Layout.createStage()
Layout.show({zVPRGDnG,"030302"},{uYz2ryy4,"000102"})
Adv.talkWithFacial("030302",nil,zVPRGDnG,[[Karerin! Got an empty can?!]],"VC_Quest_Lv1_SMinase_Quest_00029_RKayamori",nil)
Adv.talkWithFacial("050102",nil,uYz2ryy4,[[A can? No, but why?]],"VC_Quest_Lv1_SMinase_Quest_00030_KAsakura")
Adv.talkWithFacial("150302",nil,zVPRGDnG,[[If I don't find an empty can, I'll end up with a hole in my head!]],"VC_Quest_Lv1_SMinase_Quest_00018_RKayamori",
nil)
Adv.talkWithFacial("080103",nil,uYz2ryy4,[[That's horrible! I think I saw Tama by the vending machines. Maybe she can help you.]],"VC_Quest_Lv1_SMinase_Quest_00032_KAsakura")
Adv.talkWithFacial("090301",nil,zVPRGDnG,[[Great! Thanks, Karerin! I owe you my life!]],"VC_Quest_Lv1_SMinase_Quest_00033_RKayamori",nil)
Adv.talkWithFacial("000102",nil,uYz2ryy4,[[Be careful out there.]],"VC_Quest_Lv1_SMinase_Quest_00034_KAsakura")end)SetLocalFlag("Talked_KAsakura",1)
Quest.refreshState()end
function Step2_MAikawa()local IKxw=Adv.characterAsync("MAikawa")
local w0=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()Layout.createStage()
Layout.show({w0,"030302"},{IKxw,"080101"})
Adv.talkWithFacial(nil,nil,w0,[[Megumin! Do you have an empty can?]],"VC_Quest_Lv1_SMinase_Quest_00035_RKayamori",nil)
Adv.talkWithFacial(nil,nil,IKxw,[[Huh? If ya mean the drink I just had, I already crushed the can and tossed it.]],"VC_Quest_Lv1_SMinase_Quest_00036_MAikawa")
Adv.talkWithFacial("150302",nil,w0,[[If I don't find an empty can, I'll end up with a hole in my head!]],"VC_Quest_Lv1_SMinase_Quest_00018_RKayamori",nil)Adv.act(IKxw,"030102")
Adv.actDelay(3.5,IKxw,"000001",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,IKxw,[[You're bein' ridiculous! Something like that ain't happenin' here on a military base! But now that ya mention it, I saw Tama by the vending machines.]],"VC_Quest_Lv1_SMinase_Quest_00038_MAikawa")
Adv.actDelay(0,IKxw,"000001",AdvCharacterMouth.Close)
Adv.talkWithFacial("090301",nil,w0,[[Great! Thanks, Megumin! I owe you my life!]],"VC_Quest_Lv1_SMinase_Quest_00039_RKayamori",nil)
Adv.talkWithFacial("080101",nil,IKxw,[[The hell's going on? She's more riled up now than when we're fighting Cancers...]],"VC_Quest_Lv1_SMinase_Quest_00040_MAikawa")end)SetLocalFlag("Talked_MAikawa",1)
Quest.refreshState()end
function Step2_TKunimi()local UgXzI_C=Adv.characterAsync("TKunimi")
local MLFLplLe=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest3",FaceToFaceMode.Auto,function()Layout.createStage()
Layout.show({MLFLplLe,"030302"},{UgXzI_C,"080101"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Cappy! Do you have an empty can?]],"VC_Quest_Lv1_SMinase_Quest_00041_RKayamori",nil)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Ruka?]],"VC_Quest_Lv1_SMinase_Quest_00042_TKunimi")
Adv.talkWithFacial("280103",nil,UgXzI_C,[[Actually, I was staring at the machine because I don't have enough GP to buy anything. Oh, I'm so thirsty...]],"VC_Quest_Lv1_SMinase_Quest_00043_TKunimi")
Adv.talkWithFacial("030302",nil,MLFLplLe,[[Oh no... At this rate, not only am I gonna end up with a hole in my head, but Cappy's going to shrivel up like a prune!]],"VC_Quest_Lv1_SMinase_Quest_00044_RKayamori",
nil)
Adv.talkWithFacial("280103",nil,UgXzI_C,[[I'm so sorry to ask, but may I please beg of you...to lend me some money?]],"VC_Quest_Lv1_SMinase_Quest_00045_TKunimi")
Adv.talkWithFacial("070301",nil,MLFLplLe,[[Sure thing. I'll ask Sumomo for some GP, since she's the cause of all this to begin with! Just hang in there, Cappy!]],"VC_Quest_Lv1_SMinase_Quest_00046_RKayamori",
nil)
Adv.talkWithFacial("020001",nil,UgXzI_C,[[Thank you so much!]],"VC_Quest_Lv1_SMinase_Quest_00047_TKunimi")end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_TKunimi()local jwq=Adv.characterAsync("TKunimi")
Field.startTalk("TKunimi_Quest3",FaceToFaceMode.Auto,function()
Layout.createStage()Layout.show({jwq,"020203"})
Adv.talkWithFacial(nil,nil,jwq,[[Thank you so much!]],"VC_Quest_Lv1_SMinase_Quest_00048_TKunimi")end)end
function Step3()local kw3ei0a=Adv.characterAsync("SMinase")
local EspneS5=Adv.characterAsync("TKunimi")local LZeg0=Adv.characterAsync("RKayamori")
local OJZ=Adv.loadBGAsync("Background/SchoolHallway/SchoolHallway_Monument_Night")Field.turnToTarget("Player","SMinase_Quest",0.3)
Transition.start()Transition.start()Field.startEvent()Field.setCameraFov(
Field.getCameraFov()*0.9,0)
Field.setCameraComposition(Vec(54.3,0,74.26),Vec(0,
-13.1,0),0)
local nmuj=Field.getPosition("SMinase_Quest")+Vec(-3,0,-3)Field.setActive("IcOhshima_Gaya",false)
Field.setPosition("Player",nmuj)Wait(1)Field.moveBy("Player",Vec(0,0.15,0),0)
Transition.finish()Field.moveBy("Player",Vec(1,0,1),0.4)
Layout.createStage()Adv.waitAsyncInstanceAll()
Adv.kayamoriTalk([[Sumomo! We have an emergency! I don't have enough cash to buy a drink!]],"VC_Quest_Lv1_SMinase_Quest_00049_RKayamori",
nil)
Field.setLookAtTarget("SMinase_Quest","Player",0.5)
Adv.talkWithIcon("SMinase",[[Are you stupid or something, meow?]],"VC_Quest_Lv1_SMinase_Quest_00050_SMinase")
Layout.show({LZeg0,"030301"},{kw3ei0a,"030103"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Come on, at this rate you won't be able to show off your shooting skills like you wanted to! Just lend me some cash!]],"VC_Quest_Lv1_SMinase_Quest_00051_RKayamori")
Adv.talkWithFacial("0701",nil,kw3ei0a,[[I never said that I wanted to show them off to you, meow. And I'm not lending you any money, meow.]],"VC_Quest_Lv1_SMinase_Quest_00052_SMinase")
Adv.talkWithFacial("160301",nil,LZeg0,[[Please! I just need a little change!]],"VC_Quest_Lv1_SMinase_Quest_00053_RKayamori")
Adv.talkWithFacial("0701",nil,kw3ei0a,[[The machines here doesn't accept coins, meow. Plus, all I've got are these arcade-token-looking coins that I picked up yesterday, meow.]],"VC_Quest_Lv1_SMinase_Quest_00054_SMinase")Adv.actDelay(kw3ei0a,"0700")
Adv.talkWithFacial("020302",nil,LZeg0,[[Damn, I won't be able to see your shooting skills without an empty can...]],"VC_Quest_Lv1_SMinase_Quest_00055_RKayamori")Field.disableLookAt("SMinase_Quest")
Field.turnToTarget("SMinase_Quest","Player",0.3)Wait(0.3)
Field.setCameraFov(Field.getCameraFov()*0.8,0.3)
Field.startNovel(function()
Routine(function()
local koZU=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.3)Adv.remove(koZU)end)Sound.play("AS_Aim_Gun")
Layout.createStageZoomIn(OJZ,nil,0.3)
Layout.show({LZeg0,"080301"},{kw3ei0a,"030104"})
Adv.talkWithFacial(nil,nil,kw3ei0a,[[I've got a target right here, meow.]],"VC_Quest_Lv1_SMinase_Quest_00056_SMinase")
Adv.talkWithFacial("030302",nil,LZeg0,[[I told you I don't wanna die!]],"VC_Quest_Lv1_SMinase_Quest_00057_RKayamori")
Adv.act(LZeg0,"000301",AdvCharacterMouth.Mouth01,0.4)Sound.playEmptyBGM(0.5)
Adv.talkWithFacial(nil,nil,LZeg0,[[......]],"VC_Quest_Lv1_SMinase_Quest_00058_RKayamori",true)
Adv.talkWithFacial("000301",nil,LZeg0,[[Wait, can't we use those arcade tokens as targets?]],"VC_Quest_Lv1_SMinase_Quest_00059_RKayamori")
Adv.talkWithFacial("000101",nil,kw3ei0a,[[Meow?]],"VC_Quest_Lv1_SMinase_Quest_00060_SMinase")
Adv.talkWithFacial("000102",nil,LZeg0,[[It'll be more difficult than aiming at cans, but wouldn't it be so cool if you shot a bullet through a coin?]],"VC_Quest_Lv1_SMinase_Quest_00061_RKayamori",
nil)
Adv.talkWithFacial("070003",nil,kw3ei0a,[[It would be cool...]],"VC_Quest_Lv1_SMinase_Quest_00062_SMinase")end)Layout.createStage()Adv.hide(OJZ,0.3)Layout.show(nil,nil,nil,nil,nil,function()
Wait(0.3)end)
Sound.playBGM("SI0001",0,0)Sound.play("AS_Gun_Handgun_Fire")Field.setCameraHeight(
Field.getCameraHeight()+2,0.3)
Field.moveBy("Camera",Vec(1,0,0),0.3,AnimationMode.Auto)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(100,-100),"Angry",BubbleActMode.Scale,"default",nil,0.8)Sound.play("AS_Gun_Hit_Coin")Wait(0.5)
Adv.remove(bP)Sound.play("AS_Gun_Handgun_Fire")
Field.moveBy("Camera",Vec(-1,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+1.5,0.3)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(-100,-50),"Angry",BubbleActMode.Scale,"default",nil,0.9)Sound.play("AS_Gun_Hit_Coin")Wait(0.5)
Adv.remove(bP)Wait(0.3)Sound.play("AS_Gun_Handgun_Fire")
Routine(function()
Wait(0.3)Sound.play("AS_Gun_Handgun_Fire")end)
Field.moveBy("Camera",Vec(1.5,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+1.5,0.3)
Routine(function()Wait(0.3)
Field.moveBy("Camera",Vec(-1.5,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+1.5,0.3)end)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(300,0),"Angry",BubbleActMode.StarShake,"default",nil,0.8,1)Sound.play("AS_Gun_Hit_Coin")Wait(0.3)
local b4IqQW=Adv.bubbleSeActNoWait([[*clink*]],Vec(
-200,100),"Angry",BubbleActMode.StarShake,"default",nil,0.9,1)Sound.play("AS_Gun_Hit_Coin")Wait(0.3)
Adv.remove(bP)Adv.remove(b4IqQW)
Adv.kayamoriTalk([[Wow! You're shooting the same coin over and over in midair!]],"VC_Quest_Lv1_SMinase_Quest_00066_RKayamori",
nil)
Adv.talkWithIcon("SMinase",[[The coin will stay in the air until I stop shooting it, meow.]],"VC_Quest_Lv1_SMinase_Quest_00067_SMinase")Sound.play("AS_Gun_Handgun_Fire")
Field.moveBy("Camera",Vec(-2,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+2,0.3)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(-300,100),"Angry",BubbleActMode.Quake,"default","AS_Gun_Hit_Coin",0.8)Sound.play("AS_Gun_Hit_Coin")Wait(0.5)
Adv.remove(bP)Wait(0.1)Sound.play("AS_Gun_Handgun_Fire")
Field.moveBy("Camera",Vec(3,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+2,0.3)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(300,200),"Angry",BubbleActMode.Quake,"default","AS_Gun_Hit_Coin",0.9)Sound.play("AS_Gun_Hit_Coin")Wait(0.5)
Adv.remove(bP)Sound.play("AS_Gun_Handgun_Fire")
Field.moveBy("Camera",Vec(-3,0,0),0.3,AnimationMode.Auto)
Field.setCameraHeight(Field.getCameraHeight()+2,0.3)
local bP=Adv.bubbleSeActNoWait([[*clink*]],Vec(-300,300),"Angry",BubbleActMode.Quake,"default","AS_Gun_Hit_Coin",1)Sound.play("AS_Gun_Hit_Coin")Wait(0.5)
Adv.remove(bP)
Field.setCameraHeight(Field.getCameraHeight()-0.5,15)
Adv.kayamoriTalk([[Wow, Sumomo! You're so cool!]],"VC_Quest_Lv1_SMinase_Quest_00071_RKayamori",nil)Transition.start(1)Sound.playEmptyBGM(1)
Field.startNovel(function()
Field.finishEvent()Layout.createStage(OJZ)
Layout.show({LZeg0,"010001"},{kw3ei0a,"000001"})Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[......]],"VC_Quest_Lv1_SMinase_Quest_00072_SMinase",true)
Adv.talkWithFacial("000301",nil,LZeg0,[[What's the matter?]],"VC_Quest_Lv1_SMinase_Quest_00073_RKayamori")
Adv.talkWithFacial("000001",nil,kw3ei0a,[[I just came to my senses and realized how stupid it is to let myself be egged on by you, meow.]],"VC_Quest_Lv1_SMinase_Quest_00074_SMinase")
Adv.talkWithFacial("0300",nil,kw3ei0a,[[Let's pretend this never happened, meow.]],"VC_Quest_Lv1_SMinase_Quest_00075_SMinase")
Adv.act(kw3ei0a,"030102",AdvCharacterMouth.Mouth01)Field.startEvent()
Field.setTalkCamera("SMinase_Quest",0)Sound.play("AS_Aim_Gun")
Sound.playBGM("SB0038",0,0)
Field.setCameraFov(Field.getCameraFov()*0.8,0.3)
Routine(function()
local C=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.3)Adv.remove(C)end)Layout.createStageZoomIn(OJZ,nil,0.3)
Layout.show({LZeg0,"030302"},{kw3ei0a,"030104"})
Adv.talkWithFacial(nil,nil,LZeg0,[[Holy crap! Why are you pointing that gun at me?! Violence is wrong!]],"VC_Quest_Lv1_SMinase_Quest_00076_RKayamori")
Adv.talkWithFacial("030001",nil,kw3ei0a,[[......]],"VC_Quest_Lv1_SMinase_Quest_00077_SMinase",true)Sound.playEmptyBGM(2)
Adv.talkWithFacial("240001",nil,kw3ei0a,[[Heh... Just kidding, meow.]],"VC_Quest_Lv1_SMinase_Quest_00078_SMinase")
Adv.talkWithFacial("150001",nil,LZeg0,[[Thank goodness!]],"VC_Quest_Lv1_SMinase_Quest_00079_RKayamori")
Adv.talkWithFacial("060101",nil,kw3ei0a,[[I'm tired of having to deal with you, meow. I'm leaving now, meow.]],"VC_Quest_Lv1_SMinase_Quest_00080_SMinase")
Adv.act(LZeg0,"110001",AdvCharacterMouth.Close)
Adv.actDelay(2,LZeg0,"110301",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,LZeg0,[[Well, I got to see something cool, at least. Thanks, Sumomo.]],"VC_Quest_Lv1_SMinase_Quest_00081_RKayamori")
Adv.actDelay(0,LZeg0,"110301",AdvCharacterMouth.Close)
Adv.talkWithFacial("060001",nil,kw3ei0a,[[Just be careful not to end up becoming my next target, meow...]],"VC_Quest_Lv1_SMinase_Quest_00082_SMinase")Transition.start()Field.finishEvent()end)Field.startEvent()Layout.createStage()
Layout.show()
Field.setCameraComposition(Vec(-2.2,0,19.64),Vec(0,1.9,0),0)Adv.hide(OJZ)
Field.moveCameraTargetWait("TKunimi_Quest3")local iuGb=Field.getCameraAngleH()
Field.setCameraAngleH(iuGb-90,0)Field.setActiveWithTag("MiOhshima",false)
Field.setActive("HOgasawara_Gaya",false)Wait(1)Transition.finish(nil,2)Wait(2)
Field.turnTo("TKunimi_Quest3",90,0.5)Wait(0.5)Layout.show({EspneS5,"020203"})
Adv.talkWithFacial(
nil,nil,EspneS5,[[Ruka...]],"VC_Quest_Lv1_SMinase_Quest_00083_TKunimi")
Adv.talkWithFacial("020001",nil,EspneS5,[[I'm still waiting...for my soda...]],"VC_Quest_Lv1_SMinase_Quest_00084_TKunimi")Adv.fadeOutWithShield(1.5)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local nmJGp_=Bath.startBathTimeEvent("SMinase",BathInviteMode.Active,function(h0v3PIV,Uc)
Adv.talkWithFacial(nil,nil,h0v3PIV,[[(Maybe I should invite Sumomo to join me for a soak.)]],"VC_Quest_01069_v003_RKayamori")
local JSkUQL=Bath.BathQuestion("SMinase",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,h0v3PIV,[[Hey, Sumomo.]],"VC_Quest_01070_v003_RKayamori")
Adv.talkWithFacial(nil,nil,Uc,[[*sniff* You smell of gunpowder, meow.]],"VC_Quest_01071_v003_SMinase")
Adv.talkWithFacial(nil,nil,h0v3PIV,[[Huh? Really? I don't smell anything.]],"VC_Quest_01072_v003_RKayamori")
Adv.talkWithFacial(nil,nil,Uc,[[We're going to the bath, meow. This smell is driving me crazy, meow.]],"VC_Quest_01073_v003_SMinase")
Adv.talkWithFacial(nil,nil,h0v3PIV,[[Sounds good!]],"VC_Quest_01074_v003_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,h0v3PIV,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return JSkUQL end)
if nmJGp_==0 then
Bath.startBathTimeNovel("SMinase",nil,"Wash",function(PTUZ2v,qlZeO3Pr,fG9zS,WiXG)
Sound.play("AS_Echo_HandTub")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Sumomo, are you okay with baths?]],"VC_SMinase_Lv1_Novel_00000_RKayamori")
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Why? Is there a reason for me not to be, meow?]],"VC_SMinase_Lv1_Novel_00001_SMinase")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Well, cats hate it when you try to bathe them.]],"VC_SMinase_Lv1_Novel_00002_RKayamori")
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Are you making fun of me, meow? Baths are great hunting grounds for assassins. Should I show you how easy they make it to wash away the blood, meow?]],"VC_SMinase_Lv1_Novel_00003_SMinase")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Oh, cool it with the threats! Come on, I'll wash your hair.]],"VC_SMinase_Lv1_Novel_00004_RKayamori")
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Sis is the only one who gets to wash my hair, meow.]],"VC_SMinase_Lv1_Novel_00005_SMinase")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Don't be like that. Here, sit down. I'm gonna rinse you with water.]],"VC_SMinase_Lv1_Novel_00006_RKayamori")Sound.play("AS_Echo_Bathsplashes")
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Meow...]],"VC_SMinase_Lv1_Novel_00007_SMinase")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[*gasp*]],"VC_SMinase_Lv1_Novel_00008_RKayamori")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Oh my gosh, you squeezed your eyes shut like a real cat! That's so adorable! I guess you really don't like baths, huh?]],"VC_SMinase_Lv1_Novel_00009_RKayamori")
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[Mark my words, I will put a bullet in you, meow!]],"VC_SMinase_Lv1_Novel_00010_SMinase")end)end;Exit_World()end