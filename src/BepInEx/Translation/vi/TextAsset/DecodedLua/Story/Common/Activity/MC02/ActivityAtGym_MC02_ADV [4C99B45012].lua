
function ActivityAtGym_MC02_ADV()local A;local w0qyLbH
local nsgji=Field.getActivitySixSensePoint()local bClTIa=Adv.character("RKayamori")
local rDzL7SVO=Adv.character("VBalakrishnan")
showBgDependsOnTime=function()local JQT=GetTimeFrame()
if JQT==TimeFrame.Noon then
A=Adv.loadBG("Background/Gym/Gym_Noon")w0qyLbH=Adv.loadBG("Background/Gym/Gym_Noon")elseif JQT==
TimeFrame.Evening then A=Adv.loadBG("Background/Gym/Gym_Evening")
w0qyLbH=Adv.loadBG("Background/Gym/Gym_Evening")elseif JQT==TimeFrame.Night then
A=Adv.loadBG("Background/Gym/Gym_Night")w0qyLbH=Adv.loadBG("Background/Gym/Gym_Night")end end;showBgDependsOnTime()
Layout.createStageZoomIn(A,Position.BG_CENTER,10)Sound.playBGM("SB0033",1,1)Layout.show()
Transition.finish()Wait(1.5)local BW0WFP=math.random(100)if BW0WFP<=20 then
SetLocalFlag("ランダムイベント発生",1)end
Adv.kayamoriTalk([[Okay, I'm going to work out today!]],"VC_ActivityAtGym_MC02_ADV_00001_RKayamori")
local X8=Adv.question([[What kind of training?]],[[Hot yoga|Weight lifting|Exercise bike]],0)
if X8 ==0 then Layout.createStageSubCharaUp(A,true,10)Layout.show(nil,nil,
nil,1)
Adv.kayamoriTalk([[(Hot yoga really is HOT! This room is warm as heck, wow.)]],"VC_ActivityAtGym_MC02_ADV_00002_RKayamori")
Adv.kayamoriTalk([[(Spreading both arms out to the side, bending one knee ninety degrees, and stretching the other leg out really far...)]],"VC_ActivityAtGym_MC02_ADV_00003_RKayamori")
Adv.kayamoriTalk([[(...Warrior Pose: Virabhadrasana)!]],"VC_ActivityAtGym_MC02_ADV_00004_RKayamori")
Adv.kayamoriTalk([[(Ahh, that feels good around the scapula and down around the hips!)]],"VC_ActivityAtGym_MC02_ADV_00005_RKayamori")
if GetLocalFlag("ランダムイベント発生")==1 then
Adv.kayamoriTalk([[(Next, sitting down cross-legged...and bringing both hands near the stomach.)]],"VC_ActivityAtGym_MC02_ADV_00006_RKayamori")
Adv.kayamoriTalk([[(The meditating pose...)]],"VC_ActivityAtGym_MC02_ADV_00007_RKayamori")Layout.createStage(w0qyLbH)Layout.show({bClTIa,"0700"},{rDzL7SVO,"000002"},
nil,1)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00008_VBalakrishnan")
if Domain.getIntroductionFlag("VBalakrishnan")then
Adv.talkWithFacial("030302",nil,bClTIa,[[(V.B.?! When did she get next to me?)]],"VC_ActivityAtGym_MC02_ADV_00009_RKayamori",true)else
Adv.talkWithFacial("030302",nil,bClTIa,[[(Who's this?! When did she get next to me?)]],"VC_ActivityAtGym_MC02_ADV_00010_RKayamori",true)end
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00011_VBalakrishnan")
Adv.talkWithFacial("080301",nil,bClTIa,[[(She's totally rocking this yoga thing.)]],"VC_ActivityAtGym_MC02_ADV_00012_RKayamori",true)
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00013_VBalakrishnan")
Adv.talkWithFacial("000301",nil,bClTIa,[[......]],"VC_ActivityAtGym_MC02_ADV_00014_RKayamori",true)
Adv.talkWithFacial("000001",nil,bClTIa,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00015_RKayamori")
Adv.talkWithFacial("080102",nil,rDzL7SVO,[[...Hm?]],"VC_ActivityAtGym_MC02_ADV_00016_VBalakrishnan",true)
Adv.talkWithFacial("000301",nil,bClTIa,[[Oops, sorry. Didn't mean to bother you.]],"VC_ActivityAtGym_MC02_ADV_00017_RKayamori")
Adv.talkWithFacial("000102",nil,rDzL7SVO,[[No. When you speak, it is good to focus on the stomach.]],"VC_ActivityAtGym_MC02_ADV_00018_VBalakrishnan")
Adv.talkWithFacial("000302",nil,bClTIa,[[Huh.]],"VC_ActivityAtGym_MC02_ADV_00019_RKayamori")
Adv.talkWithFacial("000002",nil,rDzL7SVO,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00020_VBalakrishnan")
Adv.talkWithFacial("000001",nil,bClTIa,[[Sa, ta, na, ma...]],"VC_ActivityAtGym_MC02_ADV_00021_RKayamori")
Adv.talkWithFacial("110001",nil,bClTIa,[[(Not clue what that's about, but I feel more at ease!)]],"VC_ActivityAtGym_MC02_ADV_00022_RKayamori",true)nsgji=nsgji+1 end
Domain.addSixSenseByActivity(SixSense.ACTIVITY_MENTAL,nsgji)elseif X8 ==1 then Layout.createStageSubCharaUp(A,true,10)Layout.show(nil,nil,
nil,1)
Adv.kayamoriTalk([[(I'm going to lift weights to get some super toned arms.)]],"VC_ActivityAtGym_MC02_ADV_00023_RKayamori")
Adv.kayamoriTalk([[(Breathing is always important for these kinds of things.)]],"VC_ActivityAtGym_MC02_ADV_00024_RKayamori")
Adv.kayamoriTalk([[(Inhale...exhale. Inhaaale...exhale.)]],"VC_ActivityAtGym_MC02_ADV_00025_RKayamori")
Adv.kayamoriTalk([[(Whoo, my arms are bulging! This is working great!)]],"VC_ActivityAtGym_MC02_ADV_00026_RKayamori")
Adv.kayamoriTalk([[(I wonder what happens if I try it while holding my breath?)]],"VC_ActivityAtGym_MC02_ADV_00027_RKayamori")
Adv.kayamoriTalk([[(Oh god...the veins in my head feel like they're gonna burst. Yeah, let's go back to breathing normally.)]],"VC_ActivityAtGym_MC02_ADV_00028_RKayamori")
Domain.addSixSenseByActivity(SixSense.ACTIVITY_MENTAL,nsgji)elseif X8 ==2 then
Adv.kayamoriTalk([[(It's a bikey-thingy.)]],"VC_ActivityAtGym_MC02_ADV_00029_RKayamori")
Adv.kayamoriTalk([[(Depending on the course you're running, the scenery on the monitor changes. That's fancy.)]],"VC_ActivityAtGym_MC02_ADV_00030_RKayamori")
Adv.kayamoriTalk([[(There's a lot of different scenes, including backgrounds along the river side, or even in a town.)]],"VC_ActivityAtGym_MC02_ADV_00031_RKayamori")Layout.createStageSubCharaUp(A,true,10)
Layout.show(nil,nil,nil,1)local AtYtR=Sound.playENV("AS_aerobike")
local ND2BCh3=Adv.bubbleSeActNoWait([[*swish* *swish*]],Vec(200,200),"Talk",BubbleActMode.Vertical,"default",
nil,0.9)Wait(1)Adv.hide(ND2BCh3,1)
Adv.kayamoriTalk([[(Oh man, this sure takes me back...these are all images of a world before the Cancer attacked.)]],"VC_ActivityAtGym_MC02_ADV_00033_RKayamori")
local ND2BCh3=Adv.bubbleSeActNoWait([[*swish* *swish*]],Vec(-200,-200),"Talk",BubbleActMode.Vertical,"default",nil,0.9)Wait(1)Adv.hide(ND2BCh3,1)
Adv.kayamoriTalk([[(This is...kind of emotional...I've never had such an emotional exercise...)]],"VC_ActivityAtGym_MC02_ADV_00035_RKayamori")Sound.stop(AtYtR)
Domain.addSixSenseByActivity(SixSense.ACTIVITY_MENTAL,nsgji)end;Transition.start()
Layout.createStageZoomOut(A,nil,10)Layout.show({bClTIa,"1100"})Wait(1.5)
Transition.finish()
Adv.talkWithFacial(nil,nil,bClTIa,[[Whew, I worked up a good sweat!]],"VC_ActivityAtGym_MC02_ADV_00036_RKayamori")
Adv.talkWithFacial("1102",nil,bClTIa,[[(I should probably head back now.)]],"VC_ActivityAtGym_MC02_ADV_00037_RKayamori",true)Transition.start()end