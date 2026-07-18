
function ActivityAtTheaterBattle9_MC02_ADV()local A=Field.getActivitySixSensePoint()
local w0qyLbH=Adv.loadBG("Background/MovieTheater/MovieTheater","BG")local nsgji=Adv.character("RKayamori")
local bClTIa=Adv.character("Karen")Sound.playBGM("SB0020",1,1)
Layout.createStageZoomIn(w0qyLbH,Position.BG_CENTER,10)Layout.show()Transition.finish()Wait(1.5)
local rDzL7SVO=math.random(100)if rDzL7SVO<=20 then
SetLocalFlag("ランダムイベント発生",1)end
Adv.kayamoriTalk([[(Well, what should I watch?)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00001_RKayamori")
local BW0WFP=Adv.question([[What to watch?]],[[Sci-fi movie|Horror movie|Comedy movie]],0)
if BW0WFP==0 then
Adv.kayamoriTalk([[(Since our world is kind of sci-fi right now, I'll watch a sci-fi movie to expand my horizons.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00002_RKayamori")
Adv.kayamoriTalk([[(The movie that showing right now is...Inner-Stellar.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00003_RKayamori")
Adv.kayamoriTalk([[(It's an old classic about a introverted dad who goes to space to save Earth. I guess I'll watch it.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00004_RKayamori")Transition.start()Wait(2)
Layout.createStageZoomOut(w0qyLbH,nil,10)Layout.show({nsgji,"0202"})
Transition.finish()
Adv.talkWithFacial(nil,nil,nsgji,[[(Hopping dimensions and going back in time...it was kind of difficult to understand what was going on.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00005_RKayamori",true)
Adv.talkWithFacial("1100",nil,nsgji,[[(But the theme of family was really nice.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00006_RKayamori",true)
Adv.talkWithFacial("150002",nil,nsgji,[[(Still, sort of a hard movie to digest.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00007_RKayamori",true)
Adv.talkWithFacial("150202",nil,nsgji,[[(There was a lot of room for interpretation. I guess that's what made it a classic.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00008_RKayamori",true)
Domain.addSixSenseByActivity(SixSense.ACTIVITY_CRAZY,A)elseif BW0WFP==1 then
Adv.kayamoriTalk([[(I'll watch a horror movie, and build up an immunity to scary stuff.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00009_RKayamori")
Adv.kayamoriTalk([[(The movie showing right now is called The Ringing. It's the one where a ghost comes out of the TV. Let's give it a go!)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00010_RKayamori")Adv.fadeOut(1,true,"CharacterUp")Wait(2)
Adv.kayamoriTalk([[(Sammy is so creepy...! I know the plot, but it's still so scary! Also the theater's audio is super loud, and it's not helping.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00011_RKayamori")Layout.createStageZoomOut(w0qyLbH,nil,10)
Layout.show({nsgji,"090002"})Adv.fadeIn(1,true,"CharacterUp",nil,nil,1)Wait(1)
Adv.talkWithFacial("090002",
nil,nsgji,[[(But...I didn't get scared! Nope, not at all!)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00012_RKayamori",true)
Adv.talkWithFacial("090201",nil,nsgji,[[(I'm a part of the Seraph squadron...can't be spooked by things like this.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00013_RKayamori",true)
if GetLocalFlag("ランダムイベント発生")==1 then
local X8=Adv.fadeOutWithShield(1)Wait(1)Sound.playBGM(AdvBGM.Suspense2,0,0)
Adv.talkWithFacial(
nil,nil,bClTIa,[[However, this pride was what caught Ruka Kayamori off-guard. By the time she noticed the blade inching from behind, it was already too late...]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00014_Karen")Adv.hide(X8,1)
Adv.talkWithFacial("030202",nil,nsgji,[[Gyaahh! Th-this creepy narration...!]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00015_RKayamori")Sound.playBGM("SB0020",1,1)
Layout.show(nsgji,{bClTIa,"090103"})
Adv.act(nsgji,"030302",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,bClTIa,[[Eeeeeehehehehehee! IIIIIIIT'S KARRIE!!!]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00016_Karen")
Adv.talkWithFacial("090102",nil,bClTIa,[[Your expression was <i>priceless</i>!]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00017_Karen")
Adv.talkWithFacial("1603",nil,nsgji,[[When did you get behind me?]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00018_RKayamori")
Adv.talkWithFacial("090101",nil,bClTIa,[[I've been following you since before you entered the theater...]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00019_Karen")
Adv.talkWithFacial("030302",nil,nsgji,[[Seriously?! Then I should've picked a movie you'd enjoy instead of a horror movie!]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00020_RKayamori")
Adv.talkWithFacial("090102",nil,bClTIa,[[I had quite some fun, actually. I was dying trying to hold back my laughter.]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00021_Karen")
Adv.talkWithFacial("080301",nil,nsgji,[[I thought I was watching a horror movie...but was it actually a comedy from the perspective of a killer?]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00022_RKayamori")
Adv.talkWithFacial("090103",nil,bClTIa,[[No. It was the hilarity of watching from behind as you quivered in fear, trying so hard to contain your terror.]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00023_Karen")
Adv.talkWithFacial("030302",nil,nsgji,[[Heyyy, I'm the leader! Where's my dignity?!]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00024_RKayamori")A=A+1 end
Domain.addSixSenseByActivity(SixSense.ACTIVITY_CRAZY,A)
if GetLocalFlag("ランダムイベント発生")==1 then
Transition.start()Layout.createStageZoomOut(w0qyLbH,nil,10)
Layout.show({nsgji,"110201"})Wait(1.5)Transition.finish()end elseif BW0WFP==2 then
Adv.kayamoriTalk([[(I want something funny and easy to watch.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00025_RKayamori")
Adv.kayamoriTalk([[(The movie that's on right now is...Warlord Bustle?)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00026_RKayamori")
Adv.kayamoriTalk([[(A weird period movie about a bunch of warlords running nonstop to Edo.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00027_RKayamori")Adv.fadeOut(1,true,"CharacterUp")Wait(2)
Adv.kayamoriTalk([[......]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00028_RKayamori")Layout.createStageZoomOut(w0qyLbH,nil,10)
Layout.show({nsgji,"0200"})Adv.fadeIn(1,true,"CharacterUp")Wait(2)
Adv.talkWithFacial(nil,nil,nsgji,[[(This isn't a comedy at all! It's super intense!)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00029_RKayamori",true)
Adv.talkWithFacial("090201",nil,nsgji,[[(Plots and intrigues, murders and friendships, and love...man, this is packed with coolness!)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00030_RKayamori",true)
Adv.talkWithFacial("090001",nil,nsgji,[[(We need to like, put together a temp crew of katana-style Seraph users like this.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00031_RKayamori",true)
Adv.talkWithFacial("090202",nil,nsgji,[[(Then, we could do a high-speed Seraph Shuffle in the dungeons!)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00032_RKayamori",true)
Domain.addSixSenseByActivity(SixSense.ACTIVITY_CRAZY,A)end
Adv.talkWithFacial("110201",nil,nsgji,[[(Guess it's about time to head back.)]],"VC_ActivityAtTheaterBattle9_MC02_ADV_Battle_00033_RKayamori",true)Transition.start()end