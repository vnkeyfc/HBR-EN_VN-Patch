local w0qyLbH="Quest_Lv1_YoOhshima"function init()
Log("Called Quest_Lv1_YoOhshima")refresh()end
function refresh()
if
Quest.stateUnreceivable(w0qyLbH)then Field.setActiveWithTag("MTenne",false)if
Quest.isHasAnyActive()then return end
Quest.TouchEvent("YoOhshima_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Field.setActiveWithTag("MTenne",false)
Quest.TouchEvent("YoOhshima_Quest",w0qyLbH,Receive)end;if
Quest.stateStep(w0qyLbH,1)then StartEvent(Step1)end
if
Quest.stateStep(w0qyLbH,2)then Field.setActiveWithTag("MTenne",false)
EmptyEvent("YoOhshima_Quest")SetPeriodText("Buy a cola and some chips!")
Quest.TouchEvent("MSatsuki_Quest",w0qyLbH,Step2)end
if Quest.stateStep(w0qyLbH,3)then
Field.setActiveWithTag("MTenne",false)EmptyEvent("MSatsuki_Quest")
SetPeriodText("Take the cola and chips to Yotsuha!")Quest.TouchEvent("YoOhshima_Quest",w0qyLbH,Step3)end
if Quest.stateStep(w0qyLbH,4)then
Field.setActiveWithTag("MTenne",false)EmptyEvent("YoOhshima_Quest")
SetPeriodText("Buy something to eat chips with!")Quest.TouchEvent("ShopGate",w0qyLbH,Step4)end
if Quest.stateStep(w0qyLbH,5)then
Field.setActiveWithTag("MTenne",false)EmptyEvent("YoOhshima_Quest")StartEvent(Step5)end
if Quest.stateStep(w0qyLbH,6)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()Adv.fadeOut(0.5)
local nsgji=Adv.characterAsync("RKayamori")local bClTIa=Adv.characterAsync("YoOhshima")local rDzL7SVO=false
local BW0WFP=Field.getPosition("YoOhshima_Quest")
local X8=Field.getPosition("YoOhshima_Quest")+Vec(-1,0.3,-3)local JQT=Field.getPlayerPosition()
Field.setPosition("Player",X8)
Field.setPosition("YoOhshima_Quest",BW0WFP+Vec(0,0,0.5))Field.turnToTarget("Player","YoOhshima_Quest",0)
Field.changeAnimation("YoOhshima_Quest","FieldUnique01",1)Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setCameraCompositionEx(Vec(46.610,1.760,4.760),Vec(45.000,0.000,0.000),50.00)Field.waitTaskKey("CameraComposition")Wait(1)
Field.setCameraCompositionEx(Vec(47.070,1.760,4.760),Vec(45.000,0.000,0.000),50.00,3)Sound.play("AS_Lie_down_on_lawn")
Field.changeAnimation("YoOhshima_Quest","FieldUnique02",1,0)Adv.fadeIn(0.5)Wait(0.5)
Sound.play("AS_Lie_down_on_lawn")Wait(2)Sound.play("AS_Lie_down_on_lawn")
Adv.fadeOut(0.2)
Field.setCameraCompositionEx(Vec(47.50,0.450,4.790),Vec(20.000,0.000,0.000),20.00)Wait(0.01)
Field.setCameraCompositionEx(Vec(47.550,0.450,4.790),Vec(20.000,0.000,0.000),20.00,1.8)Adv.fadeIn(0.2)Wait(0.6)
Sound.play("AS_Lie_down_on_lawn")Wait(1)
Adv.kayamoriTalkMonolog([[(It's Yottsun.)]],"VC_Quest_Lv1_YoOhshima_Quest_00000_RKayamori")
Field.setCameraCompositionEx(Vec(47.70,0.550,4.790),Vec(20.000,0.000,0.000),25.00,5)Sound.play("AS_Lie_down_on_lawn")
Field.changeAnimation("YoOhshima_Quest","FieldUnique02",1,0)Wait(1)Sound.play("AS_Lie_down_on_lawn")Wait(2)
Sound.play("AS_Lie_down_on_lawn")Wait(1)Sound.play("AS_Lie_down_on_lawn")
Layout.show({bClTIa,"110002"})
Adv.talkWithFacial(nil,nil,bClTIa,[[*roll* *roll*]],"VC_Quest_Lv1_YoOhshima_Quest_00001_YoOhshima")Layout.show()
Adv.kayamoriTalkMonolog([[(Wow, she sure is chilling out over there... I'm kinda impressed.)]],"VC_Quest_Lv1_YoOhshima_Quest_00002_RKayamori")Layout.show({bClTIa,"020001"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Ahhh...shoo heavyyy. Gravity is pretty strong today...]],"VC_Quest_Lv1_YoOhshima_Quest_00003_YoOhshima")Layout.show()
Adv.kayamoriTalkMonolog([[(She can measure gravity?!)]],"VC_Quest_Lv1_YoOhshima_Quest_00004_RKayamori")
Adv.kayamoriTalkMonolog([[(That's some next-level chill! Maybe I can learn something from how she rolls around!)]],"VC_Quest_Lv1_YoOhshima_Quest_00005_RKayamori")local AtYtR=Quest.receive(w0qyLbH)
if AtYtR==QuestWindow.Receive then
Transition.start()rDzL7SVO=true;Field.finishEvent()else
Field.cancelQuest("YoOhshima_Quest",JQT,nil,function()
Field.setPosition("YoOhshima_Quest",BW0WFP)
Field.changeAnimation("YoOhshima_Quest","FieldUnique01",1)Field.finishEvent()end)end;if rDzL7SVO then Quest.refreshState()end end
function Step1()Adv.fadeOut(0.5)
local ND2BCh3=Adv.characterAsync("RKayamori")local IODBg=Adv.characterAsync("YoOhshima")local YRDu=false;Field.setPosition("YoOhshima_Quest",Vec(47.821,
-0.3,7.2))
local CWRiP=
Field.getPosition("YoOhshima_Quest")+Vec(-1,0.3,-3.2)local LB0A=Field.getPlayerPosition()
Field.setPosition("Player",CWRiP)Field.turnToTarget("Player","YoOhshima_Quest",0)
Field.prepareEventCharacter("YoOhshima_Quest")Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setCameraCompositionEx(Vec(46.950,1.760,1.810),Vec(20.000,7.500,0.000),27.50)
Field.changeAnimation("YoOhshima_Quest","FieldUnique01",1,0)Adv.fadeIn(0.5)Transition.finish()
Layout.show({ND2BCh3,"070201"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Please let me be your apprentice for the day!]],"VC_Quest_Lv1_YoOhshima_Quest_00006_RKayamori")Layout.show()Wait(0.5)
Layout.show({IODBg,"320201"})
Adv.talkWithFacial(nil,nil,IODBg,[[Uhhh...]],"VC_Quest_Lv1_YoOhshima_Quest_00007_YoOhshima")Adv.act(IODBg,"280202")
Adv.actDelay(3.5,IODBg,"280002",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,IODBg,[[I feel like I've...seen you somewhere before...]],"VC_Quest_Lv1_YoOhshima_Quest_00008_YoOhshima")
Adv.actDelay(0,IODBg,"280002",AdvCharacterMouth.Close)Layout.show()
Layout.show({ND2BCh3,"080201"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[You don't remember? It's me! Ruka Kayamori from 31-A!]],"VC_Quest_Lv1_YoOhshima_Quest_00009_RKayamori")
Adv.talkWithFacial("170002",nil,ND2BCh3,[[You should at least recognize me since we're both in the Seraph squadron.]],"VC_Quest_Lv1_YoOhshima_Quest_00010_RKayamori")Layout.show()Layout.show({IODBg,"280003"})
Adv.actDelay(2.8,IODBg,"2802",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,IODBg,[[Don't be like that, vertical girlll... Don't you get tired too when try to 'member stuff?]],"VC_Quest_Lv1_YoOhshima_Quest_00011_YoOhshima")
Adv.actDelay(0,IODBg,"2802",AdvCharacterMouth.Close)Layout.show()
Layout.show({ND2BCh3,"030001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Talking while lying down is some NEXT-LEVEL chillaxin'!]],"VC_Quest_Lv1_YoOhshima_Quest_00012_RKayamori")Layout.show()Layout.show({IODBg,"280201"})
Adv.talkWithFacial(
nil,nil,IODBg,[[Anywayyy, people who think vertically are inefficient... People who think on their sides are...you know...]],"VC_Quest_Lv1_YoOhshima_Quest_00013_YoOhshima")Layout.show()
Routine(function()
Sound.play("AS_Lie_down_on_lawn")
local dl=Field.changeAnimation("YoOhshima_Quest","FieldUnique02",1,0)Wait(1)Sound.play("AS_Lie_down_on_lawn")Wait(2)
Sound.play("AS_Lie_down_on_lawn")Wait(1)Sound.play("AS_Lie_down_on_lawn")
Field.waitTask(dl)
Field.changeAnimation("YoOhshima_Quest","FieldUnique01",1,0)end)Wait(1)Layout.show({IODBg,"040001"})
Adv.talkWithFacial(nil,nil,IODBg,[[*roll* *roll*]],"VC_Quest_Lv1_YoOhshima_Quest_00014_YoOhshima")
Adv.talkWithFacial("110001",nil,IODBg,[[We're more flexible cuz we can roll around to move...]],"VC_Quest_Lv1_YoOhshima_Quest_00015_YoOhshima")
Adv.talkWithFacial(nil,nil,IODBg,[[Humans invented the wheel after watching us roll, you knowww...]],"VC_Quest_Lv1_YoOhshima_Quest_00016_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"070001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[You definitely made that up.]],"VC_Quest_Lv1_YoOhshima_Quest_00017_RKayamori")
Adv.talkWithFacial("000201",nil,ND2BCh3,[[Are there any times when you become vertical?]],"VC_Quest_Lv1_YoOhshima_Quest_00018_RKayamori")Layout.show()Layout.show({IODBg,"000002"})
Adv.talkWithFacial(
nil,nil,IODBg,[[Only to go to the bathroom. But I'm thinking about switching to diapers soon...]],"VC_Quest_Lv1_YoOhshima_Quest_00019_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"150202"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[That's not how normal people think.]],"VC_Quest_Lv1_YoOhshima_Quest_00020_RKayamori")Layout.show()Layout.show({IODBg,"320203"})
Adv.talkWithFacial(
nil,nil,IODBg,[[Ahhh...you're my apprentice, right? Ok, I have my first order for youuu...]],"VC_Quest_Lv1_YoOhshima_Quest_00021_YoOhshima")
Adv.talkWithFacial("040001",nil,IODBg,[[Vertical girl, go get me a colaaa.]],"VC_Quest_Lv1_YoOhshima_Quest_00022_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"030201"})
Adv.playCutIn("RKayamori","Default","Surprise",[[The horizontal girl is trying to work us verticals to the bone!]],"VC_Quest_Lv1_YoOhshima_Quest_00023_RKayamori",2)Layout.show()Layout.show({IODBg,"060201"})
Adv.talkWithFacial(
nil,nil,IODBg,[[You're my apprentice, aren'chaa? Well then, follow my ordersss...]],"VC_Quest_Lv1_YoOhshima_Quest_00024_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"020001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I think I made a mistake.]],"VC_Quest_Lv1_YoOhshima_Quest_00025_RKayamori")Layout.show()Layout.show({IODBg,"280201"})
Adv.actDelay(3.2,IODBg,"060003",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,IODBg,[[Ahhh, 'm too tired to talk... Just go buy 'em already...]],"VC_Quest_Lv1_YoOhshima_Quest_00026_YoOhshima")
Adv.actDelay(0,IODBg,"060003",AdvCharacterMouth.Close)Layout.show()
Layout.show({ND2BCh3,"000201"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[At this point, the slacking off has come back around to being impressive again.]],"VC_Quest_Lv1_YoOhshima_Quest_00027_RKayamori")Layout.show()Layout.show({IODBg,"110001"})
Adv.talkWithFacial(
nil,nil,IODBg,[[Do you finally get how good my lifestyle isss?]],"VC_Quest_Lv1_YoOhshima_Quest_00028_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"000202"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I just gotta get you a cola, right?]],"VC_Quest_Lv1_YoOhshima_Quest_00029_RKayamori")Layout.show()Layout.show({IODBg,"110002"})
Adv.talkWithFacial(
nil,nil,IODBg,[[And some chipsss...]],"VC_Quest_Lv1_YoOhshima_Quest_00030_YoOhshima")Layout.show()
Layout.show({ND2BCh3,"110201"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Man, she doesn't budge. Guess I've got more to learn!]],"VC_Quest_Lv1_YoOhshima_Quest_00031_RKayamori")Transition.start()Field.finishEvent()
Field.disableLookAtAll()Field.resetPosition()Quest.clearStep(w0qyLbH)
Quest.refreshState()end
function Step2()local sKPjQkdn=Adv.characterAsync("MSatsuki")
local HHH9IlJp=Adv.characterAsync("RKayamori")
Field.startTalk("MSatsuki_Quest",FaceToFaceMode.Auto,function()
Layout.show({HHH9IlJp,"110201"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Cola and chips, please!]],"VC_Quest_Lv1_YoOhshima_Quest_00032_RKayamori")Layout.show()
Layout.show({sKPjQkdn,"260002"})
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Here you go! ♪]],"VC_Quest_Lv1_YoOhshima_Quest_00033_MSatsuki")Layout.show()
Layout.show({HHH9IlJp,"070201"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Awesome! Got me the cola and chips!]],"VC_Quest_Lv1_YoOhshima_Quest_00034_RKayamori")end)UI.showLineInfo([[You got cola and chips!]])
Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step3()Adv.fadeOut(0.5)
local uYz2ryy4=Adv.characterAsync("RKayamori")local zVPRGDnG=Adv.characterAsync("YoOhshima")Field.setPosition("YoOhshima_Quest",Vec(47.821,
-0.3,7.2))
local IKxw=
Field.getPosition("YoOhshima_Quest")+Vec(-1,0.3,-3.2)local w0=Field.getPlayerPosition()
Field.setPosition("Player",IKxw)
Field.changeAnimation("YoOhshima_Quest","FieldUnique01",1)Field.startEvent()Adv.waitAsyncInstanceAll()
Layout.createStage()
Field.setCameraCompositionEx(Vec(47.390,2.010,1.970),Vec(20.000,0.000,0.000),42.00)Field.waitTaskKey("CameraComposition")
Field.setCameraCompositionEx(Vec(47.390,1.670,1.970),Vec(20.000,0.000,0.000),42.00,1)Adv.fadeIn(0.5)
Field.setLookAtTarget("Player","YoOhshima_Quest",0.5)Sound.play("AS_Game_Shooting")Wait(1)
Adv.kayamoriTalkMonolog([[(She's playing a game...)]],"VC_Quest_Lv1_YoOhshima_Quest_00035_RKayamori")Adv.fadeOut(0.5)
Field.setCameraCompositionEx(Vec(46.980,1.760,2.460),Vec(20.000,7.500,0.000),30.00)Adv.fadeIn(0.5)Wait(0.5)
Layout.show({uYz2ryy4,"070202"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hey, I got you the cola and chips you wanted!]],"VC_Quest_Lv1_YoOhshima_Quest_00036_RKayamori")Layout.show()Wait(0.5)
Layout.show({zVPRGDnG,"300003"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Great... Now open the chip bag...]],"VC_Quest_Lv1_YoOhshima_Quest_00037_YoOhshima")Layout.show()
Layout.show({uYz2ryy4,"070001"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hm?]],"VC_Quest_Lv1_YoOhshima_Quest_00038_RKayamori")Sound.play("AS_Open_Crisps")Wait(1)
Adv.talkWithFacial("000201",nil,uYz2ryy4,[[Ok, all open.]],"VC_Quest_Lv1_YoOhshima_Quest_00039_RKayamori")Layout.show()
Adv.act(zVPRGDnG,"110001",AdvCharacterMouth.Mouth03)Layout.show({zVPRGDnG,nil})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Ahhh...]],"VC_Quest_Lv1_YoOhshima_Quest_00040_YoOhshima",true)Layout.show()
Layout.show({uYz2ryy4,"170201"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Eat them yourself!]],"VC_Quest_Lv1_YoOhshima_Quest_00041_RKayamori")Layout.show()
Layout.show({zVPRGDnG,"280102"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[I don't want my fingers getting oily...]],"VC_Quest_Lv1_YoOhshima_Quest_00042_YoOhshima")Layout.show()
Layout.show({uYz2ryy4,"170201"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[There's no way I'm feeding you.]],"VC_Quest_Lv1_YoOhshima_Quest_00043_RKayamori")Layout.show()
Layout.show({zVPRGDnG,"060003"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Then go get me something to keep my hands cleannn...]],"VC_Quest_Lv1_YoOhshima_Quest_00044_YoOhshima")Layout.show()
Layout.show({uYz2ryy4,"040002"})Adv.actDelay(2.5,uYz2ryy4,"110202")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Now that's some impressive nerve. Respect!]],"VC_Quest_Lv1_YoOhshima_Quest_00045_RKayamori")Transition.start()
Field.setPosition("Player",w0)
SetLocalFlag("佐月イベントをやったか仮",0)Field.finishEvent()Quest.clearStep(w0qyLbH)
Quest.refreshState()end
function Step4()
local UgXzI_C=Adv.loadBGAsync("Background/FriendStreetShop/FriendStreetShop","BG")local MLFLplLe=Adv.characterAsync("RKayamori")
local jwq=Adv.characterAsync("MSatsuki")
if not Domain.isClearedChapter("AC01")then
Adv.kayamoriTalk([[But I wonder if they actually sell anything like that...]],"VC_Quest_Lv1_YoOhshima_Quest_00046_RKayamori")else end;Field.moveBy("Player",Vec(0,0,2),2)
Transition.start()Field.stopTaskKey("Player")
Field.setByWaypointPosition("Player","ShopLowerPoint",Vec(0,0,0))Field.moveOnRoute("Player","ShopUpperPoint")
Field.setupEnterFormation("ShopUpperPoint")Wait(0.5)Transition.finish()Wait(1.5)
Transition.start()Field.stopTaskKey("Player")Wait(1)Adv.fadeOut(0)
Field.startNovel(function()
Layout.createStageZoomOut(UgXzI_C,Position.BG_RIGHT)Layout.show({MLFLplLe,"110201"})
Transition.finish()Wait(1.25)Adv.fadeIn(0.5)
if
not Domain.isClearedChapter("AC01")then
Adv.talkWithFacial("110201",nil,MLFLplLe,[[I need something you can use to eat chips without getting your hands dirty!]],"VC_Quest_Lv1_YoOhshima_Quest_00051_RKayamori")
Layout.createStageFixBg(UgXzI_C,Position.BG_LEFT)Layout.show({jwq,"010203"})
Adv.talkWithFacial(nil,nil,jwq,[[How about this? ♪]],"VC_Quest_Lv1_YoOhshima_Quest_00049_MSatsuki")
Layout.show({MLFLplLe,"030301"},{jwq,nil})
Adv.act(jwq,"010103",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,MLFLplLe,[[That's it! Wait, weren't you at the canteen earlier?!]],"VC_Quest_Lv1_YoOhshima_Quest_00053_RKayamori")
Adv.talkWithFacial("260002",nil,jwq,[[We are always there, whenever you need us! ♪]],"VC_Quest_Lv1_YoOhshima_Quest_00054_MSatsuki")
Adv.talkWithFacial("080301",nil,MLFLplLe,[[I don't really get it, but cool!]],"VC_Quest_Lv1_YoOhshima_Quest_00055_RKayamori")else
Adv.talkWithFacial("110201",nil,MLFLplLe,[[This place looks like it sells weird stuff.]],"VC_Quest_Lv1_YoOhshima_Quest_00047_RKayamori")
Adv.talkWithFacial(nil,nil,MLFLplLe,[[I need something you can use to eat chips without getting your hands dirty!]],"VC_Quest_Lv1_YoOhshima_Quest_00048_RKayamori")
Layout.createStageFixBg(UgXzI_C,Position.BG_LEFT)Layout.show({jwq,"010203"})
Adv.talkWithFacial(nil,nil,jwq,[[How about this? ♪]],"VC_Quest_Lv1_YoOhshima_Quest_00049_MSatsuki",
nil,AdvCharacterMouth.Close,AdvCharacterMouth.Close)
Layout.show({MLFLplLe,"110301"},{jwq,nil})
Adv.act(jwq,"010103",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Oh! Wow!]],"VC_Quest_Lv1_YoOhshima_Quest_00050_RKayamori")end
UI.showLineInfo([[You got a tool for eating chips!]])end)
Transition.setOutdoor("Munitions Store","Academy Building")Transition.start()Adv.hide(UgXzI_C,0)
Exit_FieldAndChange("School1F","StairsRightPoint",
nil,function()Quest.clearStep(w0qyLbH)end)end
function Step5()local kw3ei0a=Adv.characterAsync("YoOhshima")
local EspneS5=Adv.characterAsync("RKayamori")Field.changeCameraToEvent()local LZeg0=
Field.getPosition("YoOhshima_Quest")+Vec(-1,0.3,-3)
Field.setPosition("Player",LZeg0)Field.turnToTarget("Player","YoOhshima_Quest",0)
Field.startEvent()Adv.waitAsyncInstanceAll()Layout.createStage()
Field.setCameraCompositionEx(Vec(46.940,1.950,2.050),Vec(30.000,10.000,0.000),40.00)Wait(0.01)
Field.setCameraCompositionEx(Vec(46.940,1.950,2.050),Vec(30.000,10.000,0.000),30.00,1)Transition.finish()
Field.setLookAtTargetWait("Player","YoOhshima_Quest",0.3)Field.waitTaskKey("CameraComposition")Wait(0.5)
Layout.show({EspneS5,"000202"})
Adv.talkWithFacial(nil,nil,EspneS5,[[I have arrived with your chip-eating tool.]],"VC_Quest_Lv1_YoOhshima_Quest_00056_RKayamori")Layout.show()
Field.setCameraCompositionEx(Vec(46.950,1.900,2.130),Vec(30.000,10.000,0.000),27.50,0.5)Adv.fadeOut(0.5)
Field.stopTaskKey("CameraComposition")Field.stopTaskKey("Camera")Wait(0.01)
Field.setCameraCompositionEx(Vec(47.550,0.370,4.540),Vec(20.000,0.000,0.000),17.50)Wait(0.01)
Field.setCameraCompositionEx(Vec(47.550,0.300,4.740),Vec(20.000,0.000,0.000),15.00,2)Adv.fadeIn(0.5)Wait(2)
Adv.talkAllIn(kw3ei0a,kw3ei0a,[[Zzz... Zzz...]],"VC_Quest_Lv1_YoOhshima_Quest_00057_YoOhshima")
Adv.kayamoriTalk([[She's dozed off while working me to the bone!]],"VC_Quest_Lv1_YoOhshima_Quest_00058_RKayamori")Sound.playBGM("SB0023",1,1)
Adv.talkAllIn(kw3ei0a,kw3ei0a,[[Zzz... Zzz...]],"VC_Quest_Lv1_YoOhshima_Quest_00059_YoOhshima")Adv.fadeOut(0.5)
Field.setCameraCompositionEx(Vec(47.170,1.670,1.970),Vec(20.000,0.000,0.000),35.00)Adv.fadeIn(0.5)
Layout.show({EspneS5,"080201"})
Adv.talkWithFacial(nil,nil,EspneS5,[[She's got the face of an angel...when she's actually a little devil.]],"VC_Quest_Lv1_YoOhshima_Quest_00060_RKayamori")
Adv.talkWithFacial(nil,nil,EspneS5,[[Heeey, don't get sick ok?]],"VC_Quest_Lv1_YoOhshima_Quest_00061_RKayamori")Layout.show()
Layout.show({kw3ei0a,"110002"})
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Zzz... Zzz...]],"VC_Quest_Lv1_YoOhshima_Quest_00062_YoOhshima",true)Layout.show()
Layout.show({EspneS5,"110202"})
Adv.talkWithFacial(nil,nil,EspneS5,[[Oh, well. I guess I should get her a blanket.]],"VC_Quest_Lv1_YoOhshima_Quest_00063_RKayamori")Adv.fadeOutWithShield(1)Quest.clearStep(w0qyLbH)
Field.finishEvent()Quest.refreshState()end
function BathEvent()Adv.fadeOut(0)
Field.prepareEventCharacter("YoOhshima_Bath")
local OJZ=Bath.startBathTimeEvent("YoOhshima",BathInviteMode.Etc,function(nmuj,bP)local b4IqQW=
Field.getWaypointPosition("StartPoint")+Vec(-3,0,0)
Field.moveTo("YoOhshima_Bath",
Field.getWaypointPosition("BigBathPoint")+Vec(-2,0,2),0,AnimationMode.None)
Field.turnTo("YoOhshima_Bath",130,0,AnimationMode.None)
Field.changeAnimation("YoOhshima_Bath","FieldUnique01",1,0)Field.setPosition("Player",b4IqQW)
Field.setCameraCompositionEnabled(true)
Field.setCameraCompositionEx(Vec(-3.830,1.570,-2.510),Vec(10.000,315.000,0.000),30.00)Adv.fadeIn(1.0)
Field.moveByWait("Player",Vec(-2),2)
Field.faceToFaceTalk("YoOhshima_Bath",FaceToFaceMode.None,FaceToFaceMode.Auto)
Adv.talkWithFacial(nil,nil,nmuj,[[(Oh? Yottsun is lounging around in front of the bath area.)]],"VC_Quest_Lv1_YoOhshima_Quest_00064_RKayamori")
local iuGb=Bath.BathQuestion("YoOhshima",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Etc,function()
Field.setCameraCompositionEx(Vec(-3.830,2.530,
-2.510),Vec(20.000,315.000,0.000),18.50,1.5)Field.moveByWait("Player",Vec(-1.5,0,1),1.5)
Adv.talkWithFacial(
nil,nil,nmuj,[[Hey Yottsun, wanna go grab a bath together?]],"VC_Quest_Lv1_YoOhshima_Quest_00065_RKayamori")
Adv.talkWithFacial(nil,nil,bP,[[Bathhh? Wassat, is it yummy?]],"VC_Quest_Lv1_YoOhshima_Quest_00066_YoOhshima")
Adv.talkWithFacial(nil,nil,nmuj,[[Oh, no! At this rate, I'm gonna hafta drag her there.]],"VC_Quest_Lv1_YoOhshima_Quest_00067_RKayamori")
Adv.talkWithFacial(nil,nil,bP,[[Whaaa... Man, what a painnn...]],"VC_Quest_Lv1_YoOhshima_Quest_00068_YoOhshima")end,function()
Adv.talkWithFacial(
nil,nil,nmuj,[[(I guess that's just how she rolls, though, so I'll leave her be.)]],"VC_Quest_Lv1_YoOhshima_Quest_00069_RKayamori")Field.disableLookAt("Player")
Field.moveBy("Player",Vec(0,0,10),8)end)return iuGb end)
if OJZ==0 then
Bath.startBathTimeNovel("YoOhshima",nil,"Wash",function(koZU,C,nmJGp_,h0v3PIV)
Field.setCameraCompositionEnabled(false)Wait(0.5)Sound.play("AS_Echo_Bathsplashes")
Wait(0.5)
Adv.talkWithFacial(nil,nil,C,[[Ahhh, this feels goood...]],"VC_Quest_Lv1_YoOhshima_Quest_00070_YoOhshima")
Adv.talkWithFacial(nil,nil,koZU,[[That's the smile of an angel.]],"VC_Quest_Lv1_YoOhshima_Quest_00071_RKayamori")
Adv.talkWithFacial(nil,nil,koZU,[[It was worth carrying you here, helping you get undressed, and getting you in the bath.]],"VC_Quest_Lv1_YoOhshima_Quest_00072_RKayamori")Sound.play("AS_Echo_Bubbling")Wait(0.5)
Adv.talkWithFacial(nil,nil,C,[[*BLUB* *BLUB* *BLUB*]],"VC_Quest_Lv1_YoOhshima_Quest_00073_YoOhshima")
Adv.talkWithFacial(nil,nil,koZU,[[Oh no... She's sinking! Don't drown, Yottsun!]],"VC_Quest_Lv1_YoOhshima_Quest_00074_RKayamori")Sound.play("AS_echo_bath_water")Wait(0.5)
Adv.talkWithFacial(nil,nil,C,[[Gah... I fell asleep...]],"VC_Quest_Lv1_YoOhshima_Quest_00075_YoOhshima")
Adv.talkWithFacial(nil,nil,koZU,[[Damn, you can't even bathe by yourself.]],"VC_Quest_Lv1_YoOhshima_Quest_00076_RKayamori")
Adv.talkWithFacial(nil,nil,C,[[Kayamori, wash my face and hairrr.]],"VC_Quest_Lv1_YoOhshima_Quest_00077_YoOhshima")Sound.play("AS_Echo_Bathsplashes")
Adv.talkWithFacial(nil,nil,koZU,[[Fine, fine. Let's get you to the shower then.]],"VC_Quest_Lv1_YoOhshima_Quest_00078_RKayamori")
Adv.talkWithFacial(nil,nil,C,[[Ahhh, the easy life...]],"VC_Quest_Lv1_YoOhshima_Quest_00079_YoOhshima")
Adv.talkWithFacial(nil,nil,koZU,[[Hmmm... Is she really ok like this?]],"VC_Quest_Lv1_YoOhshima_Quest_00080_RKayamori")end)end;Exit_World()end