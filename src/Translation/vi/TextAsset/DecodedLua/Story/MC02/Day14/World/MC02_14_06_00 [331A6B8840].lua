local nsgji="Event"..WorldLabel()
local bClTIa=GetFlag("MC02_14_00_00で話しかけたフラグ")function preload()
EventScene("MainStreet","Assets/Lua/Story/MC02/Day14/World/MC02_14_06_00_MainStreet.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0019",1,2)
SetPeriodText("Train at the arena!")ShowMapDestinationIcon("ArenaGate")
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("BlockerLeft","CafeteriaPointLeft",[[If I don't hurry up, the commander's gonna get mad again!]],"VC_MC02_14_06_00_World_00000_RKayamori")
Field.returnToWayPoint("BlockerRight","StairsOverPoint",[[Imagine if I didn't show up at training...I'd be in hot water!]],"VC_MC02_14_06_00_World_00001_RKayamori")local rDzL7SVO=GetWorldEventStep(nsgji)
if rDzL7SVO==0 then
if bClTIa==1 then
StartEvent_NextWorldEventStep(nsgji,StartWorldWithYIzumi)elseif bClTIa==2 then
StartEvent_NextWorldEventStep(nsgji,StartWorldWithTTojo)elseif bClTIa==3 then
StartEvent_NextWorldEventStep(nsgji,StartWorldWithKAsakura)elseif bClTIa==4 then
StartEvent_NextWorldEventStep(nsgji,StartWorldWithMAikawa)elseif bClTIa==5 then
StartEvent_NextWorldEventStep(nsgji,StartWorldWithTKunimi)else StartEvent_NextWorldEventStep(nsgji,StartWorld)end elseif rDzL7SVO==1 then
if bClTIa==1 then Field.createFollower("YIzumi")
StartEventNoLock(GayaTalkWithYIzumi)elseif bClTIa==2 then Field.createFollower("TTojo")
StartEventNoLock(GayaTalkWithTTojo)elseif bClTIa==3 then Field.createFollower("KAsakura")
StartEventNoLock(GayaTalkWithKAsakura)elseif bClTIa==4 then Field.createFollower("MAikawa")
StartEventNoLock(GayaTalkWithMAikawa)elseif bClTIa==5 then Field.createFollower("TKunimi")
StartEventNoLock(GayaTalkWithTKunimi)end
Routine(function()Wait(1)Transition.finish()end)
TouchEvent("ArenaGate",function()Exit_FinishWorld()end)end end
function StartWorld()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.changeAnimation("Player","FieldIdleAction")
Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",
nil)
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",nil)
Adv.kayamoriTalk([[I guess I should hurry up and head there...]],"VC_MC02_14_06_00_World_00004_RKayamori",nil)Field.finishEvent()end
function StartWorldWithYIzumi()EmptyEvent("YIzumi")
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",
nil)Field.waitTaskKey("Player")
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",
nil)Field.moveOnRoute("Player","CafeteriaPointRight")
Adv.kayamoriTalk([[I guess I should hurry up and...oh!]],"VC_MC02_14_06_00_World_00007_RKayamori",
nil)Field.waitTaskKey("Player")
local BW0WFP=Adv.characterAsync("RKayamori","Default")local X8=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Layout.show({BW0WFP,"110301"},{X8,"000003"})
Adv.talkWithFacial("110301",nil,BW0WFP,[[Yukkie! You waited for me.]],"VC_MC02_14_06_00_World_00008_RKayamori")
Adv.talkWithFacial("0001",nil,X8,[[Nah, I was just stopping to feel the wind for a bit.]],"VC_MC02_14_06_00_World_00009_YIzumi")
Adv.talkWithFacial("170302",nil,BW0WFP,[[Awww, you just dashed all my hopes to the ground...]],"VC_MC02_14_06_00_World_00010_RKayamori")
Adv.talkWithFacial("000001",nil,X8,[[What? Would you have been happy if I was waiting for you?]],"VC_MC02_14_06_00_World_00011_YIzumi")
Adv.talkWithFacial("0100",nil,BW0WFP,[[I'd have been super happy!]],"VC_MC02_14_06_00_World_00012_RKayamori")
Adv.talkWithFacial("1400",nil,X8,[[Hah. It's not like you're a guy.]],"VC_MC02_14_06_00_World_00013_YIzumi")
Adv.talkWithFacial("110302",nil,BW0WFP,[[You're more manly than me, Yukkie.]],"VC_MC02_14_06_00_World_00014_RKayamori")
Adv.talkWithFacial("1301",nil,X8,[[Wow, rude. If anything, <i>you</i> are the complete enigma. I totally thought you were some kind of classy beauty before I actually met you.]],"VC_MC02_14_06_00_World_00015_YIzumi")
Adv.talkWithFacial("000301",nil,BW0WFP,[[That's probably because of my recording company's PR strategy.]],"VC_MC02_14_06_00_World_00016_RKayamori")
Adv.talkWithFacial("130103",nil,X8,[[Yeah, and I completely bought into that and got tricked into listening to your music.]],"VC_MC02_14_06_00_World_00017_YIzumi")
Adv.talkWithFacial("040001",nil,BW0WFP,[[The songs aren't to blame, though.]],"VC_MC02_14_06_00_World_00018_RKayamori")
Adv.talkWithFacial("0001",nil,X8,[[You're not responsible for it either, so don't sweat it.]],"VC_MC02_14_06_00_World_00019_YIzumi")
Adv.talkWithFacial("110301",nil,BW0WFP,[[That's good to hear!]],"VC_MC02_14_06_00_World_00020_RKayamori")Transition.start()end)Wait(1)Field.resetPosition("CafeteriaPointRight")end
function StartWorldWithTTojo()EmptyEvent("TTojo")
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",
nil)Field.waitTaskKey("Player")
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",
nil)Field.moveOnRoute("Player","CafeteriaPointRight")
Adv.kayamoriTalk([[I guess I should hurry up and...oh!]],"VC_MC02_14_06_00_World_00007_RKayamori",
nil)Field.waitTaskKey("Player")
local JQT=Adv.characterAsync("RKayamori","Default")local AtYtR=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Layout.show({JQT,"0803"},{AtYtR,"000101"})
Adv.talkWithFacial(nil,nil,JQT,[[Tsukassie! Were you waiting for me?]],"VC_MC02_14_06_00_World_00023_RKayamori")
Adv.talkWithFacial(nil,nil,AtYtR,[[Yes. Just sort of felt like it.]],"VC_MC02_14_06_00_World_00024_TTojo")
Adv.talkWithFacial("1103",nil,JQT,[[I'm so happy, though! You're the only one who stuck behind while everyone else went ahead!]],"VC_MC02_14_06_00_World_00025_RKayamori")
Adv.talkWithFacial("1101",nil,AtYtR,[[That's probably a sign that everyone trusts you.]],"VC_MC02_14_06_00_World_00026_TTojo")
Adv.talkWithFacial("0703",nil,JQT,[[Nah, no waaay.]],"VC_MC02_14_06_00_World_00027_RKayamori")
Adv.talkWithFacial("040002",nil,JQT,[[Maybe I'll just play hooky and go watch a movie instead.]],"VC_MC02_14_06_00_World_00028_RKayamori")
Adv.talkWithFacial("000101",nil,AtYtR,[[Can you really do that?]],"VC_MC02_14_06_00_World_00029_TTojo")
Adv.talkWithFacial("0703",nil,JQT,[[Nope...]],"VC_MC02_14_06_00_World_00030_RKayamori")
Adv.talkWithFacial("110101",nil,AtYtR,[[See? Everyone understands that about you very well.]],"VC_MC02_14_06_00_World_00031_TTojo")
Adv.talkWithFacial("1603",nil,JQT,[[Oh no...that's a lot of pressure... Like standing at the edge of a super crowded train platform...]],"VC_MC02_14_06_00_World_00032_RKayamori")
Adv.talkWithFacial("000101",nil,AtYtR,[[We don't have functional trains anymore, though.]],"VC_MC02_14_06_00_World_00033_TTojo")
Adv.talkWithFacial("110301",nil,JQT,[[Anyways, I'll work hard today!]],"VC_MC02_14_06_00_World_00034_RKayamori")
Adv.talkWithFacial("090003",nil,AtYtR,[[I'm looking forward to it.]],"VC_MC02_14_06_00_World_00035_TTojo")Transition.start()end)Wait(1)Field.resetPosition("CafeteriaPointRight")end
function StartWorldWithKAsakura()EmptyEvent("KAsakura")
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",
nil)Field.waitTaskKey("Player")
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",
nil)Field.moveOnRoute("Player","CafeteriaPointRight")
Adv.kayamoriTalk([[I guess I should hurry up and...oh!]],"VC_MC02_14_06_00_World_00007_RKayamori",
nil)Field.waitTaskKey("Player")
local ND2BCh3=Adv.characterAsync("RKayamori","Default")local IODBg=Adv.characterAsync("KAsakura","Default")
local YRDu=Adv.characterAsync("Karen","Default")
local CWRiP=Adv.loadCutIn("RKayamori","Default","Superiority")local LB0A=Adv.loadCutIn("Karen","Default","Anger")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Layout.show({ND2BCh3,"110301"},{IODBg,"000101"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Hey, Karerin. Were you waiting for me?]],"VC_MC02_14_06_00_World_00038_RKayamori")
Adv.talkWithFacial("000102",nil,IODBg,[[Yes, just thought I should.]],"VC_MC02_14_06_00_World_00039_KAsakura")
Adv.talkWithFacial("070002",nil,ND2BCh3,[[Oh gosh... Am I about to get a confession of love?]],"VC_MC02_14_06_00_World_00040_RKayamori")
Adv.talkWithFacial("070002",nil,IODBg,[[......]],"VC_MC02_14_06_00_World_00041_KAsakura")
Layout.show({ND2BCh3,"090301"},{YRDu,"0901"},nil,0)
Adv.showCutIn(CWRiP,[[YOU'RE KARRIE!!!]],"VC_MC02_14_06_00_World_00043_RKayamori",2.5,-450,false,TalkVoiceType.Bubble)
Adv.showCutIn(LB0A,[[IIIT'S KARRIE!!!]],"VC_MC02_14_06_00_World_00042_Karen",2.5,450,false,TalkVoiceType.Bubble)Wait(2.5)Adv.act(ND2BCh3,"110301")
Adv.talkWithFacial("060002",nil,YRDu,[[Hmph, we ended up synchronizing... Not bad...]],"VC_MC02_14_06_00_World_00044_Karen")
Adv.talkWithFacial("1103",nil,ND2BCh3,[[Yeah, I felt it was coming this time.]],"VC_MC02_14_06_00_World_00045_RKayamori")
Adv.talkWithFacial("090102",nil,YRDu,[[AND YOU WERE CORRECT!!! I'll give Asakura back now.]],"VC_MC02_14_06_00_World_00046_Karen")Sound.play("AS_Rubbing_Clothes")Wait(1)
Layout.show({ND2BCh3,"110301"},{IODBg,"000101"})
Adv.talkWithFacial(nil,nil,IODBg,[[Phew... Sorry for the wait.]],"VC_MC02_14_06_00_World_00047_KAsakura")
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Yup, let's go!]],"VC_MC02_14_06_00_World_00048_RKayamori")
Adv.talkWithFacial("0001",nil,IODBg,[[Yeah?]],"VC_MC02_14_06_00_World_00049_KAsakura")Transition.start()end)Wait(1)Field.resetPosition("CafeteriaPointRight")end
function StartWorldWithMAikawa()EmptyEvent("MAikawa")
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Field.changeAnimation("Player","FieldIdleAction")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",
nil)Field.waitTaskKey("Player")
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",
nil)Field.moveOnRoute("Player","CafeteriaPointRight")
Adv.kayamoriTalk([[I guess I should hurry up and...oh!]],"VC_MC02_14_06_00_World_00007_RKayamori",
nil)Field.waitTaskKey("Player")
local dl=Adv.characterAsync("RKayamori","Default")local sKPjQkdn=Adv.characterAsync("MAikawa","Default")
Field.startTalk("MAikawa",FaceToFaceMode.Auto,function()
Layout.show({dl,"110301"},{sKPjQkdn,"000101"})Adv.moveLayer(dl,"CharacterUp")
Adv.talkWithFacial("110301",nil,dl,[[Yo, Megumin. Were ya waiting?]],"VC_MC02_14_06_00_World_00052_RKayamori")
Adv.talkWithFacial("000101",nil,sKPjQkdn,[[Waitin' for who?]],"VC_MC02_14_06_00_World_00053_MAikawa")
Adv.talkWithFacial("1103",nil,dl,[[Me.]],"VC_MC02_14_06_00_World_00054_RKayamori")
Adv.talkWithFacial("0300",nil,sKPjQkdn,[[Don't be dumb. Why would I be waitin' for you?]],"VC_MC02_14_06_00_World_00055_MAikawa")
Adv.talkWithFacial("070301",nil,dl,[[Because...I'm the savior.]],"VC_MC02_14_06_00_World_00056_RKayamori")
Adv.talkWithFacial("0301",nil,sKPjQkdn,[[I'M the savior, ya moron! You've never even said that before! Why're ya doin' it now?!]],"VC_MC02_14_06_00_World_00057_MAikawa")
Adv.talkWithFacial("110301",nil,dl,[[Nice, you're more cheery now.]],"VC_MC02_14_06_00_World_00058_RKayamori")
Adv.act(sKPjQkdn,"0300",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[I'm always cheery!]],"VC_MC02_14_06_00_World_00059_MAikawa")
Adv.talkWithFacial("0400",nil,dl,[[I thought you looked a little bit down, but maybe I was imagining things.]],"VC_MC02_14_06_00_World_00060_RKayamori")
Adv.talkWithFacial("070101",nil,sKPjQkdn,[[Don't worry. As long as yer alive, I ain't going down anytime soon.]],"VC_MC02_14_06_00_World_00061_MAikawa")
Adv.talkWithFacial("110301",nil,dl,[[Awesome, that's exactly what we need as squadmates!]],"VC_MC02_14_06_00_World_00062_RKayamori")
Adv.talkWithFacial("030103",nil,sKPjQkdn,[[I mean it as yer rival! Don't forget that we're rivals!]],"VC_MC02_14_06_00_World_00063_MAikawa")
Adv.talkWithFacial("1100",nil,dl,[[Yeah, sure.]],"VC_MC02_14_06_00_World_00064_RKayamori")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Hey, don't brush it off that lightly!]],"VC_MC02_14_06_00_World_00065_MAikawa")Transition.start()end)Wait(1)Field.resetPosition("CafeteriaPointRight")end
function StartWorldWithTKunimi()EmptyEvent("TKunimi")
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))
Field.changeAnimationWait("Player","FieldIdleAction")
Adv.kayamoriTalk([[Whew, that was a lot to eat!]],"VC_MC02_14_06_00_World_00002_RKayamori",nil)Field.waitTaskKey("Player")
Adv.kayamoriTalk([[Hm? Did everyone go ahead without me?]],"VC_MC02_14_06_00_World_00003_RKayamori",
nil)Field.moveOnRoute("Player","CafeteriaPointRight")
Adv.kayamoriTalk([[I guess I should hurry up and...oh!]],"VC_MC02_14_06_00_World_00007_RKayamori",
nil)Field.waitTaskKey("Player")
local HHH9IlJp=Adv.characterAsync("RKayamori","Default")local uYz2ryy4=Adv.characterAsync("TKunimi","Default")
Field.startTalk("TKunimi",FaceToFaceMode.Auto,function()
Layout.show({HHH9IlJp,"110301"},{uYz2ryy4,"0001"})
Adv.talkWithFacial("110301",nil,HHH9IlJp,[[Cappy! Were you waiting for me?]],"VC_MC02_14_06_00_World_00068_RKayamori")
Adv.talkWithFacial("110102",nil,uYz2ryy4,[[Alrighty!]],"VC_MC02_14_06_00_World_00069_TKunimi")
Adv.talkWithFacial("110001",nil,HHH9IlJp,[[Aww, you're the only one who's that thoughtful. Everyone else just left me behind.]],"VC_MC02_14_06_00_World_00070_RKayamori")Adv.act(uYz2ryy4,"0801")
Adv.actDelay(1.5,uYz2ryy4,"110102")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[No, I think everyone trusts in you as our leader! If it wasn't you leading, I don't think the others would be following!]],"VC_MC02_14_06_00_World_00071_TKunimi")Adv.act(uYz2ryy4,"110102",nil,0)
Adv.talkWithFacial("040002",nil,HHH9IlJp,[[You think so? I'm not so sure...]],"VC_MC02_14_06_00_World_00072_RKayamori")
Adv.talkWithFacial("070102",nil,uYz2ryy4,[[Yes, definitely! Trust in me, I've led many people in battle, so I've got an eye for these things!]],"VC_MC02_14_06_00_World_00073_TKunimi")
Adv.talkWithFacial("000302",nil,HHH9IlJp,[[But you know...I've never even been in the "Top 10 Celebs to Have as a Boss" ranking...]],"VC_MC02_14_06_00_World_00074_RKayamori")
Adv.talkWithFacial("060101",nil,uYz2ryy4,[[That's probably because you're still young!]],"VC_MC02_14_06_00_World_00075_TKunimi")
Adv.talkWithFacial("000201",nil,HHH9IlJp,[[True... I was only active for a year.]],"VC_MC02_14_06_00_World_00076_RKayamori")
Adv.talkWithFacial("110102",nil,uYz2ryy4,[[Yes! If you had continued your music career for a little longer, you'd surely have been on that list!]],"VC_MC02_14_06_00_World_00077_TKunimi")
Adv.talkWithFacial("110301",nil,HHH9IlJp,[[Alright! I'm feeling super motivated now! I'll give it my all today!]],"VC_MC02_14_06_00_World_00078_RKayamori")
Adv.talkWithFacial("110102",nil,uYz2ryy4,[[That's the spirit!]],"VC_MC02_14_06_00_World_00079_TKunimi")Transition.start()end)Wait(1)Field.resetPosition("CafeteriaPointRight")end
function GayaTalkWithYIzumi()Wait(5)
Field.talkByGayaBalloon("Follower/YIzumi",[[We're entering the final stages of training now.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00080_YIzumi")
Field.talkByGayaBalloon("Follower/YIzumi",[[The commander's strict as usual, but...]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00081_YIzumi")
Field.talkByGayaBalloon("Follower/YIzumi",[[Well, we have to do what we can.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00082_YIzumi")end
function GayaTalkWithKAsakura()Wait(5)
Field.talkByGayaBalloon("Follower/KAsakura",[[We're really entering the final stages of training now.]],2,nil,nil,
nil,"VC_MC02_14_06_00_World_00083_KAsakura")
Field.talkByGayaBalloon("Follower/KAsakura",[[If it was just me, I think I would have given up in the middle of it.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00084_KAsakura")
Field.talkByGayaBalloon("Follower/KAsakura",[[But I can keep going because everyone's with me.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00085_KAsakura")end
function GayaTalkWithTTojo()Wait(5)
Field.talkByGayaBalloon("Follower/TTojo",[[We're really entering the final stages of training now.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00086_TTojo")
Field.talkByGayaBalloon("Follower/TTojo",[[As the head of strategy for the squad, I'll make sure to the lead us to victory.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00087_TTojo")Wait(1.5)
Field.talkByGayaBalloon("Follower/TTojo",[[Um...by the way...what's today's training about?]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00088_TTojo")end
function GayaTalkWithMAikawa()Wait(5)
Field.talkByGayaBalloon("Follower/MAikawa",[[The training's wrappin' up soon, huh.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00089_MAikawa")
Field.talkByGayaBalloon("Follower/MAikawa",[[31-B seems to be havin' some squabbles, but...]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00090_MAikawa")
Field.talkByGayaBalloon("Follower/MAikawa",[[We just gotta focus on doin' our best.]],2,nil,nil,nil,"VC_MC02_14_06_00_World_00091_MAikawa")end
function GayaTalkWithTKunimi()Wait(5)
Field.talkByGayaBalloon("Follower/TKunimi",[[The training is entering the final stages now!]],2,nil,1.5,nil,"VC_MC02_14_06_00_World_00092_TKunimi")
Field.talkByGayaBalloon("Follower/TKunimi",[[It's been some very hectic days, but don't worry!]],2,nil,1.5,nil,"VC_MC02_14_06_00_World_00093_TKunimi")
Field.talkByGayaBalloon("Follower/TKunimi",[[Leave it all to me, your trusty former captain!]],2,nil,1.5,nil,"VC_MC02_14_06_00_World_00094_TKunimi")end;function Exit_FinishWorld()
Field.goToArena(function()Exit_World()end)end