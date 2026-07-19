local w0qyLbH="Quest_Lv1_MSatsuki"function init()
Log("Called Quest_Lv1_MSatsuki")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("MSatsuki_Quest3",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end
if Quest.stateReceivable(w0qyLbH)then if IsExist("MSatsuki_Quest3")then
Field.setAutoReturnToDefaultStanceEnabled("MSatsuki_Quest3",false)end
Quest.TouchEvent("MSatsuki_Quest3",w0qyLbH,Receive)end
if Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then EmptyEvent("MSatsuki_Quest2")
Field.setActive("MAsami",false)Field.hideTagCharacters("Karen")
SetPeriodText("Invite a member of 31-A!")
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Step2_YIzumi)
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step2_KAsakura)
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step2_TTojo)
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step2_TKunimi)
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step2_MAikawa)end
if Quest.stateStep(w0qyLbH,3)then
SetPeriodText("Go to the heliport with an assistant!")Field.setActiveWithTag("MSatsuki",true)
Field.setActive("MAsami",false)Field.hideTagCharacters("Karen")
if
Quest.getQuestBlanch(w0qyLbH)==1 then
SetFlag("佐月交流Lv1_誰を誘ったか",1)Field.createFollower("YIzumi")elseif
Quest.getQuestBlanch(w0qyLbH)==2 then
SetFlag("佐月交流Lv1_誰を誘ったか",2)Field.createFollower("TTojo")elseif
Quest.getQuestBlanch(w0qyLbH)==3 then
SetFlag("佐月交流Lv1_誰を誘ったか",3)Field.createFollower("TKunimi")elseif
Quest.getQuestBlanch(w0qyLbH)==4 then
SetFlag("佐月交流Lv1_誰を誘ったか",4)Field.createFollower("KAsakura")elseif
Quest.getQuestBlanch(w0qyLbH)==5 then
SetFlag("佐月交流Lv1_誰を誘ったか",5)Field.createFollower("MAikawa")end;Quest.TouchEvent("MSatsuki_Quest2",w0qyLbH,Step3)end
if Quest.stateStep(w0qyLbH,4)then Field.deleteFollowerAll()
Sound.reverbCave()Sound.playENV("EN_Cave_Loop")StartEvent(Step4)end
if Quest.stateStep(w0qyLbH,5)then StartEvent(Step5)end
if Quest.stateStep(w0qyLbH,6)then
if Quest.getQuestBlanch(w0qyLbH)==1 then
StartEvent(step6_YIzumi)elseif Quest.getQuestBlanch(w0qyLbH)==2 then
StartEvent(step6_TTojo)elseif Quest.getQuestBlanch(w0qyLbH)==3 then
StartEvent(step6_TKunimi)elseif Quest.getQuestBlanch(w0qyLbH)==4 then
StartEvent(step6_KAsakura)elseif Quest.getQuestBlanch(w0qyLbH)==5 then
StartEvent(step6_MAikawa)end end
if Quest.stateStep(w0qyLbH,7)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()local nsgji=Adv.characterAsync("RKayamori")
local bClTIa=Adv.characterAsync("MSatsuki")
Field.setRouteWandererEnabled("MSatsuki_Quest3",false)
Field.startTalk("MSatsuki_Quest3",FaceToFaceMode.Auto,function()
Layout.show({nsgji,"080301"},{bClTIa,"000101"})Adv.moveLayer(nsgji,"CharacterUp")
Adv.talkWithFacial(nil,nil,nsgji,[[Huh? It's a Merry out in the wild and not cooped up in the shop! How rare!]],"VC_Quest_Lv1_MSatsuki_Quest_00000_RKayamori")
Adv.talkWithFacial(nil,nil,bClTIa,[[I'm just stocking up on some things! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00001_MSatsuki")
Adv.talkWithFacial("000301",nil,nsgji,[[What kind of things?]],"VC_Quest_Lv1_MSatsuki_Quest_00002_RKayamori")
Adv.talkWithFacial("010102",nil,bClTIa,[[Cancer hides! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00003_MSatsuki")local rDzL7SVO=Quest.receive(w0qyLbH)
if
rDzL7SVO==QuestWindow.Receive then Transition.start()return
function()Quest.refreshState()end else Transition.start()
return function()
Field.cancelQuest("MSatsuki_Quest3","NarvySquarePoint",true,function()
Field.setRouteWandererEnabled("MSatsuki_Quest3",true)end)end end end)if refreshState then Quest.refreshState()end end
function Step1()Adv.fadeOut(0)Sound.playBGM(AdvBGM.Gag1,0,0)
local BW0WFP=Adv.characterAsync("RKayamori")local X8=Adv.characterAsync("MSatsuki")
local JQT=Field.getWaypointPosition("BackStreetPoint")
Field.setRouteWandererEnabled("MSatsuki_Quest3",false)Field.prepareEventCharacter("MSatsuki_Quest3")Field.turnToWait("Player",
-45,0)
Field.setPosition("MSatsuki_Quest3",Field.getByTargetPosition("Player",1,
-45,true))
Field.startTalk("MSatsuki_Quest3",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"080301"},{X8,"000101"})Adv.moveLayer(BW0WFP,"CharacterUp")
Transition.finish()Adv.fadeIn(0.5)
Adv.actDelay(0.4,X8,"000101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("170301",nil,BW0WFP,[[What do you need those for?]],"VC_Quest_Lv1_MSatsuki_Quest_00004_RKayamori")
Adv.talkWithFacial("010101",nil,X8,[[To make a wallet out of Cancer leather! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00005_MSatsuki")
Adv.act(BW0WFP,"080302",AdvCharacterMouth.Mouth01)
Adv.actDelay(3.7,BW0WFP,"110301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,BW0WFP,[[Now that you mention it, that is kinda sick... I kinda want one.]],"VC_Quest_Lv1_MSatsuki_Quest_00006_RKayamori")
Adv.talkWithFacial("000301",nil,BW0WFP,[[Actually, I want one too. Mind if I help?]],"VC_Quest_Lv1_MSatsuki_Quest_00007_RKayamori")
Adv.talkWithFacial("260001",nil,X8,[[Please do! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00008_MSatsuki")
Adv.actDelay(0.2,X8,"010101",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial("110301",nil,BW0WFP,[[I'm gonna bring one more person with me.]],"VC_Quest_Lv1_MSatsuki_Quest_00009_RKayamori")
Adv.talkWithFacial(nil,nil,X8,[[I'll be waiting at the heliport. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00010_MSatsuki")Layout.show()
Field.disableLookAt("MSatsuki_Quest3")Field.moveBy("MSatsuki_Quest3",Vec(0,0,3),1.9)
Sound.stopBGM(2)Transition.start()end)Field.waitTaskKey("MSatsuki_Quest3")Field.setPosition("MSatsuki_Quest3",
JQT+Vec(0,0,20))
Field.finishEvent()Sound.playBGM(AdvBGM.Happy1,0,0)
Transition.finish()
Field.playerComeIn("BackStreetPoint",Vec(0,0,2))
Adv.kayamoriTalk([[Who should I invite?]],"VC_Quest_Lv1_MSatsuki_Quest_00011_RKayamori",nil)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step2_YIzumi()local AtYtR=Adv.characterAsync("RKayamori")
local ND2BCh3=Adv.characterAsync("YIzumi")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"000301"},{ND2BCh3,"000101"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Did you need something?]],"VC_Quest_Lv1_BIYamawaki_Quest_00040_YIzumi")
local IODBg=Adv.question([[Invite Yukkie?]],[[Invite|Maybe not]],0,true)
if IODBg==0 then
SetFlag("佐月交流lv.1_誰と話したか",1)Sound.playBGM(AdvBGM.Fun_31A,1,1)
Adv.talkWithFacial(nil,nil,AtYtR,[[Merry's making wallets out of Cancer leather, so I was thinking you could help us go hunt Cancers.]],"VC_Quest_Lv1_MSatsuki_Quest_00013_RKayamori")
Adv.talkWithFacial("080101",nil,ND2BCh3,[[What the heck, that's absurd! Who even asked for such a uselessly-cool wallet?!]],"VC_Quest_Lv1_MSatsuki_Quest_00014_YIzumi")
Adv.talkWithFacial("110301",nil,AtYtR,[[You might get one, ya know.]],"VC_Quest_Lv1_MSatsuki_Quest_00015_RKayamori")Adv.act(ND2BCh3,"040103")
Adv.actDelay(2.6,ND2BCh3,"120003")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Okay, you got me... I'm a little interested.]],"VC_Quest_Lv1_MSatsuki_Quest_00016_YIzumi")Sound.stopBGM(2)Transition.start()
Layout.show()Quest.setQuestBlanch(w0qyLbH,1)
Quest.clearStep(w0qyLbH)return function()Quest.refreshState()end else
Adv.talkWithFacial(
nil,nil,AtYtR,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("130103",nil,ND2BCh3,[[Then why did you talk to me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00044_YIzumi")end end)end
function Step2_TTojo()local YRDu=Adv.characterAsync("RKayamori")
local CWRiP=Adv.characterAsync("TTojo")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({YRDu,"000301"},{CWRiP,"000101"})
Adv.talkWithFacial(nil,nil,CWRiP,[[Do you need something from me?]],"VC_Quest_Lv1_BIYamawaki_Quest_00045_TTojo")
local LB0A=Adv.question([[Invite Tsukassie?]],[[Invite|Maybe not]],0,true)
if LB0A==0 then
SetFlag("佐月交流lv.1_誰と話したか",2)Sound.playBGM(AdvBGM.Fun_31A,1,1)
Adv.talkWithFacial(nil,nil,YRDu,[[Merry's making wallets out of Cancer leather, so I was thinking you could help us go hunt Cancers.]],"VC_Quest_Lv1_MSatsuki_Quest_00013_RKayamori")
Adv.talkWithFacial("080103",nil,CWRiP,[[Wow... It would be like a symbol of victory over the Cancer...]],"VC_Quest_Lv1_MSatsuki_Quest_00021_TTojo")
Adv.talkWithFacial("110301",nil,YRDu,[[You might get one, ya know.]],"VC_Quest_Lv1_MSatsuki_Quest_00015_RKayamori")
Adv.talkWithFacial("010101",nil,CWRiP,[[Ok, I'll help.]],"VC_Quest_Lv1_MSatsuki_Quest_00023_TTojo")Sound.stopBGM(2)Transition.start()
Layout.show()Quest.setQuestBlanch(w0qyLbH,2)
Quest.clearStep(w0qyLbH)return function()Quest.refreshState()end else
Adv.talkWithFacial(
nil,nil,YRDu,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("080101",nil,CWRiP,[[Oh?]],"VC_Quest_Lv1_BIYamawaki_Quest_00049_TTojo")end end)end
function Step2_TKunimi()local dl=Adv.characterAsync("RKayamori")
local sKPjQkdn=Adv.characterAsync("TKunimi")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({dl,"000301"},{sKPjQkdn,"000101"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Ruka! What seems to be the matter?]],"VC_Quest_Lv1_BIYamawaki_Quest_00050_TKunimi")
local HHH9IlJp=Adv.question([[Invite Cappy?]],[[Invite|Maybe not]],0,true)
if HHH9IlJp==0 then
SetFlag("佐月交流lv.1_誰と話したか",3)Sound.playBGM(AdvBGM.Fun_31A,1,1)
Adv.talkWithFacial(nil,nil,dl,[[Merry's making wallets out of Cancer leather, so I was thinking you could help us go hunt Cancers.]],"VC_Quest_Lv1_MSatsuki_Quest_00013_RKayamori")
Adv.talkWithFacial("110101",nil,sKPjQkdn,[[That sounds like it would last a long time!]],"VC_Quest_Lv1_MSatsuki_Quest_00028_TKunimi")
Adv.talkWithFacial("110301",nil,dl,[[Yeah. You'd never need a new wallet. You might get one if you come with!]],"VC_Quest_Lv1_MSatsuki_Quest_00029_RKayamori")
Adv.talkWithFacial("070102",nil,sKPjQkdn,[[Allow me to offer my seaworthy services!]],"VC_Quest_Lv1_MSatsuki_Quest_00030_TKunimi")Sound.stopBGM(2)Transition.start()
Layout.show()Quest.setQuestBlanch(w0qyLbH,3)
Quest.clearStep(w0qyLbH)return function()Quest.refreshState()end else
Adv.talkWithFacial(
nil,nil,dl,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("110101",nil,sKPjQkdn,[[That's okay! I get it!]],"VC_Quest_Lv1_BIYamawaki_Quest_00054_TKunimi")end end)end
function Step2_KAsakura()local uYz2ryy4=Adv.characterAsync("RKayamori")
local zVPRGDnG=Adv.characterAsync("KAsakura")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({uYz2ryy4,"000301"},{zVPRGDnG,"000101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Ruka. What's up?]],"VC_Quest_Lv1_BIYamawaki_Quest_00055_KAsakura")
local IKxw=Adv.question([[Invite Karerin?]],[[Invite|Maybe not]],0,true)
if IKxw==0 then
SetFlag("佐月交流lv.1_誰と話したか",4)Sound.playBGM(AdvBGM.Fun_31A,1,1)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Merry's making wallets out of Cancer leather, so I was thinking you could help us go hunt Cancers.]],"VC_Quest_Lv1_MSatsuki_Quest_00013_RKayamori")
Adv.talkWithFacial("080101",nil,zVPRGDnG,[[What a strange thing she's making.]],"VC_Quest_Lv1_MSatsuki_Quest_00035_KAsakura")
Adv.talkWithFacial("110301",nil,uYz2ryy4,[[Yup. State-of-the-art gear. You might get one if you come with!]],"VC_Quest_Lv1_MSatsuki_Quest_00036_RKayamori")
Adv.talkWithFacial("010102",nil,zVPRGDnG,[[I don't need one, but sure, I'll help.]],"VC_Quest_Lv1_MSatsuki_Quest_00037_KAsakura")Sound.stopBGM(2)Transition.start()
Layout.show()Quest.setQuestBlanch(w0qyLbH,4)
Quest.clearStep(w0qyLbH)return function()Quest.refreshState()end else
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("050102",nil,zVPRGDnG,[[Oh, okay.]],"VC_Quest_Lv1_BIYamawaki_Quest_00059_KAsakura")end end)end
function Step2_MAikawa()local w0=Adv.characterAsync("RKayamori")
local UgXzI_C=Adv.characterAsync("MAikawa")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({w0,"000301"},{UgXzI_C,"000101"})
Adv.talkWithFacial(nil,nil,UgXzI_C,[[What the?!]],"VC_Quest_Lv1_MSatsuki_Quest_00040_MAikawa")
local MLFLplLe=Adv.question([[Invite Megumin?]],[[Invite|Maybe not]],0,true)
if MLFLplLe==0 then
SetFlag("佐月交流lv.1_誰と話したか",5)Sound.playBGM(AdvBGM.Fun_31A,1,1)
Adv.talkWithFacial(nil,nil,w0,[[Merry's making wallets out of Cancer leather, so I was thinking you could help us go hunt Cancers.]],"VC_Quest_Lv1_MSatsuki_Quest_00013_RKayamori")
Adv.talkWithFacial("180101",nil,UgXzI_C,[[She's makin' what now? That's the craziest thing I ever heard!]],"VC_Quest_Lv1_MSatsuki_Quest_00042_MAikawa")
Adv.talkWithFacial("110301",nil,w0,[[Right? They're gonna be out of this world. You might get one if you come with!]],"VC_Quest_Lv1_MSatsuki_Quest_00043_RKayamori")Adv.act(UgXzI_C,"090001")
Adv.actDelay(1.4,UgXzI_C,"010102")
Adv.talkWithFacial(nil,nil,UgXzI_C,[[Sure, I'll help. Perfect for my outta-this-world powers.]],"VC_Quest_Lv1_MSatsuki_Quest_00044_MAikawa")Sound.stopBGM(2)Transition.start()
Layout.show()Quest.setQuestBlanch(w0qyLbH,5)
Quest.clearStep(w0qyLbH)return function()Quest.refreshState()end else
Adv.talkWithFacial(
nil,nil,w0,[[Never mind.]],"VC_Quest_Lv1_BIYamawaki_Quest_00043_RKayamori")
Adv.talkWithFacial("030101",nil,UgXzI_C,[[You messin' with me or somethin'?]],"VC_Quest_Lv1_MSatsuki_Quest_00046_MAikawa")end end)end
function Step3()Sound.stopBGM(1)Adv.fadeOut(0.5)
local jwq=Adv.characterAsync("RKayamori")local kw3ei0a=Adv.characterAsync("YIzumi")
local EspneS5=Adv.characterAsync("TTojo")local LZeg0=Adv.characterAsync("TKunimi")
local OJZ=Adv.characterAsync("KAsakura")local nmuj=Adv.characterAsync("MAikawa")
local bP=Adv.characterAsync("MSatsuki")local b4IqQW="RKayamori"Field.setActiveWithTag("Gaya",false)
Field.setActive("MAsami",false)
Field.startTalk("MSatsuki_Quest2",FaceToFaceMode.Auto,function()
Sound.playBGM(AdvBGM.Fun2)Adv.fadeIn(0.5)Layout.show({jwq,"000202"})
Adv.talkWithFacial(
nil,nil,jwq,[[Sorry we're late!]],"VC_Quest_Lv1_MSatsuki_Quest_00047_RKayamori")Layout.show()
if Quest.getQuestBlanch(w0qyLbH)==1 then
b4IqQW="YIzumi"
Field.turnToFace("Follower/YIzumi","MSatsuki_Quest2")Wait(1)
Adv.act(kw3ei0a,"080201",AdvCharacterMouth.Mouth03)Layout.show({kw3ei0a})
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Wow, you've even got the military helping? This is pretty wild.]],"VC_Quest_Lv1_MSatsuki_Quest_00048_YIzumi")elseif Quest.getQuestBlanch(w0qyLbH)==2 then b4IqQW="TTojo"
Field.turnToFace("Follower/TTojo","MSatsuki_Quest2")Wait(1)Layout.show({EspneS5,"070001"})
Adv.talkWithFacial(
nil,nil,EspneS5,[[I'm kinda shaking...]],"VC_Quest_Lv1_MSatsuki_Quest_00049_TTojo")elseif Quest.getQuestBlanch(w0qyLbH)==3 then b4IqQW="TKunimi"
Field.turnToFace("Follower/TKunimi","MSatsuki_Quest2")Wait(1)Layout.show({LZeg0,"070202"})
Adv.talkWithFacial(nil,nil,LZeg0,[[I humbly offer my services!!!]],"VC_Quest_Lv1_MSatsuki_Quest_00050_TKunimi")elseif Quest.getQuestBlanch(w0qyLbH)==4 then b4IqQW="KAsakura"
Field.turnToFace("Follower/KAsakura","MSatsuki_Quest2")Wait(1)Layout.show({OJZ,"070201"})
Adv.talkWithFacial(nil,nil,OJZ,[[I'll do my best.]],"VC_Quest_Lv1_MSatsuki_Quest_00051_KAsakura")elseif Quest.getQuestBlanch(w0qyLbH)==5 then b4IqQW="MAikawa"
Field.turnToFace("Follower/MAikawa","MSatsuki_Quest2")Wait(1)Layout.show({nmuj,"010202"})
Adv.talkWithFacial(nil,nil,nmuj,[[With yer girl here, this'll be a cinch.]],"VC_Quest_Lv1_MSatsuki_Quest_00052_MAikawa")end;Layout.show({bP,"000202"})
Adv.talkWithFacial(nil,nil,bP,[[All right then, off we go! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00053_MSatsuki")Layout.show()
Field.disableLookAt("MSatsuki_Quest2",0.4)Field.moveBy("MSatsuki_Quest2",Vec(-4,0,8),10)Field.playerGetOut("HeliportPoint",Vec(
-3,0,8),1,1.5)
Transition.start()Layout.show()end)PurgeField()Wait(1)
Routine(function()Sound.playEmptyBGM()
Transition.setFlyGo(TimeFrame.Evening)Transition.start()end)Wait(6)Sound.reverbCave()
SetupFixedDeck("RKayamori","MSatsuki",b4IqQW)
Quest.BattleWithFixedParty(w0qyLbH,"Quest_MSatsuki_Lv1",nil,0,100)Quest.refreshState()end
function Step4()Adv.fadeOut(0)Sound.playBGM(AdvBGM.Gag2,0,0)
local iuGb=Adv.characterAsync("RKayamori")local koZU=Adv.characterAsync("YIzumi")
local C=Adv.characterAsync("TTojo")local nmJGp_=Adv.characterAsync("TKunimi")
local h0v3PIV=Adv.characterAsync("KAsakura")local Uc=Adv.characterAsync("MAikawa")
local JSkUQL=Adv.characterAsync("MSatsuki")
local PTUZ2v=Adv.loadBGAsync("Background/Dungeon/Dungeon_Universaluse_Evening")
Field.startNovel(function()
Layout.createStagePanL(PTUZ2v,Position.BG_CENTER,3)Transition.finish()Adv.fadeIn(0.5)
Layout.show({iuGb,"000301"})
Adv.talkWithFacial(nil,nil,iuGb,[[How was that?]],"VC_Quest_Lv1_MSatsuki_Quest_00054_RKayamori")Layout.show()
Layout.createStageFixBg(PTUZ2v,Position.BG_LEFT)Layout.show({JSkUQL,"260001"})Wait(0.4)
Adv.moveBy(JSkUQL,Vec(0,14,0),0.2)
Adv.bubbleSeActNoWait([[*splat*]],Vec(0,-270),"Angry",BubbleActMode.Horizon,"default","AS_Peel_Cancer",1,0,2)Wait(0.5)Adv.moveBy(JSkUQL,Vec(0,-14,0),0.2)
Wait(0.5)Adv.moveBy(JSkUQL,Vec(0,0,0),0.2)Wait(0.5)
Sound.stop("AS_Peel_Cancer")Adv.moveBy(JSkUQL,Vec(0,12,0),0.2)
Adv.bubbleSeActNoWait([[*splatter* *splatter*]],Vec(0,
-270),"Angry",BubbleActMode.Horizon,"default","AS_Peel_Cancer_more",1,0,2.4)Wait(0.3)Adv.moveBy(JSkUQL,Vec(0,-12,0),0.2)
Wait(0.3)Adv.moveBy(JSkUQL,Vec(0,12,0),0.2)Wait(0.3)Adv.moveBy(JSkUQL,Vec(0,
-12,0),0.2)Wait(0.3)
Adv.moveBy(JSkUQL,Vec(0,12,0),0.2)Wait(0.3)Adv.moveBy(JSkUQL,Vec(0,-12,0),0.2)
Wait(0.3)Adv.moveBy(JSkUQL,Vec(0,12,0),0.2)Wait(0.3)
Adv.moveBy(JSkUQL,Vec(0,0,0),0.2)Sound.volume("AS_Peel_Cancer_more",0,0.3)Wait(0.3)
Sound.stop("AS_Peel_Cancer_more")Layout.show()
Layout.createStagePan(PTUZ2v,Position.BG_CENTER,0)
Layout.show({iuGb,"000301"},{JSkUQL,"260003"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[We managed to get some very healthy-looking hides! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00057_MSatsuki")Adv.act(JSkUQL,"000101")
Adv.talkWithFacial("110302",nil,iuGb,[[Well, that's good.]],"VC_Quest_Lv1_MSatsuki_Quest_00058_RKayamori")Layout.changeStageFixBg(PTUZ2v)
Layout.createStagePanL(PTUZ2v,Position.BG_RIGHT,3)
if Quest.getQuestBlanch(w0qyLbH)==1 then
Adv.act(koZU,"210303",AdvCharacterMouth.Mouth03)Layout.show({koZU})
Adv.talkWithFacial(nil,nil,koZU,[[You really just skinned that thing... This is even wilder than I expected...]],"VC_Quest_Lv1_MSatsuki_Quest_00059_YIzumi")elseif Quest.getQuestBlanch(w0qyLbH)==2 then
Layout.show({C,"020003"})
Adv.talkWithFacial(nil,nil,C,[[That's so...disgusting...]],"VC_Quest_Lv1_MSatsuki_Quest_00060_TTojo")elseif Quest.getQuestBlanch(w0qyLbH)==3 then
Layout.show({nmJGp_,"220301"})
local qlZeO3Pr=Adv.effect("Adventure/LineWork/LineWork","ForegroundEffect",nil,Adv.getPosition(nmJGp_))local fG9zS=false
local WiXG=Routine(function()Wait(1.8)Adv.show(qlZeO3Pr)
Adv.shake(PTUZ2v,1,0.05)Adv.shake(nmJGp_,0.5,0.1)
Adv.scale(PTUZ2v,1.27,0.2,1,1)Adv.scale(nmJGp_,1.1,0.2,1,1)
Adv.act(nmJGp_,"250302",AdvCharacterMouth.Mouth03)Wait(2)
if fG9zS==false then Adv.stopShake(PTUZ2v)
Adv.stopShake(nmJGp_)Adv.scale(PTUZ2v,1.25,0.4,1,1)
Adv.scale(nmJGp_,1,0.4,1,1)Adv.remove(qlZeO3Pr)fG9zS=true end end)
Adv.talkWithFacial(nil,nil,nmJGp_,[[It's still moving! GYAAAAH!!!]],"VC_Quest_Lv1_MSatsuki_Quest_00061_TKunimi")StopRoutine(WiXG)
if fG9zS==false then Adv.stopShake(PTUZ2v)
Adv.stopShake(nmJGp_)Adv.scale(PTUZ2v,1.25,0.4,1,1)
Adv.scale(nmJGp_,1,0.4,1,1)
Adv.actDelay(0,nmJGp_,"250302",AdvCharacterMouth.Mouth03)Adv.remove(qlZeO3Pr)end elseif Quest.getQuestBlanch(w0qyLbH)==4 then
Adv.act(h0v3PIV,"080302",AdvCharacterMouth.Mouth03)Layout.show(h0v3PIV)
Adv.talkWithFacial(nil,nil,h0v3PIV,[[It's jiggling...]],"VC_Quest_Lv1_MSatsuki_Quest_00062_KAsakura")elseif Quest.getQuestBlanch(w0qyLbH)==5 then
Layout.show({Uc,"090002"})
Adv.talkWithFacial(nil,nil,Uc,[[Ha! And I was just gettin' warmed up.]],"VC_Quest_Lv1_MSatsuki_Quest_00063_MAikawa")end
Layout.createStagePanR(PTUZ2v,Position.BG_CENTER,0)Layout.show({JSkUQL,"000203"})
Adv.talkWithFacial(nil,nil,JSkUQL,[[Now then, let's head back! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00064_MSatsuki")Layout.changeStageFixBg(PTUZ2v)
Transition.start()Sound.playEmptyBGM(1.5)Sound.stopAllENV()end)
Exit_FieldAndChange("FriendStreet","ShopPoint",nil,function()Quest.clearStep(w0qyLbH)end)Quest.refreshState()end
function Step5()Adv.fadeOut(0)Sound.playBGM(AdvBGM.Shop,0,0)
local QgyWztK=Adv.characterAsync("RKayamori")local Oo6ecUO=Adv.characterAsync("MSatsuki")
local b6SL0yka=Adv.loadBGAsync("Background/FriendStreetShop/FriendStreetShop","BG")local hEk;local E8o;local TdqFo
Field.startNovel(function()
Layout.createStageZoomOut(b6SL0yka,Position.BG_CENTER)Transition.finish(b6SL0yka,20)Adv.fadeIn(0.5)
Layout.show({QgyWztK,"000301"},{Oo6ecUO,"000101"})
Adv.talkWithFacial(nil,nil,QgyWztK,[[You're gonna make 'em in the shop? Can I watch?]],"VC_Quest_Lv1_MSatsuki_Quest_00065_RKayamori")
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[Here you are! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00066_MSatsuki")Layout.changeStageFixBg(bg,Position.BG_CENTER)
Adv.moveBy(b6SL0yka,Vec(80),1.1)Adv.moveBy(QgyWztK,Vec(-80),0.6)Wait(0.1)
Layout.show({Oo6ecUO,"000101"})
Routine(function()Adv.walkBy(Oo6ecUO,1,0,2,-50)end)Wait(0.2)
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[Hmm-hmm! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00067_MSatsuki")Wait(0.8)
Adv.act(Oo6ecUO,"000001",AdvCharacterMouth.Mouth01,0.3)
hEk=Adv.bubble_ANGRY_noWait("se",[[*snip* *snip* *snip*]],Vec(-100,-300),"VC_Quest_Lv1_MSatsuki_Quest_00068_")Sound.play("AS_Rubbing_Lathers")Wait(0.8)
Sound.play("AS_Rubbing_Lathers")Wait(0.8)Sound.play("AS_Rubbing_Lathers")Wait(0.8)
Adv.hide(hEk,0.2)Adv.moveBy(b6SL0yka,Vec(-150),1.5)
Adv.act(Oo6ecUO,"000301",AdvCharacterMouth.Mouth01,0.3)
Routine(function()Adv.walkBy(Oo6ecUO,1,0,3,50)end)
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[Hmm-hmm! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00069_MSatsuki")Wait(1.5)
Adv.act(Oo6ecUO,"000001",AdvCharacterMouth.Mouth01,0.3)
E8o=Adv.bubble_ANGRY_noWait("se",[[*chunk* *chunk* *chunk* *chunk*]],Vec(80,-300),"VC_Quest_Lv1_MSatsuki_Quest_00070_")Sound.play("AS_Sew_Cancer")Wait(2)
Adv.hide(E8o,0.2)
Layout.show({QgyWztK,"000302"},{Oo6ecUO,"000101"})
Adv.talkWithFacial(nil,nil,QgyWztK,[[Wow! You're really good at this!]],"VC_Quest_Lv1_MSatsuki_Quest_00071_RKayamori")Adv.act(Oo6ecUO,"010101")
Adv.actDelay(2.8,Oo6ecUO,"260001")
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[There is nothing I can't get in stock. If it doesn't exist somewhere out there, I'll go so far as to make it myself! ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00072_MSatsuki")Adv.actDelay(0,Oo6ecUO,"000201")
Adv.talkWithFacial("080301",nil,QgyWztK,[[You sure are passionate about sales...]],"VC_Quest_Lv1_MSatsuki_Quest_00073_RKayamori")Adv.actDelay(0.4,QgyWztK,"000301")
Sound.play("AS_Item_Get_Shining")Adv.act(Oo6ecUO,"260001")
TdqFo=Adv.bubble_ANGRY_noWait("se",[[*sparkle!*]],Vec(350,-300),"VC_Quest_Lv1_MSatsuki_Quest_00074_")Wait(1.5)Adv.hide(TdqFo,0.2)
Adv.act(Oo6ecUO,"010101")Adv.actDelay(1.8,Oo6ecUO,"260003")
Adv.talkWithFacial(nil,nil,Oo6ecUO,[[There we go! Go ahead and take one. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00075_MSatsuki")Adv.actDelay(0.8,Oo6ecUO,"000101")
Adv.talkWithFacial("080301",nil,QgyWztK,[[Wow...I've never touched anything with this kinda texture before...]],"VC_Quest_Lv1_MSatsuki_Quest_00076_RKayamori")
Adv.talkWithFacial("000101",nil,Oo6ecUO,[[That's because you've never touched a Cancer before. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00077_MSatsuki")
Adv.talkWithFacial("070301",nil,QgyWztK,[[I see...]],"VC_Quest_Lv1_MSatsuki_Quest_00078_RKayamori")
Adv.talkWithFacial("010103",nil,Oo6ecUO,[[And here's one for your assistant as well. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00079_MSatsuki")
Adv.talkWithFacial("110302",nil,QgyWztK,[[Thanks. I'm sure she'll appreciate it.]],"VC_Quest_Lv1_MSatsuki_Quest_00080_RKayamori")Transition.start()Sound.playEmptyBGM(1.5)end)
if Quest.getQuestBlanch(w0qyLbH)==1 then
Transition.setOutdoor("","Main Street")
Exit_FieldAndChange("MainStreet","FriendStreetRightPoint",nil,function()Quest.clearStep(w0qyLbH)end)elseif Quest.getQuestBlanch(w0qyLbH)==2 then
Transition.setOutdoor("","Academy Building")
Exit_FieldAndChange("School1F","SchoolEntranceLeftPoint",nil,function()Quest.clearStep(w0qyLbH)end)elseif Quest.getQuestBlanch(w0qyLbH)==3 then
Transition.setOutdoor("","Main Street")
Exit_FieldAndChange("MainStreet","VendingMachinePoint",nil,function()Quest.clearStep(w0qyLbH)end)elseif Quest.getQuestBlanch(w0qyLbH)==4 then
Transition.setOutdoor("","Union Street")Transition.start()Layout.show()
Quest.clearStep(w0qyLbH)Quest.refreshState()elseif
Quest.getQuestBlanch(w0qyLbH)==5 then Transition.setOutdoor("","Main Street")
Exit_FieldAndChange("MainStreet","CafeteriaPointLeftLeft",
nil,function()Quest.clearStep(w0qyLbH)end)end end
function step6_YIzumi()local ykLF0=Adv.characterAsync("RKayamori")
local cilhu=Adv.characterAsync("YIzumi")
local eVfN=Field.getPosition("YIzumi_Quest")+Vec(-3,0,-2)
Field.startQuestCutsceneFadeIn(function()Sound.playBGM(AdvBGM.Fun_31A,1,1)
Field.setActiveWithTag("Gaya",false)Field.activeEventCharacterWait("YIzumi_Quest")
Field.setPosition("Player",eVfN)Field.moveBy("Player",Vec(2),2)end)Field.waitTaskKey("Player")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({ykLF0,"110301"},{cilhu,"000101"})
Adv.talkWithFacial(nil,nil,ykLF0,[[Yo, Yukkie! Here's that Cancer leather wallet I promised.]],"VC_Quest_Lv1_MSatsuki_Quest_00081_RKayamori")
Adv.talkWithFacial("210101",nil,cilhu,[[What's with this crazy texture... I feel like I'm gonna start shaking whenever I take this thing out...]],"VC_Quest_Lv1_MSatsuki_Quest_00082_YIzumi")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function step6_TTojo()local LBIJ=Adv.characterAsync("RKayamori")
local CSSp=Adv.characterAsync("TTojo")
local CBZIwYHI=Field.getPosition("TTojo_Quest")+Vec(3,0,-2)
Field.startQuestCutsceneFadeIn(function()Sound.playBGM(AdvBGM.Fun_31A,1,1)
Field.setActiveWithTag("Gaya",false)Field.activeEventCharacterWait("TTojo_Quest")
Field.setPosition("Player",CBZIwYHI)Field.moveBy("Player",Vec(-2),2)end)Field.waitTaskKey("Player")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
Layout.show({LBIJ,"110301"},{CSSp,"000101"})
Adv.talkWithFacial(nil,nil,LBIJ,[[Hey Tsukassie! Here's that Cancer leather wallet I promised.]],"VC_Quest_Lv1_MSatsuki_Quest_00083_RKayamori")
Adv.talkWithFacial("010103",nil,CSSp,[[It's surprisingly stylish! I bet it'll last for a while.]],"VC_Quest_Lv1_MSatsuki_Quest_00084_TTojo")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function step6_TKunimi()local x1vCS0=Adv.characterAsync("RKayamori")
local Herp=Adv.characterAsync("TKunimi")
local TNczSeT=Field.getPosition("TKunimi_Quest")+Vec(2,0,-3)
Field.startQuestCutsceneFadeIn(function()Sound.playBGM(AdvBGM.Fun_31A,1,1)
Field.setActiveWithTag("Gaya",false)Field.activeEventCharacterWait("TKunimi_Quest")
Field.setPosition("Player",TNczSeT)Field.moveBy("Player",Vec(0,0,2),2)end)Field.waitTaskKey("Player")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
Layout.show({x1vCS0,"110301"},{Herp,"000101"})Adv.actDelay(0.8,Herp,"080101")
Adv.talkWithFacial(nil,nil,x1vCS0,[[Ahoy, Cappy! Here's that Cancer leather wallet I promised.]],"VC_Quest_Lv1_MSatsuki_Quest_00085_RKayamori")Layout.show()Layout.show({Herp,"080101"})
Adv.shakeXY(Herp,0.6,0.3,0)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,1,0)
Adv.playCutInWithAct(Herp,"180102","TKunimi","Default","Panic",[[GYAAAAH!!!]],"VC_Quest_Lv1_MSatsuki_Quest_00086_TKunimi",3,0)Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function step6_KAsakura()local Sb=Adv.characterAsync("RKayamori")
local _OwI=Adv.characterAsync("KAsakura")
Field.startQuestCutsceneFadeIn(function()Sound.playBGM(AdvBGM.Fun_31A,1,1)
Field.setActiveWithTag("Gaya",false)Field.activeEventCharacterWait("KAsakura_Quest")
Field.playerComeIn("ShopBenchPoint",Vec(
-1.5,0,0),nil,true)end)Field.waitTaskKey("Player")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
Layout.show({Sb,"110301"},{_OwI,"000101"})
Adv.talkWithFacial(nil,nil,Sb,[[Yo, Karerin! Here's that Cancer leather wallet I promised.]],"VC_Quest_Lv1_MSatsuki_Quest_00087_RKayamori")Adv.act(_OwI,"080102")
Adv.actDelay(1.6,_OwI,"010102")
Adv.talkWithFacial(nil,nil,_OwI,[[Are you sure? Wow, it's stylish and functional... Thanks for this, Ruka.]],"VC_Quest_Lv1_MSatsuki_Quest_00088_KAsakura")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function step6_MAikawa()local GBDhi2D=Adv.characterAsync("RKayamori")
local XDYs=Adv.characterAsync("MAikawa")
Field.startQuestCutsceneFadeIn(function()Sound.playBGM(AdvBGM.Fun_31A,1,1)
Field.setActiveWithTag("Gaya",false)Field.activeEventCharacterWait("MAikawa_Quest")
Field.moveOnRoute("Player","CafeteriaPointLeft",1)end)Field.waitTaskKey("Player")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
Layout.show({GBDhi2D,"110301"},{XDYs,"000101"})
Adv.talkWithFacial(nil,nil,GBDhi2D,[[Heya, Megumin! Here's that Cancer leather wallet I promised.]],"VC_Quest_Lv1_MSatsuki_Quest_00089_RKayamori")Adv.act(XDYs,"090001")
Adv.actDelay(1.5,XDYs,"010102")
Adv.talkWithFacial(nil,nil,XDYs,[[The out-of-this-world thing ya mentioned? Now that's what I'm talkin' 'bout.]],"VC_Quest_Lv1_MSatsuki_Quest_00090_MAikawa")Adv.fadeOutWithShield(1)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local JyOmN=Bath.startBathTimeEvent("MSatsuki",BathInviteMode.Active,function(Gu2sqpyD,N_Pk)
Adv.talkWithFacial(nil,nil,Gu2sqpyD,[[(Maybe I should invite Merry to join me for a soak.)]],"VC_Quest_00473_v003_RKayamori")
local G_v887o0=Bath.BathQuestion("MSatsuki",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,Gu2sqpyD,[[Hey Merry, wanna go to the baths together?]],"VC_Quest_00474_v003_RKayamori")
Adv.talkWithFacial(nil,nil,N_Pk,[[Yes, I'll gladly join you! ♪]],"VC_Quest_00475_v003_MSatsuki")
Adv.talkWithFacial(nil,nil,Gu2sqpyD,[[Awesome!]],"VC_Quest_00369_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,Gu2sqpyD,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return G_v887o0 end)
if JyOmN==0 then
Bath.startBathTimeNovel("MSatsuki",nil,"Wash",function(oiM7BRAl,s4,EF,wYFDyw8)Sound.play("AS_Echo_HandTub")
Wait(1)
Adv.talkWithFacial(nil,nil,oiM7BRAl,[[Whoa... Merry, you're way more buff than I expected.]],"VC_Quest_Lv1_MSatsuki_Quest_00094_RKayamori")
Adv.talkWithFacial(nil,nil,s4,[[I often have go hunting and the like while procuring goods for the shop. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00095_MSatsuki")
Adv.talkWithFacial(nil,nil,oiM7BRAl,[[I see. So I guess working out is important for you, huh?]],"VC_Quest_Lv1_MSatsuki_Quest_00096_RKayamori")
Adv.talkWithFacial(nil,nil,s4,[[Very. I've trained every single day since I was young. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00097_MSatsuki")
Adv.talkWithFacial(nil,nil,oiM7BRAl,[[What a hardworker. I could learn a thing or two from you.]],"VC_Quest_Lv1_MSatsuki_Quest_00098_RKayamori")
Adv.talkWithFacial(nil,nil,s4,[[Ruka, I think the slight pudge you have now is plenty cute.]],"VC_Quest_Lv1_MSatsuki_Quest_00099_MSatsuki")
Routine(function()Wait(0.6)Sound.play("AS_Echo_Bathsplashes")end)
Adv.talkWithFacial(nil,nil,oiM7BRAl,[[Oh yeah? Great! I'll skip training!]],"VC_Quest_Lv1_MSatsuki_Quest_00100_RKayamori")Sound.play("AS_Echo_HandTub")Wait(1)
Adv.talkWithFacial(nil,nil,s4,[[Don't you dare. ♪ Train until you're on the brink of death. ♪]],"VC_Quest_Lv1_MSatsuki_Quest_00101_MSatsuki")
Adv.talkWithFacial(nil,nil,oiM7BRAl,[[That sounds even scarier coming from you!]],"VC_Quest_Lv1_MSatsuki_Quest_00102_RKayamori")end)end;Exit_World()end