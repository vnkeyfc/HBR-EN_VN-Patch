local w0qyLbH="Quest_Lv2_BIYamawaki"function init()
Log("Called Quest_Lv2_BIYamawaki")refresh()end
function refresh()
Field.setActiveWithTag("BIYamawaki",false)if Quest.stateUnreceivablelinne(w0qyLbH)then return end;if
Quest.stateReceivable(w0qyLbH)then
LinneEvent("BIYamawaki","Hey, Kayamori.",Message,Quest.isCleardOnce(w0qyLbH),"Communication")end;if
Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end;if
Quest.stateStep(w0qyLbH,2)then StartEvent(Step2)end
if
Quest.stateStep(w0qyLbH,3)then
SetPeriodText("Invite two members of 31-A to be assistants!")
if GetLocalFlag("誰を誘ったか1人目")~=1 and
GetLocalFlag("誰を誘ったか1人目")~=1 then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step3_YIzumi)else Field.createFollower("YIzumi")
HideMapDestinationIcon("YIzumi_Quest")end
if GetLocalFlag("誰を誘ったか1人目")~=2 and
GetLocalFlag("誰を誘ったか1人目")~=2 then
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step3_TTojo)else Field.createFollower("TTojo")
HideMapDestinationIcon("TTojo_Quest")end
if GetLocalFlag("誰を誘ったか1人目")~=3 and
GetLocalFlag("誰を誘ったか1人目")~=3 then
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step3_TKunimi)else Field.createFollower("TKunimi")
HideMapDestinationIcon("TKunimi_Quest")end
if GetLocalFlag("誰を誘ったか1人目")~=4 and
GetLocalFlag("誰を誘ったか1人目")~=4 then
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step3_KAsakura)else Field.createFollower("KAsakura")
HideMapDestinationIcon("KAsakura_Quest")end
if GetLocalFlag("誰を誘ったか1人目")~=5 and
GetLocalFlag("誰を誘ったか1人目")~=5 then
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step3_MAikawa)else Field.createFollower("MAikawa")
HideMapDestinationIcon("MAikawa_Quest")end end
if Quest.stateStep(w0qyLbH,4)then
SetPeriodText("Go to the heliport with your two assistants!")if GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then
Field.createFollower("YIzumi")end;if
GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
Field.createFollower("TTojo")end;if
GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
Field.createFollower("TKunimi")end;if
GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
Field.createFollower("KAsakura")end;if
GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
Field.createFollower("MAikawa")end
SetFlag("山脇交流Lv2_誰を誘ったか1人目",GetLocalFlag("誰を誘ったか1人目"))
SetFlag("山脇交流Lv2_誰を誘ったか2人目",GetLocalFlag("誰を誘ったか2人目"))HideMapDestinationIcon("YIzumi_Quest")
HideMapDestinationIcon("TTojo_Quest")HideMapDestinationIcon("TKunimi_Quest")
HideMapDestinationIcon("KAsakura_Quest")HideMapDestinationIcon("MAikawa_Quest")
Quest.TouchEvent("HeliportGate",w0qyLbH,Step4)end
if Quest.stateStep(w0qyLbH,5)then StartEvent(Step5)end
if Quest.stateStep(w0qyLbH,6)then Field.deleteFollowerAll()
Sound.reverbCave()Sound.playENV("EN_Cave_Loop")StartEvent(Step6)end
if Quest.stateStep(w0qyLbH,7)then StartEvent(Step7)end
if Quest.stateStep(w0qyLbH,8)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Message(nsgji)
if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_Lv1_AKanzaki_Quest_00000_RKayamori",
nil)return end;Linne.Inputing(nsgji)Linne.Wait(nsgji,1)
Linne.Receive(nsgji,"Will you assist me with an experiment to destroy the world?")Wait(1)
Adv.kayamoriTalkMonolog([[(Oh, it's Wakkie. Guess she's up to something again.)]],"VC_Quest_Lv2_BIYamawaki_Quest_00001_RKayamori",nil)local bClTIa=Quest.receive(w0qyLbH)
if bClTIa==QuestWindow.Receive then
RemoveLinneEvent("BIYamawaki",0)Sound.playEmptyBGM()Quest.refreshState()end end
function Step1()Transition.setOutdoor("","Union Street")
Exit_FieldAndChange("FriendStreet","StoneChairsPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("RKayamori")local BW0WFP=Adv.characterAsync("BIYamawaki")local X8=
Field.getPosition("BIYamawaki_Quest")+Vec(-1,0,-1.5)
local JQT=Adv.loadBGAsync("Background/NarvySquare/NarvySquare_Evening")Field.setActiveWithTag("Gaya",false)
Field.createDynamicCharacter("YBungo")
Field.setPosition("Dynamic/YBungo",Vec(60.4,-6.1,-9))
Field.turnToTarget("Dynamic/YBungo","BIYamawaki_Quest",0)Field.initPlayerPosition(X8)
Field.activeEventCharacterWait("BIYamawaki_Quest")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setLookAtTarget("BIYamawaki_Quest","Player",0)Field.turnToTarget("Player","BIYamawaki_Quest",0)
Field.setCameraCompositionEx(Vec(57.570,
-4.900,-16.900),Vec(0.000,0.000,0.000),30.00)Sound.playBGM("SB0040",0,1)Wait(1)Adv.fadeIn(1)
Layout.show({rDzL7SVO,"070201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Mission accepted. Let's destroy the world ASAP!]],"VC_Quest_Lv2_BIYamawaki_Quest_00002_RKayamori")Layout.show()
Field.disableLookAt("BIYamawaki_Quest",0.3)Field.disableLookAt("Player",0.3)
Field.moveToAct("BIYamawaki_Quest",
Field.getPosition("BIYamawaki_Quest")+Vec(0,0,-0.2),0.3,"FieldWalk",0.3)Wait(0.3)
Field.moveByWait("BIYamawaki_Quest",Vec(0,0,-0.5),0.5)
Field.setLookAtTarget("Player","BIYamawaki_Quest",0.3)Wait(0.2)
Field.turnToTargetWait("BIYamawaki_Quest","Player",0.5)Wait(0.3)Layout.show({BW0WFP,"090001"})
Adv.talkWithFacial(
nil,nil,BW0WFP,[[Zat's zee spirit.]],"VC_Quest_Lv2_BIYamawaki_Quest_00003_BIYamawaki")Layout.show()
Field.setCameraCompositionEx(Vec(57.310,-4.820,-15.100),Vec(0.000,20.000,0.000),27.00,0.3)Field.disableLookAt("Player",0.3)
Field.moveBy("Player",Vec(0.58,0,0.3),0.3)
Field.setLookAtTarget("Player","BIYamawaki_Quest")Wait(0.4)
Field.changeAnimation("Player","BattleGuardLoop",1,0.3)Wait(0.2)Sound.play("AS_hug")
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)
local AtYtR=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")local ND2BCh3=0
Routine(function()
while ND2BCh3 ==0 do
Field.moveByWait("BIYamawaki_Quest",Vec(0.01,0,0.01),0.2,AnimationMode.None)
Field.moveByWait("BIYamawaki_Quest",Vec(-0.01,0,-0.01),0.2,AnimationMode.None)end end)Wait(0.5)Adv.remove(AtYtR)
Layout.show({rDzL7SVO,"110201"})Adv.shakeXY(rDzL7SVO,0.5,0.1,0)
Adv.playCutIn("RKayamori","Default","Superiority",[[All right! First, I'll start with you, Wakkie!]],"VC_Quest_Lv2_BIYamawaki_Quest_00004_RKayamori",2.5,
-0,nil)Layout.show()Sound.play("AS_Rubbing_Lathers")
Layout.show({BW0WFP,"030201"})Adv.shakeXY(BW0WFP,0.5,0.1,0)
Adv.playCutIn("BIYamawaki","Default","Panic",[[Ack! Stop! Unhand me!!! Vhat are you sinking!!!]],"VC_Quest_Lv2_BIYamawaki_Quest_00005_BIYamawaki",2.5,
-0,nil)Layout.show()ND2BCh3=1
Field.setCameraCompositionEx(Vec(57.780,-4.820,-15.490),Vec(0.000,0.000,0.000),33.00,0.5)
Field.moveBy("Player",Vec(-0.2,0,-0.2),0.5,AnimationMode.None)Field.changeAnimation("Player","FieldIdle",1,0.5)
Wait(0.5)Layout.show({rDzL7SVO,"080201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Huh?]],"VC_Quest_Lv2_BIYamawaki_Quest_00006_RKayamori")Layout.show()
Layout.show({rDzL7SVO,"080301"},{BW0WFP,"030101"})
Routine(function()Adv.moveBy(BW0WFP,Vec(-5,-5),0.3)Wait(0.3)
Adv.moveBy(BW0WFP,Vec(5,5),0.3)end)
Adv.talkWithFacial(nil,nil,BW0WFP,[[You just accepted a mission from me! So you can't just go destroying zee one who gave it to you!]],"VC_Quest_Lv2_BIYamawaki_Quest_00007_BIYamawaki")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[Everything's gonna get destroyed eventually though, right?]],"VC_Quest_Lv2_BIYamawaki_Quest_00008_RKayamori")
Adv.talkWithFacial("030101",nil,BW0WFP,[[You've got to be crazy in zee head if you sink ve're going to kill each other!]],"VC_Quest_Lv2_BIYamawaki_Quest_00009_BIYamawaki")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[I was thinking it's the mad scientist-y thing to do.]],"VC_Quest_Lv2_BIYamawaki_Quest_00010_RKayamori")Adv.actDelay(1.5,BW0WFP,"2601")
Adv.talkWithFacial(nil,nil,BW0WFP,[[<i>Vee</i> vill survive! And zen vee vill take over zee vorld! <i>Vat</i> is vhat a mad scientist does!!!]],"VC_Quest_Lv2_BIYamawaki_Quest_00011_BIYamawaki")
Adv.talkWithFacial("070102",nil,BW0WFP,[[And you, who just tried to kill zee one who gave you zee job, are plenty mad yourself.]],"VC_Quest_Lv2_BIYamawaki_Quest_00012_BIYamawaki")
Adv.talkWithFacial("110001",nil,rDzL7SVO,[[I would prefer being called "crazy," thanks.]],"VC_Quest_Lv2_BIYamawaki_Quest_00013_RKayamori")Adv.act(BW0WFP,"060101")Adv.shake(BW0WFP,0.3,0.1)
Adv.talkWithFacial(
nil,nil,BW0WFP,[[Yikes! You're even self avare!]],"VC_Quest_Lv2_BIYamawaki_Quest_00014_BIYamawaki")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[So, what do you want me to do this time?]],"VC_Quest_Lv2_BIYamawaki_Quest_00015_RKayamori")
Adv.talkWithFacial("000002",nil,BW0WFP,[[Zee Cancer are getting in zee vay of <i>our</i> plan to destroy zee vorld. Vee can't have zem destroying humanity first.]],"VC_Quest_Lv2_BIYamawaki_Quest_00016_BIYamawaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Yeah, we gotta do something about them.]],"VC_Quest_Lv2_BIYamawaki_Quest_00017_RKayamori")
Adv.talkWithFacial("090101",nil,BW0WFP,[[Zat is vhy I vant you to try out zis fire starter.]],"VC_Quest_Lv2_BIYamawaki_Quest_00018_BIYamawaki")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[A fire starter? You can defeat Cancers with that?]],"VC_Quest_Lv2_BIYamawaki_Quest_00019_RKayamori")
Adv.talkWithFacial("090003",nil,BW0WFP,[[Yes. And all zee Cancers nearby zat breathe in zee smoke vill also, in turn, die.]],"VC_Quest_Lv2_BIYamawaki_Quest_00020_BIYamawaki")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[Wow! It's like a pesticide!]],"VC_Quest_Lv2_BIYamawaki_Quest_00021_RKayamori")
Adv.talkWithFacial("260101",nil,BW0WFP,[[Do you understand now how I am not all talk?]],"VC_Quest_Lv2_BIYamawaki_Quest_00022_BIYamawaki")
Adv.talkWithFacial("110301",nil,rDzL7SVO,[[Now we don't need to fight anymore! BURN THEM ALL!]],"VC_Quest_Lv2_BIYamawaki_Quest_00023_RKayamori")
Adv.talkWithFacial("090101",nil,BW0WFP,[[Now zat you understand, zee first step is defeating all of zee Cancers.]],"VC_Quest_Lv2_BIYamawaki_Quest_00024_BIYamawaki")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[I thought you set them on fire them to defeat them...]],"VC_Quest_Lv2_BIYamawaki_Quest_00025_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[Do you sink you can set zem ablaze without defeating zem first?]],"VC_Quest_Lv2_BIYamawaki_Quest_00026_BIYamawaki")
Adv.talkWithFacial("170301",nil,rDzL7SVO,[[You can't?]],"VC_Quest_Lv2_BIYamawaki_Quest_00027_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[Sink about it. If you're attacked by a Cancer vhile you're starting zee fire, you'll die.]],"VC_Quest_Lv2_BIYamawaki_Quest_00028_BIYamawaki")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Can't we just set 'em on fire from far away?]],"VC_Quest_Lv2_BIYamawaki_Quest_00029_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[Zee smoke vould dissipate in zee vind in an instant.]],"VC_Quest_Lv2_BIYamawaki_Quest_00030_BIYamawaki")
Adv.talkWithFacial("170301",nil,rDzL7SVO,[[Hold on, this is sounding scarily familiar...]],"VC_Quest_Lv2_BIYamawaki_Quest_00031_RKayamori")
Adv.talkWithFacial("090103",nil,BW0WFP,[[You're afraid... Mwa ha ha!]],"VC_Quest_Lv2_BIYamawaki_Quest_00032_BIYamawaki")
Adv.talkWithFacial("170001",nil,rDzL7SVO,[[Definitely not.]],"VC_Quest_Lv2_BIYamawaki_Quest_00033_RKayamori")
Adv.act(rDzL7SVO,"170301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("090102",nil,BW0WFP,[[I vant you to test zis fire starter zat can kill giant packs of Cancers in one fell swoop.]],"VC_Quest_Lv2_BIYamawaki_Quest_00034_BIYamawaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[So I use it after the Cancers are already dead?]],"VC_Quest_Lv2_BIYamawaki_Quest_00035_RKayamori")
Adv.talkWithFacial("070101",nil,BW0WFP,[[As zee killing blow.]],"VC_Quest_Lv2_BIYamawaki_Quest_00036_BIYamawaki")
Adv.talkWithFacial("170002",nil,rDzL7SVO,[[If I use this "one-fell-swoop" fire starter stuff after beating a pack of Cancers, my friends are gonna look at me like I'm stupid.]],"VC_Quest_Lv2_BIYamawaki_Quest_00037_RKayamori")Adv.actDelay(0.8,BW0WFP,"060103")
Adv.actDelay(3.7,BW0WFP,"000102")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Just yell somesing before you do it, like, "Your reign of terror is over!!!".]],"VC_Quest_Lv2_BIYamawaki_Quest_00038_BIYamawaki")Adv.act(BW0WFP,"000102")
Adv.actDelay(1.2,rDzL7SVO,"030302")Adv.actDelay(3.5,rDzL7SVO,"000302")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[But I'll have already shouted, "Your reign of terror here is over!!!" right when I beat it.]],"VC_Quest_Lv2_BIYamawaki_Quest_00039_RKayamori")Adv.act(rDzL7SVO,"000302")
Adv.actDelay(2,BW0WFP,"060103")Adv.actDelay(4.5,BW0WFP,"070102")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Do it however you feel. Just hold off on saying it until you actually do zee ignition.]],"VC_Quest_Lv2_BIYamawaki_Quest_00040_BIYamawaki")Adv.act(BW0WFP,"070102")
Adv.actDelay(1.8,rDzL7SVO,"030302")Adv.actDelay(6.2,rDzL7SVO,"000302")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[But then I'm gonna be saying, "Your reign of terror here is over!!!" twice for as my finishing battle cry!]],"VC_Quest_Lv2_BIYamawaki_Quest_00041_RKayamori")Adv.act(rDzL7SVO,"000302")
Adv.actDelay(1,BW0WFP,"060103")Adv.actDelay(2.8,BW0WFP,"260101")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Zen for zee second one, you could just change it to "Long live zee Great Yamawaki!!!". Here's zee fire starter and some matches. Make sure you have both!]],"VC_Quest_Lv2_BIYamawaki_Quest_00042_BIYamawaki")Adv.act(BW0WFP,"260101")
UI.showLineInfo([[You received the Anti-Cancer Fire Starter and Matches!]],2)Wait(0.5)
Adv.talkWithFacial("160001",nil,rDzL7SVO,[[So pushy...]],"VC_Quest_Lv2_BIYamawaki_Quest_00043_RKayamori")Transition.start()Field.finishEvent()
Field.deleteDynamicCharacterAll()Sound.returnFieldBGM()Layout.show()
Adv.remove(JQT)Field.setActiveWithTag("Gaya",true)
Field.playerComeIn("ShopPoint",Vec(2))Wait(1)Transition.finish()
Adv.kayamoriTalk([[It's probably dangerous to go by myself... I should invite a couple people.]],"VC_Quest_Lv1_BIYamawaki_Quest_00039_RKayamori",
nil)SetLocalFlag("仲間の人数",0)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_YIzumi()local IODBg=Adv.characterAsync("YIzumi")
local YRDu=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({YRDu,"000301"},{IODBg,"000101"})
Adv.talkWithFacial(nil,nil,IODBg,[[Did you need something?]],"VC_Quest_Lv1_BIYamawaki_Quest_00040_YIzumi")
local CWRiP=Adv.question([[Invite Yukkie?]],[[Invite|Maybe not]],0,true)
if CWRiP==0 then
Adv.talkWithFacial(nil,nil,YRDu,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
if
GetFlag("山脇交流Lv1_誰を誘ったか1人目")~=1 and
GetFlag("山脇交流Lv1_誰を誘ったか2人目")~=1 then
Adv.talkWithFacial("000102",nil,IODBg,[[Did you come up with some special tactic or something? Sure, I'll tag along.]],"VC_Quest_Lv1_BIYamawaki_Quest_00042_YIzumi")else
Adv.talkWithFacial("130101",nil,IODBg,[[I don't mind going with, but don't do anything weird this time, okay?]],"VC_Quest_Lv2_BIYamawaki_Quest_00048_YIzumi")end;Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",1)else SetLocalFlag("誰を誘ったか2人目",1)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,YRDu,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("060101",nil,IODBg,[[Then why did you talk to me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00044_YIzumi")end end)Quest.refreshState()end
function Step3_TTojo()local LB0A=Adv.characterAsync("TTojo")
local dl=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({dl,"000301"},{LB0A,"000101"})
Adv.talkWithFacial(nil,nil,LB0A,[[Do you need something from me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00045_TTojo")
local sKPjQkdn=Adv.question([[Invite Tsukassie?]],[[Invite|Maybe not]],0,true)
if sKPjQkdn==0 then
Adv.talkWithFacial(nil,nil,dl,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
if
GetFlag("山脇交流Lv1_誰を誘ったか1人目")~=2 and
GetFlag("山脇交流Lv1_誰を誘ったか2人目")~=2 then
Adv.talkWithFacial("010101",nil,LB0A,[[A new battle formation? Sure, I'll go with you.]],"VC_Quest_Lv1_BIYamawaki_Quest_00047_TTojo")else
Adv.talkWithFacial("070101",nil,LB0A,[[I'll go, but you won't act all weird again, right?]],"VC_Quest_Lv2_BIYamawaki_Quest_00054_TTojo")end;Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",2)else SetLocalFlag("誰を誘ったか2人目",2)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,dl,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("080101",nil,LB0A,[[Oh?]],"VC_Quest_Lv1_BIYamawaki_Quest_00049_TTojo")end end)Quest.refreshState()end
function Step3_TKunimi()local HHH9IlJp=Adv.characterAsync("TKunimi")
local uYz2ryy4=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({uYz2ryy4,"000301"},{HHH9IlJp,"000101"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Ruka! What seems to be the matter?]],"VC_Quest_Lv1_BIYamawaki_Quest_00050_TKunimi")
local zVPRGDnG=Adv.question([[Invite Cappy?]],[[Invite|Maybe not]],0,true)
if zVPRGDnG==0 then
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("070102",nil,HHH9IlJp,[[I have no reason to refuse! I shall accompany you through hell or high water!!!]],"VC_Quest_Lv1_BIYamawaki_Quest_00052_TKunimi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",3)else SetLocalFlag("誰を誘ったか2人目",3)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("080102",nil,HHH9IlJp,[[That's okay! I get it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00054_TKunimi")end end)Quest.refreshState()end
function Step3_KAsakura()local IKxw=Adv.characterAsync("KAsakura")
local w0=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({w0,"000301"},{IKxw,"000101"})
Adv.talkWithFacial(nil,nil,IKxw,[[Ruka. What's up?]],"VC_Quest_Lv1_BIYamawaki_Quest_00055_KAsakura")
local UgXzI_C=Adv.question([[Invite Karerin?]],[[Invite|Maybe not]],0,true)
if UgXzI_C==0 then
Adv.talkWithFacial(nil,nil,w0,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("000102",nil,IKxw,[[Yeah. I don't have anything else going on. Let's go.]],"VC_Quest_Lv1_BIYamawaki_Quest_00057_KAsakura")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",4)else SetLocalFlag("誰を誘ったか2人目",4)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,w0,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial(nil,nil,IKxw,[[Oh, okay.]],"VC_Quest_Lv1_BIYamawaki_Quest_00059_KAsakura")end end)Quest.refreshState()end
function Step3_MAikawa()local MLFLplLe=Adv.characterAsync("MAikawa")
local jwq=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({jwq,"000301"},{MLFLplLe,"000101"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Whaddaya want?]],"VC_Quest_Lv2_BIYamawaki_Quest_00067_MAikawa")
local kw3ei0a=Adv.question([[Invite Megumin?]],[[Invite|Maybe not]],0,true)
if kw3ei0a==0 then
Adv.talkWithFacial(nil,nil,jwq,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
if
GetFlag("山脇交流Lv1_誰を誘ったか1人目")~=5 and
GetFlag("山脇交流Lv1_誰を誘ったか2人目")~=5 then
Adv.talkWithFacial("010101",nil,MLFLplLe,[[Sure. I've been fixin' to let loose some more of my psychic powers!]],"VC_Quest_Lv1_BIYamawaki_Quest_00062_MAikawa")else
Adv.talkWithFacial("070101",nil,MLFLplLe,[[I'll come along, but I got a bad feelin'... Don't go wildin' like ya did last time, alright?]],"VC_Quest_Lv2_BIYamawaki_Quest_00070_MAikawa")end;Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",5)else SetLocalFlag("誰を誘ったか2人目",5)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,jwq,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("030101",nil,MLFLplLe,[[You messin' with me or somethin'?]],"VC_Quest_Lv1_BIYamawaki_Quest_00064_MAikawa")end end)Quest.refreshState()end
function Step4()local EspneS5;local LZeg0
SetLocalFlag("仲間1が埋まっているか",0)
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[And we're off! To the dungeons!]],"VC_Quest_Lv1_BIYamawaki_Quest_00065_RKayamori",nil)end)
if GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then
EspneS5="YIzumi"IncLocalFlag("仲間1が埋まっているか")end
if GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then EspneS5="TTojo"
IncLocalFlag("仲間1が埋まっているか")else LZeg0="TTojo"end end
if GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then EspneS5="TKunimi"
IncLocalFlag("仲間1が埋まっているか")else LZeg0="TKunimi"end end
if GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then EspneS5="KAsakura"
IncLocalFlag("仲間1が埋まっているか")else LZeg0="KAsakura"end end
if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then EspneS5="MAikawa"
IncLocalFlag("仲間1が埋まっているか")else LZeg0="MAikawa"end end;Field.playerGetOut("HeliportPoint",Vec(0,0,10))
Transition.start()PurgeField()Wait(1)
Routine(function()Sound.stopBGM()
Transition.setFlyGo()Transition.start()end)Wait(6)Sound.reverbCave(ReverbValue.Cave)
SetupFixedDeck(EspneS5,"RKayamori",LZeg0)
Quest.BattleWithFixedParty(w0qyLbH,"Quest_BIYamawaki_Lv2",nil,0,100)Sound.reverbCave(0)Quest.refreshState()end
function Step5()Transition.start()Sound.playEmptyBGM(0)
Exit_FieldAndChange("FriendStreet","StoneChairsPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step6()Adv.fadeOut(0)
local OJZ=Adv.characterAsync("RKayamori")local nmuj=Adv.characterAsync("YIzumi")
local bP=Adv.characterAsync("TTojo")local b4IqQW=Adv.characterAsync("TKunimi")
local iuGb=Adv.characterAsync("KAsakura")local koZU=Adv.characterAsync("MAikawa")
local C=Adv.loadBGAsync("Background/Dungeon/Dungeon_Universaluse_Evening")local nmJGp_;local h0v3PIV;local Uc;local JSkUQL;local PTUZ2v;local qlZeO3Pr
Sound.playBGM("SB0022",0,0)SetLocalFlag("仲間1が埋まっているか",0)
if
GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then nmJGp_="YIzumi"
Uc=Adv.characterAsync("YIzumi")IncLocalFlag("仲間1が埋まっているか")end
if GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then nmJGp_="TTojo"
Uc=Adv.characterAsync("TTojo")IncLocalFlag("仲間1が埋まっているか")else
h0v3PIV="TTojo"JSkUQL=Adv.characterAsync("TTojo")end end
if GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then nmJGp_="TKunimi"
Uc=Adv.characterAsync("TKunimi")IncLocalFlag("仲間1が埋まっているか")else
h0v3PIV="TKunimi"JSkUQL=Adv.characterAsync("TKunimi")end end
if GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then nmJGp_="KAsakura"
Uc=Adv.characterAsync("KAsakura")IncLocalFlag("仲間1が埋まっているか")else
h0v3PIV="KAsakura"JSkUQL=Adv.characterAsync("KAsakura")end end
if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then nmJGp_="MAikawa"
Uc=Adv.characterAsync("MAikawa")IncLocalFlag("仲間1が埋まっているか")else
h0v3PIV="MAikawa"JSkUQL=Adv.characterAsync("MAikawa")end end
Field.startNovel(function()
if nmJGp_=="YIzumi"then Adv.act(Uc,"000201")elseif nmJGp_=="TTojo"then
Adv.act(Uc,"110201")elseif nmJGp_=="TKunimi"then Adv.act(Uc,"110202")elseif nmJGp_=="KAsakura"then
Adv.act(Uc,"000201")elseif nmJGp_=="MAikawa"then Adv.act(Uc,"010001")end
if h0v3PIV=="TTojo"then Adv.act(JSkUQL,"110201")elseif h0v3PIV=="TKunimi"then
Adv.act(JSkUQL,"110202")elseif h0v3PIV=="KAsakura"then Adv.act(JSkUQL,"000201")elseif h0v3PIV=="MAikawa"then
Adv.act(JSkUQL,"010001")end;Layout.createStageFixBg(C,Position.BG_RIGHT)
Layout.show({Uc,PTUZ2v},{JSkUQL,qlZeO3Pr})Wait(1)Transition.finish()Adv.fadeIn(0.5)if
nmJGp_=="YIzumi"then
Adv.talkWithFacial(nil,nil,Uc,[[Well, that was easy.]],"VC_Quest_Lv2_BIYamawaki_Quest_00074_YIzumi")end
if
nmJGp_=="TTojo"then
Adv.talkWithFacial(nil,nil,Uc,[[I didn't even break a sweat.]],"VC_Quest_Lv2_BIYamawaki_Quest_00075_TTojo")elseif h0v3PIV=="TTojo"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[I didn't even break a sweat.]],"VC_Quest_Lv2_BIYamawaki_Quest_00075_TTojo")end
if nmJGp_=="TKunimi"then
Adv.talkWithFacial(nil,nil,Uc,[[We did it!]],"VC_Quest_Lv2_BIYamawaki_Quest_00076_TKunimi")elseif h0v3PIV=="TKunimi"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[We did it!]],"VC_Quest_Lv2_BIYamawaki_Quest_00076_TKunimi")end
if nmJGp_=="KAsakura"then
Adv.talkWithFacial(nil,nil,Uc,[[That went well.]],"VC_Quest_Lv1_BIYamawaki_Quest_00069_KAsakura")elseif h0v3PIV=="KAsakura"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[That went well.]],"VC_Quest_Lv1_BIYamawaki_Quest_00069_KAsakura")end
if nmJGp_=="MAikawa"then
Adv.talkWithFacial(nil,nil,Uc,[[That was easy as pie.]],"VC_Quest_Lv2_BIYamawaki_Quest_00078_MAikawa")elseif h0v3PIV=="MAikawa"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[That was easy as pie.]],"VC_Quest_Lv2_BIYamawaki_Quest_00078_MAikawa")end;Sound.stopBGM(1)
Layout.createStageZoomIn(C,Position.BG_LEFT,0.5)Layout.show({OJZ,"070201"})Wait(1)
Routine(function()
local QgyWztK=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.8)Adv.remove(QgyWztK)end)
Adv.act(OJZ,"070201",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,OJZ,[[Long live zee Great Yamawaki!!!]],"VC_Quest_Lv2_BIYamawaki_Quest_00079_RKayamori")Adv.scale(C,1.5,0.2)Adv.swelling(OJZ,0,0,1.2,0.3,0)
Layout.show()local fG9zS=nil;Sound.play("AS_Explosion_Once")
Routine(function()
local Oo6ecUO=Adv.showEffect("Adventure/Explosion/Explosion","ForegroundEffect")Wait(1)
fG9zS=Adv.showEffect("Adventure/Smoke/Smoke","ForegroundEffect")Wait(1)Adv.remove(Oo6ecUO)end)Adv.shakeXY(C,0.3,0.3,0.3)
local WiXG=Adv.bubbleSeActNoWait([[*BOOOM*]],Vec(0,100),"Angry",BubbleActMode.StarShake,"default",
nil,1,nil,1.75)Wait(2)Sound.playBGM("SB0033",0,0)
if nmJGp_=="YIzumi"then
Adv.act(Uc,"080201",AdvCharacterMouth.Mouth03)elseif nmJGp_=="TTojo"then
Adv.act(Uc,"080203",AdvCharacterMouth.Mouth03)elseif nmJGp_=="TKunimi"then
Adv.act(Uc,"180202",AdvCharacterMouth.Mouth03)elseif nmJGp_=="KAsakura"then
Adv.act(Uc,"080201",AdvCharacterMouth.Mouth03)elseif nmJGp_=="MAikawa"then
Adv.act(Uc,"180201",AdvCharacterMouth.Mouth03)end
if h0v3PIV=="TTojo"then
Adv.act(JSkUQL,"080203",AdvCharacterMouth.Mouth03)elseif h0v3PIV=="TKunimi"then
Adv.act(JSkUQL,"180202",AdvCharacterMouth.Mouth03)elseif h0v3PIV=="KAsakura"then
Adv.act(JSkUQL,"080201",AdvCharacterMouth.Mouth03)elseif h0v3PIV=="MAikawa"then
Adv.act(JSkUQL,"180201",AdvCharacterMouth.Mouth03)end;Layout.createStageFixBg(C,Position.BG_RIGHT)
Layout.show({Uc,PTUZ2v},{JSkUQL,qlZeO3Pr})if nmJGp_=="YIzumi"then
Adv.talkWithFacial(nil,nil,Uc,[[She self-destructed?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00080_YIzumi")end
if
nmJGp_=="TTojo"then
Adv.talkWithFacial(nil,nil,Uc,[[An explosion?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00081_TTojo")elseif h0v3PIV=="TTojo"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[An explosion?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00081_TTojo")end
if nmJGp_=="TKunimi"then
Adv.talkWithFacial(nil,nil,Uc,[[Just like the kamikaze units!]],"VC_Quest_Lv2_BIYamawaki_Quest_00082_TKunimi")elseif h0v3PIV=="TKunimi"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[Just like the kamikaze units!]],"VC_Quest_Lv2_BIYamawaki_Quest_00082_TKunimi")end
if nmJGp_=="KAsakura"then
Adv.talkWithFacial(nil,nil,Uc,[[Ruka?! Did you lose it?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00083_KAsakura")elseif h0v3PIV=="KAsakura"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[Ruka?! Did you lose it?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00083_KAsakura")end
if nmJGp_=="MAikawa"then
Adv.talkWithFacial(nil,nil,Uc,[[What the hell are ya doin'?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00084_MAikawa")elseif h0v3PIV=="MAikawa"then
Adv.talkWithFacial(nil,nil,JSkUQL,[[What the hell are ya doin'?!]],"VC_Quest_Lv2_BIYamawaki_Quest_00084_MAikawa")end;Layout.createStageFixBg(C,Position.BG_LEFT)
Wait(1)Layout.show({OJZ,"170001"})
Routine(function()
Adv.moveBy(OJZ,Vec(0,5),0.2)Wait(0.2)Adv.moveBy(OJZ,Vec(0,-5),0.2)Wait(0.2)
Adv.moveBy(OJZ,Vec(0,5),0.2)Wait(0.2)Adv.moveBy(OJZ,Vec(0,-5),0.2)end)
Adv.talkWithFacial(nil,nil,OJZ,[[*cough* *cough*]],"VC_Quest_Lv2_BIYamawaki_Quest_00085_RKayamori")Adv.act(OJZ,"030201")
Adv.playCutIn("RKayamori","Default","Surprise",[[I KNEW IT! Now everyone thinks I'm even more of an idiot!]],"VC_Quest_Lv1_BIYamawaki_Quest_00078_RKayamori",2.5,
-0,nil)Sound.setResumeBGM("SB0032")Transition.start()
Adv.remove(fG9zS)Sound.stopAllENV()end)Layout.show()Adv.remove(C)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step7()Adv.fadeOut(0)
local b6SL0yka=Adv.characterAsync("RKayamori")local hEk=Adv.characterAsync("BIYamawaki")local E8o=
Field.getPosition("BIYamawaki_Quest")+Vec(-3,0,-1.5)local TdqFo=
Field.getPosition("BIYamawaki_Quest")+Vec(-1,0,-1.5)
Field.setActiveWithTag("Gaya",false)Field.createDynamicCharacter("YBungo")Field.setPosition("Dynamic/YBungo",Vec(60.4,
-6.1,-9))
Field.turnToTarget("Dynamic/YBungo","BIYamawaki_Quest",0)Field.moveTo("Player",E8o,0)
Sound.playBGM("SB0032")
Field.activeEventCharacterWait("BIYamawaki_Quest")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()Transition.finish()
Field.changeAnimation("Player","FieldWalk")Field.moveTo("Player",TdqFo,1.5)
Field.setCameraCompositionEx(Vec(56.700,-4.900,-
16.900),Vec(0.000,0.000,0.000),33.00)Wait(0.01)
Field.setCameraCompositionEx(Vec(57.200,-4.900,-16.900),Vec(0.000,0.000,0.000),33.00,1.5)Adv.fadeIn(0.5)Wait(1)
Field.setLookAtTarget("BIYamawaki_Quest","Player",0.3)
Field.turnToTargetWait("Player","BIYamawaki_Quest",0.5)
Layout.show({b6SL0yka,"170302"},{hEk,"090101"})
Adv.talkWithFacial(nil,nil,hEk,[[How vas it?]],"VC_Quest_Lv2_BIYamawaki_Quest_00087_BIYamawaki")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[It was really humiliating.]],"VC_Quest_Lv2_BIYamawaki_Quest_00088_RKayamori")
Adv.talkWithFacial("080101",nil,hEk,[[Not you. How vere zee effects of zee fire starter?]],"VC_Quest_Lv2_BIYamawaki_Quest_00089_BIYamawaki")
Adv.talkWithFacial("170301",nil,b6SL0yka,[[It just looked like I praised you and then self-destructed...]],"VC_Quest_Lv2_BIYamawaki_Quest_00090_RKayamori")Adv.act(hEk,"0001")Adv.actDelay(3,hEk,"0000")
Adv.talkWithFacial(
nil,nil,hEk,[[Vell you did indeed praise me but...I guess zis experiment ended in failure as vell. After so much vork too...]],"VC_Quest_Lv2_BIYamawaki_Quest_00091_BIYamawaki")Adv.actDelay(0,hEk,"0000")
Adv.talkWithFacial("070301",nil,b6SL0yka,[[If you're gonna destroy the world, you gotta do it right.]],"VC_Quest_Lv2_BIYamawaki_Quest_00092_RKayamori")Adv.fadeOutWithShield(1)Field.finishEvent()
Field.deleteDynamicCharacterAll()Field.setActiveWithTag("Gaya",true)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local ykLF0=Bath.startBathTimeEvent("BIYamawaki",BathInviteMode.Active,function(cilhu,eVfN)
Adv.talkWithFacial(nil,nil,cilhu,[[(I'm beat... Maybe I should invite Wakkie to the baths and have her wash my back.)]],"VC_Quest_00093_v004_RKayamori")
local LBIJ=Bath.BathQuestion("BIYamawaki",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,cilhu,[[Hey Wakkie, wanna go to the baths together?]],"VC_Quest_00094_v004_RKayamori")
Adv.talkWithFacial(nil,nil,eVfN,[[Sure, it's the least I can do after today.]],"VC_Quest_00095_v004_BIYamawaki")
Adv.talkWithFacial(nil,nil,cilhu,[[Yeah. You seriously owe me after all that.]],"VC_Quest_00096_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,cilhu,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return LBIJ end)
if ykLF0 ==0 then
Bath.startBathTimeNovel("BIYamawaki",nil,"Wash",function(CSSp,CBZIwYHI,x1vCS0,Herp)
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Kayamori, your hair is a mess.]],"VC_Quest_Lv2_BIYamawaki_Quest_00096_BIYamawaki")
Adv.talkWithFacial(nil,nil,CSSp,[[I did the "Long live zee Great Yamawaki!!!", remember?]],"VC_Quest_Lv2_BIYamawaki_Quest_00097_RKayamori")
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Oh well, I'll just have to help wash your hair too.]],"VC_Quest_Lv2_BIYamawaki_Quest_00098_BIYamawaki")
Adv.talkWithFacial(nil,nil,CSSp,[[Nice! It wasn't all for nothing, after all.]],"VC_Quest_Lv2_BIYamawaki_Quest_00099_RKayamori")
local TNczSeT=Adv.bubbleSeActNoWait([[*lather* *lather*]],Vec(300,-150),"Talk",BubbleActMode.Horizon,"default","AS_Wash_Bath")
local Sb=Adv.bubbleSeActNoWait([[*lather* *lather*]],Vec(-250,250),"Talk",BubbleActMode.Horizon,"default","AS_Wash_Bath",nil,1)Wait(1)
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Your hair being so short makes it very easy to wash.]],"VC_Quest_Lv2_BIYamawaki_Quest_00101_BIYamawaki")
Adv.talkWithFacial(nil,nil,CSSp,[[When you let down those buns, your hair is surprisingly long and pretty.]],"VC_Quest_Lv2_BIYamawaki_Quest_00102_RKayamori")
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Mwa ha ha... I get that a lot!]],"VC_Quest_Lv2_BIYamawaki_Quest_00103_BIYamawaki")
Adv.talkWithFacial(nil,nil,CSSp,[[By the way, you can use a bit more force on the washing front.]],"VC_Quest_Lv2_BIYamawaki_Quest_00104_RKayamori")
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Was I being too gentle? Ah... I'm used to washing Bungo's hair.]],"VC_Quest_Lv2_BIYamawaki_Quest_00105_BIYamawaki")
Adv.talkWithFacial(nil,nil,CSSp,[[You two really get along, huh.]],"VC_Quest_Lv2_BIYamawaki_Quest_00106_RKayamori")
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[~~~!!!]],"VC_Quest_Lv2_BIYamawaki_Quest_00107_BIYamawaki")
local _OwI=Adv.bubbleSeActNoWait([[*lather* *lather*]],Vec(-350,-150),"Talk",BubbleActMode.Horizon,"default","AS_Wash_Bath_Hard")
local GBDhi2D=Adv.bubbleSeActNoWait([[*lather* *lather*]],Vec(350,250),"Talk",BubbleActMode.Horizon,"default",nil,nil,1)Wait(1)
Adv.talkWithFacial(nil,nil,CSSp,[[AAAHH! Too strong! But it's cute that you're so embarrassed!]],"VC_Quest_Lv2_BIYamawaki_Quest_00109_RKayamori")Adv.remove(TNczSeT)Adv.remove(Sb)Adv.remove(_OwI)
Adv.remove(GBDhi2D)end)end;Exit_World()end