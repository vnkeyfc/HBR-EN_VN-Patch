local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Forest_MountaunSideUp","Assets/Lua/Story/MC02/Day25/World/MC02_25_00_07_Forest_MountaunSideUp.unity")end;function init()
refresh()end
function refresh()
SetPeriodText("Let's keep moving forward!")Sound.playBGM("EN_Wind_Blow_Loop",2,1)
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then SetAutoModePointName("Blocker")
ReachEvent_NextWorldEventStep("Blocker",w0qyLbH,MC02_25_00_03)elseif nsgji==2 then SetAutoModePointName("Blocker_2")
ReachEvent_NextWorldEventStep("Blocker_2",w0qyLbH,Receive)end end
function StartWorld()Field.playerComeIn("GatePoint_1",Vec(-2))
Field.changeAnimation("Player","FieldStand")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Huh? Is it just me, or does it seem like the Cancers have vanished?]],"VC_MC02_25_00_07_World_00000_RKayamori",
nil)
Adv.kayamoriTalk([[We're about to come across a mountain ridge. Let's keep going.]],"VC_MC02_25_00_07_World_00001_RKayamori",nil)Field.finishEvent()end
function MC02_25_00_03()Sound.play("AS_Roar_RedCrimson")Wait(0.3)
Field.turnToWait("Player",0,0.1)
Field.changeAnimation("Player","FieldIdleTension")Transition.start()
Field.startNovel(function()
local bClTIa=Adv.loadBGAsync("Background/Forest/Forest_Morning")local rDzL7SVO=Adv.characterAsync("RKayamori")
local BW0WFP=Adv.characterAsync("YIzumi")Adv.waitAsyncInstanceAll()Wait(2)
Sound.playBGM("SB0041",1,1)
Layout.createStageZoomIn(bClTIa,Position.BG_CENTER)Layout.show({rDzL7SVO,"070201"})
Adv.novelInit()
Adv.talkWithFacial("070201",nil,rDzL7SVO,[[What's that sound? Or is it a voice?]],"VC_MC02_25_00_03_Novel_00000_RKayamori")Layout.show(rDzL7SVO,{BW0WFP,"000101"})
Adv.talkWithFacial("000101",
nil,BW0WFP,[[What? Did you hear something?]],"VC_MC02_25_00_03_Novel_00001_YIzumi")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Yukkie, did you hear like...a scream in the distance?]],"VC_MC02_25_00_03_Novel_00002_RKayamori")
Adv.talkWithFacial("040101",nil,BW0WFP,[[Now that you mention it... I've got a bad feeling about all of this.]],"VC_MC02_25_00_03_Novel_00003_YIzumi")
Adv.talkWithFacial("040001",nil,BW0WFP,[[Wherever the voice is coming from, it's got to be the origin of this anomaly.]],"VC_MC02_25_00_03_Novel_00004_YIzumi")
Adv.talkWithFacial("0703",nil,rDzL7SVO,[[So a boss-level Cancer really showed up?]],"VC_MC02_01064_v001_RKayamori")
Adv.talkWithFacial("040101",nil,BW0WFP,[[That's certainly a possibility.]],"VC_MC02_25_00_03_Novel_00006_YIzumi")
Adv.talkWithFacial("070301",nil,rDzL7SVO,[[Let's keep moving carefully to avoid it.]],"VC_MC02_25_00_03_Novel_00007_RKayamori")
Adv.talkWithFacial("070301",nil,rDzL7SVO,[[I'll go ahead and report this to HQ.]],"VC_MC02_25_00_03_Novel_00008_RKayamori")Sound.play("SY_Signal_Begin")Wait(1)
Adv.miniCutIn("NNanase","02",[[This is HQ. Go ahead.]],"VC_MC02_25_00_03_Novel_00009_NNanase",BalloonType.Shout,true)Adv.act(BW0WFP,"0402")
Adv.talkWithFacial("0702",nil,rDzL7SVO,[[So...we think a pretty strong Cancer popped up. Yukkie is comparing the data right now, so if HQ could get on that as well, that'd be great.]],"VC_MC02_25_00_03_Novel_00010_RKayamori")
Adv.miniCutIn("NNanase","02",[[Understood. We'll start looking into it immediately.]],"VC_MC02_25_00_03_Novel_00011_NNanase",BalloonType.Shout,true)Transition.start()Layout.hide()
Adv.hide(bClTIa)end)Wait(2)Transition.finish()end;function Receive()Field.startEvent()
Field.setTalkCamera("Player")Exit_World()end