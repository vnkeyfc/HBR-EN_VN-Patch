local w0qyLbH="Quest_Lv1_YShirakawa"function init()
Log("Called Quest_Lv1_YShirakawa")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("YShirakawa_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("YShirakawa_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(step1)end
if Quest.stateStep(w0qyLbH,2)then
if
GetLocalFlag("ゴミを拾った")==0 then
SetPeriodText("Pick up 3 pieces of trash on Main Street!")elseif GetLocalFlag("ゴミを拾った")==1 then
SetPeriodText("Pick up 2 more pieces of trash on Main Street!")elseif GetLocalFlag("ゴミを拾った")==2 then
SetPeriodText("Pick up 1 more piece of trash on Main Street!")end
TouchQuestEvent("YShirakawa_Quest",w0qyLbH,TalkToYShirakawa)
Field.touchQuestEventOnlyOnce("Garbage1_Quest_Lv1_YShirakawa",w0qyLbH,function()
SetLocalFlag("ゴミ2拾った",1)Yield(PickUpGarbage)end)
Field.touchQuestEventOnlyOnce("Garbage2_Quest_Lv1_YShirakawa",w0qyLbH,function()
SetLocalFlag("ゴミ2拾った",2)Yield(PickUpGarbage)end)
Field.touchQuestEventOnlyOnce("Garbage3_Quest_Lv1_YShirakawa",w0qyLbH,function()
SetLocalFlag("ゴミ2拾った",3)Yield(PickUpGarbage)end)end;if Quest.stateStep(w0qyLbH,3)then
SetPeriodText("Return to Yuina!")
Quest.TouchEvent("YShirakawa_Quest",w0qyLbH,Step3)end;if
Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end;if
Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end;if
Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()local nsgji=Field.getPosition("Player")
local bClTIa=Adv.characterAsync("RKayamori")local rDzL7SVO=Adv.characterAsync("YShirakawa")
local BW0WFP=Field.getRotation("YShirakawa_Quest")Field.setActiveWithTag("Gaya",false)
Field.startTalkEx("YShirakawa_Quest",FaceToFaceMode.None,FaceToFaceMode.Turn,function()
Adv.kayamoriTalk([[Well, if it isn't the leader of Squad 30-G. Is something the matter?]],"VC_Quest_Lv1_YShirakawa_Quest_00000_RKayamori",
nil)Field.faceToFaceEx("YShirakawa_Quest","Player")
Field.waitTaskKey("YShirakawa_Quest")
Layout.show({bClTIa,"000301"},{rDzL7SVO,"000001"})Adv.actDelay(1,rDzL7SVO,"000102")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Yes. Something urgent must have come up, because someone left their half-eaten garbage out everywhere.]],"VC_Quest_Lv1_YShirakawa_Quest_00001_YShirakawa")
Adv.talkWithFacial("010101",nil,rDzL7SVO,[[If you help me clean up, in return, I'd be happy to help with anything troubling you. What do you say?]],"VC_Quest_Lv1_YShirakawa_Quest_00002_YShirakawa")local X8=Quest.receive(w0qyLbH)
if X8 ==QuestWindow.Receive then
Transition.start()return function()Quest.refreshState()end else
Transition.start()return
function()Field.cancelQuest("YShirakawa_Quest",nsgji)end end end)end
function step1()Adv.fadeOut(0)
local JQT=Adv.characterAsync("RKayamori")local AtYtR=Adv.characterAsync("YShirakawa")
Field.setActiveWithTag("Gaya",false)Field.prepareEventCharacter("YShirakawa_Quest")
Field.startTalk("YShirakawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({JQT,"110301"},{AtYtR,"010101"})Adv.fadeIn(0.5)Transition.finish()
Adv.talkWithFacial("110301",nil,JQT,[[It's a deal!]],"VC_Quest_Lv1_YShirakawa_Quest_00003_RKayamori")
Adv.talkWithFacial("070101",nil,AtYtR,[[Let's divide and conquer.]],"VC_Quest_Lv1_YShirakawa_Quest_00004_YShirakawa")
Adv.talkWithFacial("070301",nil,AtYtR,[[You take the area by the cafeteria entrance.]],"VC_Quest_Lv1_YShirakawa_Quest_00005_YShirakawa")
Adv.talkWithFacial("110302",nil,JQT,[[Understood!]],"VC_Quest_Lv1_YShirakawa_Quest_00006_RKayamori",nil)Transition.start()end)Field.finishEvent()Field.disableLookAtAll()
Layout.show()Field.changeCameraToPlayable(0)
Field.returnToDefaultStance("YShirakawa_Quest",0.1)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function TalkToYShirakawa()local ND2BCh3=Adv.characterAsync("YShirakawa")
Field.startTalk("YShirakawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({ND2BCh3,"000201"})Adv.actDelay(1,ND2BCh3,"000301")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I'd like you to pick up the trash near the cafeteria entrance.]],"VC_Quest_Lv1_YShirakawa_Quest_00007_YShirakawa")end)end
function PickUpGarbage()
if GetLocalFlag("ゴミ2拾った")==1 then
Field.turnToTarget("Player","Garbage1_Quest_Lv1_YShirakawa",0.3)elseif GetLocalFlag("ゴミ2拾った")==2 then
Field.turnToTarget("Player","Garbage2_Quest_Lv1_YShirakawa",0.3)elseif GetLocalFlag("ゴミ2拾った")==3 then
Field.turnToTarget("Player","Garbage3_Quest_Lv1_YShirakawa",0.3)end;Sound.play("SY_Item_Get")
Adv.kayamoriTalk([[(I caught...some trash!)]],"VC_Quest_Lv1_YShirakawa_Quest_00008_RKayamori",
nil)Field.disableLookAt("Player")
IncLocalFlag("ゴミを拾った")
if GetLocalFlag("ゴミを拾った")>=3 then
Adv.kayamoriTalk([[Better head back.]],"VC_Quest_Lv1_YShirakawa_Quest_00009_RKayamori",
nil)Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step3()local IODBg=Adv.characterAsync("YShirakawa")
local YRDu=Adv.characterAsync("RKayamori")
local CWRiP=Adv.loadBGAsync("Background/Cafeteria/Cafeteria_Front_Night")
Field.startTalk("YShirakawa_Quest",FaceToFaceMode.Auto,function()Transition.start()
Field.setActiveWithTag("Gaya",false)Adv.waitAsyncInstanceAll()
Field.startNovel(function()Wait(1)
Sound.playBGM("SB0023",1,3)
Layout.createStageZoomOut(CWRiP,Position.BG_CENTER)Layout.show({IODBg,"010303"})
Adv.waitAsyncInstanceAll()Transition.finish()Wait(1)
Adv.actDelay(2.5,IODBg,"010201")
Adv.talkWithFacial(nil,nil,IODBg,[[Wonderful, it's looking spick-and-span. You were a big help.]],"VC_Quest_Lv1_YShirakawa_Quest_00010_YShirakawa")
Adv.talkWithFacial("010201",nil,IODBg,[[As promised, I'll help you out with something too.]],"VC_Quest_Lv1_YShirakawa_Quest_00011_YShirakawa")Layout.show({YRDu,"020001"},IODBg)
Adv.act(IODBg,"010101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,YRDu,[[Hmmm...]],"VC_Quest_Lv1_YShirakawa_Quest_00012_RKayamori")
Adv.talkWithFacial("010102",nil,IODBg,[[I'll solve any issue you've got. Maybe you're having trouble with your Seraph? Struggling with training?]],"VC_Quest_Lv1_YShirakawa_Quest_00013_YShirakawa")
Adv.talkWithFacial("070101",nil,YRDu,[[No, not really.]],"VC_Quest_Lv1_YShirakawa_Quest_00014_RKayamori")
Adv.talkWithFacial("000101",nil,IODBg,[[Then, maybe some friction with the girls in your squad?]],"VC_Quest_Lv1_YShirakawa_Quest_00015_YShirakawa")
Adv.talkWithFacial("020001",nil,YRDu,[[None of that either.]],"VC_Quest_Lv1_YShirakawa_Quest_00016_RKayamori")
Adv.talkWithFacial("070103",nil,IODBg,[[What about something delicate? The kind of problem you can't talk to anyone else about.]],"VC_Quest_Lv1_YShirakawa_Quest_00017_YShirakawa")
Adv.talkWithFacial("000301",nil,YRDu,[[You really signing yourself up for that?]],"VC_Quest_Lv1_YShirakawa_Quest_00018_RKayamori")Adv.actDelay(0.6,YRDu,"0003")
Adv.talkWithFacial("010001",nil,IODBg,[[Certainly. Tell me anything at all.]],"VC_Quest_Lv1_YShirakawa_Quest_00019_YShirakawa")Adv.actDelay(0,YRDu,"020201")
Adv.actDelay(1.5,YRDu,"000301")
Adv.talkWithFacial(nil,nil,YRDu,[[What if I told you I had an...unsatisfied desire?]],"VC_Quest_Lv1_YShirakawa_Quest_00020_RKayamori")Adv.actDelay(0,YRDu,"000301")Sound.stopBGM(0)
Adv.act(IODBg,"050301",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,IODBg,[[Urk.]],"VC_Quest_Lv1_YShirakawa_Quest_00021_YShirakawa")
Adv.talkWithFacial("000301",nil,YRDu,[[Urk?]],"VC_Quest_Lv1_YShirakawa_Quest_00022_RKayamori")Adv.fadeOut(2,true,"CharacterUp")
Adv.moveLayer(IODBg,"CharacterForward")Adv.moveBy(IODBg,Vec(-350,0),2)
Adv.moveBy(YRDu,Vec(-350,0),2)Adv.moveBy(CWRiP,Vec(-350,0),2)Wait(2)
Sound.playBGM("SB0033",1,1)
Adv.talkWithFacial("2103",nil,IODBg,[[Don't let it get to you, Yuina Shirakawa!]],"VC_Quest_Lv1_YShirakawa_Quest_00023_YShirakawa",nil,nil,AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("2101",nil,IODBg,[[It's my role to hear out anyone on anything and to help those in need!]],"VC_Quest_Lv1_YShirakawa_Quest_00024_YShirakawa",
nil,nil,AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("2100",nil,IODBg,[[Pursuing that ideal has taught me so much in my days here, I thought, and yet...]],"VC_Quest_Lv1_YShirakawa_Quest_00025_YShirakawa")Adv.fadeIn(1.5,true,"CharacterUp")
Adv.moveBy(IODBg,Vec(350,0),1.5)Adv.moveBy(YRDu,Vec(350,0),1.5)
Adv.moveBy(CWRiP,Vec(350,0),1.5)Wait(1.5)
Adv.talkWithFacial("010103",nil,IODBg,[[I see. Are you, by any chance, attracted to people of the same gender?]],"VC_Quest_Lv1_YShirakawa_Quest_00026_YShirakawa")
Adv.talkWithFacial(nil,nil,YRDu,[[Mhmm.]],"VC_Quest_Lv1_YShirakawa_Quest_00027_RKayamori")Sound.playBGM("SB0023",1,3)
Adv.act(IODBg,"010001")Adv.actDelay(1.3,IODBg,"010101")
Adv.talkWithFacial(nil,nil,IODBg,[[I see... Ahem. Well, that's just part of who you are. It's nothing abnormal.]],"VC_Quest_Lv1_YShirakawa_Quest_00028_YShirakawa")
Adv.talkWithFacial("040001",nil,IODBg,[[Everyone has their own interests. I say you should remind yourself that you're not the only one who's different.]],"VC_Quest_Lv1_YShirakawa_Quest_00029_YShirakawa")
Adv.talkWithFacial("040001",nil,IODBg,[[The love we feel for another human being transcends the opinions of others, including their approval or disapproval. We're all human, after all.]],"VC_Quest_Lv1_YShirakawa_Quest_00030_YShirakawa")
Adv.talkWithFacial("010101",nil,IODBg,[[That's why, no matter how peculiar you think your love may be, it's perfectly acceptable. Believe in yourself.]],"VC_Quest_Lv1_YShirakawa_Quest_00031_YShirakawa")
Adv.talkWithFacial("0803",nil,YRDu,[[So, believe in myself, and tell her how I feel?]],"VC_Quest_Lv1_YShirakawa_Quest_00032_RKayamori")Adv.act(IODBg,"0801")Adv.actDelay(1,IODBg,"0701")
Adv.talkWithFacial(
nil,nil,IODBg,[[W-Wait! Let's not be hasty. As your feelings are particularly unique, there's a possibility they may be misunderstood.]],"VC_Quest_Lv1_YShirakawa_Quest_00033_YShirakawa")Adv.actDelay(0,IODBg,"0701")
Adv.talkWithFacial("150002",nil,YRDu,[[So I <i>am</i> weird. Knew it...]],"VC_Quest_Lv1_YShirakawa_Quest_00034_RKayamori")Adv.act(IODBg,"210102")
Adv.actDelay(1.8,IODBg,"070101")
Adv.talkWithFacial(nil,nil,IODBg,[[No, that's not what I'm saying! Whoever you love, I'll support you!]],"VC_Quest_Lv1_YShirakawa_Quest_00035_YShirakawa")Adv.actDelay(0,IODBg,"070101")
Adv.talkWithFacial("010101",nil,IODBg,[[That's why I want you to tell me. <i>Only</i> me.]],"VC_Quest_Lv1_YShirakawa_Quest_00036_YShirakawa")
Adv.talkWithFacial("0201",nil,YRDu,[[Don't say things like that to me...]],"VC_Quest_Lv1_YShirakawa_Quest_00037_RKayamori")
Adv.talkWithFacial("070301",nil,YRDu,[[Unless you really want me to fall for you.]],"VC_Quest_Lv1_YShirakawa_Quest_00038_RKayamori")Adv.shakeXY(IODBg,0.3,0.2,0.2)Adv.act(YRDu,"0003")
Adv.act(IODBg,"210101",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,IODBg,[[*gasp*]],"VC_Quest_Lv1_YShirakawa_Quest_00039_YShirakawa",true)
Adv.act(IODBg,"210101",AdvCharacterMouth.Close)
Adv.talkWithFacial("000302",nil,YRDu,[[Can I?]],"VC_Quest_Lv1_YShirakawa_Quest_00040_RKayamori")Wait(0.2)Adv.fadeOut(1,true,"CharacterUp")
Sound.playBGM("SB0033",1,1.3)Adv.moveLayer(IODBg,"CharacterForward")
Adv.moveBy(IODBg,Vec(-350,0),1.3)Adv.moveBy(YRDu,Vec(-350,0),1.3)
Adv.moveBy(CWRiP,Vec(-350,0),1.3)Wait(1.3)Adv.act(IODBg,"210101")
Adv.actDelay(2.3,IODBg,"0700")
Adv.talkWithFacial(nil,nil,IODBg,[[O-O-Oh goodness, she... D-Don't get flustered, Yuina Shirakawa!]],"VC_Quest_Lv1_YShirakawa_Quest_00041_YShirakawa")
Adv.actDelay(0,IODBg,"0700",AdvCharacterMouth.Close)Adv.fadeIn(0.5,true,"CharacterUp")
Adv.moveBy(IODBg,Vec(350,0),1.3)Adv.moveBy(YRDu,Vec(350,0),1.3)
Adv.moveBy(CWRiP,Vec(350,0),1.3)Wait(1.3)
Adv.talkWithFacial("070103",nil,IODBg,[[Y-You may!]],"VC_Quest_Lv1_YShirakawa_Quest_00042_YShirakawa")Adv.act(YRDu,"010003")
Adv.actDelay(1,YRDu,"110301",0.5)
Adv.talkWithFacial(nil,nil,YRDu,[[Yay! Looking forward to our happy life together forever.]],"VC_Quest_Lv1_YShirakawa_Quest_00043_RKayamori")Adv.actDelay(0,YRDu,"110301")
Adv.shakeXY(IODBg,0.3,0.2,0.2)
Adv.talkWithFacial("210101",nil,IODBg,[[W-We aren't dating!]],"VC_Quest_Lv1_YShirakawa_Quest_00044_YShirakawa")
Adv.talkWithFacial("170101",nil,YRDu,[[Wow, kicked to the curb.]],"VC_Quest_Lv1_YShirakawa_Quest_00045_RKayamori")
Adv.talkWithFacial("210302",nil,IODBg,[[B-But even I don't know how my feelings may change in the future!]],"VC_Quest_Lv1_YShirakawa_Quest_00046_YShirakawa")Sound.playBGM("SB0023",1,3)
Adv.actDelay(0.6,YRDu,"000301")
Adv.talkWithFacial("090101",nil,IODBg,[[So let's...just be friends for now.]],"VC_Quest_Lv1_YShirakawa_Quest_00047_YShirakawa")
Adv.talkWithFacial(nil,nil,IODBg,[[Okay, Kayamori?]],"VC_Quest_Lv1_YShirakawa_Quest_00048_YShirakawa")
Adv.talkWithFacial("1103",nil,YRDu,[[You mean Ruka. Call me Ruka.]],"VC_Quest_Lv1_YShirakawa_Quest_00049_RKayamori")Adv.act(IODBg,"090101")
Adv.talkWithFacial(nil,nil,IODBg,[[Sure. Okay, Ruka?]],"VC_Quest_Lv1_YShirakawa_Quest_00050_YShirakawa")
Adv.talkWithFacial("110302",nil,YRDu,[[Works for me, Yuina!]],"VC_Quest_Lv1_YShirakawa_Quest_00051_RKayamori")end)Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local LB0A=Bath.startBathTimeEvent("YShirakawa",BathInviteMode.Active,function(dl,sKPjQkdn)
Adv.talkWithFacial(nil,nil,dl,[[(Maybe I should invite Yuina to join me for a soak.)]],"VC_Quest_01958_v002_RKayamori")
local HHH9IlJp=Bath.BathQuestion("YShirakawa",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,dl,[[Um... Would you care to join me in the bath?]],"VC_Quest_01959_v002_RKayamori")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Oh, Ruka. Thanks for the help today. Why don't we continue our chat in the bath?]],"VC_Quest_01960_v002_YShirakawa")
Adv.talkWithFacial(nil,nil,dl,[[Sounds great, Yuina!]],"VC_Quest_01961_v002_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,dl,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return HHH9IlJp end)
if LB0A==0 then
Bath.startBathTimeNovel("YShirakawa",nil,"Wash",function(uYz2ryy4,zVPRGDnG,IKxw,w0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[I've noticed you're calling me "Yuina."]],"VC_YShirakawa_Lv1_Novel_00000_YShirakawa")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Yup. That's you.]],"VC_YShirakawa_Lv1_Novel_00001_RKayamori")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Well, yes, but no one else around calls me that. We aren't in high school here, you know.]],"VC_YShirakawa_Lv1_Novel_00002_YShirakawa")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Come onnn, I wanna call you Yuina-senpaaaiii!]],"VC_YShirakawa_Lv1_Novel_00003_RKayamori")Sound.play("AS_Echo_Bathsplashes")Wait(0.5)
Adv.talkWithFacial(
nil,nil,zVPRGDnG,[[I-I'm not telling you to stop. I'm just observing that...no one has called me that yet.]],"VC_YShirakawa_Lv1_Novel_00004_YShirakawa")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Then I can be first!]],"VC_YShirakawa_Lv1_Novel_00005_RKayamori")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Uh, certainly. No rules against that. Call me whatever you wish.]],"VC_YShirakawa_Lv1_Novel_00006_YShirakawa")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[You're a bottomless well of kindness.]],"VC_YShirakawa_Lv1_Novel_00007_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Also, when you take it off... Just wow.]],"VC_YShirakawa_Lv1_Novel_00008_RKayamori")Sound.play("AS_Echo_HandTub")Wait(2)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Hey! You can't go around saying things like that!]],"VC_YShirakawa_Lv1_Novel_00009_YShirakawa")end)end;Exit_World()end