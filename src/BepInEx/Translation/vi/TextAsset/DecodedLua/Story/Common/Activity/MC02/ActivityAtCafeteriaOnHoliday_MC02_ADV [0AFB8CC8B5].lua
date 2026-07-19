
function ActivityAtCafeteriaOnHoliday_MC02_ADV()local A
local w0qyLbH=Field.getActivitySixSensePoint()local nsgji=Adv.character("RKayamori")
local bClTIa=Adv.character("TKunimi")local rDzL7SVO
showBgDependsOnTime=function()local JQT=GetTimeFrame()
if JQT==TimeFrame.Noon then
A=Adv.loadBG("Background/Cafeteria/Cafeteria_Noon")
rDzL7SVO=Adv.loadImage("Still/MC00/Still_MC00_00_10_01_001","ForegroundStill",0,0,1,0,0)elseif JQT==TimeFrame.Evening then
A=Adv.loadBG("Background/Cafeteria/Cafeteria_Evening")
rDzL7SVO=Adv.loadImage("Still/MC00/Still_MC00_00_10_01_001","ForegroundStill",0,0,1,0,0)elseif JQT==TimeFrame.Night then
A=Adv.loadBG("Background/Cafeteria/Cafeteria_Night")
rDzL7SVO=Adv.loadImage("Still/MC00/Still_MC00_00_10_01_001","ForegroundStill",0,0,1,0,0)end end
showBgDependsOnTime("Background/Cafeteria/Cafeteria")Sound.playBGM("SB0022",1,1)
Layout.createStagePan(A,Position.BG_CENTER,10)Layout.show()Wait(2)Transition.finish()
local BW0WFP=math.random(100)if BW0WFP<=20 then
SetLocalFlag("ランダムイベント発生",1)end
Adv.kayamoriTalk([[(What should I order?)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00001_RKayamori")
local X8=Adv.question([[Order what?]],[[Hardtack|Knife-cut noodles|Mapo tofu]],0)
if X8 ==0 then
Adv.kayamoriTalk([[(Well, let's try some hardtack.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00002_RKayamori")
Adv.kayamoriTalk([[(Hardtack was originally an emergency ration, but...)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00003_RKayamori")Layout.createStageSubCharaUp(A,true,10)
Layout.show(nil,nil,nil,1)
Adv.kayamoriTalk([[*nom nom*]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00004_RKayamori")
Adv.kayamoriTalk([[(It's not too different from a regular biscuit, though it is super dry.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00005_RKayamori")
Adv.kayamoriTalk([[(But just eating it like this gets a bit boring...)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00006_RKayamori")
Adv.kayamoriTalk([[(It'd be nice if there was some margarine or jam to spread on it.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00007_RKayamori")
Adv.kayamoriTalk([[(...Wouldn't it be better to just eat bread, then?)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00008_RKayamori")
Adv.kayamoriTalk([[(Suddenly, I want some bread!)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00009_RKayamori")
Domain.addSixSenseByActivity(SixSense.ACTIVITY_NATURAL,w0qyLbH)elseif X8 ==1 then
Adv.kayamoriTalk([[(The knife-cut noodles are calling out to me!)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00010_RKayamori")Adv.showStill_Wait(rDzL7SVO,1,3,nil,Zoom.OUT)
Wait(1)
Adv.kayamoriTalk([[(I can't get enough of this chewy texture, mmm...)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00011_RKayamori")
Adv.kayamoriTalk([[(I could have so many seconds of this!)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00012_RKayamori")
Adv.kayamoriTalk([[(The chef's skills are amazing, too. The length and thickness of the cut noodles are really consistent.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00013_RKayamori")
Adv.kayamoriTalk([[(So this is what mastery is like. I wonder if I could do the same?)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00014_RKayamori")
if GetLocalFlag("ランダムイベント発生")==1 then
Layout.createStage(A)Layout.show({nsgji,"1100"})
Adv.hide(rDzL7SVO,1)Wait(1)Layout.show(nsgji,{bClTIa,"110101"})
Adv.act(nsgji,"0003",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,bClTIa,[[Hello, Ruka. Are you eating knife-cut noodles? I'll order one, too!]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00015_TKunimi")
Adv.talkWithFacial("110001",nil,nsgji,[[Nah, don't bother. I'LL make a bowl for you, Cappy.]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00016_RKayamori")
Adv.talkWithFacial("180103",nil,bClTIa,[[Really? You're going to cut the noodles?!]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00017_TKunimi")
Adv.talkWithFacial("090301",nil,nsgji,[[Yeah, I've always wanted to try it. The way they cut the noodles straight from a block of dough, all the same size, directly into the pot...]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00018_RKayamori")
Adv.talkWithFacial("090302",nil,nsgji,[[It's just so mesmerizing! I want to learn how to do it!!! Cappy, why don't you join me too?]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00019_RKayamori")
Adv.talkWithFacial("090002",nil,bClTIa,[[Sure! Let's do it!]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00020_TKunimi")
Adv.talkWithFacial("090301",nil,nsgji,[[That's what I thought! All right, let's go! We're going to be noodle cutting masters!]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00021_RKayamori")Transition.start()Wait(2)
Adv.act(nsgji,"020001",AdvCharacterMouth.Mouth01,0)
Adv.act(bClTIa,"220001",AdvCharacterMouth.Mouth01,0)Layout.createStageZoomOut(A)
Layout.show(nsgji,bClTIa)Transition.finish()Wait(1)
Adv.talkWithFacial("020002",nil,nsgji,[[...We got turned away.]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00022_RKayamori")
Adv.talkWithFacial("220003",nil,bClTIa,[[...and scolded.]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00023_TKunimi")w0qyLbH=w0qyLbH+1 end
Domain.addSixSenseByActivity(SixSense.ACTIVITY_NATURAL,w0qyLbH)elseif X8 ==2 then
Adv.kayamoriTalk([[(I'll go for a good ol' mapo tofu.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00024_RKayamori")Adv.showStill_Wait(rDzL7SVO,1,3,nil,Zoom.OUT)
Wait(1.5)
Adv.kayamoriTalk([[(Huh, it's spicier than I thought?!)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00025_RKayamori")
Adv.kayamoriTalk([[(For a moment there, I have a feeling I heard something, felt something...)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00026_RKayamori")
Adv.kayamoriTalk([[(It's trembling right now inside my chest!)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00027_RKayamori")
Adv.kayamoriTalk([[Hoo...]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00028_RKayamori")
Adv.kayamoriTalk([[(It's my body telling me how fortunate I was to be able to survive that...)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00029_RKayamori")
Domain.addSixSenseByActivity(SixSense.ACTIVITY_NATURAL,w0qyLbH)end;Transition.start()Adv.hide(rDzL7SVO)
Layout.createStageZoomOut(A,nil,10)Layout.show({nsgji,"110001"})Wait(1.5)
Transition.finish()
Adv.talkWithFacial(nil,nil,nsgji,[[Whew, I'm stuffed!]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00030_RKayamori")
Adv.talkWithFacial("1102",nil,nsgji,[[(Guess it's about time to head back.)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00031_RKayamori",true)Transition.start()end