
function ActivityAtLibrary_MC02_ADV()local A;local w0qyLbH
local nsgji=Field.getActivitySixSensePoint()local bClTIa=Adv.character("RKayamori")
local rDzL7SVO=Adv.character("YIzumi")
showBgDependsOnTime=function()local JQT=GetTimeFrame()
if JQT==TimeFrame.Noon then
A=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Noon")
w0qyLbH=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Noon")elseif JQT==TimeFrame.Evening then
A=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Evening","BG")
w0qyLbH=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Evening","BG")elseif JQT==TimeFrame.Night then
A=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Night","BG")
w0qyLbH=Adv.loadBG("Background/LibraryRoom/LibraryRoom_Night","BG")end end;showBgDependsOnTime()Sound.playBGM("SB0016",1,1)
Layout.createStagePan(A,Position.BG_CENTER,10)Layout.show()Transition.finish()Wait(1.5)
local BW0WFP=math.random(100)if BW0WFP<=20 then
SetLocalFlag("ランダムイベント発生",1)end
Adv.kayamoriTalk([[(Well, what should I read?)]],"VC_ActivityAtLibrary_MC02_ADV_00001_RKayamori")
local X8=Adv.question([[Read what?]],[[Seraph magazine|Romance novel|Picture book]],0)
if X8 ==0 then
Layout.changeStageFixBg(AdvStage_get(bClTIa),Position.BG_CENTER)Layout.createStageSubCharaUp(A,true,10)
Layout.show(nil,nil,nil,1)
Adv.kayamoriTalk([[(Let's read the military-issued magazine. This is a special issue covering a Seraph competition!)]],"VC_ActivityAtLibrary_MC02_ADV_00002_RKayamori")
Adv.kayamoriTalk([[(There might be info on all kinds of different Seraph types in here!)]],"VC_ActivityAtLibrary_MC02_ADV_00003_RKayamori")
Adv.kayamoriTalk([[(As squad lead, I should take a read and educate myself.)]],"VC_ActivityAtLibrary_MC02_ADV_00004_RKayamori")
Adv.kayamoriTalk([[(Wait, what's this? The...Make-Your-Own Ultimate Seraph Competition?)]],"VC_ActivityAtLibrary_MC02_ADV_00005_RKayamori")
Adv.kayamoriTalk([[(A blade, 2 kilometers long. A 0.1 millimeter thick, unbreakable shield. A super long-ranged gun with the power to blow up the moon...)]],"VC_ActivityAtLibrary_MC02_ADV_00006_RKayamori")
Adv.kayamoriTalk([[(...It was filled with the fleeting dreams and boundless imaginations of the people that came before us.)]],"VC_ActivityAtLibrary_MC02_ADV_00007_RKayamori")
Domain.addSixSenseByActivity(SixSense.ACTIVITY_HEART,nsgji)elseif X8 ==1 then Layout.createStageSubCharaUp(A,true,10)Layout.show(nil,nil,
nil,1)
Adv.kayamoriTalk([[(I'll read a romance novel to open myself up to new experiences.)]],"VC_ActivityAtLibrary_MC02_ADV_00008_RKayamori")
Adv.kayamoriTalk([[(Huh, so I guess teen girls think like this?)]],"VC_ActivityAtLibrary_MC02_ADV_00009_RKayamori")
Adv.kayamoriTalk([[(Wait, I AM a teen girl!)]],"VC_ActivityAtLibrary_MC02_ADV_00010_RKayamori")Layout.createStage(A)
Layout.show({bClTIa,"0200"},nil,nil,1)
Adv.kayamoriTalk([[(The only thing I discovered from this book is that I'm unlike girls my age...)]],"VC_ActivityAtLibrary_MC02_ADV_00011_RKayamori")
Adv.act(bClTIa,"0202",AdvCharacterMouth.Mouth01)
Adv.kayamoriTalk([[(I want to see Yukkie...I bet she'll understand me. Just like me, she's no ordinary girl.)]],"VC_ActivityAtLibrary_MC02_ADV_00012_RKayamori")
if GetLocalFlag("ランダムイベント発生")==1 then
Layout.show(bClTIa,{rDzL7SVO,"0001"})
Adv.act(bClTIa,"0003",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Oh, Ruka. Didn't know you were here.]],"VC_ActivityAtLibrary_MC02_ADV_00013_YIzumi")Sound.playBGM("SB0033",1,1)
Adv.act(bClTIa,"010002",AdvCharacterMouth.Mouth01)
Adv.faceChange(rDzL7SVO,"Cheek",AdvCharacterCheek.CheekOn,0.3)
Adv.act(rDzL7SVO,"210102",AdvCharacterMouth.Mouth01)Sound.play("AS_hug")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.8)Adv.shake(A,0.5,0.1)
Adv.moveBy(bClTIa,Vec(250,0),0.3)Adv.shake(rDzL7SVO,0.3,0.1)
Adv.talkWithFacial("090302",nil,bClTIa,[[Yuuukkie!]],"VC_ActivityAtLibrary_MC02_ADV_00014_RKayamori")
Adv.talkWithFacial("210102",nil,rDzL7SVO,[[Why are you hugging me all of a sudden...]],"VC_ActivityAtLibrary_MC02_ADV_00015_YIzumi")Adv.moveBy(bClTIa,Vec(-250,0),0.5)
Adv.talkWithFacial("110301",nil,bClTIa,[['Cause, Yukkie...you're far from an ordinary girl.]],"VC_ActivityAtLibrary_MC02_ADV_00016_RKayamori")
Adv.faceChange(rDzL7SVO,"Cheek",AdvCharacterCheek.CheekOff,0.3)
Adv.talkWithFacial("060103",nil,rDzL7SVO,[[Wow, okay then...and why does that lead to you hugging me...?]],"VC_ActivityAtLibrary_MC02_ADV_00017_YIzumi")
Adv.talkWithFacial("020002",nil,bClTIa,[[Because I, too, am no ordinary girl.]],"VC_ActivityAtLibrary_MC02_ADV_00018_RKayamori")
Adv.talkWithFacial("210001",nil,rDzL7SVO,[[Well of course you're not ordinary, you were a freakin' rock star... I was just a run-of-the-mill hacker.]],"VC_ActivityAtLibrary_MC02_ADV_00019_YIzumi")
Adv.talkWithFacial("110301",nil,bClTIa,[[Yeah, but that doesn't change the fact that you're unordinary.]],"VC_ActivityAtLibrary_MC02_ADV_00020_RKayamori")
Adv.talkWithFacial("060101",nil,rDzL7SVO,[[Hey. You could at least use extraordinary. Unordinary just sounds kind of unhinged.]],"VC_ActivityAtLibrary_MC02_ADV_00021_YIzumi")
Adv.talkWithFacial("110001",nil,bClTIa,[[Unhinged? Yeah, that's great! We're both unhinged!]],"VC_ActivityAtLibrary_MC02_ADV_00022_RKayamori")
Adv.talkWithFacial("130102",nil,rDzL7SVO,[[What's great about that? That's just announcing to the world that we're crazy.]],"VC_ActivityAtLibrary_MC02_ADV_00023_YIzumi")nsgji=nsgji+1;Sound.playBGM("SB0016",2,2)end
Domain.addSixSenseByActivity(SixSense.ACTIVITY_HEART,nsgji)elseif X8 ==2 then Layout.createStageSubCharaUp(A,true,10)Layout.show(nil,nil,
nil,1)
Adv.kayamoriTalk([[(A picture book...what am I, a child?)]],"VC_ActivityAtLibrary_MC02_ADV_00024_RKayamori")
Adv.kayamoriTalk([[(But since it's here anyways, I might as well read it)]],"VC_ActivityAtLibrary_MC02_ADV_00025_RKayamori")
Adv.kayamoriTalk([[(Wow, the details are so complex! Are picture books nowadays all like this?!)]],"VC_ActivityAtLibrary_MC02_ADV_00026_RKayamori")
Adv.kayamoriTalk([[(The backgrounds are amazing too! Did they draw this all by themselves?! There's only one name listed as the author, so...)]],"VC_ActivityAtLibrary_MC02_ADV_00027_RKayamori")
Adv.kayamoriTalk([[(They must be some kind of genius. Unless...it's all a fraud!)]],"VC_ActivityAtLibrary_MC02_ADV_00028_RKayamori")
Domain.addSixSenseByActivity(SixSense.ACTIVITY_HEART,nsgji)end;Transition.start()
Layout.createStageZoomOut(A,nil,10)Layout.show({bClTIa,"1100"})Wait(1.5)
Transition.finish()
Adv.talkWithFacial("1100",nil,bClTIa,[[(Whew, I feel more educated already.)]],"VC_ActivityAtLibrary_MC02_ADV_00029_RKayamori",true)
Adv.talkWithFacial("1102",nil,bClTIa,[[(I think I'll go back home now.)]],"VC_ActivityAtLibrary_MC02_ADV_00030_RKayamori",true)Transition.start()end