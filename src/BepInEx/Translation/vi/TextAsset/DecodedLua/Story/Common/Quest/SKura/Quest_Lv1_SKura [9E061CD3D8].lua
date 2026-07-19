local w0qyLbH="Quest_Lv1_SKura"function init()Log("Called Quest_Lv1_SKura")
refresh()end
function refresh()
if Quest.stateUnreceivable(w0qyLbH)then if
Quest.isHasAnyActive()then return end
Quest.TouchEvent("SKura_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("SKura_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then if
GetLocalFlag("花弁の枚数")==0 then
SetPeriodText("Pick up 5 blossoms on Main Street!")end;if
GetLocalFlag("花弁の枚数")==1 then
SetPeriodText("Pick up 4 more blossoms on Main Street!")end;if
GetLocalFlag("花弁の枚数")==2 then
SetPeriodText("Pick up 3 more blossoms on Main Street!")end;if
GetLocalFlag("花弁の枚数")==3 then
SetPeriodText("Pick up 2 more blossoms on Main Street!")end;if
GetLocalFlag("花弁の枚数")==4 then
SetPeriodText("Pick up 1 more blossom on Main Street!")end
TouchQuestEvent("SKura_Quest",w0qyLbH,Step2_SKura)
Field.touchQuestEventOnlyOnce("Cherry1_Quest_Lv1_SKura",w0qyLbH,Step2_Cherry1)
Field.touchQuestEventOnlyOnce("Cherry2_Quest_Lv1_SKura",w0qyLbH,Step2_Cherry2)
Field.touchQuestEventOnlyOnce("Cherry3_Quest_Lv1_SKura",w0qyLbH,Step2_Cherry3)
Field.touchQuestEventOnlyOnce("Cherry4_Quest_Lv1_SKura",w0qyLbH,Step2_Cherry4)
Field.touchQuestEventOnlyOnce("Cherry5_Quest_Lv1_SKura",w0qyLbH,Step2_Cherry5)end
if Quest.stateStep(w0qyLbH,3)then StartEvent(Step3)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()local nsgji=Field.getPosition("Player")
local bClTIa=Adv.characterAsync("RKayamori")local rDzL7SVO=Adv.characterAsync("SKura")
Field.startTalk("SKura_Quest",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"010201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Ahh, spring... With the world as it is, spring is a precious time for letting one appreciate the diversity of the seasons and feel...alive.]],"VC_Quest_Lv1_SKura_Quest_00000_SKura")
Adv.talkWithFacial("000201",nil,rDzL7SVO,[[Say, would you be so kind as to help me gather some cherry blossom petals?]],"VC_Quest_Lv1_SKura_Quest_00001_SKura")local BW0WFP=Quest.receive(w0qyLbH)
if BW0WFP==QuestWindow.Receive then
Transition.start()return function()Quest.refreshState()end else
Transition.start()return
function()Field.cancelQuest("SKura_Quest",nsgji)end end end)end
function Step1()Adv.fadeOut(0)
local X8=Adv.characterAsync("RKayamori")local JQT=Adv.characterAsync("SKura")
Field.prepareEventCharacter("SKura_Quest")
Field.startTalk("SKura_Quest",FaceToFaceMode.Auto,function()Adv.fadeIn(0.5)
Transition.finish()Layout.show({X8,"070201"})
Adv.talkWithFacial(nil,nil,X8,[[It would be the greatest honor.]],"VC_Quest_Lv1_SKura_Quest_00002_RKayamori")Layout.show({JQT,"010201"})
Adv.talkWithFacial(nil,nil,JQT,[[You're so well-mannered. Let's get to work.]],"VC_Quest_Lv1_SKura_Quest_00003_SKura")Layout.show({X8,"070201"})
Adv.talkWithFacial(nil,nil,X8,[[I'm on the job.]],"VC_Quest_Lv1_SKura_Quest_00004_RKayamori")end)Transition.start()Layout.hide()
Field.changeCameraToPlayable()SetLocalFlag("花弁の枚数",0)Wait(1)
Transition.finish()Field.playerComeIn("SchoolPoint",Vec(-2))
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step2_SKura()local AtYtR=Adv.characterAsync("SKura")
Field.startTalk("SKura_Quest",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"030202"})
Adv.talkWithFacial(nil,nil,AtYtR,[[That's not quite enough.]],"VC_Quest_Lv1_SKura_Quest_00005_SKura")
Adv.talkWithFacial("080202",nil,AtYtR,[[You don't know where to look? You can find them by the dozen on this street, you know.]],"VC_Quest_Lv1_SKura_Quest_00006_SKura")end)end
function Step2_Cherry1()
local ND2BCh3=Field.getPosition("SKura_Quest")+Vec(1,0,1.3)
Field.turnToTarget("Player","Cherry1_Quest_Lv1_SKura",0.3)
UI.showLineInfo([[You found a cherry blossom petal!]],2,2)Wait(0.5)
if GetLocalFlag("花弁の枚数")<=2 then
Adv.kayamoriTalk([[(That's one down!)]],"VC_Quest_Lv1_SKura_Quest_00007_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==3 then
Adv.kayamoriTalk([[(And just one to go.)]],"VC_Quest_Lv1_SKura_Quest_00008_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==4 then
Adv.kayamoriTalk([[(All right, let's bring these back.)]],"VC_Quest_Lv1_SKura_Quest_00009_RKayamori",
nil)end;IncLocalFlag("花弁の枚数")
if
GetLocalFlag("花弁の枚数")>=5 then Transition.start()
Field.resetPosition("SquarePoint")Field.setPosition("Player",ND2BCh3)
Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step2_Cherry2()
local IODBg=Field.getPosition("SKura_Quest")+Vec(1,0,1.3)
Field.turnToTarget("Player","Cherry2_Quest_Lv1_SKura",0.3)
UI.showLineInfo([[You found a cherry blossom petal!]],2,2)Wait(0.5)
if GetLocalFlag("花弁の枚数")<=2 then
Adv.kayamoriTalk([[(That's one down!)]],"VC_Quest_Lv1_SKura_Quest_00007_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==3 then
Adv.kayamoriTalk([[(And just one to go.)]],"VC_Quest_Lv1_SKura_Quest_00008_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==4 then
Adv.kayamoriTalk([[(All right, let's bring these back.)]],"VC_Quest_Lv1_SKura_Quest_00009_RKayamori",
nil)end;IncLocalFlag("花弁の枚数")
if
GetLocalFlag("花弁の枚数")>=5 then Transition.start()
Field.resetPosition("SquarePoint")Field.setPosition("Player",IODBg)
Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step2_Cherry3()
local YRDu=Field.getPosition("SKura_Quest")+Vec(1,0,1.3)
Field.turnToTarget("Player","Cherry3_Quest_Lv1_SKura",0.3)
UI.showLineInfo([[You found a cherry blossom petal!]],2,2)Wait(0.5)
if GetLocalFlag("花弁の枚数")<=2 then
Adv.kayamoriTalk([[(That's one down!)]],"VC_Quest_Lv1_SKura_Quest_00007_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==3 then
Adv.kayamoriTalk([[(And just one to go.)]],"VC_Quest_Lv1_SKura_Quest_00008_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==4 then
Adv.kayamoriTalk([[(All right, let's bring these back.)]],"VC_Quest_Lv1_SKura_Quest_00009_RKayamori",
nil)end;IncLocalFlag("花弁の枚数")
if
GetLocalFlag("花弁の枚数")>=5 then Transition.start()
Field.resetPosition("SquarePoint")Field.setPosition("Player",YRDu)
Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step2_Cherry4()
local CWRiP=Field.getPosition("SKura_Quest")+Vec(1,0,1.3)
Field.turnToTarget("Player","Cherry4_Quest_Lv1_SKura",0.3)
UI.showLineInfo([[You found a cherry blossom petal!]],2,2)Wait(0.5)
if GetLocalFlag("花弁の枚数")<=2 then
Adv.kayamoriTalk([[(That's one down!)]],"VC_Quest_Lv1_SKura_Quest_00007_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==3 then
Adv.kayamoriTalk([[(And just one to go.)]],"VC_Quest_Lv1_SKura_Quest_00008_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==4 then
Adv.kayamoriTalk([[(All right, let's bring these back.)]],"VC_Quest_Lv1_SKura_Quest_00009_RKayamori",
nil)end;IncLocalFlag("花弁の枚数")
if
GetLocalFlag("花弁の枚数")>=5 then Transition.start()
Field.resetPosition("SquarePoint")Field.setPosition("Player",CWRiP)
Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step2_Cherry5()
local LB0A=Field.getPosition("SKura_Quest")+Vec(1,0,1.3)
Field.turnToTarget("Player","Cherry5_Quest_Lv1_SKura",0.3)
UI.showLineInfo([[You found a cherry blossom petal!]],2,2)Wait(0.5)
if GetLocalFlag("花弁の枚数")<=2 then
Adv.kayamoriTalk([[(That's one down!)]],"VC_Quest_Lv1_SKura_Quest_00007_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==3 then
Adv.kayamoriTalk([[(And just one to go.)]],"VC_Quest_Lv1_SKura_Quest_00008_RKayamori",
nil)elseif GetLocalFlag("花弁の枚数")==4 then
Adv.kayamoriTalk([[(All right, let's bring these back.)]],"VC_Quest_Lv1_SKura_Quest_00009_RKayamori",
nil)end;IncLocalFlag("花弁の枚数")
if
GetLocalFlag("花弁の枚数")>=5 then Transition.start()
Field.resetPosition("SquarePoint")Field.setPosition("Player",LB0A)
Quest.clearStep(w0qyLbH)end;Quest.refreshState()end
function Step3()Adv.fadeOut(0)
local dl=Adv.characterAsync("RKayamori")local sKPjQkdn=Adv.characterAsync("SKura")
local HHH9IlJp=Adv.characterAsync("SKura")local uYz2ryy4=Adv.characterAsync("SKura")local zVPRGDnG=
Field.getPosition("SKura_Quest")+Vec(0,0,-4)
Sound.playBGM("SB0022",0,0)Field.activeEventCharacterWait("SKura_Quest")
Field.setActiveWithTag("Narvy",false)Field.setActiveWithTag("Gaya",false)
Field.waitTaskKey("Player")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setCameraCompositionEx(Vec(-0.030,1.220,24.440),Vec(0.000,305.000,0.000),33.00)Field.moveTo("Player",zVPRGDnG,0)
Field.moveBy("Player",Vec(0,0,3),1.8)Wait(0.5)
Field.setCameraCompositionEx(Vec(0.050,1.220,24.560),Vec(0.000,305.000,0.000),30.00,1.5)Transition.finish()Adv.fadeIn(0.5)
Field.waitTaskKey("Player")Field.turnToTarget("SKura_Quest","Player",0.5)
Field.turnToTargetWait("Player","SKura_Quest",0.5)Wait(0.3)Layout.show({sKPjQkdn,"010202"})
Adv.talkWithFacial(
nil,nil,sKPjQkdn,[[I can feel the inspiration welling up. Thank you.]],"VC_Quest_Lv1_SKura_Quest_00022_SKura")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[You're quite well-behaved, despite how you look.]],"VC_Quest_Lv1_SKura_Quest_00023_SKura")Layout.show({dl,"110202"})
Adv.talkWithFacial(nil,nil,dl,[[Aww, I'm blushing.]],"VC_Quest_Lv1_SKura_Quest_00024_RKayamori")Layout.show()Adv.moveLayer(sKPjQkdn,"Character")
Layout.show({dl,"110302"},{sKPjQkdn,"020102"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[I'd say a girl like you deserves one of my gourmet meals. Unfortunately, I'm booked up for the next six months. Tough luck.]],"VC_Quest_Lv1_SKura_Quest_00025_SKura")
Adv.talkWithFacial("000302",nil,dl,[[I'm not even hungry, though.]],"VC_Quest_Lv1_SKura_Quest_00026_RKayamori")
Adv.talkWithFacial("030101",nil,sKPjQkdn,[[Don't downplay the appeal of my gourmet cooking. My dishes would have you licking your plate clean, no matter how full you were!]],"VC_Quest_Lv1_SKura_Quest_00027_SKura")
Adv.talkWithFacial("070301",nil,dl,[[Hit me with it.]],"VC_Quest_Lv1_SKura_Quest_00028_RKayamori")Adv.actDelay(4.4,sKPjQkdn,"000101")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Did I not just tell you that I'm booked until six months from now? Put in a reservation, and you can experience it then.]],"VC_Quest_Lv1_SKura_Quest_00029_SKura")Adv.act(sKPjQkdn,"000101")
Adv.talkWithFacial("080301",nil,dl,[[Six whole months? We might not even be alive then.]],"VC_Quest_Lv1_SKura_Quest_00030_RKayamori")
Adv.talkWithFacial("010101",nil,sKPjQkdn,[[True. I see you understand our situation well.]],"VC_Quest_Lv1_SKura_Quest_00031_SKura")Layout.show()
Layout.show({sKPjQkdn,"070201"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Humanity is but a candle in the wind. For us who fight on the front lines, surviving six months is anything but a given.]],"VC_Quest_Lv1_SKura_Quest_00032_SKura")
Adv.talkWithFacial("070001",nil,sKPjQkdn,[[And that is precisely why...we should plan for our futures.]],"VC_Quest_Lv1_SKura_Quest_00033_SKura")
Adv.talkWithFacial("010201",nil,sKPjQkdn,[[Now that was a memorable line, was it not? Care to recite it back?]],"VC_Quest_Lv1_SKura_Quest_00034_SKura")Layout.show()Adv.moveLayer(sKPjQkdn,"Character")
Layout.show({dl,"070301"},{sKPjQkdn,"000101"})
Adv.talkWithFacial(nil,nil,dl,[[My gourmet meals are booked up for the next six months.]],"VC_Quest_Lv1_SKura_Quest_00035_RKayamori")Adv.actDelay(0.8,sKPjQkdn,"060103")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Yes, wonderf—Wait, NO!]],"VC_Quest_Lv1_SKura_Quest_00036_SKura")Adv.act(sKPjQkdn,"060103")
Adv.talkWithFacial("000101",nil,sKPjQkdn,[[It seems your brain is fully occupied with stimulating your salivary glands! Are you so desperate to taste my gourmet cooking?]],"VC_Quest_Lv1_SKura_Quest_00037_SKura")
Adv.talkWithFacial("000001",nil,sKPjQkdn,[[Unfortunately for you, I'm booked for the next six months. That's the way the cookie crumbles.]],"VC_Quest_Lv1_SKura_Quest_00038_SKura")Sound.playBGM("SB0032",0,0)
Adv.talkWithFacial("170302",nil,dl,[[You said that a million times already. I got it, sheesh.]],"VC_Quest_Lv1_SKura_Quest_00039_RKayamori")
Adv.talkWithFacial("080102",nil,sKPjQkdn,[[Someone's in their rebellious phase.]],"VC_Quest_Lv1_SKura_Quest_00040_SKura")
Adv.talkWithFacial("000302",nil,dl,[[Less a phase, more an identity.]],"VC_Quest_Lv1_SKura_Quest_00041_RKayamori")
Adv.talkWithFacial("000102",nil,sKPjQkdn,[[Then what was that well-behaved attitude you displayed earlier?]],"VC_Quest_Lv1_SKura_Quest_00042_SKura")Layout.show()Wait(0.3)
Layout.show({dl,"000202"})
Adv.talkWithFacial(nil,nil,dl,[[Did it for the memes.]],"VC_Quest_Lv1_SKura_Quest_00043_RKayamori")Layout.show({sKPjQkdn,"080202"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[*gasp*]],"VC_Quest_Lv1_SKura_Quest_00044_SKura")Sound.stopBGM(2)
Adv.talkWithFacial("0302",nil,sKPjQkdn,[[Such breathtaking betrayal...]],"VC_Quest_Lv1_SKura_Quest_00045_SKura")Layout.show()Sound.playBGM("SB0039")
Adv.moveLayer(sKPjQkdn,"Character")
Layout.show({dl,"000302"},{sKPjQkdn,"070102"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Listen here, young lady. You clearly have not been educated on how to speak to your elders. Someone ought to teach you a lesson.]],"VC_Quest_Lv1_SKura_Quest_00046_SKura")
Adv.talkWithFacial("070301",nil,dl,[[You wanna go?]],"VC_Quest_Lv1_SKura_Quest_00047_RKayamori")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Indeed I do.]],"VC_Quest_Lv1_SKura_Quest_00048_SKura")
Adv.talkWithFacial(nil,nil,dl,[[But I come in peace!]],"VC_Quest_Lv1_SKura_Quest_00049_RKayamori")Adv.moveBy(HHH9IlJp,Vec(350),0)
Adv.moveBy(uYz2ryy4,Vec(350),0)Adv.act(HHH9IlJp,"030102")
Adv.act(uYz2ryy4,"030102")
Adv.talkWithFacial("030102",nil,sKPjQkdn,[[I'm not so foolish as to rely on base violence.]],"VC_Quest_Lv1_SKura_Quest_00050_SKura")Adv.moveLayer(sKPjQkdn,"Character")
Adv.moveLayer(HHH9IlJp,"Character")Adv.moveLayer(uYz2ryy4,"Character")
Adv.show(HHH9IlJp,0)Adv.show(uYz2ryy4,0)
Field.fadeOutCharacter("SKura_Quest",0)Wait(0.01)Sound.play("AS_Rubbing_Speedpose")Adv.moveBy(sKPjQkdn,Vec(
-1800),0.3)
Adv.hide(sKPjQkdn,0.5)Adv.hide(HHH9IlJp,0.5)Adv.hide(uYz2ryy4,0.5)
Wait(0.05)Adv.moveBy(HHH9IlJp,Vec(-1800),0.3)Wait(0.05)Adv.moveBy(uYz2ryy4,Vec(
-1800),0.3)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",
nil,0.3,-350,0)
local IKxw=Adv.bubbleSeActNoWait([[*whoosh*]],Vec(0,100),"Talk",BubbleActMode.Vertical,"default",nil,nil,nil,1)Wait(0.5)Adv.hide(IKxw,0.3)Wait(0.3)
Adv.remove(IKxw)
Adv.act(dl,"080301",AdvCharacterMouth.Mouth01,0.2)Wait(0.5)Layout.show()
Field.setCameraFov(Field.getCameraFov()*0.8,0.3)Adv.moveLayer(sKPjQkdn,"Character")
Layout.show({dl,"080201"})
Adv.talkWithFacial(nil,nil,dl,[[She's fast!]],"VC_Quest_Lv1_SKura_Quest_00051_RKayamori")Layout.show()Field.disableLookAt("Player",0.2)
Field.changeAnimation("SKura_Quest","BattleTeleportAppear",1,0)Wait(0.4)Field.fadeInCharacter("SKura_Quest",0.2)
Field.waitTaskKey("SKura_Quest")Wait(0.1)
Field.setLookAtTarget("Player","SKura_Quest",0.2)
Field.changeAnimation("SKura_Quest","FieldIdle",1,0.5)Wait(0.2)
Layout.show({dl,nil},{sKPjQkdn,"010103"})Adv.act(dl,"080301")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Do you recognize this scrap of cloth?]],"VC_Quest_Lv1_SKura_Quest_00052_SKura")Adv.actDelay(1.8,dl,"030201")
Adv.talkWithFacial(nil,nil,dl,[[Those're panties. Wait! Why do I feel a breeze on my crotch?!]],"VC_Quest_Lv1_SKura_Quest_00053_RKayamori")Layout.show()
local w0=Field.getPlayerPosition()+
(
Field.getPosition("SKura_Quest")-Field.getPlayerPosition())/2;Field.setLookAtPosition("Player",w0,0.2)Wait(1.5)
Field.setLookAtTarget("Player","SKura_Quest",0.2)Wait(0.5)
Layout.show({dl,"030301"},{sKPjQkdn,"010003"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Just so. This is <i>your</i> underwear.]],"VC_Quest_Lv1_SKura_Quest_00054_SKura")
Adv.talkWithFacial("080301",nil,dl,[[No way! It's a huge drag having to put on a fresh pair every day, so how'd you strip mine in a split second?]],"VC_Quest_Lv1_SKura_Quest_00055_RKayamori")
Adv.talkWithFacial("000103",nil,sKPjQkdn,[[With a little tug and a little slash.]],"VC_Quest_Lv1_SKura_Quest_00056_SKura")
Adv.talkWithFacial("030301",nil,dl,[[You CUT them? Now they're ruined! And my other ones are still drying...]],"VC_Quest_Lv1_SKura_Quest_00057_RKayamori")
Adv.talkWithFacial("010101",nil,sKPjQkdn,[[That's what you get for crossing me. Enjoy going commando for the day.]],"VC_Quest_Lv1_SKura_Quest_00058_SKura")
Adv.talkWithFacial("000302",nil,dl,[[Eh, whatever.]],"VC_Quest_Lv1_SKura_Quest_00059_RKayamori")
Adv.act(sKPjQkdn,"060101",AdvCharacterMouth.Mouth01)
Adv.playCutIn("SKura","Default","Surprise","What! How could that not have worked?","VC_Quest_Lv1_SKura_Quest_00060_SKura",1.5,350,nil)
Adv.talkWithFacial(nil,nil,dl,[[Not like there's any guys around to worry about.]],"VC_Quest_Lv1_SKura_Quest_00061_RKayamori")Adv.act(sKPjQkdn,nil)
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(sKPjQkdn,0.5,0.1)Adv.shake(dl,0.5,0.1)end)
Adv.playCutIn("SKura","Default","Surprise","But you can't seriously\nbe unbothered by it!","VC_Quest_Lv1_SKura_Quest_00062_SKura",1.5,350,nil)
Adv.talkWithFacial(nil,nil,dl,[[Actually, I'm starting to get used to it.]],"VC_Quest_Lv1_SKura_Quest_00063_RKayamori")Adv.act(sKPjQkdn,nil)
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(sKPjQkdn,0.5,0.1)Adv.shake(dl,0.5,0.1)end)
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.5,350,0)
Adv.playCutIn("SKura","Default","Surprise","Preposterous!!!","VC_Quest_Lv1_SKura_Quest_00064_SKura",1.5,350,nil)
Adv.talkWithFacial(nil,nil,dl,[[Oh, hey, when I need to go, all I gotta do is sit.]],"VC_Quest_Lv1_SKura_Quest_00065_RKayamori")Adv.act(sKPjQkdn,nil)
Routine(function()Wait(0.1)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(sKPjQkdn,0.5,0.1)Adv.shake(dl,0.5,0.1)end)
Adv.playCutIn("SKura","Default","Surprise","She's already\nappreciating it!!!","VC_Quest_Lv1_SKura_Quest_00066_SKura",2.5,350,nil)
Adv.talkWithFacial("110301",nil,dl,[[Thanks for giving me the chance to go pantyless. I'll give it a shot for the whole day.]],"VC_Quest_Lv1_SKura_Quest_00067_RKayamori")
Adv.talkWithFacial("060102",nil,sKPjQkdn,[[What <i>is</i> this girl? I'm somewhat appalled!]],"VC_Quest_Lv1_SKura_Quest_00068_SKura")
Adv.talkWithFacial("000301",nil,dl,[[See ya.]],"VC_Quest_Lv1_SKura_Quest_00069_RKayamori")Layout.show()Field.disableLookAt("Player",0.3)
Wait(0.3)
Field.setCameraCompositionEx(Vec(0.260,1.220,24.860),Vec(0.000,305.000,0.000),38.00,2)Field.moveByWait("Player",Vec(0,0,-2),2)
Wait(0.5)Layout.show({sKPjQkdn,"060202"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[These rookies are a terrifying bunch! If all the other newbies are like this, I'll be genuinely appalled!]],"VC_Quest_Lv1_SKura_Quest_00070_SKura")Layout.show()
Field.setCameraCompositionEx(Vec(0.260,1.220,22.530),Vec(0.000,315.000,0.000),38.00,1.5)Wait(1)
Field.turnToTargetWait("Player","SKura_Quest",0.5)Layout.show({dl,"000201"})
Adv.talkWithFacial(nil,nil,dl,[[Don't worry. The other girls are sensible.]],"VC_Quest_Lv1_SKura_Quest_00071_RKayamori")Layout.show({sKPjQkdn,"060201"})
Field.zoomShakeWithEffect(sKPjQkdn,
nil,function()
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[This one's <i>aware</i> that she's senseless! I'm genuinely, <i>genuinely</i> appalled!]],"VC_Quest_Lv1_SKura_Quest_00072_SKura")end)Adv.fadeOutWithShield(1)Field.finishEvent()
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local UgXzI_C=Bath.startBathTimeEvent("SKura",BathInviteMode.Active,function(MLFLplLe,jwq)
Adv.talkWithFacial(nil,nil,MLFLplLe,[[(Maybe I should invite Tomi to join me for a soak.)]],"VC_Quest_01374_v002_RKayamori")
local kw3ei0a=Bath.BathQuestion("SKura",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Hey Tomi, wanna go to the baths with me?]],"VC_Quest_01375_v002_RKayamori")
Adv.talkWithFacial(nil,nil,jwq,[[You again? Fine. You can tell me all about how it felt to go commando.]],"VC_Quest_01376_v002_SKura")
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Sure, I'll tell you all about it.]],"VC_Quest_01377_v002_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,MLFLplLe,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return kw3ei0a end)
if UgXzI_C==0 then
Bath.startBathTimeNovel("SKura",nil,"Wash",function(EspneS5,LZeg0,OJZ,nmuj)
Adv.talkWithFacial(nil,nil,LZeg0,[[Were you not humiliated?]],"VC_Quest_Lv1_SKura_Quest_00076_SKura")
Adv.talkWithFacial(nil,nil,EspneS5,[[Nah, for real...I've never felt so free.]],"VC_Quest_Lv1_SKura_Quest_00077_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[You must be joking!]],"VC_Quest_Lv1_SKura_Quest_00078_SKura")Sound.playENV("AS_shower_loop")
Adv.talkWithFacial(nil,nil,EspneS5,[[Maybe I should chuck my bras, too.]],"VC_Quest_Lv1_SKura_Quest_00079_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[Now you're willingly abandoning common decency!]],"VC_Quest_Lv1_SKura_Quest_00080_SKura")
Adv.talkWithFacial(nil,nil,EspneS5,[[Shame about the uniform. Can't go naked since it's our combat gear and we're always on alert.]],"VC_Quest_Lv1_SKura_Quest_00081_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[She was considering going FULLY NUDE? I'm appalled! What do I have to do to teach this girl a lesson?]],"VC_Quest_Lv1_SKura_Quest_00082_SKura")
Routine(function()Wait(1)Sound.play("AS_Echo_Bathsplashes")
Wait(0.5)Sound.stop("AS_shower_loop")end)
Adv.talkWithFacial(nil,nil,EspneS5,[[I'm a sucker for compliments.]],"VC_Quest_Lv1_SKura_Quest_00083_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[You're the most gorgeous girl I've ever seen. Despite also being a woman, I find myself falling for you.]],"VC_Quest_Lv1_SKura_Quest_00084_SKura")
Adv.talkWithFacial(nil,nil,EspneS5,[[Sweet, you mean it? I'm blushing!]],"VC_Quest_Lv1_SKura_Quest_00085_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[Rats, I've been manipulated!]],"VC_Quest_Lv1_SKura_Quest_00086_SKura")Sound.play("AS_Echo_Headwater")
Adv.talkWithFacial(nil,nil,EspneS5,[[Right back at you, gorgeous. You've got a bangin' bod.]],"VC_Quest_Lv1_SKura_Quest_00087_RKayamori")
Adv.talkWithFacial(nil,nil,LZeg0,[[Enough! Quit trying so hard to befriend me! I don't associate with crazy girls.]],"VC_Quest_Lv1_SKura_Quest_00088_SKura")
Adv.talkWithFacial(nil,nil,EspneS5,[[Chill, chill. We're gonna be working together a lot, so compatibility is important.]],"VC_Quest_Lv1_SKura_Quest_00089_RKayamori")Sound.play("AS_Echo_Bathsplashes")Wait(0.3)
Adv.talkWithFacial(
nil,nil,LZeg0,[[I don't care one iota about that! In our circumstances, we could all die at any time. Don't forget that for even a second!]],"VC_Quest_Lv1_SKura_Quest_00090_SKura")
Adv.talkWithFacial(nil,nil,EspneS5,[[Uh-huuuuuh...]],"VC_Quest_Lv1_SKura_Quest_00091_RKayamori")end)end;Exit_World()end