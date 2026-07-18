ROUTINE()
INCLUDE("Lua/Story/MC02/Common/BadEnd/MC02_BadEnd")Adv.shield()local AtYtR=Domain.getDivingChapter()
local ND2BCh3=Domain.getDivingDay()
local IODBg=Adv.loadBG("Background/Ariake/Ariake_Evening","BG")
local YRDu=Adv.loadBG("Background/CommanderRoom/CommanderRoom_Evening","BG")local CWRiP=Adv.character("STezuka")
local LB0A=Adv.character("YIzumi")local dl=Adv.character("RKayamori")
function TalkWithSTezuka()
Sound.playBGM("SB0008")
Layout.createStageZoomOut(IODBg,Position.BG_CENTER)Layout.show({LB0A,"000202"})Adv.novelInit()
Adv.talkWithFacial(
nil,nil,LB0A,[[Ruka, with this, our patrol of the designated areas is complete.]],"VC_MC02_00142_v001_YIzumi")
Layout.createStageFixBg(IODBg,Position.BG_MAINCHARA_BACK)Layout.show({dl,"070202"})
Adv.talkWithFacial(nil,nil,dl,[[This is as far as we go, huh. We didn't find the Medusa in the end, but I guess we should hurry on back and report to the commander.]],"VC_MC02_00143_v001_RKayamori")Sound.stopBGM()
Transition.setFlyReturn(TimeFrame.Evening)Transition.start(2)Layout.hide()Wait(3)
Sound.playBGM("SB0015")
Layout.createStageZoomIn(YRDu,Position.BG_CENTER)Layout.show({CWRiP,"0400"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,CWRiP,[[I see... All designated areas were checked, but no sign of the target.]],"VC_MC02_00144_v001_STezuka")
Adv.talkWithFacial("0002",nil,CWRiP,[[Either way, good job everyone.]],"VC_MC02_00145_v001_STezuka")
Adv.talkWithFacial("0702",nil,CWRiP,[[But since our primary objective isn't yet complete, we'll have you continue with the special patrol mission.]],"VC_MC02_00146_v001_STezuka")
Adv.talkWithFacial(nil,nil,CWRiP,[[Please stay on standby until you receive your orders.]],"VC_MC02_00147_v001_STezuka")
Layout.createStageFixBg(YRDu,Position.BG_MAINCHARA_BACK)Layout.show({dl,"000201"})
Adv.talkWithFacial(nil,nil,dl,[[Got it.]],"VC_MC02_00148_v001_RKayamori")end
local sKPjQkdn=
GetFlag("有明エリア1のMAP開放率100%_2章Day11")+
GetFlag("有明エリア1のMAP開放率100%_2章Day12")+
GetFlag("有明エリア1のMAP開放率100%_2章Day13")+GetFlag("有明エリア1のMAP開放率100%_2章Day14")
if
AtYtR=="MC02"and ND2BCh3 ==11 and
GetFlag("有明エリア1のMAP開放率100%_2章Day11")==1 then TalkWithSTezuka()elseif
AtYtR=="MC02"and ND2BCh3 ==12 and
GetFlag("有明エリア1のMAP開放率100%_2章Day12")==1 then TalkWithSTezuka()elseif
AtYtR=="MC02"and ND2BCh3 ==13 and
GetFlag("有明エリア1のMAP開放率100%_2章Day13")==1 then TalkWithSTezuka()elseif
AtYtR=="MC02"and ND2BCh3 ==14 and
GetFlag("有明エリア1のMAP開放率100%_2章Day14")==1 then TalkWithSTezuka()elseif
AtYtR=="MC02"and ND2BCh3 ==14 and sKPjQkdn==0 then MC02_BadEnd_02()elseif AtYtR=="MC02"and ND2BCh3 ==15 then
Sound.playBGM("SB0008",1)
Layout.createStageZoomOut(IODBg,Position.BG_CENTER)Layout.show(dl)Adv.novelInit()
Sound.play("SY_Signal_Begin")
Adv.talkWithFacial(nil,nil,dl,[[This is Ruka Kayamori from 31-A. Can you connect me to the commander?]],"VC_MC02_00149_v001_RKayamori")
Adv.miniCutIn("NNanase","02",[[Understood. Please give me a moment.]],"VC_MC02_00150_v001_NNanase",BalloonType.Shout,true,true)Adv.act(dl,"0000")Wait(2)
Adv.actDelay(0.5,dl,"0002")
Adv.showMiniCutIn("STezuka","02",[[I see... So it got away.]],"VC_MC02_00151_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("020202",nil,dl,[[Sorry about that.]],"VC_MC02_00152_v001_RKayamori")
Adv.showMiniCutIn("STezuka","02",[[There's nothing to apologize about. We didn't expect it to flee underground.]],"VC_MC02_00153_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()
Adv.showMiniCutIn("STezuka","02",[[If it was able to get away from your squad, then I doubt the other squads have a high chance of defeating it.]],"VC_MC02_00154_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()
Adv.showMiniCutIn("STezuka","02",[[You said that it ran away after its exoskeleton was destroyed. Is that correct?]],"VC_MC02_00155_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("0702",nil,dl,[[Yup, that's what it felt like.]],"VC_MC02_00156_v001_RKayamori")
Adv.showMiniCutIn("STezuka","02",[[What did fighting it feel like?]],"VC_MC02_00157_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("0700",nil,dl,[[It didn't seem that strong. If it didn't run away, I think we would've got 'em.]],"VC_MC02_00158_v001_RKayamori")
Adv.showMiniCutIn("STezuka","02",[[I see. We'll send a helicopter to pick you up, so return to base for now.]],"VC_MC02_00159_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("080201",nil,dl,[[Oh, we can head back now?]],"VC_MC02_00160_v001_RKayamori")
Adv.showMiniCutIn("STezuka","02",[[We'll have a surveillance squad take over. Or did you want to pull an all-nighter to stand watch? I have no qualms about that.]],"VC_MC02_00161_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("1502",nil,dl,[[Nooo thanks! We still have training for the operation, so an all-nighter is a big nope!]],"VC_MC02_00162_v001_RKayamori")
Adv.showMiniCutIn("STezuka","02",[[That's what I thought. Now, we'll halt the patrol mission from this point.]],"VC_MC02_00163_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()
Adv.showMiniCutIn("STezuka","02",[[Thanks to your efforts, the risk level has gone down significantly. I think we can approach this issue with regular patrol routes for the next few days.]],"VC_MC02_00164_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()
Adv.showMiniCutIn("STezuka","02",[[If we find the Medusa, we'll issue an order for deployment. Stay ready in the meantime.]],"VC_MC02_00165_v001_STezuka",BalloonType.Shout,true,true,true)WaitTap()Adv.hideMiniCutIn()
Adv.talkWithFacial("0002",nil,dl,[[Got it.]],"VC_MC02_00166_v001_RKayamori")
Adv.miniCutIn("STezuka","02",[[Copy. Good work today, girls.]],"VC_MC02_00167_v001_STezuka",BalloonType.Shout,true)Sound.play("SY_Signal_Begin")Wait(1)
Sound.stopBGM(1)Transition.setFlyReturn(TimeFrame.Evening)
Transition.start()else end;Exit_Novel()