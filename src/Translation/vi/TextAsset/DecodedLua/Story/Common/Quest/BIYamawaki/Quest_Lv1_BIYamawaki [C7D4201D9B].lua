local w0qyLbH="Quest_Lv1_BIYamawaki"function init()
Log("Called Quest_Lv1_BIYamawaki")refresh()end
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
Field.createFollower("TKunimi")end
if
GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
Field.createFollower("KAsakura")Field.setActiveWithTag("TTojo",false)end;if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
Field.createFollower("MAikawa")end
SetFlag("山脇交流Lv1_誰を誘ったか1人目",GetLocalFlag("誰を誘ったか1人目"))
SetFlag("山脇交流Lv1_誰を誘ったか2人目",GetLocalFlag("誰を誘ったか2人目"))HideMapDestinationIcon("YIzumi_Quest")
HideMapDestinationIcon("TTojo_Quest")HideMapDestinationIcon("TKunimi_Quest")
HideMapDestinationIcon("KAsakura_Quest")HideMapDestinationIcon("MAikawa_Quest")
Quest.TouchEvent("HeliportGate",w0qyLbH,Step4)end;if Quest.stateStep(w0qyLbH,5)then Field.deleteFollowerAll()
StartEvent(Step5)end
if Quest.stateStep(w0qyLbH,6)then
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
Linne.Receive(nsgji,"Will you assist me with an experiment to destroy the world?")Wait(3)local bClTIa=Quest.receive(w0qyLbH)
if
bClTIa==QuestWindow.Receive then RemoveLinneEvent("BIYamawaki",0)
Sound.playEmptyBGM()Quest.refreshState()end end
function Step1()Transition.setOutdoor("","Union Street")
Exit_FieldAndChange("FriendStreet","StoneChairsPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("RKayamori")local BW0WFP=Adv.characterAsync("BIYamawaki")local X8=
Field.getPosition("BIYamawaki_Quest")+Vec(-1,0,-1.5)
Field.setActiveWithTag("Gaya",false)Field.createDynamicCharacter("YBungo")
Field.setPosition("Dynamic/YBungo",
Field.getPosition("BIYamawaki_Quest")+Vec(-2.3,0,5.716))Field.turnTo("Dynamic/YBungo",270,0)
Field.setLookAtPosition("Dynamic/YBungo",Vec(53.09,
-5.5,-6.87),0.1)Sound.playBGM("SB0032",1,1)
Field.activeEventCharacterWait("BIYamawaki_Quest")Field.turnTo("Player","BIYamawaki_Quest",0)
Field.resetPosition("ShopBenchPointRight")
Field.setCameraFov(Field.getDefaultCameraFov()*0.6,0)Field.moveTo("Player",X8,0)Field.startEvent()
Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setLookAtTarget("BIYamawaki_Quest","Player",0)
Field.setCameraCompositionEx(Vec(57.200,-4.900,-16.900),Vec(0.000,0.000,0.000),33.00)Adv.fadeIn(0.5)Wait(0.5)
Layout.show({rDzL7SVO,"080201"})
Adv.playCutIn("RKayamori","Default","Surprise","Now's the time to destroy the world!!! But Nooo!!!","VC_Quest_Lv1_BIYamawaki_Quest_00001_RKayamori",2.5,-0,
nil)Layout.show({BW0WFP,"080201"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Vhy are you yelling all of a sudden?]],"VC_Quest_Lv1_BIYamawaki_Quest_00002_BIYamawaki")Layout.show()
Layout.show({rDzL7SVO,"000301"},{BW0WFP,"080101"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Nah, it's just a retort to what I'm thinking.]],"VC_Quest_Lv1_BIYamawaki_Quest_00003_RKayamori")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Like, humanity's already under attack from the Cancer. Why should we be so hell bent on destroying the world in a whole other way?]],"VC_Quest_Lv1_BIYamawaki_Quest_00004_RKayamori")
Adv.talkWithFacial("090001",nil,BW0WFP,[[Zat is a testament to how chaotic zee vorld truly is... Mwa ha ha...]],"VC_Quest_Lv1_BIYamawaki_Quest_00005_BIYamawaki")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Yikes, that's scary... But if you want to destroy the world, why'd you join the Seraph squadron when they're trying to save it?]],"VC_Quest_Lv1_BIYamawaki_Quest_00006_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[It vould be most inconvenient if someone else destroyed it first now, vouldn't it?]],"VC_Quest_Lv1_BIYamawaki_Quest_00007_BIYamawaki")Layout.show()
Field.setCameraCompositionEx(Vec(56.910,-4.560,-15.890),Vec(5.000,0.000,0.000),27.00,1.5)
Field.setLookAtTarget("Player","Dynamic/YBungo",0.5)Field.disableLookAt("Dynamic/YBungo",0.5)Wait(0.6)Field.turnBy("Dynamic/YBungo",
-90,0.5)
Field.setLookAtTarget("Dynamic/YBungo","Player",0.5)Wait(0.5)
Adv.kayamoriTalk([[(Bun-chan is watching over there... Guess Wakkie's doing her best with the whole mad scientist thing.)]],"VC_Quest_Lv1_BIYamawaki_Quest_00008_RKayamori",
nil)
Field.setCameraCompositionEx(Vec(57.500,-5.000,-16.500),Vec(0.000,0.000,0.000),33.00,1.8)Field.disableLookAt("BIYamawaki_Quest",0.3)
Field.disableLookAt("Player",0.3)
Field.changeAnimation("BIYamawaki_Quest","FieldWalk",1,0.4)
Field.moveByWait("BIYamawaki_Quest",Vec(0,0,-0.2),0.3,AnimationMode.None)
Field.moveByWait("BIYamawaki_Quest",Vec(0,0,-0.5),0.5,AnimationMode.None)
Field.setLookAtTarget("Player","BIYamawaki_Quest",0.3)Wait(0.2)
Field.turnToTargetWait("BIYamawaki_Quest","Player",0.5)Wait(0.3)Layout.show({BW0WFP,"080201"})
Adv.talkWithFacial("090201",
nil,BW0WFP,[[Hmph... Look at zis.]],"VC_Quest_Lv1_BIYamawaki_Quest_00009_BIYamawaki")Layout.show()Field.disableLookAt("Player",0.3)
Field.turnToTargetWait("Player","BIYamawaki_Quest",0.5)Wait(0.5)
Layout.show({rDzL7SVO,"000302"},{BW0WFP,"090101"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Now that's one poisonous-looking liquidy thing.]],"VC_Quest_Lv1_BIYamawaki_Quest_00010_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Precisely... Zis is my anti-Cancer exterminator. It vill kill a Cancer mere seconds after injection.]],"VC_Quest_Lv1_BIYamawaki_Quest_00011_BIYamawaki")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[You managed to make something like that?!]],"VC_Quest_Lv1_BIYamawaki_Quest_00012_RKayamori")
Adv.talkWithFacial("090002",nil,BW0WFP,[[Do you understand now how I am not all talk?]],"VC_Quest_Lv1_BIYamawaki_Quest_00013_BIYamawaki")
Adv.talkWithFacial("110301",nil,rDzL7SVO,[[If it works, we don't need to fight anymore! Injections all around!]],"VC_Quest_Lv1_BIYamawaki_Quest_00014_RKayamori")
Adv.talkWithFacial("090102",nil,BW0WFP,[[Now zat vee are on zee same page, vee vill first defeat all of zee Cancers.]],"VC_Quest_Lv1_BIYamawaki_Quest_00015_BIYamawaki")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[I thought you inject them <i>to</i> defeat them.]],"VC_Quest_Lv1_BIYamawaki_Quest_00016_RKayamori")
Adv.talkWithFacial("000102",nil,BW0WFP,[[You have to beat zem first to inject zem.]],"VC_Quest_Lv1_BIYamawaki_Quest_00017_BIYamawaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Why?]],"VC_Quest_Lv1_BIYamawaki_Quest_00018_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[You must first destroy zeir exoskeletons or zee needles von't penetrate zeir skin.]],"VC_Quest_Lv1_BIYamawaki_Quest_00019_BIYamawaki")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[Can't we just spray them with it or something?]],"VC_Quest_Lv1_BIYamawaki_Quest_00020_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Vat vould be zee point of zat? Zee Cancer vould just get vet. Zat vould be a colossal vaste of zee anti-Cancer exterminator!]],"VC_Quest_Lv1_BIYamawaki_Quest_00021_BIYamawaki")
Adv.talkWithFacial("170101",nil,rDzL7SVO,[[Why do I suddenly feel all the wind leaving my sails?]],"VC_Quest_Lv1_BIYamawaki_Quest_00022_RKayamori")
Adv.talkWithFacial("090103",nil,BW0WFP,[[Zat feeling is vat vee call dread... Mwa ha ha!]],"VC_Quest_Lv1_BIYamawaki_Quest_00023_BIYamawaki")
Adv.talkWithFacial("070001",nil,rDzL7SVO,[[Definitely not.]],"VC_Quest_Lv1_BIYamawaki_Quest_00024_RKayamori")
Adv.talkWithFacial("090102",nil,BW0WFP,[[Anyvay! I'd like you to test zis anti-Cancer exterminator zat vill kill any Cancer in mere seconds of being injected. It's an experiment.]],"VC_Quest_Lv1_BIYamawaki_Quest_00025_BIYamawaki")
Adv.talkWithFacial("000302",nil,rDzL7SVO,[[But I can't use it in battle, right?]],"VC_Quest_Lv1_BIYamawaki_Quest_00026_RKayamori")
Adv.talkWithFacial("090002",nil,BW0WFP,[[You can use it <i>after</i> zee battle.]],"VC_Quest_Lv1_BIYamawaki_Quest_00027_BIYamawaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[So after the Cancer's already defeated.]],"VC_Quest_Lv1_BIYamawaki_Quest_00028_RKayamori")
Adv.talkWithFacial("070102",nil,BW0WFP,[[As zee killing blow.]],"VC_Quest_Lv1_BIYamawaki_Quest_00029_BIYamawaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Is that necessary?]],"VC_Quest_Lv1_BIYamawaki_Quest_00030_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[I'll leave zat to you to determine.]],"VC_Quest_Lv1_BIYamawaki_Quest_00031_BIYamawaki")
Adv.talkWithFacial("170302",nil,rDzL7SVO,[[If I inject that anti-freeze whatever after beating a Cancer, my friends are just gonna look at me like I'm stupid.]],"VC_Quest_Lv1_BIYamawaki_Quest_00032_RKayamori")Adv.act(BW0WFP,"000102")
Adv.actDelay(0.8,BW0WFP,"060103")Adv.actDelay(2.7,BW0WFP,"000102")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Just yell somesing before you do it, like, "Now you're finished!!!".]],"VC_Quest_Lv1_BIYamawaki_Quest_00033_BIYamawaki")Adv.act(BW0WFP,"000102")
Adv.actDelay(1.2,rDzL7SVO,"030302")Adv.actDelay(2.7,rDzL7SVO,"000302")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[I'll probably already have gone "Now you're finished!!!" before that.]],"VC_Quest_Lv1_BIYamawaki_Quest_00034_RKayamori")Adv.act(rDzL7SVO,"000302")
Adv.actDelay(2,BW0WFP,"060103")Adv.actDelay(3.7,BW0WFP,"070102")
Adv.talkWithFacial(nil,nil,BW0WFP,[[You can just sink it vhen you beat it and hold off on saying "Now you're finished!!!" until you actually do zee injection.]],"VC_Quest_Lv1_BIYamawaki_Quest_00035_BIYamawaki")Adv.act(BW0WFP,"070102")
Adv.actDelay(1.8,rDzL7SVO,"030302")Adv.actDelay(4.5,rDzL7SVO,"000302")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[But that's gonna be like saying "Now you're finished!!!" twice in a row for me!]],"VC_Quest_Lv1_BIYamawaki_Quest_00036_RKayamori")Adv.act(rDzL7SVO,"000302")
Adv.actDelay(1,BW0WFP,"070002")Adv.actDelay(2.5,BW0WFP,"070102")
Adv.actDelay(3.8,BW0WFP,"000102")Adv.actDelay(6,BW0WFP,"260101")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Zen for zee second one, you can change it to somesing like, "Good night. Have sveet dreams in hell." Here, zis is zee exterminator and syringe. Make sure you have both!]],"VC_Quest_Lv1_BIYamawaki_Quest_00037_BIYamawaki")Adv.act(BW0WFP,"260101")Layout.show()
Field.setCameraCompositionEx(Vec(57.290,
-5.000,-16.400),Vec(0.000,0.000,0.000),30.00,1)
Field.moveBy("BIYamawaki_Quest",Vec(-0.5,0,-0.3),0.5)Wait(0.5)Field.disableLookAt("Player",0.3)
Field.turnBy("Player",45,0.5)Wait(1)
UI.showLineInfo([[You received the Anti-Cancer Exterminator and Syringe!]],2,2)Wait(0.5)Layout.show({rDzL7SVO,"150001"})
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[So pushy...]],"VC_Quest_Lv1_BIYamawaki_Quest_00038_RKayamori")Transition.start()Layout.show()
Field.deleteDynamicCharacterAll()Field.setActiveWithTag("Gaya",true)
Field.finishEvent()Sound.returnFieldBGM()
Field.playerComeIn("ShopPoint",Vec(2))Wait(1)Transition.finish()
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[It's probably dangerous to go by myself... I should invite a couple people.]],"VC_Quest_Lv1_BIYamawaki_Quest_00039_RKayamori",
nil)end)SetLocalFlag("仲間の人数",0)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_YIzumi()local JQT=Adv.characterAsync("YIzumi")
local AtYtR=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"000301"},{JQT,"000101"})
Adv.talkWithFacial(nil,nil,JQT,[[Did you need something?]],"VC_Quest_Lv1_BIYamawaki_Quest_00040_YIzumi")
local ND2BCh3=Adv.question([[Invite Yukkie?]],[[Invite|Maybe not]],0,true)
if ND2BCh3 ==0 then
Adv.talkWithFacial(nil,nil,AtYtR,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial(nil,nil,JQT,[[Did you come up with some special tactic or something? Sure, I'll tag along.]],"VC_Quest_Lv1_BIYamawaki_Quest_00042_YIzumi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",1)else SetLocalFlag("誰を誘ったか2人目",1)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,AtYtR,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("060101",nil,JQT,[[Then why did you talk to me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00044_YIzumi")end end)Quest.refreshState()end
function Step3_TTojo()local IODBg=Adv.characterAsync("TTojo")
local YRDu=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({YRDu,"000301"},{IODBg,"000101"})
Adv.talkWithFacial(nil,nil,IODBg,[[Do you need something from me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00045_TTojo")
local CWRiP=Adv.question([[Invite Tsukassie?]],[[Invite|Maybe not]],0,true)
if CWRiP==0 then
Adv.talkWithFacial(nil,nil,YRDu,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("110101",nil,IODBg,[[A new battle formation? Sure, I'll go with you.]],"VC_Quest_Lv1_BIYamawaki_Quest_00047_TTojo")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",2)else SetLocalFlag("誰を誘ったか2人目",2)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,YRDu,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("080101",nil,IODBg,[[Oh?]],"VC_Quest_Lv1_BIYamawaki_Quest_00049_TTojo")end end)Quest.refreshState()end
function Step3_TKunimi()local LB0A=Adv.characterAsync("TKunimi")
local dl=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({dl,"000301"},{LB0A,"110101"})
Adv.talkWithFacial(nil,nil,LB0A,[[Ruka! What seems to be the matter?]],"VC_Quest_Lv1_BIYamawaki_Quest_00050_TKunimi")
local sKPjQkdn=Adv.question([[Invite Cappy?]],[[Invite|Maybe not]],0,true)
if sKPjQkdn==0 then
Adv.talkWithFacial(nil,nil,dl,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("070102",nil,LB0A,[[I have no reason to refuse! I shall accompany you through hell or high water!!!]],"VC_Quest_Lv1_BIYamawaki_Quest_00052_TKunimi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",3)else SetLocalFlag("誰を誘ったか2人目",3)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,dl,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("280102",nil,LB0A,[[That's okay! I get it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00054_TKunimi")end end)Quest.refreshState()end
function Step3_KAsakura()local HHH9IlJp=Adv.characterAsync("KAsakura")
local uYz2ryy4=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({uYz2ryy4,"000301"},{HHH9IlJp,"000101"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Ruka. What's up?]],"VC_Quest_Lv1_BIYamawaki_Quest_00055_KAsakura")
local zVPRGDnG=Adv.question([[Invite Karerin?]],[[Invite|Maybe not]],0,true)
if zVPRGDnG==0 then
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("000102",nil,HHH9IlJp,[[Yeah. I don't have anything else going on. Let's go.]],"VC_Quest_Lv1_BIYamawaki_Quest_00057_KAsakura")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",4)else SetLocalFlag("誰を誘ったか2人目",4)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Oh, okay.]],"VC_Quest_Lv1_BIYamawaki_Quest_00059_KAsakura")end end)Quest.refreshState()end
function Step3_MAikawa()local IKxw=Adv.characterAsync("MAikawa")
local w0=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({w0,"000301"},{IKxw,"000101"})
Adv.talkWithFacial(nil,nil,IKxw,[[What do you want?]],"VC_Quest_Lv1_BIYamawaki_Quest_00060_MAikawa")
local UgXzI_C=Adv.question([[Invite Megumin?]],[[Invite|Maybe not]],0,true)
if UgXzI_C==0 then
Adv.talkWithFacial(nil,nil,w0,[[There's something I wanna try. Can you come with me to the dungeon to fight some Cancers?]],"VC_Quest_Lv1_BIYamawaki_Quest_00041_RKayamori")
Adv.talkWithFacial("010101",nil,IKxw,[[Sure. I've been fixin' to let loose some more of my psychic powers!]],"VC_Quest_Lv1_BIYamawaki_Quest_00062_MAikawa")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")
if GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",5)else SetLocalFlag("誰を誘ったか2人目",5)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,w0,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("030101",nil,IKxw,[[You messin' with me or somethin'?]],"VC_Quest_Lv1_BIYamawaki_Quest_00064_MAikawa")end end)Quest.refreshState()end
function Step4()local MLFLplLe;local jwq
SetLocalFlag("仲間1が埋まっているか",0)
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[And we're off! To the dungeons!]],"VC_Quest_Lv1_BIYamawaki_Quest_00065_RKayamori",nil)end)
if GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then
MLFLplLe="YIzumi"IncLocalFlag("仲間1が埋まっているか")end
if GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then MLFLplLe="TTojo"
IncLocalFlag("仲間1が埋まっているか")else jwq="TTojo"end end
if GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then MLFLplLe="TKunimi"
IncLocalFlag("仲間1が埋まっているか")else jwq="TKunimi"end end
if GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then MLFLplLe="KAsakura"
IncLocalFlag("仲間1が埋まっているか")else jwq="KAsakura"end end
if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then MLFLplLe="MAikawa"
IncLocalFlag("仲間1が埋まっているか")else jwq="MAikawa"end end;Field.playerGetOut("HeliportPoint",Vec(0,0,10))
Transition.start()PurgeField()Wait(1)
Routine(function()Sound.stopBGM()
Transition.setFlyGo()Transition.start()end)Wait(6)Sound.reverbCave(ReverbValue.Cave)
SetupFixedDeck(MLFLplLe,"RKayamori",jwq)
Quest.BattleWithFixedParty(w0qyLbH,"Quest_BIYamawaki_Lv1",nil,0,100)Sound.reverbCave(0)Quest.refreshState()end
function Step5()Transition.start()Sound.playEmptyBGM(0)
Exit_FieldAndChange("FriendStreet","StoneChairsPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step6()Adv.fadeOut(0)
local kw3ei0a=Adv.characterAsync("RKayamori")local EspneS5=Adv.characterAsync("YIzumi")
local LZeg0=Adv.characterAsync("TTojo")local OJZ=Adv.characterAsync("TKunimi")
local nmuj=Adv.characterAsync("KAsakura")local bP=Adv.characterAsync("MAikawa")
local b4IqQW=Adv.loadBGAsync("Background/Dungeon/Dungeon_Universaluse_Evening")local iuGb;local koZU;local C;local nmJGp_;local h0v3PIV;local Uc;Sound.playBGM("SB0022",0,0)
SetLocalFlag("仲間1が埋まっているか",0)
if GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then
iuGb="YIzumi"C=Adv.characterAsync("YIzumi")
IncLocalFlag("仲間1が埋まっているか")end
if GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then iuGb="TTojo"
C=Adv.characterAsync("TTojo")IncLocalFlag("仲間1が埋まっているか")else
koZU="TTojo"nmJGp_=Adv.characterAsync("TTojo")end end
if GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then iuGb="TKunimi"
C=Adv.characterAsync("TKunimi")IncLocalFlag("仲間1が埋まっているか")else
koZU="TKunimi"nmJGp_=Adv.characterAsync("TKunimi")end end
if GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then iuGb="KAsakura"
C=Adv.characterAsync("KAsakura")IncLocalFlag("仲間1が埋まっているか")else
koZU="KAsakura"nmJGp_=Adv.characterAsync("KAsakura")end end
if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then iuGb="MAikawa"
C=Adv.characterAsync("MAikawa")IncLocalFlag("仲間1が埋まっているか")else
koZU="MAikawa"nmJGp_=Adv.characterAsync("MAikawa")end end
Field.startNovel(function()
if iuGb=="YIzumi"then Adv.act(C,"000201")elseif iuGb=="TTojo"then
Adv.act(C,"110201")elseif iuGb=="TKunimi"then Adv.act(C,"110201")elseif iuGb=="KAsakura"then
Adv.act(C,"000201")elseif iuGb=="MAikawa"then
Adv.act(C,"090001",AdvCharacterMouth.Mouth03)end
if koZU=="TTojo"then Adv.act(nmJGp_,"110201")elseif koZU=="TKunimi"then
Adv.act(nmJGp_,"110201")elseif koZU=="KAsakura"then Adv.act(nmJGp_,"000201")elseif koZU=="MAikawa"then
Adv.act(nmJGp_,"090001",AdvCharacterMouth.Mouth03)end
Layout.createStageZoomOut(b4IqQW,Position.BG_RIGHT)Layout.show({C,nil},{nmJGp_,nil})Wait(1)
Transition.finish()Adv.fadeIn(0.5)if iuGb=="YIzumi"then
Adv.talkWithFacial(nil,nil,C,[[Well, that was easy.]],"VC_Quest_Lv1_BIYamawaki_Quest_00066_YIzumi")end
if iuGb=="TTojo"then
Adv.talkWithFacial(
nil,nil,C,[[I didn't even break a sweat.]],"VC_Quest_Lv1_BIYamawaki_Quest_00067_TTojo")elseif koZU=="TTojo"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[I didn't even break a sweat.]],"VC_Quest_Lv1_BIYamawaki_Quest_00067_TTojo")end
if iuGb=="TKunimi"then
Adv.talkWithFacial(nil,nil,C,[[We did it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00068_TKunimi")elseif koZU=="TKunimi"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[We did it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00068_TKunimi")end
if iuGb=="KAsakura"then
Adv.talkWithFacial(nil,nil,C,[[That went well.]],"VC_Quest_Lv1_BIYamawaki_Quest_00069_KAsakura")elseif koZU=="KAsakura"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[That went well.]],"VC_Quest_Lv1_BIYamawaki_Quest_00069_KAsakura")end
if iuGb=="MAikawa"then
Adv.talkWithFacial(nil,nil,C,[[Hah, that was as easy as slidin' off a greasy log backward. Didn't even get to use my psychic powers.]],"VC_Quest_Lv1_BIYamawaki_Quest_00070_MAikawa")elseif koZU=="MAikawa"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[Hah, that was as easy as slidin' off a greasy log backward. Didn't even get to use my psychic powers.]],"VC_Quest_Lv1_BIYamawaki_Quest_00070_MAikawa")end;Sound.stopBGM(2)
Layout.createStageFixBg(b4IqQW,Position.BG_LEFT)Layout.show({kw3ei0a,"070001"})
Adv.actDelay(1,kw3ei0a,"110201")
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Good night. Have sweet dreams in hell.]],"VC_Quest_Lv1_BIYamawaki_Quest_00071_RKayamori")Adv.act(kw3ei0a,"110201")Wait(0.5)Layout.show()
local JSkUQL=Adv.bubbleSeActNoWait([[*jab*]],Vec(0,
-300),"Talk",BubbleActMode.Scale,"default","AS_Injection_Cancer",nil,nil)Wait(1)Adv.remove(JSkUQL)
Sound.playBGM("SB0033",0,0)
if iuGb=="YIzumi"then
Adv.act(C,"060201",AdvCharacterMouth.Mouth03)elseif iuGb=="TTojo"then
Adv.act(C,"040101",AdvCharacterMouth.Close)elseif iuGb=="TKunimi"then
Adv.act(C,"180201",AdvCharacterMouth.Mouth03)elseif iuGb=="KAsakura"then
Adv.act(C,"080201",AdvCharacterMouth.Mouth03)elseif iuGb=="MAikawa"then
Adv.act(C,"150201",AdvCharacterMouth.Mouth03)end
if koZU=="TTojo"then
Adv.act(nmJGp_,"040101",AdvCharacterMouth.Close)elseif koZU=="TKunimi"then
Adv.act(nmJGp_,"180201",AdvCharacterMouth.Mouth03)elseif koZU=="KAsakura"then
Adv.act(nmJGp_,"080201",AdvCharacterMouth.Mouth03)elseif koZU=="MAikawa"then
Adv.act(nmJGp_,"150201",AdvCharacterMouth.Mouth03)end
Layout.createStageFixBg(b4IqQW,Position.BG_RIGHT)Layout.show({C,nil},{nmJGp_,nil})if iuGb=="YIzumi"then
Adv.talkWithFacial(
nil,nil,C,[[Have you finally lost it?]],"VC_Quest_Lv1_BIYamawaki_Quest_00073_YIzumi")end
if
iuGb=="TTojo"then
Adv.talkWithFacial(nil,nil,C,[[Do downed Cancers even have dreams?]],"VC_Quest_Lv1_BIYamawaki_Quest_00074_TTojo")elseif koZU=="TTojo"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[Do downed Cancers even have dreams?]],"VC_Quest_Lv1_BIYamawaki_Quest_00074_TTojo")end
if iuGb=="TKunimi"then
Adv.talkWithFacial(nil,nil,C,[[She's talking to a corpse!]],"VC_Quest_Lv1_BIYamawaki_Quest_00075_TKunimi")elseif koZU=="TKunimi"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[She's talking to a corpse!]],"VC_Quest_Lv1_BIYamawaki_Quest_00075_TKunimi")end
if iuGb=="KAsakura"then
Adv.talkWithFacial(nil,nil,C,[[Did you enter your cringe phase all of a sudden?]],"VC_Quest_Lv1_BIYamawaki_Quest_00076_KAsakura")elseif koZU=="KAsakura"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[Did you enter your cringe phase all of a sudden?]],"VC_Quest_Lv1_BIYamawaki_Quest_00076_KAsakura")end
if iuGb=="MAikawa"then
Adv.talkWithFacial(nil,nil,C,[[That thing's deader than a doornail. What the heck are you on about?]],"VC_Quest_Lv1_BIYamawaki_Quest_00077_MAikawa")elseif koZU=="MAikawa"then
Adv.talkWithFacial(nil,nil,nmJGp_,[[That thing's deader than a doornail. What the heck are you on about?]],"VC_Quest_Lv1_BIYamawaki_Quest_00077_MAikawa")end
Layout.createStageFixBg(b4IqQW,Position.BG_LEFT)Layout.show({kw3ei0a,"030201"})
Adv.playCutIn("RKayamori","Default","Surprise","I KNEW IT!!!\nNow everyone thinks I'm an idiot!","VC_Quest_Lv1_BIYamawaki_Quest_00078_RKayamori",3,0,
nil)Transition.start()Sound.stopAllENV()
Sound.setResumeBGM("SB0032")end)Layout.show()Adv.remove(b4IqQW)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step7()Adv.fadeOut(0)
local PTUZ2v=Adv.characterAsync("RKayamori")local qlZeO3Pr=Adv.characterAsync("BIYamawaki")local fG9zS=
Field.getPosition("BIYamawaki_Quest")+Vec(-3,0,-1.5)local WiXG=
Field.getPosition("BIYamawaki_Quest")+Vec(-1,0,-1.5)
Field.setActiveWithTag("Gaya",false)Field.createDynamicCharacter("YBungo")
Field.setPosition("Dynamic/YBungo",
Field.getPosition("BIYamawaki_Quest")+Vec(-2.3,0,5.716))Field.turnTo("Dynamic/YBungo",270,0)
Field.setLookAtPosition("Dynamic/YBungo",Vec(53.09,
-5.5,-6.87),0.1)Field.moveTo("Player",fG9zS,0)
Sound.playBGM("SB0032",1,1)
Field.activeEventCharacterWait("BIYamawaki_Quest")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()Transition.finish()
Field.changeAnimation("Player","FieldWalk")Field.moveTo("Player",WiXG,1.5)
Field.setCameraCompositionEx(Vec(56.700,-4.900,-
16.900),Vec(0.000,0.000,0.000),33.00)Wait(0.01)
Field.setCameraCompositionEx(Vec(57.200,-4.900,-16.900),Vec(0.000,0.000,0.000),33.00,1.5)Adv.fadeIn(0.5)Wait(1)
Field.setLookAtTarget("BIYamawaki_Quest","Player",0.3)
Field.turnToTargetWait("Player","BIYamawaki_Quest",0.5)
Layout.show({PTUZ2v,"170301"},{qlZeO3Pr,"000101"})
Adv.talkWithFacial(nil,nil,qlZeO3Pr,[[How was it?]],"VC_Quest_Lv1_BIYamawaki_Quest_00079_BIYamawaki")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[It was totally humiliating.]],"VC_Quest_Lv1_BIYamawaki_Quest_00080_RKayamori")
Adv.talkWithFacial("080201",nil,qlZeO3Pr,[[Not you. How vere zee effects of zee exterminator?]],"VC_Quest_Lv1_BIYamawaki_Quest_00081_BIYamawaki")
Adv.talkWithFacial("030301",nil,PTUZ2v,[[The enemy was already dead by the time we defeated it! It was <i>after</i> we landed the killing blow!]],"VC_Quest_Lv1_BIYamawaki_Quest_00082_RKayamori")
Adv.talkWithFacial("020102",nil,qlZeO3Pr,[[I suppose zat is right... Zat means zis experiment ended in failure. After so much vork too...]],"VC_Quest_Lv1_BIYamawaki_Quest_00083_BIYamawaki")
Adv.talkWithFacial("070301",nil,PTUZ2v,[[If you wanna destroy the world, you gotta do it right.]],"VC_Quest_Lv1_BIYamawaki_Quest_00084_RKayamori")Adv.fadeOutWithShield(1)Field.finishEvent()
Field.deleteDynamicCharacterAll()Field.setActiveWithTag("Gaya",true)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local QgyWztK=Bath.startBathTimeEvent("BIYamawaki",BathInviteMode.Active,function(Oo6ecUO,b6SL0yka)
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[(I'm beat... Maybe I should invite Wakkie to the baths and have her wash my back.)]],"VC_Quest_00093_v004_RKayamori")
local hEk=Bath.BathQuestion("BIYamawaki",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[Hey Wakkie, wanna go to the baths together?]],"VC_Quest_00094_v004_RKayamori")
Adv.talkWithFacial(nil,nil,b6SL0yka,[[Sure, it's the least I can do after today.]],"VC_Quest_00095_v004_BIYamawaki")
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[Yeah. You seriously owe me after all that.]],"VC_Quest_00096_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,Oo6ecUO,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return hEk end)
if QgyWztK==0 then
Bath.startBathTimeNovel("BIYamawaki",nil,"Wash",function(E8o,TdqFo,ykLF0,cilhu)
Adv.talkWithFacial(nil,nil,E8o,[[What?! The eyepatch is just for show?!]],"VC_Quest_Lv1_BIYamawaki_Quest_00088_RKayamori")
Adv.talkWithFacial(nil,nil,TdqFo,[[It's just an accessory.]],"VC_Quest_Lv1_BIYamawaki_Quest_00089_BIYamawaki")
Adv.talkWithFacial(nil,nil,E8o,[[What for?]],"VC_Quest_Lv1_BIYamawaki_Quest_00090_RKayamori")Sound.playENV("AS_shower_loop")
Adv.talkWithFacial(nil,nil,TdqFo,[[Well, you see... It makes me look like more of a mad scientist.]],"VC_Quest_Lv1_BIYamawaki_Quest_00091_BIYamawaki")
Adv.talkWithFacial(nil,nil,E8o,[[Oh, kinda like fake glasses!]],"VC_Quest_Lv1_BIYamawaki_Quest_00092_RKayamori")
Adv.talkWithFacial(nil,nil,TdqFo,[[Exactly. A fake eyepatch.]],"VC_Quest_Lv1_BIYamawaki_Quest_00093_BIYamawaki")
Adv.talkWithFacial(nil,nil,TdqFo,[[It also <i>really</i> messes with my field of vision.]],"VC_Quest_Lv1_BIYamawaki_Quest_00094_BIYamawaki")
Adv.talkWithFacial(nil,nil,E8o,[[That's way worse than fake glasses!]],"VC_Quest_Lv1_BIYamawaki_Quest_00095_RKayamori")
Routine(function()Wait(1.5)Sound.stop("AS_shower_loop")end)
Routine(function()Wait(1)Sound.play("AS_Echo_Bathsplashes")end)
Adv.talkWithFacial(nil,nil,TdqFo,[[A mad scientist must look the part. It's a matter of presentation.]],"VC_Quest_Lv1_BIYamawaki_Quest_00096_BIYamawaki")
Adv.talkWithFacial(nil,nil,E8o,[[Well, I kinda like that about you, Wakkie.]],"VC_Quest_Lv1_BIYamawaki_Quest_00097_RKayamori")Sound.play("AS_Echo_Headwater")
Adv.talkWithFacial(nil,nil,TdqFo,[[I can't say that I'm thrilled to be liked by you, but I suppose I don't hate it.]],"VC_Quest_Lv1_BIYamawaki_Quest_00098_BIYamawaki")
Adv.talkWithFacial(nil,nil,TdqFo,[[However, I will <i>not</i> stand for you calling me "Wakkie"! SINK! DROWN TO DEATH!]],"VC_Quest_Lv1_BIYamawaki_Quest_00099_BIYamawaki")Sound.play("AS_echo_bath_water")Wait(0.5)
Sound.play("AS_Echo_Bubbling")Wait(1)
Adv.talkWithFacial(nil,nil,E8o,[[Stooop!!! *cough* Help meee!]],"VC_Quest_Lv1_BIYamawaki_Quest_00100_RKayamori")end)end;Exit_World()end