local w0qyLbH="Quest_Lv1_MTenne"function init()Log("Called Quest_Lv1_MTenne")
refresh()end
function refresh()
Field.setActiveWithTag("MTenne",false)if Quest.stateUnreceivablelinne(w0qyLbH)then return end;if
Quest.stateReceivable(w0qyLbH)then
LinneEvent("MTenne","Hey, 31-A Squad Leader.",Message,Quest.isCleardOnce(w0qyLbH),"Communication")end;if
Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end;if
Quest.stateStep(w0qyLbH,2)then StartEvent(Step2)end
if
Quest.stateStep(w0qyLbH,3)then SetPeriodText("Invite two more members of 31-A!")
TouchQuestEvent("MTenne_Quest",w0qyLbH,Step3_MTenne)
if GetLocalFlag("和泉を誘ったか")==0 then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step3_YIzumi)else Field.createFollower("YIzumi")
HideMapDestinationIcon("YIzumi_Quest")end
if GetLocalFlag("東城を誘ったか")==0 then
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step3_TTojo)else Field.createFollower("TTojo")
HideMapDestinationIcon("TTojo_Quest")end
if GetLocalFlag("國見を誘ったか")==0 then
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step3_TKunimi)else Field.createFollower("TKunimi")
HideMapDestinationIcon("TKunimi_Quest")end
if GetLocalFlag("朝倉を誘ったか")==0 then
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step3_KAsakura)else Field.createFollower("KAsakura")
HideMapDestinationIcon("KAsakura_Quest")end
if GetLocalFlag("逢川を誘ったか")==0 then
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step3_MAikawa)else Field.createFollower("MAikawa")
HideMapDestinationIcon("MAikawa_Quest")end end
if Quest.stateStep(w0qyLbH,4)then
if
GetLocalFlag("天音交流Lv1_step2で天音に話しかけた")==0 then
SetFlag("天音交流Lv1_step2で天音に話しかけた",0)else
SetFlag("天音交流Lv1_step2で天音に話しかけた",1)end
if GetLocalFlag("和泉を誘ったか")==1 then
SetFlag("天音交流Lv1_和泉を誘った",1)Field.createFollower("YIzumi")else
SetFlag("天音交流Lv1_和泉を誘った",0)end
if GetLocalFlag("東城を誘ったか")==1 then
SetFlag("天音交流Lv1_東城を誘った",1)Field.createFollower("TTojo")else
SetFlag("天音交流Lv1_東城を誘った",0)end
if GetLocalFlag("國見を誘ったか")==1 then
SetFlag("天音交流Lv1_國見を誘った",1)Field.createFollower("TKunimi")else
SetFlag("天音交流Lv1_國見を誘った",0)end
if GetLocalFlag("朝倉を誘ったか")==1 then
SetFlag("天音交流Lv1_朝倉を誘った",1)Field.createFollower("KAsakura")else
SetFlag("天音交流Lv1_朝倉を誘った",0)end
if GetLocalFlag("逢川を誘ったか")==1 then
SetFlag("天音交流Lv1_逢川を誘った",1)Field.createFollower("MAikawa")else
SetFlag("天音交流Lv1_逢川を誘った",0)end
SetPeriodText("Bring your assistants to the arena!")HideMapDestinationIcon("YIzumi_Quest")
HideMapDestinationIcon("TTojo_Quest")HideMapDestinationIcon("TKunimi_Quest")
HideMapDestinationIcon("KAsakura_Quest")HideMapDestinationIcon("MAikawa_Quest")
Quest.TouchEvent("ArenaGate",w0qyLbH,Step4)end;if Quest.stateStep(w0qyLbH,5)then Field.deleteFollowerAll()
StartEvent(Step5)end;if Quest.stateStep(w0qyLbH,6)then
StartEvent(Step6)end;if Quest.stateStep(w0qyLbH,7)then
StartEvent(Exit_Clear)end;if Quest.stateCleard(w0qyLbH)then
StartEvent(Exit_World)end;if Quest.stateBathStep(w0qyLbH)then
StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Message(nsgji)
if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_Lv1_AKanzaki_Quest_00000_RKayamori",
nil)return end;Linne.Inputing(nsgji)Linne.Wait(nsgji,1)
Linne.Receive(nsgji,"Would you like to join me in my research?")Wait(3)local bClTIa=Quest.receive(w0qyLbH)if
bClTIa==QuestWindow.Receive then RemoveLinneEvent("MTenne",0)Sound.playEmptyBGM()
Quest.refreshState()end end
function Step1()Transition.setOutdoor("","Academy Building")
Exit_FieldAndChange("School1F","ClassRoomBy31A",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("RKayamori")local BW0WFP=Adv.characterAsync("MTenne")local X8=
Field.getPosition("MTenne_Quest")+Vec(0,0,-2.5)
Field.initPlayerPosition(X8)Field.activeEventCharacterWait("MTenne_Quest")
Field.startEvent()Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setLookAtTarget("MTenne_Quest","Player",0)Field.turnToTarget("Player","MTenne_Quest",0)
Sound.playBGM("SB0032")Wait(1)
Field.setCameraCompositionEx(Vec(48.230,1.020,1.740),Vec(0.000,310.000,0.000),23.70)Field.moveBy("Player",Vec(0,0,1),1)
Adv.fadeIn(1)Field.waitTaskKey("Player")
Field.setLookAtTarget("Player","MTenne_Quest",0.3)
Field.setLookAtTargetWait("MTenne_Quest","Player",0.3)Layout.show({BW0WFP,"080201"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Ahh, there you are.]],"VC_Quest_Lv1_MTenne_Quest_00001_MTenne")Layout.show()
Layout.show({rDzL7SVO,"000301"},{BW0WFP,"000101"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Why are you doing your research out here? Shouldn't you do it in a lab or something?]],"VC_Quest_Lv1_MTenne_Quest_00002_RKayamori")
Adv.talkWithFacial("090101",nil,BW0WFP,[[Heh heh heh... You're such a fool.]],"VC_Quest_Lv1_MTenne_Quest_00003_MTenne")
Adv.talkWithFacial("170301",nil,rDzL7SVO,[[Why's that?]],"VC_Quest_Lv1_MTenne_Quest_00004_RKayamori")
Adv.talkWithFacial("090001",nil,BW0WFP,[[Even the late Steve Jobs walked around to help himself think. That's how he came up with countless inventions!]],"VC_Quest_Lv1_MTenne_Quest_00005_MTenne")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[What about Edison?]],"VC_Quest_Lv1_MTenne_Quest_00006_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[No idea.]],"VC_Quest_Lv1_MTenne_Quest_00007_MTenne")
Adv.talkWithFacial("170302",nil,rDzL7SVO,[[Is Steve Jobs the only example you got?]],"VC_Quest_Lv1_MTenne_Quest_00008_RKayamori")
Adv.talkWithFacial("000102",nil,BW0WFP,[[Hmm... There was also this old writer I liked.]],"VC_Quest_Lv1_MTenne_Quest_00009_MTenne")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Who?]],"VC_Quest_Lv1_MTenne_Quest_00010_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[Don't remember.]],"VC_Quest_Lv1_MTenne_Quest_00011_MTenne")
Adv.talkWithFacial("010001",nil,rDzL7SVO,[[Okay... Why don't we get you back to your lab?]],"VC_Quest_Lv1_MTenne_Quest_00012_RKayamori")
Adv.act(BW0WFP,"030101",AdvCharacterMouth.Mouth01)
Adv.playCutIn("MTenne","Default","Anger","I don't have one!!!","VC_Quest_Lv1_MTenne_Quest_00013_MTenne",1.5,350,nil)
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[What?]],"VC_Quest_Lv1_MTenne_Quest_00014_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[I'm doing my research here <i>because</i> there's nowhere else I can use as a lab!]],"VC_Quest_Lv1_MTenne_Quest_00015_MTenne")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[What's that? It looks like it's boiling.]],"VC_Quest_Lv1_MTenne_Quest_00016_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[Of course it does. I'm in the process of mixing it.]],"VC_Quest_Lv1_MTenne_Quest_00017_MTenne")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[Even though it totally screams "Danger. Do not mix"?!]],"VC_Quest_Lv1_MTenne_Quest_00018_RKayamori")
Adv.talkWithFacial("000103",nil,BW0WFP,[[This is not as trivial as some common cleaning products.]],"VC_Quest_Lv1_MTenne_Quest_00019_MTenne")
Adv.talkWithFacial("070302",nil,rDzL7SVO,[[But if you mix those, you can make poisonous gas that's strong enough to kill people exposed to them for too long.]],"VC_Quest_Lv1_MTenne_Quest_00020_RKayamori")
Adv.talkWithFacial("080102",nil,BW0WFP,[[Wait, really?]],"VC_Quest_Lv1_MTenne_Quest_00021_MTenne")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Yep, for real.]],"VC_Quest_Lv1_MTenne_Quest_00022_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[Well, that isn't good at all... Some things should absolutely never be mixed...]],"VC_Quest_Lv1_MTenne_Quest_00023_MTenne")
Adv.talkWithFacial("0703",nil,rDzL7SVO,[[Yeah, that's why it says on the bottle, "Danger. Do not mix!"...]],"VC_Quest_Lv1_MTenne_Quest_00024_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[Fascinating.]],"VC_Quest_Lv1_MTenne_Quest_00025_MTenne")Layout.show()
Layout.show({BW0WFP,"040003"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Worry not. What I have here...is not the type of solution that is dangerous when mixed.]],"VC_Quest_Lv1_MTenne_Quest_00026_MTenne")Adv.act(BW0WFP,"0902")
Adv.actDelay(3.5,BW0WFP,"0900",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,BW0WFP,[[This is a magic potion that—when imbibed—will make you stronger for a length of time. Would you care to try it for me?]],"VC_Quest_Lv1_MTenne_Quest_00027_MTenne")
Adv.actDelay(0,BW0WFP,"0900",AdvCharacterMouth.Close)Layout.show()
Layout.show({rDzL7SVO,"170301"},{BW0WFP,"090101"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Are you trying to make me into your guinea pig?]],"VC_Quest_Lv1_MTenne_Quest_00028_RKayamori")
Adv.talkWithFacial("000003",nil,BW0WFP,[[That is precisely what I am doing.]],"VC_Quest_Lv1_MTenne_Quest_00029_MTenne")
Adv.act(BW0WFP,"000101",AdvCharacterMouth.Mouth01)Adv.act(rDzL7SVO,"010001")
Adv.actDelay(2,rDzL7SVO,"110301")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Okay, sure, grandma. Let's get you back to your little ol' lab.]],"VC_Quest_Lv1_MTenne_Quest_00030_RKayamori")Adv.actDelay(0,rDzL7SVO,"110301")
Adv.act(BW0WFP,"030101",AdvCharacterMouth.Mouth01)
Adv.playCutIn("MTenne","Default","Anger","I don't have one!!!","VC_Quest_Lv1_MTenne_Quest_00031_MTenne",1.5,350,nil)
Adv.talkWithFacial(nil,nil,BW0WFP,[[And all I hear from you is: "Where's your lab?"; "You shouldn't mix that!"; "I don't wanna be a test subject!"...yadda yadda yadda! What are you, a millennial?!]],"VC_Quest_Lv1_MTenne_Quest_00032_MTenne")
Adv.talkWithFacial("000001",nil,rDzL7SVO,[[Nah, I'm from the screwed-up generation that came after that.]],"VC_Quest_Lv1_MTenne_Quest_00033_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[Oh, well... That's fine then.]],"VC_Quest_Lv1_MTenne_Quest_00034_MTenne")
Adv.act(BW0WFP,"030101",AdvCharacterMouth.Mouth01)
Adv.playCutIn("MTenne","Default","Anger","Wait! I've never even heard of that!!!","VC_Quest_Lv1_MTenne_Quest_00035_MTenne",1.5,350,nil)
Adv.talkWithFacial("110302",nil,rDzL7SVO,[[I know, right? I just made it up.]],"VC_Quest_Lv1_MTenne_Quest_00036_RKayamori")
Adv.talkWithFacial(nil,nil,BW0WFP,[[You dare tease me—Miko Tenne, the unrivaled alchemist—far too much!!!]],"VC_Quest_Lv1_MTenne_Quest_00037_MTenne")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[How do you write Tenne, anyway?]],"VC_Quest_Lv1_MTenne_Quest_00038_RKayamori")
Adv.talkWithFacial("030103",nil,BW0WFP,[[Like heavenly sound.]],"VC_Quest_Lv1_MTenne_Quest_00039_MTenne")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[That's usually pronounced Amane, no? Why is your name Tenne?]],"VC_Quest_Lv1_MTenne_Quest_00040_RKayamori")
Adv.act(BW0WFP,"030101",AdvCharacterMouth.Mouth01)
Adv.playCutIn("MTenne","Default","Anger","HOW SHOULD I KNOW?!","VC_Quest_Lv1_MTenne_Quest_00041_MTenne",1.5,350,nil)
Adv.talkWithFacial(nil,nil,BW0WFP,[[Both Sugano and Kanno can be written exactly the same, too!!!]],"VC_Quest_Lv1_MTenne_Quest_00042_MTenne")
Adv.talkWithFacial("110301",nil,rDzL7SVO,[[Hagiwara and Ogiwara, too.]],"VC_Quest_Lv1_MTenne_Quest_00043_RKayamori")
Adv.playCutIn("MTenne","Default","Anger","Those are written differently!","VC_Quest_Lv1_MTenne_Quest_00044_MTenne",1.5,350,nil)Layout.show()
Layout.show({BW0WFP,"030201"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Anyway! Drink this and go fight in the arena! Then report back to me with its effects!]],"VC_Quest_Lv1_MTenne_Quest_00045_MTenne")Layout.show({rDzL7SVO,"170102"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Whaaat.]],"VC_Quest_Lv1_MTenne_Quest_00046_RKayamori")Transition.start()Field.finishEvent()
Layout.show()Field.playerComeIn("StairsPoint",Vec(2))Wait(1)
Transition.finish()Sound.returnFieldBGM()
Adv.kayamoriTalk([[Who knows what'll happen if I drink this by myself... I better bring a couple people along.]],"VC_Quest_Lv1_MTenne_Quest_00047_RKayamori",
nil)SetLocalFlag("仲間の人数",0)
SetLocalFlag("和泉を誘ったか",0)SetLocalFlag("東城を誘ったか",0)
SetLocalFlag("國見を誘ったか",0)SetLocalFlag("朝倉を誘ったか",0)
SetLocalFlag("逢川を誘ったか",0)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_MTenne()
SetLocalFlag("天音交流Lv1_step2で天音に話しかけた",1)local JQT=Adv.characterAsync("MTenne")
Field.startTalk("MTenne_Quest",FaceToFaceMode.Auto,function()
Layout.show({JQT,"030201"})
Adv.talkWithFacial("030201",nil,JQT,[[Go drink that and fight in the arena! Then report back to me! Don't make me tell you again!]],"VC_Quest_Lv1_MTenne_Quest_00048_MTenne")end)end
function Step3_YIzumi()local AtYtR=Adv.characterAsync("YIzumi")
local ND2BCh3=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({ND2BCh3,"000301"},{AtYtR,"000101"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Did you need something?]],"VC_Quest_Lv1_BIYamawaki_Quest_00040_YIzumi")
local IODBg=Adv.question([[Invite Yukkie?]],[[Invite|Maybe not]],0,true)
if IODBg==0 then
Adv.talkWithFacial("150301",nil,ND2BCh3,[[I'm about to get super strong all of a sudden... But I'm kinda worried... Would you mind being there with me?]],"VC_Quest_Lv1_MTenne_Quest_00050_RKayamori")
Adv.talkWithFacial("030201",nil,AtYtR,[[Sheesh, you sure look like you're gonna do something dangerous...]],"VC_Quest_Lv1_MTenne_Quest_00051_YIzumi")
Adv.talkWithFacial("060001",nil,AtYtR,[[All right, I'll come with so you don't get into even more trouble.]],"VC_Quest_Lv1_MTenne_Quest_00052_YIzumi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("和泉を誘ったか")
if
GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",1)else SetLocalFlag("誰を誘ったか2人目",1)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("060101",nil,AtYtR,[[Then why did you talk to me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00044_YIzumi")end end)Quest.refreshState()end
function Step3_TTojo()local YRDu=Adv.characterAsync("TTojo")
local CWRiP=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({CWRiP,"000301"},{YRDu,"000101"})
Adv.talkWithFacial(nil,nil,YRDu,[[Do you need something from me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00045_TTojo")
local LB0A=Adv.question([[Invite Tsukassie?]],[[Invite|Maybe not]],0,true)
if LB0A==0 then
Adv.talkWithFacial("150301",nil,CWRiP,[[I'm about to get super strong all of a sudden... But I'm kinda worried... Would you mind being there with me?]],"VC_Quest_Lv1_MTenne_Quest_00050_RKayamori")
Adv.talkWithFacial("070101",nil,YRDu,[[Hmm... This reeks of illegality. Are you sure it's okay?]],"VC_Quest_Lv1_MTenne_Quest_00057_TTojo")
Adv.talkWithFacial(nil,nil,CWRiP,[[It's totally fine.]],"VC_Quest_Lv1_MTenne_Quest_00058_RKayamori")
Adv.talkWithFacial("040001",nil,YRDu,[[Sure, I'm kind of worried, so I'll come along.]],"VC_Quest_Lv1_MTenne_Quest_00059_TTojo")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("東城を誘ったか")
if
GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",2)else SetLocalFlag("誰を誘ったか2人目",2)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,CWRiP,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("080101",nil,YRDu,[[Oh?]],"VC_Quest_Lv1_BIYamawaki_Quest_00049_TTojo")end end)Quest.refreshState()end
function Step3_TKunimi()local dl=Adv.characterAsync("TKunimi")
local sKPjQkdn=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({sKPjQkdn,"000301"},{dl,"000101"})
Adv.talkWithFacial(nil,nil,dl,[[Ruka! What seems to be the matter?]],"VC_Quest_Lv1_BIYamawaki_Quest_00050_TKunimi")
local HHH9IlJp=Adv.question([[Invite Cappy?]],[[Invite|Maybe not]],0,true)
if HHH9IlJp==0 then
Adv.talkWithFacial("150301",nil,sKPjQkdn,[[I'm about to get super strong all of a sudden... But I'm kinda worried... Would you mind being there with me?]],"VC_Quest_Lv1_MTenne_Quest_00050_RKayamori")
Adv.talkWithFacial("070101",nil,dl,[[I'll do anything for my captain! I humbly offer my seaworthy services!]],"VC_Quest_Lv1_MTenne_Quest_00064_TKunimi")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("國見を誘ったか")
if
GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",3)else SetLocalFlag("誰を誘ったか2人目",3)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial(nil,nil,dl,[[That's okay! I get it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00054_TKunimi")end end)Quest.refreshState()end
function Step3_KAsakura()local uYz2ryy4=Adv.characterAsync("KAsakura")
local zVPRGDnG=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({zVPRGDnG,"000301"},{uYz2ryy4,"000101"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Ruka. What's up?]],"VC_Quest_Lv1_BIYamawaki_Quest_00055_KAsakura")
local IKxw=Adv.question([[Invite Karerin?]],[[Invite|Maybe not]],0,true)
if IKxw==0 then
Adv.talkWithFacial("150301",nil,zVPRGDnG,[[I'm about to get super strong all of a sudden... But I'm kinda worried... Would you mind being there with me?]],"VC_Quest_Lv1_MTenne_Quest_00050_RKayamori")
Adv.talkWithFacial("080101",nil,uYz2ryy4,[[Huh? How are you gonna do that?]],"VC_Quest_Lv1_MTenne_Quest_00069_KAsakura")
Adv.talkWithFacial("070101",nil,uYz2ryy4,[[It sounds like it could be dangerous, so sure, I'll tag along.]],"VC_Quest_Lv1_MTenne_Quest_00070_KAsakura")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("朝倉を誘ったか")
if
GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",4)else SetLocalFlag("誰を誘ったか2人目",4)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh, okay.]],"VC_Quest_Lv1_BIYamawaki_Quest_00059_KAsakura")end end)Quest.refreshState()end
function Step3_MAikawa()local w0=Adv.characterAsync("MAikawa")
local UgXzI_C=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({UgXzI_C,"000301"},{w0,"000101"})
Adv.talkWithFacial(nil,nil,w0,[[What is it?]],"VC_Quest_Lv1_MTenne_Quest_00073_MAikawa")
local MLFLplLe=Adv.question([[Invite Megumin?]],[[Invite|Maybe not]],0,true)
if MLFLplLe==0 then
Adv.talkWithFacial("150301",nil,UgXzI_C,[[I'm about to get super strong all of a sudden... But I'm kinda worried... Would you mind being there with me?]],"VC_Quest_Lv1_MTenne_Quest_00050_RKayamori")
Adv.talkWithFacial("180101",nil,w0,[[Just what the hell are you gettin' into?]],"VC_Quest_Lv1_MTenne_Quest_00075_MAikawa")
Adv.talkWithFacial("070101",nil,w0,[[She's totally lost it... Fine! I'm comin' with ya!]],"VC_Quest_Lv1_MTenne_Quest_00076_MAikawa")Transition.start()Layout.show()
IncLocalFlag("仲間の人数")IncLocalFlag("逢川を誘ったか")
if
GetLocalFlag("誰を誘ったか1人目")==0 then
SetLocalFlag("誰を誘ったか1人目",5)else SetLocalFlag("誰を誘ったか2人目",5)end;if GetLocalFlag("仲間の人数")==2 then
Quest.clearStep(w0qyLbH)end;Wait(1)else
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("030101",nil,w0,[[Then why'd ya bother me?]],"VC_Quest_Lv1_MTenne_Quest_00078_MAikawa")end end)Quest.refreshState()end
function Step4()local jwq=Adv.characterAsync("RKayamori")
local kw3ei0a=Adv.characterAsync("YIzumi")local EspneS5=Adv.characterAsync("TTojo")
local LZeg0=Adv.characterAsync("TKunimi")local OJZ=Adv.characterAsync("KAsakura")
local nmuj=Adv.characterAsync("MAikawa")
local bP=Adv.loadBGAsync("Background/Arena/Arena_Default")local b4IqQW=Adv.characterAsync("RKayamori")
local iuGb=Adv.characterAsync("RKayamori")local koZU=Adv.characterAsync("RKayamori")
local C=Adv.characterAsync("RKayamori")local nmJGp_;local h0v3PIV
SetLocalFlag("仲間1が埋まっているか",0)
if Field.isJoinFollower("YIzumi")==true then b4IqQW="YIzumi"
koZU=Adv.characterAsync("YIzumi")IncLocalFlag("仲間1が埋まっているか")end
if Field.isJoinFollower("TTojo")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then b4IqQW="TTojo"
koZU=Adv.characterAsync("TTojo")IncLocalFlag("仲間1が埋まっているか")else
iuGb="TTojo"C=Adv.characterAsync("TTojo")end end
if Field.isJoinFollower("TKunimi")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then b4IqQW="TKunimi"
koZU=Adv.characterAsync("TKunimi")IncLocalFlag("仲間1が埋まっているか")else
iuGb="TKunimi"C=Adv.characterAsync("TKunimi")end end
if Field.isJoinFollower("KAsakura")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then b4IqQW="KAsakura"
koZU=Adv.characterAsync("KAsakura")IncLocalFlag("仲間1が埋まっているか")else
iuGb="KAsakura"C=Adv.characterAsync("KAsakura")end end
if Field.isJoinFollower("MAikawa")==true then
if
GetLocalFlag("仲間1が埋まっているか")==0 then b4IqQW="MAikawa"
koZU=Adv.characterAsync("MAikawa")IncLocalFlag("仲間1が埋まっているか")else
iuGb="MAikawa"C=Adv.characterAsync("MAikawa")end end;Adv.waitAsyncInstanceAll()
Field.playerGetOut("ArenaPoint",Vec(0,0,10))
Field.goToArena(function()PurgeField()end,true)SetupFixedDeck(b4IqQW,"RKayamori",iuGb)
Quest.BattleWithFixedParty(w0qyLbH,"Quest_MTenne_Lv1",function()
Battle.waitStartEffectEnd()Battle.startEvent()Battle.hideHud()
Adv.kayamoriTalk([[(Welp... Bottoms up!)]],"VC_Quest_Lv1_MTenne_Quest_00079_RKayamori",
nil)Sound.play("AS_Drink_Liquid",5)
Adv.bubble_ANGRY("se",[[*gulp!*]],nil,"VC_Quest_00377_v004_")
Adv.kayamoriTalk([[Gah!]],"VC_Quest_Lv1_MTenne_Quest_00080_RKayamori",nil)
Battle.specialStatus("Quest_MTenne_Lv1_Skill01",BattleTeam.Player,0)
Battle.specialStatus("Quest_MTenne_Lv1_Skill01_2",BattleTeam.Player,0)
Battle.specialStatus("Quest_MTenne_Lv1_Skill01_3",BattleTeam.Player,0)
Battle.specialStatus("Quest_MTenne_Lv1_Skill01_4",BattleTeam.Player,0)
Battle.specialStatus("Quest_MTenne_Lv1_Skill01_5",BattleTeam.Player,0)
Battle.playSkillEffectAndWait("NormalBuff_Up",BattleTeam.Player,0)
if b4IqQW=="YIzumi"then nmJGp_="030201"elseif b4IqQW=="TTojo"then nmJGp_="070201"elseif b4IqQW=="TKunimi"then
nmJGp_="180201"elseif b4IqQW=="KAsakura"then nmJGp_="080201"elseif b4IqQW=="MAikawa"then nmJGp_="180201"end
if iuGb=="TTojo"then h0v3PIV="070201"elseif iuGb=="TKunimi"then h0v3PIV="180201"elseif iuGb=="KAsakura"then
h0v3PIV="080201"elseif iuGb=="MAikawa"then h0v3PIV="180201"end
Adv.act(koZU,nmJGp_,AdvCharacterMouth.Close,0)Adv.act(C,h0v3PIV,AdvCharacterMouth.Close,0)
Adv.showCharacter(koZU,0.2,Position.CHR_LEFT)Adv.showCharacter(C,0.2,Position.CHR_RIGHT)
if
b4IqQW=="YIzumi"then
Adv.talkWithFacial(nil,nil,koZU,[[What the heck is that?! Whatever you just chugged definitely didn't look healthy!]],"VC_Quest_Lv1_MTenne_Quest_00081_YIzumi")end
if b4IqQW=="TTojo"then
Adv.talkWithFacial(nil,nil,koZU,[[Is that even legal?!]],"VC_Quest_Lv1_MTenne_Quest_00082_TTojo")elseif iuGb=="TTojo"then
Adv.talkWithFacial(nil,nil,C,[[Is that even legal?!]],"VC_Quest_Lv1_MTenne_Quest_00082_TTojo")end
if b4IqQW=="TKunimi"then
Adv.talkWithFacial(nil,nil,koZU,[[That didn't seem like an ordinary energy drink!]],"VC_Quest_Lv1_MTenne_Quest_00083_TKunimi")elseif iuGb=="TKunimi"then
Adv.talkWithFacial(nil,nil,C,[[That didn't seem like an ordinary energy drink!]],"VC_Quest_Lv1_MTenne_Quest_00083_TKunimi")end
if b4IqQW=="KAsakura"then
Adv.talkWithFacial(nil,nil,koZU,[[What was that?! Ruka, what are you drinking?!]],"VC_Quest_Lv1_MTenne_Quest_00084_KAsakura")elseif iuGb=="KAsakura"then
Adv.talkWithFacial(nil,nil,C,[[What was that?! Ruka, what are you drinking?!]],"VC_Quest_Lv1_MTenne_Quest_00084_KAsakura")end
if b4IqQW=="MAikawa"then
Adv.talkWithFacial(nil,nil,koZU,[[What the hell, are ya druggin' up for this?!]],"VC_Quest_Lv1_MTenne_Quest_00085_MAikawa")elseif iuGb=="MAikawa"then
Adv.talkWithFacial(nil,nil,C,[[What the hell, are ya druggin' up for this?!]],"VC_Quest_Lv1_MTenne_Quest_00085_MAikawa")end;Adv.hide(koZU,0.2)Adv.hide(C,0.2)
Battle.showHud()Battle.resumeEvent()end,0,100)Quest.refreshState()end
function Step5()local Uc=Adv.characterAsync("RKayamori")
local JSkUQL=Adv.characterAsync("YIzumi")local PTUZ2v=Adv.characterAsync("TTojo")
local qlZeO3Pr=Adv.characterAsync("TKunimi")local fG9zS=Adv.characterAsync("KAsakura")
local WiXG=Adv.characterAsync("MAikawa")
local QgyWztK=Adv.loadBGAsync("Background/Arena/Arena_Default")local Oo6ecUO=Adv.characterAsync("RKayamori")
local b6SL0yka=Adv.characterAsync("RKayamori")local hEk=Adv.characterAsync("RKayamori")
local E8o=Adv.characterAsync("RKayamori")local TdqFo;local ykLF0
SetLocalFlag("仲間1が埋まっているか",0)
if GetLocalFlag("誰を誘ったか1人目")==1 or
GetLocalFlag("誰を誘ったか2人目")==1 then
Oo6ecUO="YIzumi"hEk=Adv.characterAsync("YIzumi")
IncLocalFlag("仲間1が埋まっているか")end
if GetLocalFlag("誰を誘ったか1人目")==2 or
GetLocalFlag("誰を誘ったか2人目")==2 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then Oo6ecUO="TTojo"
hEk=Adv.characterAsync("TTojo")IncLocalFlag("仲間1が埋まっているか")else
b6SL0yka="TTojo"E8o=Adv.characterAsync("TTojo")end end
if GetLocalFlag("誰を誘ったか1人目")==3 or
GetLocalFlag("誰を誘ったか2人目")==3 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then Oo6ecUO="TKunimi"
hEk=Adv.characterAsync("TKunimi")IncLocalFlag("仲間1が埋まっているか")else
b6SL0yka="TKunimi"E8o=Adv.characterAsync("TKunimi")end end
if GetLocalFlag("誰を誘ったか1人目")==4 or
GetLocalFlag("誰を誘ったか2人目")==4 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then Oo6ecUO="KAsakura"
hEk=Adv.characterAsync("KAsakura")IncLocalFlag("仲間1が埋まっているか")else
b6SL0yka="KAsakura"E8o=Adv.characterAsync("KAsakura")end end
if GetLocalFlag("誰を誘ったか1人目")==5 or
GetLocalFlag("誰を誘ったか2人目")==5 then
if
GetLocalFlag("仲間1が埋まっているか")==0 then Oo6ecUO="MAikawa"
hEk=Adv.characterAsync("MAikawa")IncLocalFlag("仲間1が埋まっているか")else
b6SL0yka="MAikawa"E8o=Adv.characterAsync("MAikawa")end end
Field.startNovel(function()Sound.playBGM("SB0033",0,0)
Layout.createStageFixBg(QgyWztK,Position.BG_RIGHT)Layout.show({Uc,"010001"})
Transition.finish()
Adv.playCutIn("RKayamori","Default","Superiority",[[Yeeeaaah! This is amazing!!!]],"VC_Quest_Lv1_MTenne_Quest_00086_RKayamori",2)
if Oo6ecUO=="YIzumi"then Adv.act(hEk,"210201",nil,0)elseif Oo6ecUO=="TTojo"then Adv.act(hEk,"070203",
nil,0)elseif Oo6ecUO=="TKunimi"then
Adv.act(hEk,"180201",AdvCharacterMouth.Mouth03,0)elseif Oo6ecUO=="KAsakura"then Adv.act(hEk,"020201",nil,0)elseif Oo6ecUO=="MAikawa"then
Adv.act(hEk,"180201",AdvCharacterMouth.Mouth03,0)end
if b6SL0yka=="TTojo"then Adv.act(E8o,"070203",nil,0)elseif b6SL0yka=="TKunimi"then
Adv.act(E8o,"180201",AdvCharacterMouth.Mouth03,0)elseif b6SL0yka=="KAsakura"then Adv.act(E8o,"020201",nil,0)elseif
b6SL0yka=="MAikawa"then
Adv.act(E8o,"180201",AdvCharacterMouth.Mouth03,0)end
Layout.createStageFixBg(QgyWztK,Position.BG_LEFT)Layout.show({hEk,nil},{E8o,nil})
if Oo6ecUO=="YIzumi"then
Adv.talkWithFacial(
nil,nil,hEk,[[That was impressive and all, but are you really okay?!]],"VC_Quest_Lv1_MTenne_Quest_00087_YIzumi")end
if Oo6ecUO=="TTojo"then
Adv.talkWithFacial(nil,nil,hEk,[[Such crazy strength is bound to have some negative side effects!]],"VC_Quest_Lv1_MTenne_Quest_00088_TTojo")elseif b6SL0yka=="TTojo"then
Adv.talkWithFacial(nil,nil,E8o,[[Such crazy strength is bound to have some negative side effects!]],"VC_Quest_Lv1_MTenne_Quest_00088_TTojo")end
if Oo6ecUO=="TKunimi"then
Adv.talkWithFacial(nil,nil,hEk,[[Wasn't that something super sus?!]],"VC_Quest_Lv1_MTenne_Quest_00089_TKunimi")elseif b6SL0yka=="TKunimi"then
Adv.talkWithFacial(nil,nil,E8o,[[Wasn't that something super sus?!]],"VC_Quest_Lv1_MTenne_Quest_00089_TKunimi")end
if Oo6ecUO=="KAsakura"then
Adv.talkWithFacial(nil,nil,hEk,[[Do you really need something like that to save humanity?!]],"VC_Quest_Lv1_MTenne_Quest_00090_KAsakura")elseif b6SL0yka=="KAsakura"then
Adv.talkWithFacial(nil,nil,E8o,[[Do you really need something like that to save humanity?!]],"VC_Quest_Lv1_MTenne_Quest_00090_KAsakura")end
if Oo6ecUO=="MAikawa"then
Adv.talkWithFacial(nil,nil,hEk,[[Well, hell. To think you'd go that far to get stronger... You've gotta be out of yer mind.]],"VC_Quest_Lv1_MTenne_Quest_00091_MAikawa")elseif b6SL0yka=="MAikawa"then
Adv.talkWithFacial(nil,nil,E8o,[[Well, hell. To think you'd go that far to get stronger... You've gotta be out of yer mind.]],"VC_Quest_Lv1_MTenne_Quest_00091_MAikawa")end
Layout.createStageFixBg(QgyWztK,Position.BG_RIGHT)Layout.show({Uc,"010001"})
Adv.actDelay(2,Uc,"080201",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,Uc,[[Hehehehe... Huh?]],"VC_Quest_Lv1_MTenne_Quest_00092_RKayamori")
Adv.actDelay(0,Uc,"080201",AdvCharacterMouth.Mouth03)Sound.stopBGM(1)Adv.act(Uc,"030201")
Adv.playCutIn("RKayamori","Default","Surprise",[[AHHH!!! My stomaaach!!!]],"VC_Quest_Lv1_MTenne_Quest_00093_RKayamori",1.5,0,
nil)Transition.start()
Sound.play("AS_Toilet_Waterwash")end)Layout.show()
Exit_FieldAndChange("School1F","ClassRoomBy31A",nil,function()
Quest.clearStep(w0qyLbH)end)end
function Step6()Adv.fadeOut(0)
local cilhu=Adv.characterAsync("RKayamori")local eVfN=Adv.characterAsync("MTenne")local LBIJ=
Field.getPosition("MTenne_Quest")+Vec(0,0,-1.5)
Field.initPlayerPosition(LBIJ)Field.activeEventCharacterWait("MTenne_Quest")
Field.startEvent()Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setLookAtTarget("MTenne_Quest","Player",0)Field.turnToTarget("Player","MTenne_Quest",0)
Field.setCameraCompositionEx(LBIJ,Vec(0.000,0.000,0.000),30.00)
Field.setCameraCompositionEx(Vec(48.230,1.020,1.740),Vec(0.000,310.000,0.000),23.70)Field.setLookAtTarget("Player","MTenne_Quest",0)
Field.setLookAtTarget("MTenne_Quest","Player",0)Adv.fadeIn(1)Wait(0.3)
Layout.show({cilhu,"150002"},{eVfN,"000101"})
Adv.talkWithFacial(nil,nil,cilhu,[[I went through hell and back... That stuff was useless.]],"VC_Quest_Lv1_MTenne_Quest_00094_RKayamori")
Adv.talkWithFacial("000103",nil,eVfN,[[I see. Well, even if it was usable, having mixed so many things together, I can't reproduce it anyway.]],"VC_Quest_Lv1_MTenne_Quest_00095_MTenne")
Adv.talkWithFacial("170301",nil,cilhu,[[Did you really need someone to test it for you, then?!]],"VC_Quest_Lv1_MTenne_Quest_00096_RKayamori")
Adv.talkWithFacial("000002",nil,eVfN,[[People learn from their failures. All success starts from there, you know.]],"VC_Quest_Lv1_MTenne_Quest_00097_MTenne")
Adv.talkWithFacial("160001",nil,cilhu,[[I sure hope this gave you a good starting point at least...]],"VC_Quest_Lv1_MTenne_Quest_00098_RKayamori")Adv.fadeOutWithShield(1)Field.finishEvent()
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local CSSp=Bath.startBathTimeEvent("MTenne",BathInviteMode.Active,function(CBZIwYHI,x1vCS0)
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[(It's that alchemist from earlier. I should get her to wash my back.)]],"VC_Quest_00378_v004_RKayamori")
local Herp=Bath.BathQuestion("MTenne",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Wanna go to the baths together?]],"VC_Quest_00379_v004_RKayamori")
Adv.talkWithFacial(nil,nil,x1vCS0,[[Very well. You did work pretty hard. I can wash your back for you.]],"VC_Quest_00380_v004_MTenne")
Adv.talkWithFacial(nil,nil,CBZIwYHI,[[Yeah. You seriously owe me after all that.]],"VC_Quest_00381_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,CBZIwYHI,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return Herp end)
if CSSp==0 then
Bath.startBathTimeNovel("MTenne",nil,"Wash",function(TNczSeT,Sb,_OwI,GBDhi2D)Sound.play("AS_Wash_Bath")
Adv.talkWithFacial(
nil,nil,Sb,[[Here we go! Scrubba dub dub! All done.]],"VC_Quest_Lv1_MTenne_Quest_00102_MTenne")
Adv.talkWithFacial(nil,nil,TNczSeT,[[You missed a spot.]],"VC_Quest_Lv1_MTenne_Quest_00103_RKayamori")Sound.play("AS_Wash_Bath_Hard")
Adv.talkWithFacial(nil,nil,Sb,[[Fine. Here goes nothing. Scrubba dub dub! Are you satisfied now?]],"VC_Quest_Lv1_MTenne_Quest_00104_MTenne")
Adv.talkWithFacial(nil,nil,TNczSeT,[[You missed a spot.]],"VC_Quest_Lv1_MTenne_Quest_00105_RKayamori")
Adv.talkWithFacial(nil,nil,Sb,[[How much dirty work do you intend to force me, an unrivaled alchemist, to do?]],"VC_Quest_Lv1_MTenne_Quest_00106_MTenne")
Adv.talkWithFacial(nil,nil,TNczSeT,[[Your little experiment really put me through the ringer.]],"VC_Quest_Lv1_MTenne_Quest_00107_RKayamori")
Adv.talkWithFacial(nil,nil,Sb,[[Good grief... Maybe next time I'll brew something that prevents bodily excretions.]],"VC_Quest_Lv1_MTenne_Quest_00110_MTenne")
Adv.talkWithFacial(nil,nil,TNczSeT,[[Instead of those evil potion things, make something that'll actually help humanity!]],"VC_Quest_Lv1_MTenne_Quest_00111_RKayamori")end)end;Exit_World()end