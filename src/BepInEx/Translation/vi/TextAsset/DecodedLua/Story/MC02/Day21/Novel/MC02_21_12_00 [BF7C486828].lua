ROUTINE()Adv.shield()
local bClTIa=Adv.loadBG("Background/Dormitory1FHallway/Dormitory1FHallway_Night")Adv.show(bClTIa,0)local rDzL7SVO=Adv.character("RKayamori")
Layout.setup(Layout.createStage(bClTIa),rDzL7SVO)local BW0WFP=Adv.character("SHiguchi")
Layout.setup(Layout.createStage(bClTIa),BW0WFP)
Layout.createStageZoomOut(bClTIa,Position.BG_RIGHT,3)Sound.playBGM(nil,0,0)
Layout.show({rDzL7SVO,"000001"},{BW0WFP,"000001"},nil,0.7,
nil,function()Adv.moveBy(rDzL7SVO,Vec(350),0)
Adv.moveBy(BW0WFP,Vec(-200),0)Adv.moveLayer(BW0WFP,"Character")end)Wait(1)Adv.novelInit()Wait(1)
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[Hwuh? Who's there?!]],"VC_MC02_21_12_00_Novel_00000_RKayamori")Sound.playBGM(AdvBGM.Fun2,1,1)
Adv.talkWithFacial(nil,nil,BW0WFP,[[*sniff* *sniff*...]],"VC_MC02_21_12_00_Novel_00001_SHiguchi")Adv.shakeXY(rDzL7SVO,0.3,0.3,0)Wait(0.3)
Layout.show(rDzL7SVO,BW0WFP,nil,0.2)
Adv.act(BW0WFP,"000101",AdvCharacterMouth.Mouth01,0.4)
if Domain.tieLevel("SHiguchi")>1 then
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Umm... Higumin?!]],"VC_MC02_21_12_00_Novel_00002_RKayamori")
Adv.talkWithFacial("030101",nil,BW0WFP,[[Who are you calling "Higumin"?]],"VC_MC02_21_12_00_Novel_00003_SHiguchi")else
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Umm... Higuchi?!]],"VC_MC02_21_12_00_Novel_00004_RKayamori")end
Adv.talkWithFacial("070301",nil,rDzL7SVO,[[If you get all touchy-feely with me like that, a certain someone's going to get jealous...]],"VC_MC02_21_12_00_Novel_00005_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[I'm not being touchy-feely.]],"VC_MC02_21_12_00_Novel_00006_SHiguchi")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Then what ARE you doing?]],"VC_MC02_21_12_00_Novel_00007_RKayamori")
Adv.talkWithFacial("000001",nil,BW0WFP,[[I was sniffing you.]],"VC_MC02_21_12_00_Novel_00008_SHiguchi")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Uh, why?]],"VC_MC02_21_12_00_Novel_00009_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[I felt that you're a little different than the others.]],"VC_MC02_21_12_00_Novel_00010_SHiguchi")
Adv.talkWithFacial("000002",nil,rDzL7SVO,[[Well, I guess everyone's got their quirks. People do say I'm pretty weird.]],"VC_MC02_21_12_00_Novel_00011_RKayamori")
Adv.act(rDzL7SVO,"000302",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial("090002",nil,BW0WFP,[[Even so, you're a particularly interesting test subject.]],"VC_MC02_21_12_00_Novel_00012_SHiguchi")
Adv.talkWithFacial("080302",nil,rDzL7SVO,[[A test subject for what?]],"VC_MC02_21_12_00_Novel_00013_RKayamori")
Adv.talkWithFacial("000101",nil,BW0WFP,[[A test subject for the studying of Seraphim, of course.]],"VC_MC02_21_12_00_Novel_00014_SHiguchi")
Adv.talkWithFacial("070301",nil,rDzL7SVO,[[Who's doing the experimenting?]],"VC_MC02_21_12_00_Novel_00015_RKayamori")
Adv.talkWithFacial("090103",nil,BW0WFP,[[Me. I'm even a test subject myself.]],"VC_MC02_21_12_00_Novel_00016_SHiguchi")
Adv.talkWithFacial("170301",nil,rDzL7SVO,[[I don't really understand anything you're saying.]],"VC_MC02_21_12_00_Novel_00017_RKayamori")
Adv.talkWithFacial("090002",nil,BW0WFP,[[That's only natural. You wouldn't be able to understand what goes on in the mind of a genius.]],"VC_MC02_21_12_00_Novel_00018_SHiguchi")
Adv.talkWithFacial("170002",nil,rDzL7SVO,[[People used to call me a genius way back when, does that count?]],"VC_MC02_21_12_00_Novel_00019_RKayamori")
Adv.talkWithFacial("000301",nil,BW0WFP,[[Never mind... I'm rather busy, so I shouldn't be wasting my time chatting here.]],"VC_MC02_21_12_00_Novel_00020_SHiguchi")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Wait, could I ask you something?]],"VC_MC02_21_12_00_Novel_00021_RKayamori")Sound.stopBGM(1)
Adv.talkWithFacial("000101",nil,BW0WFP,[[What?]],"VC_MC02_21_12_00_Novel_00022_SHiguchi")Sound.playBGM(AdvBGM.Back1,1)
if
Domain.tieLevel("SHiguchi")>1 then
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[As a fellow squad member, what do you think about Ichigo and Sumomo's plans?]],"VC_MC02_21_12_00_Novel_00023_RKayamori")else
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[As a fellow squad member, what do you think about Ichigo and Sumomo's plans?]],"VC_MC02_21_12_00_Novel_00024_RKayamori")end
Adv.talkWithFacial("000001",nil,BW0WFP,[[Such a menial matter. I could hardly care less about it.]],"VC_MC02_21_12_00_Novel_00025_SHiguchi")
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[But isn't your life on the line, in a way?]],"VC_MC02_21_12_00_Novel_00026_RKayamori")Adv.actDelay(3,BW0WFP,"000101")
Adv.talkWithFacial(nil,nil,BW0WFP,[[Personally, I don't think I'd mind dying.]],"VC_MC02_21_12_00_Novel_00027_SHiguchi")Adv.actDelay(0,BW0WFP,"000101")
Adv.talkWithFacial("080301",nil,rDzL7SVO,[[Huh? Why?]],"VC_MC02_21_12_00_Novel_00028_RKayamori")
Adv.talkWithFacial("090101",nil,BW0WFP,[[I'm very curious about the mysteries surrounding life...our lives.]],"VC_MC02_21_12_00_Novel_00029_SHiguchi")
Adv.talkWithFacial("070302",nil,rDzL7SVO,[[But if you die, that's the end of it all.]],"VC_MC02_21_12_00_Novel_00030_RKayamori")
Adv.talkWithFacial("090102",nil,BW0WFP,[[Or perhaps, death will let me see things from a different angle.]],"VC_MC02_21_12_00_Novel_00031_SHiguchi")
Adv.talkWithFacial("000001",nil,rDzL7SVO,[[I don't know about that one...]],"VC_MC02_21_12_00_Novel_00032_RKayamori")
Adv.talkWithFacial("090003",nil,BW0WFP,[[Even so, it excites me to no end to consider the possibility...]],"VC_MC02_21_12_00_Novel_00033_SHiguchi")
Adv.act(rDzL7SVO,"000301",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial("000301",nil,BW0WFP,[[Anyways. I'm quite busy, so I'll be leaving now.]],"VC_MC02_21_12_00_Novel_00034_SHiguchi")
Adv.talkWithFacial("070301",nil,rDzL7SVO,[[Wait, wait. Hold on.]],"VC_MC02_00949_v001_RKayamori")
Adv.act(BW0WFP,"000101",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[I want you to help Aoi out so the mission succeeds.]],"VC_MC02_21_12_00_Novel_00035_RKayamori")
Adv.talkWithFacial("040101",nil,BW0WFP,[[Why should I?]],"VC_MC02_21_12_00_Novel_00036_SHiguchi")
if Domain.tieLevel("SHiguchi")>1 then
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Because she's your leader right now.]],"VC_MC02_00950_v001_RKayamori")else
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Because she's your leader right now.]],"VC_MC02_00951_v001_RKayamori")end
Adv.talkWithFacial("000101",nil,BW0WFP,[[Is that a formal request from you?]],"VC_MC02_21_12_00_Novel_00037_SHiguchi")
Adv.talkWithFacial("000301",nil,rDzL7SVO,[[Yeah.]],"VC_MC02_21_12_00_Novel_00038_RKayamori")
Adv.talkWithFacial("090101",nil,BW0WFP,[[I suppose it's doable. You allowed me to sniff you, after all.]],"VC_MC02_21_12_00_Novel_00039_SHiguchi")
if Domain.tieLevel("SHiguchi")>1 then
Adv.talkWithFacial("110302",nil,rDzL7SVO,[[Thanks, Higumin!]],"VC_MC02_00952_v001_RKayamori")
Adv.talkWithFacial("030002",nil,BW0WFP,[[Don't call me that.]],"VC_MC02_00953_v001_SHiguchi")else
Adv.talkWithFacial("110302",nil,rDzL7SVO,[[Thanks, Higuchi!]],"VC_MC02_00954_v001_RKayamori")end;Adv.fadeOut(2,true)Sound.stopBGM(3)Wait(3)
Exit_Novel()