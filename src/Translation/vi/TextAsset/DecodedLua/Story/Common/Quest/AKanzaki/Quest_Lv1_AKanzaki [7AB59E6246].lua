local w0qyLbH="Quest_Lv1_AKanzaki"function init()
Log("Called Quest_Lv1_AKanzaki")refresh()end
function refresh()if
Quest.stateUnreceivablelinne(w0qyLbH)then return end;if Quest.stateReceivable(w0qyLbH)then
LinneEvent("AKanzaki","Kayamori-dono, are you busy?",Message,Quest.isCleardOnce(w0qyLbH),"Communication")end;if
Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end;if
Quest.stateStep(w0qyLbH,2)then Field.setActive("MTsukishiro_Gaya",false)
StartEvent(Step2)end
if Quest.stateStep(w0qyLbH,3)then
Field.setActiveWithTag("AKanzaki",false)
SetPeriodText("Ask the other members of 31-A if they've seen Adel!")
StartEventNoLockAt("MainStreet",function()
Field.setLookAtPosition("TTojo_Quest4",Vec(13.274,0.5,56.96))end)
if GetLocalFlag("和泉に話しかけた")==0 then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step3_YIzumi)else EmptyEvent("YIzumi_Quest")end
if GetLocalFlag("國見に話しかけた")==0 then
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step3_TKunimi)else EmptyEvent("TKunimi_Quest")end
if GetLocalFlag("朝倉に話しかけた")==0 then
Quest.TouchEvent("KAsakura_Quest3",w0qyLbH,Step3_KAsakura)else EmptyEvent("KAsakura_Quest3")end
if GetLocalFlag("逢川に話しかけた")==0 then
Quest.TouchEvent("MAikawa_Quest6",w0qyLbH,Step3_MAikawa)else EmptyEvent("MAikawa_Quest6")end
Quest.TouchEvent("TTojo_Quest4",w0qyLbH,Step3_TTojo)end
if Quest.stateStep(w0qyLbH,4)then
if
GetLocalFlag("和泉に話しかけた")==0 then SetFlag("神崎交流Lv1_和泉と話した",0)else
SetFlag("神崎交流Lv1_和泉と話した",1)end
if GetLocalFlag("國見に話しかけた")==0 then
SetFlag("神崎交流Lv1_國見と話した",0)else SetFlag("神崎交流Lv1_國見と話した",1)end
if GetLocalFlag("朝倉に話しかけた")==0 then
SetFlag("神崎交流Lv1_朝倉と話した",0)else SetFlag("神崎交流Lv1_朝倉と話した",1)end
if GetLocalFlag("逢川に話しかけた")==0 then
SetFlag("神崎交流Lv1_逢川と話した",0)else SetFlag("神崎交流Lv1_逢川と話した",1)end;StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Message(nsgji)
if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_Lv1_AKanzaki_Quest_00000_RKayamori",
nil)return end;Linne.Inputing(nsgji)Linne.Wait(nsgji,1)
Linne.Receive(nsgji,"Could you help me by checking my ninjutsu?")Wait(1)
Adv.kayamoriTalkMonolog([[(I can't believe I just got a request on such a digital gizmo from someone whose whole shtick is all about low-tech...)]],"VC_Quest_Lv1_AKanzaki_Quest_00001_RKayamori",
nil)local bClTIa=Quest.receive(w0qyLbH)
if bClTIa==QuestWindow.Receive then
RemoveLinneEvent("AKanzaki",0)Quest.refreshState()end end
function Step1()Transition.setOutdoor("","Academy Building")
Exit_FieldAndChange("School1F","CommanderRoomPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step2()Adv.fadeOut(0)
local rDzL7SVO=Adv.characterAsync("AKanzaki")local BW0WFP=Adv.characterAsync("RKayamori")
local X8=Adv.effect("Adventure/Smoke/Smoke","ForegroundEffect")
local JQT=Field.getPosition("AKanzaki_Quest")+Vec(-1.5,0,-0.9)local AtYtR=Field.getWaypointPosition("AuditoriumPoint")
Field.initPlayerPosition(JQT)Field.prepareEventCharacter("AKanzaki_Quest")
Wait(1)
Field.startTalk("AKanzaki_Quest",FaceToFaceMode.Auto,function()Adv.fadeIn(1)
Field.turnToTarget("AKanzaki_Quest","Player",0.75)Wait(0.5)Layout.show({rDzL7SVO,"010001"})
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[I have waited! I have an urgent request!]],"VC_Quest_Lv1_AKanzaki_Quest_00002_AKanzaki")Layout.show()
Layout.show({BW0WFP,"070301"},{rDzL7SVO,"000101"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Hang on... What exactly are you supposed to be, Adel? Were you brought up as a ninja or something?]],"VC_Quest_Lv1_AKanzaki_Quest_00003_RKayamori")
Adv.talkWithFacial("000101",nil,rDzL7SVO,[[Nein. Until recently, I was in Germany!]],"VC_Quest_Lv1_AKanzaki_Quest_00004_AKanzaki")
Adv.talkWithFacial("000301",nil,BW0WFP,[[So how'd you become a ninja in Japan?]],"VC_Quest_Lv1_AKanzaki_Quest_00005_RKayamori")Layout.show()
Layout.show({rDzL7SVO,"000201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[I came to Japan via an exchange program!]],"VC_Quest_Lv1_AKanzaki_Quest_00006_AKanzaki")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Then when I was studying as a ninja, I was scouted to join the military!]],"VC_Quest_Lv1_AKanzaki_Quest_00007_AKanzaki")
Adv.talkWithFacial("010002",nil,rDzL7SVO,[[Now, I eradicate the Cancer while being a fantastic ninja!]],"VC_Quest_Lv1_AKanzaki_Quest_00008_AKanzaki")Layout.show()
Layout.show({BW0WFP,"080301"},{rDzL7SVO,"010001"})
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.3)
Adv.playCutIn("RKayamori","Default","Surprise",[[That has nothing to do with ninjas!]],"VC_Quest_Lv1_AKanzaki_Quest_00009_RKayamori",2,-350)Adv.act(rDzL7SVO,"0001")
Adv.talkWithFacial("000301",nil,BW0WFP,[[Is that it? Do you like just ninjas or something?]],"VC_Quest_Lv1_AKanzaki_Quest_00010_RKayamori")
Adv.talkWithFacial("090103",nil,rDzL7SVO,[[Ja! I have always aspired to be a ninja!]],"VC_Quest_Lv1_AKanzaki_Quest_00011_AKanzaki")
Adv.talkWithFacial("000301",nil,BW0WFP,[[I guess you're a ninja who doesn't sneak around much, huh?]],"VC_Quest_Lv1_AKanzaki_Quest_00012_RKayamori")
Adv.talkWithFacial("090001",nil,rDzL7SVO,[[I want everyone to recognize me as an incredible ninja!]],"VC_Quest_Lv1_AKanzaki_Quest_00013_AKanzaki")
Adv.talkWithFacial("070001",nil,BW0WFP,[[So you <i>really</i> don't care about being sneaky.]],"VC_Quest_Lv1_AKanzaki_Quest_00014_RKayamori")Adv.act(rDzL7SVO,"0001")
Adv.talkWithFacial("000301",nil,BW0WFP,[[Were you a ninja back in Germany too?]],"VC_Quest_Lv1_AKanzaki_Quest_00015_RKayamori")
Adv.talkWithFacial("000101",nil,rDzL7SVO,[[Sadly, being a ninja in Germany is quite conspicuous!]],"VC_Quest_Lv1_AKanzaki_Quest_00016_AKanzaki")
Adv.talkWithFacial("040001",nil,rDzL7SVO,[[If I were to walk around wearing this, I would be treated like a weirdo!]],"VC_Quest_Lv1_AKanzaki_Quest_00017_AKanzaki")
Adv.talkWithFacial("000302",nil,BW0WFP,[[I mean, that's the same here too.]],"VC_Quest_Lv1_AKanzaki_Quest_00018_RKayamori")
Adv.actDelay(4.3,rDzL7SVO,"000101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("110301",nil,BW0WFP,[[Still, a ninja from Germany, plus you still wear that getup and everything. You have the real rebel ninja spirit! Now let me see what you can do, ninja!]],"VC_Quest_Lv1_AKanzaki_Quest_00019_RKayamori")
Adv.act(rDzL7SVO,"000101",AdvCharacterMouth.Mouth01)Layout.show()
Field.setCameraCompositionEx(Vec(-13.370,1.300,-2.940),Vec(0.000,30.000,0.000),17.70,1)Field.disableLookAt("AKanzaki_Quest",0)Field.turnBy("AKanzaki_Quest",
-30,0,AnimationMode.None)
Wait(1.2)
Field.changeAnimation("AKanzaki_Quest","FieldUnique01")Wait(1.2)Layout.show({rDzL7SVO,"A00202"})
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[Now, I'm going to disappear, and I want you to look for me! If you cannot find me, that means I have mastered becoming the shadows!]],"VC_Quest_Lv1_AKanzaki_Quest_00020_AKanzaki")Layout.show()Sound.play("AS_Ninja_Vanishing")
Adv.whiteOut(0.2)Adv.show(X8)Adv.whiteIn(0.3)Wait(1)
Field.fadeOutCharacter("AKanzaki_Quest",1.4)Wait(2)Sound.playBGM("SB0040")
Adv.kayamoriTalk([[Whoa! She's really gone! That's some pretty fancy ninja technique!]],"VC_Quest_Lv1_AKanzaki_Quest_00021_RKayamori")Transition.start()end)Layout.show()Adv.remove(X8)
Field.playerComeIn("StartPoint",Vec(-2))Wait(1)Transition.finish()
Adv.kayamoriTalk([[I guess I should ask around if anyone's seen her.]],"VC_Quest_Lv1_AKanzaki_Quest_00022_RKayamori",
nil)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3_YIzumi()local ND2BCh3=Adv.characterAsync("RKayamori")
local IODBg=Adv.characterAsync("YIzumi")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Face,function()
Layout.show({ND2BCh3,"000302"},{IODBg,"000101"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Have you seen Adel? You know, the one who's always dressed like a ninja.]],"VC_Quest_Lv1_AKanzaki_Quest_00023_RKayamori")
Adv.talkWithFacial("000003",nil,IODBg,[[I haven't. Ask someone else.]],"VC_Quest_Lv1_AKanzaki_Quest_00024_YIzumi")end)SetLocalFlag("和泉に話しかけた",1)
Quest.refreshState()end
function Step3_TKunimi()local YRDu=Adv.characterAsync("RKayamori")
local CWRiP=Adv.characterAsync("TKunimi")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({YRDu,"000302"},{CWRiP,"000101"})
Adv.talkWithFacial(nil,nil,YRDu,[[Have you seen Adel? You know, the one who's always dressed like a ninja.]],"VC_Quest_Lv1_AKanzaki_Quest_00023_RKayamori")
Adv.talkWithFacial("030101",nil,CWRiP,[[Sorry to say it, but I haven't!]],"VC_Quest_Lv1_AKanzaki_Quest_00026_TKunimi")end)SetLocalFlag("國見に話しかけた",1)
Quest.refreshState()end
function Step3_KAsakura()local LB0A=Adv.characterAsync("RKayamori")
local dl=Adv.characterAsync("KAsakura")
Field.startTalk("KAsakura_Quest3",FaceToFaceMode.Face,function()
Layout.show({LB0A,"000302"},{dl,"000101"})
Adv.talkWithFacial(nil,nil,LB0A,[[Have you seen Adel? You know, the one who's always dressed like a ninja.]],"VC_Quest_Lv1_AKanzaki_Quest_00023_RKayamori")
Adv.talkWithFacial("050102",nil,dl,[[Oh, the girl from 31-C. Sorry, I haven't seen her.]],"VC_Quest_Lv1_AKanzaki_Quest_00028_KAsakura")end)SetLocalFlag("朝倉に話しかけた",1)
Quest.refreshState()end
function Step3_MAikawa()local sKPjQkdn=Adv.characterAsync("RKayamori")
local HHH9IlJp=Adv.characterAsync("MAikawa")
Field.startTalk("MAikawa_Quest6",FaceToFaceMode.Face,function()
Layout.show({sKPjQkdn,"000302"},{HHH9IlJp,"000101"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Have you seen Adel? You know, the one who's always dressed like a ninja.]],"VC_Quest_Lv1_AKanzaki_Quest_00023_RKayamori")
Adv.talkWithFacial("000001",nil,HHH9IlJp,[[Dunno, and don't care.]],"VC_Quest_Lv1_AKanzaki_Quest_00030_MAikawa")end)SetLocalFlag("逢川に話しかけた",1)
Quest.refreshState()end
function Step3_TTojo()local uYz2ryy4=Adv.characterAsync("RKayamori")
local zVPRGDnG=Adv.characterAsync("TTojo")local IKxw=Adv.characterAsync("AKanzaki")
local w0=
Field.getPosition("AKanzaki_Quest2")+Vec(-0.03,-0.296,-1.575)
Field.startTalk("TTojo_Quest4",FaceToFaceMode.Face,function()
Layout.show({uYz2ryy4,"000202"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Have you seen Adel? You know, the one who's always dressed like a ninja.]],"VC_Quest_Lv1_AKanzaki_Quest_00023_RKayamori")Layout.show({zVPRGDnG,"000202"})
Adv.actDelay(4.4,zVPRGDnG,"040202")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[I would have noticed if I saw that flashy costume, but I didn't. Although...]],"VC_Quest_Lv1_AKanzaki_Quest_00032_TTojo")Adv.actDelay(0,zVPRGDnG,"040202")
Layout.show({uYz2ryy4,"000202"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[But?]],"VC_Quest_Lv1_AKanzaki_Quest_00033_RKayamori")Layout.show()
Field.setLookAtPosition("TTojo_Quest4",Vec(13.274,0.5,56.96),0.3)Field.disableLookAt("TTojo_Quest4",0.4)Wait(1.5)
Layout.show({zVPRGDnG,"080203"})
Adv.talkWithFacial("080303",nil,zVPRGDnG,[[That wall over there... If you look at it straight on, it's got a strange bump. What could it be?]],"VC_Quest_Lv1_AKanzaki_Quest_00034_TTojo")Layout.show()
Field.turnToTarget("Player","AKanzaki_Quest2",0.25)Wait(0.5)Layout.show({uYz2ryy4,"070201"})
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[That's gotta be her cloak of invisibility! It must be Adel!]],"VC_Quest_Lv1_AKanzaki_Quest_00035_RKayamori",nil,nil,AdvCharacterMouth.Mouth01)Sound.play("AS_Rubbing_Clothes")Adv.fadeOut(0.5)
Layout.show()Field.setActiveWithTag("Narvy",false)
Field.setActiveWithTag("Gaya",false)Field.setPosition("Player",w0)
Field.setActiveWithTag("AKanzaki",true)EmptyEvent("AKanzaki_Quest2")
Sound.playBGM("SB0022",1,1)end)
Field.startTalk("AKanzaki_Quest2",FaceToFaceMode.Auto,function()Wait(1)Adv.fadeIn(0.5)
Wait(0.5)Layout.show({IKxw,"070203"})
Adv.actDelay(5.18,IKxw,"070003")
Adv.talkWithFacial(nil,nil,IKxw,[[Urk... So I have been found... I was overconfident!]],"VC_Quest_Lv1_AKanzaki_Quest_00036_AKanzaki")Adv.actDelay(0,IKxw,"070003")Layout.show()
Layout.show({uYz2ryy4,"110302"},{IKxw,"070103"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[No way, that was really cool! You vanished right in front of me!]],"VC_Quest_Lv1_AKanzaki_Quest_00037_RKayamori")
Adv.talkWithFacial("020001",nil,IKxw,[[I have much to learn... I must continue my training!]],"VC_Quest_Lv1_AKanzaki_Quest_00038_AKanzaki")
Adv.talkWithFacial("030301",nil,uYz2ryy4,[[You're really trying to be a master!]],"VC_Quest_Lv1_AKanzaki_Quest_00039_RKayamori")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local UgXzI_C=Bath.startBathTimeEvent("AKanzaki",BathInviteMode.Active,function(MLFLplLe,jwq)
Adv.talkWithFacial(nil,nil,MLFLplLe,[[(Maybe I should invite Adel to join me for a soak.)]],"VC_Quest_00000_v004_RKayamori")
local kw3ei0a=Bath.BathQuestion("AKanzaki",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Hey, Adel, wanna go to the baths together?]],"VC_Quest_00001_v004_RKayamori")
Adv.talkWithFacial(nil,nil,jwq,[[Bathing together? I will accompany you!]],"VC_Quest_00002_v004_AKanzaki")
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Yay!]],"VC_Quest_01140_v003_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,MLFLplLe,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return kw3ei0a end)
if UgXzI_C==0 then
Bath.startBathTimeNovel("AKanzaki",nil,"Wash",function(EspneS5,LZeg0,OJZ,nmuj)
Adv.talkWithFacial(nil,nil,EspneS5,[[Your hair is so long, Adel!]],"VC_Quest_Lv1_AKanzaki_Quest_00043_RKayamori")Sound.play("AS_Comb_Byakko")
Adv.talkWithFacial(nil,nil,EspneS5,[[Look, you can even wrap my body with it!]],"VC_Quest_Lv1_AKanzaki_Quest_00044_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[I would prefer if you don't play with it so much...]],"VC_Quest_Lv1_AKanzaki_Quest_00045_AKanzaki")Sound.play("AS_Comb_Byakko")
Adv.talkWithFacial(nil,nil,EspneS5,[[Hey, if I do this, it's like I have long hair too! How is it? Am I cute?]],"VC_Quest_Lv1_AKanzaki_Quest_00046_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[Hmm... It's not bad. It enhances your beauty. Why don't you grow yours out?]],"VC_Quest_Lv1_AKanzaki_Quest_00047_AKanzaki")
Adv.talkWithFacial(nil,nil,EspneS5,[[Washing and drying all that hair is a pain though. I think I'm good.]],"VC_Quest_Lv1_AKanzaki_Quest_00048_RKayamori")
Adv.talkWithFacial(nil,nil,EspneS5,[[You know what? I should just shave it all off!]],"VC_Quest_Lv1_AKanzaki_Quest_00049_RKayamori")Sound.play("AS_Echo_Bathsplashes")
Adv.talkWithFacial(nil,nil,LZeg0,[[I will do everything in my power to stop you from doing that!]],"VC_Quest_Lv1_AKanzaki_Quest_00050_AKanzaki")
Adv.talkWithFacial(nil,nil,EspneS5,[[Guess I'll just stay as is, then.]],"VC_Quest_Lv1_AKanzaki_Quest_00051_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[That was close... 31-A's leader nearly made herself bald...]],"VC_Quest_Lv1_AKanzaki_Quest_00052_AKanzaki")end)end;Exit_World()end