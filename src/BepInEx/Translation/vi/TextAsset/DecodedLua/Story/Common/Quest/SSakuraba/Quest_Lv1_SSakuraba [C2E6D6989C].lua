local w0qyLbH="Quest_Lv1_SSakuraba"function init()
Log("Called Quest_Lv1_SSakuraba")refresh()end
function refresh()
Field.setActiveWithTag("SSakuraba",false)if Quest.stateUnreceivablelinne(w0qyLbH)then return end
if
Quest.stateReceivable(w0qyLbH)then
LinneEvent("SSakuraba","Kayamori, if you have some time, would you mind helping me with something?",Message,Quest.isCleardOnce(w0qyLbH),"Communication")end
if Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then
EmptyEvent("Narvy1_Quest_Lv1_SSakuraba")EmptyEvent("Narvy2_Quest_Lv1_SSakuraba")
EmptyEvent("Narvy3_Quest_Lv1_SSakuraba")EmptyEvent("Narvy4_Quest_Lv1_SSakuraba")
StartEvent(Step2)end
if Quest.stateStep(w0qyLbH,3)then
Field.createFollower("SSakuraba")SetPeriodText("Find her crystal ball!")
Field.touchQuestEventOnlyOnce("Narvy1_Quest_Lv1_SSakuraba",w0qyLbH,function()
SetLocalFlag("拾ったものの番号",1)
if GetLocalFlag("拾った回数")==0 then Yield(Step3_1)elseif
GetLocalFlag("拾った回数")==1 then Yield(Step3_2)elseif
GetLocalFlag("拾った回数")==2 then Yield(Step3_3)elseif GetLocalFlag("拾った回数")==3 then
Yield(Step3_4)end end)
Field.touchQuestEventOnlyOnce("Narvy2_Quest_Lv1_SSakuraba",w0qyLbH,function()
SetLocalFlag("拾ったものの番号",2)
if GetLocalFlag("拾った回数")==0 then Yield(Step3_1)elseif
GetLocalFlag("拾った回数")==1 then Yield(Step3_2)elseif
GetLocalFlag("拾った回数")==2 then Yield(Step3_3)elseif GetLocalFlag("拾った回数")==3 then
Yield(Step3_4)end end)
Field.touchQuestEventOnlyOnce("Narvy3_Quest_Lv1_SSakuraba",w0qyLbH,function()
SetLocalFlag("拾ったものの番号",3)
if GetLocalFlag("拾った回数")==0 then Yield(Step3_1)elseif
GetLocalFlag("拾った回数")==1 then Yield(Step3_2)elseif
GetLocalFlag("拾った回数")==2 then Yield(Step3_3)elseif GetLocalFlag("拾った回数")==3 then
Yield(Step3_4)end end)
Field.touchQuestEventOnlyOnce("Narvy4_Quest_Lv1_SSakuraba",w0qyLbH,function()
SetLocalFlag("拾ったものの番号",4)
if GetLocalFlag("拾った回数")==0 then Yield(Step3_1)elseif
GetLocalFlag("拾った回数")==1 then Yield(Step3_2)elseif
GetLocalFlag("拾った回数")==2 then Yield(Step3_3)elseif GetLocalFlag("拾った回数")==3 then
Yield(Step3_4)end end)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Message(nsgji)
if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_Lv1_AKanzaki_Quest_00000_RKayamori",
nil)return end;Linne.Inputing(nsgji)Linne.Wait(nsgji,1)
Linne.Receive(nsgji,"I have misplaced my precious crystal ball.")Wait(3)Sound.setResumeBGM("")
local bClTIa=Quest.receive(w0qyLbH)
if bClTIa==QuestWindow.Receive then
RemoveLinneEvent("SSakuraba",0)Quest.refreshState()end end
function Step1()Sound.playEmptyBGM(1.5)
Transition.setOutdoor("","Union Street")
Exit_FieldAndChange("FriendStreet","BackStreetPoint",nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("RKayamori")local BW0WFP=Adv.characterAsync("SSakuraba")local X8=
Field.getPosition("SSakuraba_Quest")+Vec(1.5,0,-0.9)
Field.initPlayerPosition(X8)Field.activeEventCharacterWait("SSakuraba_Quest")
Field.setActiveWithTag("Gaya",false)Wait(1)
Field.startTalk("SSakuraba_Quest",FaceToFaceMode.Auto,function()Adv.fadeIn(1)
Sound.playBGM(AdvBGM.Peace3,0,0)
Adv.act(BW0WFP,"000003",AdvCharacterMouth.Mouth03)Layout.show({rDzL7SVO,"000302"},{BW0WFP})
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[Sorry for the wait. How did you lose something that big?]],"VC_Quest_Lv1_SSakuraba_Quest_00001_RKayamori")
Adv.talkWithFacial("020003",nil,BW0WFP,[[It has a frictional resistance of nearly zero, so it slips out of my hands rather easily.]],"VC_Quest_Lv1_SSakuraba_Quest_00002_SSakuraba")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[That's a pretty dramatic way to lose something.]],"VC_Quest_Lv1_SSakuraba_Quest_00003_RKayamori")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Did you drop it around here somewhere?]],"VC_Quest_Lv1_SSakuraba_Quest_00004_RKayamori")
Adv.talkWithFacial("050003",nil,BW0WFP,[[...Okay.]],"VC_Quest_Lv1_SSakuraba_Quest_00005_SSakuraba",nil,nil,AdvCharacterMouth.Mouth03)Layout.show()
Field.setLookAtPosition("Player",Vec(67.370,-5.230,23.160),0.3)Wait(1)Adv.fadeOut(0.2)Layout.show()
Field.setCameraCompositionEx(Vec(72.724,
-3.665,23.211),Vec(20.000,270.000,0.000),30.00,0)Wait(0.1)
Field.setCameraCompositionEx(Vec(72.724,-3.665,23.498),Vec(20.000,270.000,0.000),30.00,2.5)Adv.fadeIn(0.2)Wait(1.5)Adv.fadeOut(0.2)
Field.stopTaskKey("CameraComposition")Wait(0.1)
Field.setCameraCompositionEx(Vec(58.000,-3.270,-19.650),Vec(20.000,0.000,0.000),30.00,0)Wait(0.1)
Field.setCameraCompositionEx(Vec(57.730,-3.270,-19.650),Vec(20.000,0.000,0.000),30.00,2.5)Adv.fadeIn(0.2)Wait(1.5)Adv.fadeOut(0.2)
Field.stopTaskKey("CameraComposition")Wait(0.1)
Field.setCameraCompositionEx(Vec(70.560,-4.790,14.300),Vec(20.000,350.000,0.000),30.00)Adv.fadeIn(0.2)
Adv.kayamoriTalk([[But there are Narbies everywhere!]],"VC_Quest_Lv1_SSakuraba_Quest_00006_RKayamori",nil)Adv.fadeOut(0.2)
Field.stopTaskKey("CameraComposition")Field.stopTaskKey("Camera")
Field.setCameraCompositionEnabled(false)Field.setTalkCamera("SSakuraba_Quest")
Field.setLookAtPosition("Player",Vec(65.330,
-5.360,13.020),0)Adv.fadeIn(0.2)Field.disableLookAt("Player",0.3)
Wait(0.5)
Adv.act(BW0WFP,"000003",AdvCharacterMouth.Mouth03)Layout.show({rDzL7SVO,"000302"},{BW0WFP})
Adv.talkWithFacial("080003",
nil,BW0WFP,[[They're like a trap... As soon as I think I've picked up my ball, I realize it's actually a Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00007_SSakuraba")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[How'd you mistake them for your ball?!]],"VC_Quest_Lv1_SSakuraba_Quest_00008_RKayamori")
Adv.talkWithFacial("000002",nil,rDzL7SVO,[[Well anyway, let's get started. I'll search every inch of this place.]],"VC_Quest_Lv1_SSakuraba_Quest_00009_RKayamori")
Adv.talkWithFacial("050003",nil,BW0WFP,[[Thank you.]],"VC_Quest_Lv1_SSakuraba_Quest_00010_SSakuraba",nil,nil,AdvCharacterMouth.Mouth03)Transition.start()end)Layout.show()
Field.resetPosition("BackStreetPoint")Sound.returnFieldBGM()Wait(1)
Transition.finish()SetLocalFlag("拾った回数",0)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_1()local JQT=Adv.characterAsync("RKayamori")
Field.startEvent()Layout.createStage()Adv.waitAsyncInstanceAll()
if
GetLocalFlag("拾ったものの番号")==1 then
Field.stopTaskKey("Narvy1_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy1_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy1_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==2 then
Field.stopTaskKey("Narvy2_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy2_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy2_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==3 then
Field.stopTaskKey("Narvy3_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy3_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy3_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==4 then
Field.stopTaskKey("Narvy4_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy4_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy4_Quest_Lv1_SSakuraba")end;Layout.show({JQT,"070201"})
Adv.talkWithFacial(nil,nil,JQT,[[Found it!]],"VC_Quest_Lv1_SSakuraba_Quest_00011_RKayamori",
nil,nil,AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("170202",nil,JQT,[[Tsk...it's another Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00012_RKayamori")Transition.start()Layout.show()
IncLocalFlag("拾った回数")Field.finishEvent()Quest.refreshState()end
function Step3_2()local AtYtR=Adv.characterAsync("RKayamori")
Field.startEvent()Layout.createStage()Adv.waitAsyncInstanceAll()
if
GetLocalFlag("拾ったものの番号")==1 then
Field.stopTaskKey("Narvy1_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy1_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy1_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==2 then
Field.stopTaskKey("Narvy2_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy2_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy2_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==3 then
Field.stopTaskKey("Narvy3_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy3_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy3_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==4 then
Field.stopTaskKey("Narvy4_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy4_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy4_Quest_Lv1_SSakuraba")end;Layout.show({AtYtR,"070201"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Found it!]],"VC_Quest_Lv1_SSakuraba_Quest_00011_RKayamori",
nil,nil,AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("170202",nil,AtYtR,[[Tsk...it's another Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00012_RKayamori")Transition.start()Layout.show()
IncLocalFlag("拾った回数")Field.finishEvent()Quest.refreshState()end
function Step3_3()local ND2BCh3=Adv.characterAsync("RKayamori")
Field.startEvent()Layout.createStage()Adv.waitAsyncInstanceAll()
if
GetLocalFlag("拾ったものの番号")==1 then
Field.stopTaskKey("Narvy1_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy1_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy1_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==2 then
Field.stopTaskKey("Narvy2_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy2_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy2_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==3 then
Field.stopTaskKey("Narvy3_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy3_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy3_Quest_Lv1_SSakuraba")elseif
GetLocalFlag("拾ったものの番号")==4 then
Field.stopTaskKey("Narvy4_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy4_Quest_Lv1_SSakuraba",0.3)Field.setTalkCamera("Narvy4_Quest_Lv1_SSakuraba")end;Layout.show({ND2BCh3,"070201"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Found it!]],"VC_Quest_Lv1_SSakuraba_Quest_00011_RKayamori")
Adv.talkWithFacial("170202",nil,ND2BCh3,[[Tsk...it's another Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00012_RKayamori")
Adv.talkWithFacial("030201",nil,ND2BCh3,[[You weren't kidding! This <i>is</i> a trap!]],"VC_Quest_Lv1_SSakuraba_Quest_00017_RKayamori")Transition.start()Layout.show()
IncLocalFlag("拾った回数")Field.finishEvent()Quest.refreshState()end
function Step3_4()local IODBg=Adv.characterAsync("RKayamori")
local YRDu=Adv.characterAsync("SSakuraba")local CWRiP
if GetLocalFlag("拾ったものの番号")==1 then
Field.stopTaskKey("Narvy1_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy1_Quest_Lv1_SSakuraba",0.3)CWRiP="Narvy1_Quest_Lv1_SSakuraba"elseif
GetLocalFlag("拾ったものの番号")==2 then Field.stopTaskKey("Narvy2_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy2_Quest_Lv1_SSakuraba",0.3)CWRiP="Narvy2_Quest_Lv1_SSakuraba"elseif
GetLocalFlag("拾ったものの番号")==3 then Field.stopTaskKey("Narvy3_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy3_Quest_Lv1_SSakuraba",0.3)CWRiP="Narvy3_Quest_Lv1_SSakuraba"elseif
GetLocalFlag("拾ったものの番号")==4 then Field.stopTaskKey("Narvy4_Quest_Lv1_SSakuraba")
Field.turnToTarget("Player","Narvy4_Quest_Lv1_SSakuraba",0.3)CWRiP="Narvy4_Quest_Lv1_SSakuraba"end
Field.startTalkEx(CWRiP,FaceToFaceMode.None,FaceToFaceMode.None,function()
Layout.show({IODBg,"070201"})
Adv.talkWithFacial(nil,nil,IODBg,[[Found it!]],"VC_Quest_Lv1_SSakuraba_Quest_00011_RKayamori",nil,nil,AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("170202",nil,IODBg,[[Tsk...it's another Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00012_RKayamori")
Adv.talkWithFacial("080202",nil,IODBg,[[Wait, there's something under the Narby...]],"VC_Quest_Lv1_SSakuraba_Quest_00020_RKayamori")Sound.play("SY_Item_Get")Wait(0.5)
Adv.talkWithFacial("030201",nil,IODBg,[[It's smooth. It's shiny. It's gotta be her crystal ball!!!]],"VC_Quest_Lv1_SSakuraba_Quest_00021_RKayamori")Layout.show()local LB0A=Field.getPosition("Player")
local dl=Field.getPosition("Follower/SSakuraba")local sKPjQkdn=(dl-LB0A)*0.05+LB0A
Field.stopTaskKey("Camera")
Field.setCameraFov(Field.getDefaultCameraFov()*0.6,1,1,0.2)
Field.moveTo("Camera",sKPjQkdn,1,AnimationMode.Auto,1,0.2)Wait(1)
Field.faceToFaceTalk("Follower/SSakuraba",FaceToFaceMode.Turn,FaceToFaceMode.Turn,0.8)Wait(1.5)
Adv.act(YRDu,"080003",AdvCharacterMouth.Mouth03)Layout.show({IODBg,"110301"},{YRDu})
Adv.talkWithFacial(nil,
nil,IODBg,[[Phew... It wasn't a Narby for once. Saku, I found it!]],"VC_Quest_Lv1_SSakuraba_Quest_00022_RKayamori")
Adv.talkWithFacial("090002",nil,YRDu,[[Thank you so much. This is a great help.]],"VC_Quest_Lv1_SSakuraba_Quest_00023_SSakuraba")Adv.fadeOut(0.5)Layout.show()
if
GetLocalFlag("拾ったものの番号")==1 then
Field.setActive("Narvy1_Quest_Lv1_SSakuraba",false)elseif GetLocalFlag("拾ったものの番号")==2 then
Field.setActive("Narvy2_Quest_Lv1_SSakuraba",false)elseif GetLocalFlag("拾ったものの番号")==3 then
Field.setActive("Narvy3_Quest_Lv1_SSakuraba",false)elseif GetLocalFlag("拾ったものの番号")==4 then
Field.setActive("Narvy4_Quest_Lv1_SSakuraba",false)end
Field.changeAnimation("Follower/SSakuraba","FieldUnique01",1,0)Wait(1)Adv.fadeIn(0.5)
Sound.playBGM(AdvBGM.Happy3,0,0)Wait(0.5)Layout.show()
Adv.act(YRDu,"080002",AdvCharacterMouth.Mouth03)Layout.show({YRDu})
Adv.playCutIn("SSakuraba","Default","Panic",[[Oh no! I sense a foreboding shadow over you.]],"VC_Quest_Lv1_SSakuraba_Quest_00024_SSakuraba",4,0)Layout.show()
Adv.act(YRDu,"080002",AdvCharacterMouth.Mouth03)Layout.show({IODBg,"070301"},{YRDu})
Adv.talkWithFacial(nil,
nil,IODBg,[[She's telling my fortune all of a sudden...]],"VC_Quest_Lv1_SSakuraba_Quest_00025_RKayamori")
Adv.talkWithFacial("170302",nil,IODBg,[[But what do "shadows" even mean? Calling them "foreboding" doesn't exactly clear things up.]],"VC_Quest_Lv1_SSakuraba_Quest_00026_RKayamori")
Adv.talkWithFacial("000001",nil,YRDu,[[Do you doubt my prophecy?]],"VC_Quest_Lv1_SSakuraba_Quest_00027_SSakuraba")
Adv.talkWithFacial("000301",nil,IODBg,[[I mean, it's just astrology, right? Do you have a super high success rate or something?]],"VC_Quest_Lv1_SSakuraba_Quest_00028_RKayamori")
Adv.talkWithFacial("090001",nil,YRDu,[[I have a customer satisfaction rate of 69%.]],"VC_Quest_Lv1_SSakuraba_Quest_00029_SSakuraba")
Adv.talkWithFacial("030301",nil,IODBg,[[Nice.]],"VC_Quest_Lv1_SSakuraba_Quest_00030_RKayamori",nil,nil,AdvCharacterMouth.Mouth03)
Adv.act(IODBg,"030301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,YRDu,[[And an accuracy rate of 53%.]],"VC_Quest_Lv1_SSakuraba_Quest_00031_SSakuraba")
Adv.talkWithFacial("080301",nil,IODBg,[[That's like flipping a coin!]],"VC_Quest_Lv1_SSakuraba_Quest_00032_RKayamori")
Adv.talkWithFacial("090002",nil,YRDu,[[It does <i>not</i> merely come down to a choice of two, rather it is divined from a multitude. In the world of divination, 53% is a marvelous rate.]],"VC_Quest_Lv1_SSakuraba_Quest_00033_SSakuraba")Sound.playEmptyBGM(1.5,0)
Adv.talkWithFacial("000301",nil,IODBg,[[All right then, why don't you guess what this "shadow" over me is?]],"VC_Quest_Lv1_SSakuraba_Quest_00034_RKayamori")Layout.show()
Sound.playBGM(AdvBGM.Suspense2,0,0)Layout.show({YRDu,"000002"})
Adv.talkWithFacial(nil,nil,YRDu,[[The shadow is dark... Ominous...]],"VC_Quest_Lv1_SSakuraba_Quest_00035_SSakuraba")
Adv.talkWithFacial("080002",nil,YRDu,[[I see... Yes... It is a shadow of malice.]],"VC_Quest_Lv1_SSakuraba_Quest_00036_SSakuraba")Layout.show()
Adv.act(YRDu,"080002",AdvCharacterMouth.Mouth03)Layout.show({IODBg,"170301"},{YRDu})
Adv.actDelay(4.2,IODBg,"000001",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,IODBg,[[Malice? Someone got a grudge against me? I mean, there's all kinds of people out there.]],"VC_Quest_Lv1_SSakuraba_Quest_00037_RKayamori")
Adv.actDelay(2.8,IODBg,"000301",AdvCharacterMouth.Mouth01)Sound.playEmptyBGM(1.5,0)
Adv.talkWithFacial("000002",nil,YRDu,[[This is not the shadow of grudge. No...]],"VC_Quest_Lv1_SSakuraba_Quest_00038_SSakuraba")Sound.playBGM(AdvBGM.Gag1,0,0)
Adv.talkWithFacial("020001",nil,YRDu,[[You are being looked down upon.]],"VC_Quest_Lv1_SSakuraba_Quest_00039_SSakuraba")
Adv.talkWithFacial("150301",nil,IODBg,[[That does sound malice-y...]],"VC_Quest_Lv1_SSakuraba_Quest_00040_RKayamori")
Adv.talkWithFacial("110002",nil,IODBg,[[I mean, adults have been looking down on me my whole life.]],"VC_Quest_Lv1_SSakuraba_Quest_00041_RKayamori")
Adv.actDelay(2.8,IODBg,"000301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("090002",nil,YRDu,[[This is indeed some kind of fate... I shall give you some advice.]],"VC_Quest_Lv1_SSakuraba_Quest_00042_SSakuraba")
Adv.talkWithFacial("000301",nil,IODBg,[[For free?]],"VC_Quest_Lv1_SSakuraba_Quest_00043_RKayamori")
Adv.talkWithFacial("000003",nil,YRDu,[[No, I must take something for my services.]],"VC_Quest_Lv1_SSakuraba_Quest_00044_SSakuraba")
Adv.playCutInWithAct(IODBg,"080301","RKayamori","Default","Surprise","Even though I was the one who found your little crystal ball for you?!","VC_Quest_Lv1_SSakuraba_Quest_00045_RKayamori",3,
-350,nil)
Adv.act(IODBg,"080301",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("040003",nil,YRDu,[[I shall take 1 GP.]],"VC_Quest_Lv1_SSakuraba_Quest_00046_SSakuraba")
Adv.act(IODBg,"030301",AdvCharacterMouth.Mouth03)
Adv.actDelay(0.8,IODBg,"150301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,IODBg,[[That's cheap! Honestly, <i>that</i> makes me more nervous.]],"VC_Quest_Lv1_SSakuraba_Quest_00047_RKayamori")
Adv.actDelay(0,IODBg,"150301",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("000002",nil,YRDu,[[No matter how much or how little, so long as I receive something, I can formally offer my services as a fortune teller.]],"VC_Quest_Lv1_SSakuraba_Quest_00048_SSakuraba")
Adv.talkWithFacial("000301",nil,IODBg,[[Alright. Here ya go. 1 GP.]],"VC_Quest_Lv1_SSakuraba_Quest_00049_RKayamori")Layout.show()Wait(0.5)
Field.changeAnimation("Player","FieldItemStart")Wait(1.5)Sound.play("SY_Sale_Execution")Wait(0.5)
Field.changeAnimation("Player","FieldItemEnd")Wait(1)Sound.playEmptyBGM(1.5,0)
Layout.show({YRDu,"000003"})
Adv.talkWithFacial(nil,nil,YRDu,[[Your payment has been received.]],"VC_Quest_Lv1_SSakuraba_Quest_00050_SSakuraba")Sound.playBGM(AdvBGM.Happy3,0,0)
Adv.act(YRDu,"040002",AdvCharacterMouth.Mouth01)Wait(2)
Adv.talkWithFacial(nil,nil,YRDu,[[Soon, you will fall in love.]],"VC_Quest_Lv1_SSakuraba_Quest_00051_SSakuraba")Layout.show()
Layout.show({IODBg,"080301"},{YRDu,"040002"})
Adv.talkWithFacial("080301",nil,IODBg,[[Me?!]],"VC_Quest_Lv1_SSakuraba_Quest_00052_RKayamori")
Adv.talkWithFacial("090003",nil,YRDu,[[Yes... You must trust in this being.]],"VC_Quest_Lv1_SSakuraba_Quest_00053_SSakuraba")
Adv.talkWithFacial("170301",nil,IODBg,[[With things how they are, I seriously doubt that... I'm like, the furthest person away from falling in love.]],"VC_Quest_Lv1_SSakuraba_Quest_00054_RKayamori")
Adv.act(IODBg,"170301",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("090001",nil,YRDu,[[People change when they least expect it.]],"VC_Quest_Lv1_SSakuraba_Quest_00055_SSakuraba")
Adv.talkWithFacial("110301",nil,IODBg,[[Oh yeah? You think so? That's a surprise...]],"VC_Quest_Lv1_SSakuraba_Quest_00056_RKayamori")
Adv.talkWithFacial("000002",nil,YRDu,[[However, only the cosmos knows what will truly come to pass. Such is divination.]],"VC_Quest_Lv1_SSakuraba_Quest_00057_SSakuraba")
Adv.talkWithFacial("030301",nil,IODBg,[[Oh, yeah, you're wrong like half the time!]],"VC_Quest_Lv1_SSakuraba_Quest_00058_RKayamori")
Adv.talkWithFacial("020002",nil,YRDu,[[To be precise, it's only 47% of the time.]],"VC_Quest_Lv1_SSakuraba_Quest_00059_SSakuraba")
Adv.talkWithFacial("070301",nil,IODBg,[[That's close enough!]],"VC_Quest_Lv1_SSakuraba_Quest_00060_RKayamori")
Adv.talkWithFacial("000001",nil,YRDu,[[I am correct 53% of the time.]],"VC_Quest_Lv1_SSakuraba_Quest_00061_SSakuraba")
Adv.talkWithFacial("170301",nil,IODBg,[[That isn't really enough to change my mind, ya know.]],"VC_Quest_Lv1_SSakuraba_Quest_00062_RKayamori")
Adv.talkWithFacial("110001",nil,IODBg,[[But in any case, I'll keep your advice in mind.]],"VC_Quest_Lv1_SSakuraba_Quest_00063_RKayamori")
Adv.actDelay(0.6,IODBg,"110301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("090001",nil,YRDu,[[...May the path you walk always be aligned with the stars.]],"VC_Quest_Lv1_SSakuraba_Quest_00064_SSakuraba")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local HHH9IlJp=Bath.startBathTimeEvent("SSakuraba",BathInviteMode.Active,function(uYz2ryy4,zVPRGDnG)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[(Maybe I should invite Saku to come for a soak.)]],"VC_Quest_01553_v002_RKayamori")
local IKxw=Bath.BathQuestion("SSakuraba",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hey, Saku, wanna go to the baths together?]],"VC_Quest_01554_v002_RKayamori")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[If you would have me.]],"VC_Quest_01555_v002_SSakuraba")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Awesome!]],"VC_Quest_00369_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return IKxw end)
if HHH9IlJp==0 then
Bath.startBathTimeNovel("SSakuraba",nil,"Wash",function(w0,UgXzI_C,MLFLplLe,jwq)local kw3ei0a=false
Adv.talkWithFacial(nil,nil,w0,[[You have eyes!]],"VC_Quest_Lv1_SSakuraba_Quest_00068_RKayamori")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Of course I have eyes...]],"VC_Quest_Lv1_SSakuraba_Quest_00069_SSakuraba")
Adv.talkWithFacial(nil,nil,w0,[[I mean, you're always coverin' 'em up, so it's not totally unthinkable, right?]],"VC_Quest_Lv1_SSakuraba_Quest_00070_RKayamori")Sound.play("AS_Echo_HandTub")Wait(1)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[I must maintain my air of mystery as a fortune teller, so I usually cover them with my hair.]],"VC_Quest_Lv1_SSakuraba_Quest_00071_SSakuraba")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[The only time you can see my eyes is probably when I wash my hair, like now.]],"VC_Quest_Lv1_SSakuraba_Quest_00072_SSakuraba")
Adv.talkWithFacial(nil,nil,w0,[[Wow, I was so lucky that one moment, then! I'm gonna get a good peek while I can.]],"VC_Quest_Lv1_SSakuraba_Quest_00073_RKayamori")Sound.playENV("AS_shower_loop")Wait(1.5)
Adv.talkWithFacial(nil,nil,w0,[[Awww, I can't see now that you rinsed your hair! I wanted to keep looking into your eyes! They're so pretty!]],"VC_Quest_Lv1_SSakuraba_Quest_00074_RKayamori")
local EspneS5=Routine(function()Wait(1.5)
if kw3ei0a==false then
Sound.volume("AS_shower_loop",0,1.5)Wait(1.5)Sound.stop("AS_shower_loop")kw3ei0a=true end end)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[You think they're pretty?]],"VC_Quest_Lv1_SSakuraba_Quest_00075_SSakuraba")
Adv.talkWithFacial(nil,nil,w0,[[They're so pretty that you'd become known as a fortune-telling beauty if people saw them.]],"VC_Quest_Lv1_SSakuraba_Quest_00076_RKayamori")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[I must maintain my air of mystery as a fortune teller, so I cannot show anyone carelessly.]],"VC_Quest_Lv1_SSakuraba_Quest_00077_SSakuraba")
Adv.talkWithFacial(nil,nil,w0,[[Aw, that's too bad. Oh well. Hopefully I get to see them again.]],"VC_Quest_Lv1_SSakuraba_Quest_00078_RKayamori")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[If the opportunity presents itself...]],"VC_Quest_Lv1_SSakuraba_Quest_00079_SSakuraba")StopRoutine(EspneS5)if kw3ei0a==false then
Sound.stop("AS_shower_loop")kw3ei0a=true end end)end;Exit_World()end