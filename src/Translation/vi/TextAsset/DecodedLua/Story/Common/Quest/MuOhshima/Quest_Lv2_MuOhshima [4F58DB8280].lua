local w0qyLbH="Quest_Lv2_MuOhshima"function init()
Log("Called Quest_Lv2_MuOhshima")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("MuOhshima_Quest3",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end
if Quest.stateReceivable(w0qyLbH)then
Field.setActiveWithTag("YoOhshima",false)Field.setActiveWithTag("SMinase",false)
Field.setActiveWithTag("IMinase",false)
Quest.TouchEvent("MuOhshima_Quest3",w0qyLbH,Receive)end
if Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then StartEvent(Step2)end
if Quest.stateStep(w0qyLbH,3)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()Adv.fadeOut(0.5)
local nsgji=Adv.characterAsync("MuOhshima")local bClTIa=Adv.characterAsync("RKayamori")local rDzL7SVO=false
Field.setRouteWandererEnabled("MuOhshima_Quest3",false)local BW0WFP=Vec(12.5,-2.7,-13.42)
Field.setPosition("MuOhshima_Quest3",BW0WFP)
local X8=Field.getPosition("MuOhshima_Quest3")+Vec(-1,0,-1.5)Field.setPosition("Player",X8)
Field.setActiveWithTag("Gaya",false)
Field.startTalk("MuOhshima_Quest3",FaceToFaceMode.None,function()
Field.turnToTarget("MuOhshima_Quest3","Player",0)Field.waitTaskKey("MuOhshima_Quest3")Wait(1)
Adv.fadeIn(0.5)Layout.show({bClTIa,"110201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Oh, hey, Muua.]],"VC_Quest_Lv2_MuOhshima_Quest_00000_RKayamori")Layout.show()Layout.show({nsgji,"000203"})
Routine(function()
Adv.moveBy(nsgji,Vec(0,10),0.3)Wait(0.3)Adv.moveBy(nsgji,Vec(0,-10),0.3)
Wait(0.3)Adv.moveBy(nsgji,Vec(0,10),0.3)Wait(0.3)
Adv.moveBy(nsgji,Vec(0,-10),0.3)Wait(0.3)Adv.moveBy(nsgji,Vec(0,10),0.3)Wait(0.3)Adv.moveBy(nsgji,Vec(0,
-10),0.3)Wait(0.3)end)
Adv.talkWithFacial(nil,nil,nsgji,[[Haah, haahh, phew...ah...Ruka.]],"VC_Quest_Lv2_MuOhshima_Quest_00001_MuOhshima")Layout.show()Wait(0.5)
Layout.show({bClTIa,"080202"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Running yourself silly again?]],"VC_Quest_Lv2_MuOhshima_Quest_00002_RKayamori")Layout.show()
Field.turnBy("MuOhshima_Quest3",-20,0.5)Wait(1)Layout.show({nsgji,"070202"})
Adv.talkWithFacial(nil,nil,nsgji,[[It just never is enough. I need to work out more and more.]],"VC_Quest_Lv2_MuOhshima_Quest_00003_MuOhshima")Layout.show({nsgji,"040202"})
Adv.talkWithFacial(nil,nil,nsgji,"Do you know any good ways to train?","VC_Quest_Lv2_MuOhshima_Quest_00004_MuOhshima")
Adv.act(nsgji,"040202",AdvCharacterMouth.Mouth01)Sound.setResumeBGM("")local JQT=Quest.receive(w0qyLbH)
if
JQT==QuestWindow.Receive then Transition.start()return function()
Quest.refreshState()end else Transition.start()
return function()
Field.cancelQuest("MuOhshima_Quest3",X8,false,function()
Field.setRouteWandererEnabled("MuOhshima_Quest3",true)end)end end end)end
function Step1()Adv.fadeOut(0)
local AtYtR=Adv.characterAsync("MuOhshima")local ND2BCh3=Adv.characterAsync("RKayamori")
Field.prepareEventCharacter("MuOhshima_Quest3")
Field.setRouteWandererEnabled("MuOhshima_Quest3",false)local IODBg=Vec(12.5,-2.7,-13.42)
Field.setPosition("MuOhshima_Quest3",IODBg)
local YRDu=Field.getPosition("MuOhshima_Quest3")+Vec(-1,0,-1.5)Field.setPosition("Player",YRDu)
Field.setActiveWithTag("Gaya",false)Field.turnToTarget("MuOhshima_Quest3","Player",0)
Field.waitTaskKey("MuOhshima_Quest3")Field.turnBy("MuOhshima_Quest3",-20,0)
Field.startTalk("MuOhshima_Quest3",FaceToFaceMode.None,function()
Sound.playBGM(AdvBGM.Gag1)Layout.show({ND2BCh3,"000202"})
Transition.finish()Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Hmm, well, what kinda training do you have in mind?]],"VC_Quest_Lv2_MuOhshima_Quest_00005_RKayamori")Layout.show()Layout.show({AtYtR,"040001"})
Adv.actDelay(1.5,AtYtR,"040201",AdvCharacterMouth.Mouth01)
Adv.talk(AtYtR,"I want a brutal one!","VC_Quest_Lv2_MuOhshima_Quest_00006_MuOhshima")
Adv.act(AtYtR,"040201",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("330203",nil,AtYtR,[[Training so intense that it makes you weak in the legs and you can't move anymore.]],"VC_Quest_Lv2_MuOhshima_Quest_00007_MuOhshima")Layout.show()
Layout.show({ND2BCh3,"020001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[There we go with the masochistic remarks again.]],"VC_Quest_Lv2_MuOhshima_Quest_00008_RKayamori")Layout.show()Layout.show({AtYtR,"070001"})
Adv.talkWithFacial(
nil,nil,AtYtR,[[Don't get me wrong, it's all just for training. Nothing reckless.]],"VC_Quest_Lv2_MuOhshima_Quest_00009_MuOhshima")
Adv.talkWithFacial("070202",nil,AtYtR,[[Because a healthy, well-trained body keeps the mind sound.]],"VC_Quest_Lv2_MuOhshima_Quest_00010_MuOhshima")Layout.show({AtYtR,"090003"})
Adv.actDelay(3.1,AtYtR,"090203",AdvCharacterMouth.Mouth01)Adv.faceChangeDelay(3.1,AtYtR,"Cheek","Cheek_On")
Adv.talk(AtYtR,"But sometimes, a little pain to go with it can make things feel...so good.","VC_Quest_Lv2_MuOhshima_Quest_00011_MuOhshima")Adv.faceChange(AtYtR,"Cheek","Cheek_Off")
Layout.show()Layout.show({ND2BCh3,"170202"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[That's definitely not a sound mind you've got there.]],"VC_Quest_Lv2_MuOhshima_Quest_00012_RKayamori")Transition.setOutdoor("","Gym")
Transition.start()end)Sound.setResumeBGM(AdvBGM.Fun1)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step2()Adv.fadeOut(0)
local CWRiP=Adv.loadBGAsync("Background/Gym/Gym_Evening",Position.CHR_CENTER)local LB0A=Adv.characterAsync("RKayamori")
local dl=Adv.characterAsync("RKayamori")local sKPjQkdn=Adv.characterAsync("MuOhshima")
local HHH9IlJp=Adv.characterAsync("MuOhshima")local uYz2ryy4=Adv.characterAsync("MuOhshima")
local zVPRGDnG=Adv.characterAsync("MTsukishiro")local IKxw=Adv.characterAsync("IMinase")
local w0=Adv.characterAsync("YoOhshima")
Field.startNovel(function()
Layout.createStageZoomOut(CWRiP,Position.BG_CENTER,3)
Layout.show({LB0A,"000302"},{sKPjQkdn,"040101"})Sound.playBGM(AdvBGM.Fun1)
Transition.finish()Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,LB0A,[[If you wanna run forever, the treadmills in the gym are good. But I think you know that already, right?]],"VC_Quest_Lv2_MuOhshima_Quest_00013_RKayamori")
Adv.talkWithFacial("000102",nil,sKPjQkdn,[[Of course. I hold the record for the longest distance run.]],"VC_Quest_Lv2_MuOhshima_Quest_00014_MuOhshima")
Adv.talkWithFacial("110301",nil,LB0A,[[Well, we gotta get creative so that you do more than just running, then.]],"VC_Quest_Lv2_MuOhshima_Quest_00015_RKayamori")
Adv.talkWithFacial(nil,nil,LB0A,[[I'll think of something, so you go ahead and warm up.]],"VC_Quest_Lv2_MuOhshima_Quest_00016_RKayamori")
Adv.actDelay(2,sKPjQkdn,"090201",AdvCharacterMouth.Mouth01)
Adv.actDelay(2,LB0A,"080301",AdvCharacterMouth.Mouth01)
Adv.talk(sKPjQkdn,"Thanks. Guess I should max out the speed for now...","VC_Quest_Lv2_MuOhshima_Quest_00017_MuOhshima")
Adv.act(sKPjQkdn,"090201",AdvCharacterMouth.Mouth01)
Adv.act(LB0A,"080301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacialInMonolog("110302",nil,LB0A,[[(Of course it's MAX for Muua the masochist.)]],"VC_Quest_Lv2_MuOhshima_Quest_00018_RKayamori")
Layout.createStageZoomIn(CWRiP,Position.BG_MAINCHARA_BACK,1)Layout.show({dl,"000201"},nil,nil,0.5)
Adv.talkWithFacial(nil,nil,dl,[[Hmm...maybe I'll go ask people in the gym for some ideas?]],"VC_Quest_Lv2_MuOhshima_Quest_00019_RKayamori")Adv.fadeOut(0.5)Wait(1)Layout.show()
Layout.createStageFixBg(CWRiP,Position.BG_MAINCHARA_BACK)Layout.show({LB0A,"000201"},nil,nil,0.5)
Adv.fadeIn(0.5)local UgXzI_C
for jwq=0,2 do if jwq>=1 then Layout.show()
Layout.createStageFixBg(CWRiP,Position.BG_MAINCHARA_BACK)Layout.show({LB0A,"000201"},nil,nil,0.5)
Adv.fadeIn(0.5)end
UgXzI_C=Adv.question([[Who should I ask?]],[[Ask Monaka Tsukishiro|Ask Ichigo Minase|Ask Yotsuha]],
nil,nil,"LocalFlag(月城最中に話しかけるを選んだ)!=1|LocalFlag(水瀬いちごに話しかけるを選んだ)!=1|LocalFlag(四ツ葉に話しかけてみるを選んだ)!=1")
if UgXzI_C==0 then TsukishiroTalk(LB0A,zVPRGDnG,CWRiP)elseif UgXzI_C==1 then
MinaseTalk(LB0A,IKxw,CWRiP)elseif UgXzI_C==2 then YotsuhaTalk(LB0A,w0,CWRiP)end end
Layout.createStageZoomOut(CWRiP,Position.BG_MAINCHARA_BACK,1)Layout.show({LB0A,"110202"})Adv.fadeIn(0.5)
Adv.talkWithFacial(
nil,nil,LB0A,[[I'm back.]],"VC_Quest_Lv2_MuOhshima_Quest_00039_RKayamori")
Layout.createStageFixBg(CWRiP,Position.BG_SUBCHARA_BACK)Layout.show({HHH9IlJp,"000202"})local MLFLplLe=false
Routine(function()
while
true do Adv.shake(CWRiP,0.5,0.05)
Adv.shake(HHH9IlJp,0.5,0.05)if MLFLplLe==true then Adv.stopShake(CWRiP)
Adv.stopShake(HHH9IlJp)break end;Wait(0.5)end end)
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Ha...haah...ah, oh, hey there.]],"VC_Quest_Lv2_MuOhshima_Quest_00040_MuOhshima")MLFLplLe=true;Adv.fadeOut(0.5)Wait(1)
Layout.createStageZoomIn(CWRiP,Position.BG_CENTER,3)
Layout.show({LB0A,"000301"},{sKPjQkdn,"040103"})Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Phew...so...did you get any good ideas?]],"VC_Quest_Lv2_MuOhshima_Quest_00041_MuOhshima")
Adv.talkWithFacial("110301",nil,LB0A,[[Well, first of all, take these dumbbells.]],"VC_Quest_Lv2_MuOhshima_Quest_00042_RKayamori")
Adv.talkWithFacial("000102",nil,sKPjQkdn,[[Weights while running? That'd certainly add to the workout's load.]],"VC_Quest_Lv2_MuOhshima_Quest_00043_MuOhshima")
Adv.talkWithFacial("110302",nil,LB0A,[[Then, put on this eye mask.]],"VC_Quest_Lv2_MuOhshima_Quest_00044_RKayamori")
Adv.talkWithFacial("090102",nil,sKPjQkdn,[[Ah! I've heard about this! They say a lack of sight can help your focus.]],"VC_Quest_Lv2_MuOhshima_Quest_00045_MuOhshima")
Adv.talkWithFacial("000301",nil,LB0A,[[Then, we got this jump rope.]],"VC_Quest_Lv2_MuOhshima_Quest_00046_RKayamori")Sound.playBGM(AdvBGM.Gag3)
Layout.createStageZoomIn(CWRiP,Position.BG_SUBCHARA_BACK,0.5)Layout.show({HHH9IlJp,"330102"})
Adv.zoomShakeWithEffect(HHH9IlJp,CWRiP,
nil,function()
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[You're gonna whip me with it, right?!]],"VC_Quest_Lv2_MuOhshima_Quest_00047_MuOhshima")end)
Layout.createStageZoomOut(CWRiP,Position.BG_MAINCHARA_BACK,0.5)Layout.show({dl,"170201"})
Adv.talkWithFacial(nil,nil,dl,[[Huh?]],"VC_Quest_Lv2_MuOhshima_Quest_00048_RKayamori")
Layout.createStageFixBg(CWRiP,Position.BG_CENTER)
Layout.show({LB0A,"170301"},{sKPjQkdn,"330102"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[You're amazing, Ruka. That's a reward...I mean, a training method that completely exceeds my expectations!]],"VC_Quest_Lv2_MuOhshima_Quest_00049_MuOhshima")
Adv.talkWithFacial("330103",nil,sKPjQkdn,[[So, like...hehe, don't go easy on me. Ah, should I take my jacket off?]],"VC_Quest_Lv2_MuOhshima_Quest_00050_MuOhshima")
Adv.talkWithFacial("330001",nil,sKPjQkdn,[[Also, when whipping me with the jump rope, can you maybe...call me a dirty pig... Hehehe.]],"VC_Quest_Lv2_MuOhshima_Quest_00051_MuOhshima")
Adv.act(LB0A,"030301",AdvCharacterMouth.Mouth01)
Routine(function()Wait(0.1)Adv.shake(CWRiP,1,0.05)
Adv.shake(LB0A,0.5,0.1)Adv.shake(sKPjQkdn,0.5,0.1)end)
Adv.playCutIn("RKayamori","Default","Surprise","What a masochist!","VC_Quest_Lv2_MuOhshima_Quest_00052_RKayamori",3,-350,nil)
Adv.act(LB0A,"170301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("070102",nil,sKPjQkdn,[[I'm not a masochist! I'm just trying to train earnestly!]],"VC_Quest_Lv2_MuOhshima_Quest_00053_MuOhshima")Adv.faceChange(sKPjQkdn,"Cheek","Cheek_On",0.3)
Adv.talkWithFacial("090003",
nil,sKPjQkdn,[[It's just that...um.]],"VC_Quest_Lv2_MuOhshima_Quest_00054_MuOhshima")Adv.faceChange(sKPjQkdn,"Cheek","Cheek_Off",0.3)
Layout.createStageSubCharaUp(CWRiP)Layout.show({uYz2ryy4,"330203"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[If we are gonna train the same, it just seems more fun when it feels good.]],"VC_Quest_Lv2_MuOhshima_Quest_00055_MuOhshima")
Layout.createStageFixBg(CWRiP,Position.BG_MAINCHARA_BACK)Layout.show({LB0A,"030202"})
Adv.zoomShakeWithEffect(LB0A,CWRiP,nil,function()
Adv.talkWithFacial(
nil,nil,LB0A,[[No waaay! Don't rope me into your kinks, I'm normal!!!]],"VC_Quest_Lv2_MuOhshima_Quest_00056_RKayamori")end)
Adv.act(LB0A,"030001",AdvCharacterMouth.Mouth01)Adv.swelling(LB0A,-200,0,1.2,0.5,1)Wait(1.5)
Layout.createStageZoomOut(CWRiP,Position.BG_SUBCHARA_BACK,1)Adv.faceChange(sKPjQkdn,"Cheek","Cheek_On",0)
Layout.show({sKPjQkdn,"050202"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Ah! Ruka, where are you going?! Rukaaa!!!]],"VC_Quest_Lv2_MuOhshima_Quest_00057_MuOhshima")end)Adv.fadeOutWithShield(1)Adv.hide(CWRiP)
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function TsukishiroTalk(kw3ei0a,EspneS5,LZeg0)Adv.fadeOut(0.5)
Layout.createStagePanL(LZeg0,Position.BG_LEFT,2)Layout.show({EspneS5,"000003"})
Adv.fadeIn(0.5)
if Quest.getClearCount("Quest_Lv1_MTsukishiro")>0 then
Adv.kayamoriTalkMonolog([[(Mona-nyan is in the middle of training with the dumbells.)]],"VC_Quest_Lv2_MuOhshima_Quest_00020_RKayamori",
nil)else
Adv.kayamoriTalkMonolog([[(Ah, isn't that Monaka Tsukishiro from 30-G? She's training with the dumbells.)]],"VC_Quest_Lv2_MuOhshima_Quest_00021_RKayamori",
nil)end
Adv.talkWithFacial(nil,nil,EspneS5,[[Huff...hmph...]],"VC_Quest_Lv2_MuOhshima_Quest_00022_MTsukishiro")
Layout.show({kw3ei0a,"110302"},{EspneS5,"000103"},nil,1,true,function()
Adv.moveTo(LZeg0,Position.BG_SUBCHARA_BACK,1)end)Wait(1)
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Say, do those really work?]],"VC_Quest_Lv2_MuOhshima_Quest_00023_RKayamori")
Adv.talkWithFacial("090001",nil,EspneS5,[[Well, the weight can be changed, so it's all down to the person lifting them.]],"VC_Quest_Lv2_MuOhshima_Quest_00024_MTsukishiro")
Adv.talkWithFacial("110301",nil,kw3ei0a,[[I see! Learned something new today.]],"VC_Quest_Lv2_MuOhshima_Quest_00025_RKayamori")
SetLocalFlag("月城最中に話しかけるを選んだ",1)Adv.fadeOut(0.5)Layout.show()end
function MinaseTalk(OJZ,nmuj,bP)Adv.fadeOut(0.5)
Layout.createStageFixBg(bP,Position.BG_RIGHT)Layout.show({nmuj,"070201"})Adv.fadeIn(0.5)
local b4IqQW=false;local iuGb=true
local koZU=Routine(function()
while true do Sound.play("AS_Rope")
Adv.moveBy(nmuj,Vec(0,30),0.3)Wait(0.3)iuGb=false;Adv.moveBy(nmuj,Vec(0,-30),0.3)
Wait(0.3)
if b4IqQW==true then Layout.show({nmuj,"070201"})
Layout.createStageFixBg(bP,Position.BG_RIGHT)Layout.show({nmuj,"000201"})break end;iuGb=true;Wait(0.3)end end)
Adv.kayamoriTalkMonolog([[(Ichigo is jumping rope.)]],"VC_Quest_Lv2_MuOhshima_Quest_00026_RKayamori",nil)
Adv.kayamoriTalkMonolog([[(She sure is jumping well, considering her outfit.)]],"VC_Quest_Lv2_MuOhshima_Quest_00027_RKayamori",nil)b4IqQW=true;StopRoutine(koZU)
if iuGb then Wait(1)else Wait(0.5)end
Layout.show({OJZ,"110302"},{nmuj,"000101"},nil,1)
Adv.talkWithFacial(nil,nil,OJZ,[[Hey, Ichigo. Does that actually work?]],"VC_Quest_Lv2_MuOhshima_Quest_00028_RKayamori")
Adv.talkWithFacial("030103",nil,nmuj,[[Huh? It builds up endurance and agility. Might just be much tougher on the body than just running.]],"VC_Quest_Lv2_MuOhshima_Quest_00029_IMinase")
Adv.talkWithFacial("110301",nil,OJZ,[[I see! Learned something new today.]],"VC_Quest_Lv2_MuOhshima_Quest_00030_RKayamori")
SetLocalFlag("水瀬いちごに話しかけるを選んだ",1)Adv.fadeOut(0.5)Layout.show()end
function YotsuhaTalk(C,nmJGp_,h0v3PIV)Adv.fadeOut(0.5)
Layout.createStagePanR(h0v3PIV,Position.BG_SUBCHARA_BACK,2)Layout.show()
Layout.show({nmJGp_,"000001"})Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,nmJGp_,[[Zzz... Zzz...]],"VC_Quest_Lv2_MuOhshima_Quest_00031_YoOhshima")
if Quest.getClearCount("Quest_Lv1_YoOhshima")>0 then
Layout.createStageFixBg(h0v3PIV,Position.BG_MAINCHARA_BACK)Layout.show({C,"000202"})
Adv.talkWithFacial(nil,nil,C,[[Yottsun is here, but she's sleeping...]],"VC_Quest_Lv2_MuOhshima_Quest_00032_RKayamori")else
Layout.createStageFixBg(h0v3PIV,Position.BG_MAINCHARA_BACK)Layout.show({C,"000202"})
Adv.talkWithFacial(nil,nil,C,[[This girl came all the way to the gym...just to sleep?]],"VC_Quest02_Z900200015_RKayamori")end
Layout.createStageFixBg(h0v3PIV,Position.BG_SUBCHARA_BACK)Layout.show({nmJGp_,"060001"})
Adv.talkWithFacial(nil,nil,nmJGp_,[[Hwahh...it's so noisy here...]],"VC_Quest_Lv2_MuOhshima_Quest_00034_YoOhshima")
Adv.talkWithFacial("040003",nil,nmJGp_,[[Where's my eye mask...?]],"VC_Quest_Lv2_MuOhshima_Quest_00035_YoOhshima")Adv.hideCharacter(nmJGp_,0.5)
Adv.talk(nmJGp_,[[With this I can...focus on sleeping... Zzz...]],"VC_Quest_Lv2_MuOhshima_Quest_00036_YoOhshima")Layout.show()
Layout.createStageZoomIn(h0v3PIV,Position.BG_MAINCHARA_BACK,1)Layout.show({C,"080202"})
Adv.talkWithFacialInMonolog(nil,nil,C,[[(That's it! Blocking out your sight makes your focus better!)]],"VC_Quest_Lv2_MuOhshima_Quest_00037_RKayamori")
Adv.talkWithFacial("110201",nil,C,[[I see! Learned something new today.]],"VC_Quest_Lv2_MuOhshima_Quest_00038_RKayamori")
SetLocalFlag("四ツ葉に話しかけてみるを選んだ",1)Adv.fadeOut(0.5)Layout.show()end
function BathEvent()
local Uc=Bath.startBathTimeEvent("MuOhshima",BathInviteMode.Active_Stand,function(JSkUQL,PTUZ2v)
Adv.talkWithFacial(nil,nil,JSkUQL,[[(It's Muua... Maybe I should invite her to join me for a soak? I did run away from her earlier, but still...)]],"VC_Quest_Lv2_MuOhshima_Quest_00058_RKayamori")
local qlZeO3Pr=Bath.BathQuestion("MuOhshima",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active_Stand,function()
Adv.talkWithFacial(nil,nil,JSkUQL,[[(Even if Muua is a masochist, I respect her for who she is.)]],"VC_Quest_Lv2_MuOhshima_Quest_00059_RKayamori")
Adv.talkWithFacial(nil,nil,JSkUQL,[[Hey, Muua, you wanna take a bath with me?]],"VC_Quest_Lv2_MuOhshima_Quest_00060_RKayamori")Bath.turnToPlayerWait("MuOhshima")
Adv.talkWithFacial(nil,nil,PTUZ2v,[[Sure. I worked up a proper sweat with that training, so I was thinking about getting clean.]],"VC_Quest_Lv2_MuOhshima_Quest_00061_MuOhshima")
Adv.talkWithFacial(nil,nil,JSkUQL,[[Man. I wish you were always this refreshingly normal.]],"VC_Quest_Lv2_MuOhshima_Quest_00062_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,JSkUQL,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return qlZeO3Pr end)
if Uc==0 then
Bath.startBathTimeNovel("MuOhshima",nil,"Wash",function(fG9zS,WiXG,QgyWztK,Oo6ecUO)Wait(1)
Sound.play("AS_Echo_Bathsplashes_Hard")Wait(0.5)
Adv.talkWithFacial(nil,nil,WiXG,[[Phew. Okay, I guess it's time to wash our bodies.]],"VC_Quest_Lv2_MuOhshima_Quest_00064_MuOhshima")
Adv.talkWithFacial(nil,nil,fG9zS,[[I'll do that too, I guess.]],"VC_Quest_Lv2_MuOhshima_Quest_00065_RKayamori")Sound.play("AS_Hit_Softobject")Wait(0.5)
Adv.talkWithFacial(nil,nil,WiXG,[[Hehe, it's pretty sweet sitting together washing off like this.]],"VC_Quest_Lv2_MuOhshima_Quest_00066_MuOhshima")
Adv.talkWithFacial(nil,nil,WiXG,[[We had a small bathtub in our house. So, to save hot water, two of us would share the bath at one time.]],"VC_Quest_Lv2_MuOhshima_Quest_00067_MuOhshima")
Adv.talkWithFacial(nil,nil,WiXG,[[We would sit together naked like this, so it kind of feels like you're my sister, Ruka.]],"VC_Quest_Lv2_MuOhshima_Quest_00068_MuOhshima")
Adv.talkWithFacial(nil,nil,fG9zS,[[You sisters are super close, huh?]],"VC_Quest_Lv2_MuOhshima_Quest_00069_RKayamori")
Adv.talkWithFacial(nil,nil,WiXG,[[Yup. Anyways, we should wash up.]],"VC_Quest_Lv2_MuOhshima_Quest_00070_MuOhshima")
Adv.talkWithFacial(nil,nil,WiXG,[[Let's take turns scrubbing each others backs.]],"VC_Quest_Lv2_MuOhshima_Quest_00071_MuOhshima")
Adv.talkWithFacial(nil,nil,fG9zS,[[Okay, turn around. I'll wash yours first.]],"VC_Quest_Lv2_MuOhshima_Quest_00072_RKayamori")
Adv.talkWithFacial(nil,nil,WiXG,[[You're the first one other than my sisters to wash my back.]],"VC_Quest_Lv2_MuOhshima_Quest_00073_MuOhshima")
local b6SL0yka=Adv.bubbleSeActNoWait([[*scrub scrub*]],Vec(300,-150),"Talk",BubbleActMode.Horizon,"default","AS_Wash_Bath")
local hEk=Adv.bubbleSeActNoWait([[*scrub scrub*]],Vec(-250,250),"Talk",BubbleActMode.Horizon,"default","AS_Wash_Bath",nil,1)Wait(1)
Adv.talkWithFacial(nil,nil,WiXG,[[This is what friendship is all about right? What a feeling! This makes me totally glad we're in the Seraph squadron.]],"VC_Quest_Lv2_MuOhshima_Quest_00074_MuOhshima")
Adv.talkWithFacial(nil,nil,fG9zS,[[Yep. You really are normal and friendly most of the time.]],"VC_Quest_Lv2_MuOhshima_Quest_00075_RKayamori")Adv.remove(b6SL0yka)Adv.remove(hEk)end)end;Exit_World()end