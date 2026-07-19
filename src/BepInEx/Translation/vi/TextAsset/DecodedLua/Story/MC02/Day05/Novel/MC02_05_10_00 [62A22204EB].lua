ROUTINE()Adv.shield()
local IODBg=Adv.loadBG("Background/31ARoom/31ARoom_Night")Adv.show(IODBg,0)local YRDu=Adv.character("RKayamori")
local CWRiP=Adv.character("YIzumi")local LB0A=Adv.character("TKunimi")
local dl=Adv.character("MAikawa")local sKPjQkdn=Adv.character("TTojo")
local HHH9IlJp=Adv.character("KAsakura")
local uYz2ryy4=Adv.loadImage("AdvParts/Common/RKayamoriBackward","CharacterForward",-550,-217,1,0)
Layout.createStagePan(IODBg,Position.BG_RIGHT,10)Sound.playBGM("SB0015",0,0)
Layout.show({YRDu,"150001"})Adv.novelInit()Wait(1)
Adv.talkWithFacial(nil,nil,YRDu,[[Whew, another exhausting day.]],"VC_MC02_05_10_00_Novel_00000_RKayamori")
Adv.talkWithFacial("000201",nil,YRDu,[[But we can't just sit around and do nothing.]],"VC_MC02_00367_v001_RKayamori")
if GetFlag("二章セパタクロー選んだ")==1 then
Layout.createStageFixBg(IODBg,Position.BG_CENTER)Layout.show({CWRiP,"010201"})
Adv.talkWithFacial(nil,nil,CWRiP,[[You wanted to practice Sepak Takraw, right? Have fun.]],"VC_MC02_05_10_00_Novel_00002_YIzumi")elseif GetFlag("二章パルクール選んだ")==1 then
Layout.createStageFixBg(IODBg,Position.BG_CENTER)Layout.show({CWRiP,"010201"})
Adv.talkWithFacial(nil,nil,CWRiP,[[You wanted to do some parkour, right? Have fun.]],"VC_MC02_05_10_00_Novel_00003_YIzumi")elseif GetFlag("二章騎馬戦選んだ")==1 then
Layout.createStageFixBg(IODBg,Position.BG_CENTER)Layout.show({CWRiP,"000201"})
Adv.talkWithFacial(nil,nil,CWRiP,[[You wanted to participate in cavalry fighting, right? Have fun.]],"VC_MC02_00368_v001_YIzumi")else
Layout.createStageFixBg(IODBg,Position.BG_CENTER)Layout.show({CWRiP,"000201"})
Adv.talkWithFacial(nil,nil,CWRiP,[[What, are you that worried about 31-B's leader?]],"VC_MC02_00369_v001_YIzumi")Layout.show({YRDu,"110301"},CWRiP)
Adv.act(CWRiP,"000101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,YRDu,[[Aww, Yukkie. You know me too well.]],"VC_MC02_00370_v001_RKayamori")
Layout.createStageFixBg(IODBg,Position.BG_LEFT)Layout.show({sKPjQkdn,"0702"},HHH9IlJp)
Adv.talkWithFacial(
nil,nil,sKPjQkdn,[[Their squad isn't exactly working together very well.]],"VC_MC02_00371_v001_TTojo")end
if
GetFlag("二章セパタクロー選んだ")==1 or
GetFlag("二章パルクール選んだ")==1 or
GetFlag("二章騎馬戦選んだ")==1 then Layout.show({YRDu,"070301"},CWRiP)
Adv.act(CWRiP,"000101",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial(nil,nil,YRDu,[[NOOO! Don't be ridiculous! I'm talking about Aoi! Aren't you worried about her, too?!]],"VC_MC02_00372_v001_RKayamori")
Adv.talkWithFacial("210101",nil,CWRiP,[[I actually played along with you for once, and you freak out on me like this? I'm having serious doubts about our relationship moving forward.]],"VC_MC02_05_10_00_Novel_00007_YIzumi")
Adv.talkWithFacial("110302",nil,YRDu,[[No, we're good. Still an unstoppable duo. What's there to worry about?]],"VC_MC02_05_10_00_Novel_00008_RKayamori")
Adv.talkWithFacial("040102",nil,CWRiP,[[The fact that you just freaked out on me.]],"VC_MC02_05_10_00_Novel_00009_YIzumi")
Adv.talkWithFacial("170301",nil,YRDu,[[You freak out on me all the time.]],"VC_MC02_05_10_00_Novel_00010_RKayamori")
Adv.talkWithFacial("040103",nil,CWRiP,[[I don't freak out for no good reason.]],"VC_MC02_05_10_00_Novel_00011_YIzumi")
Adv.talkWithFacial(nil,nil,YRDu,[[Me neither.]],"VC_MC02_05_10_00_Novel_00012_RKayamori")
Adv.talkWithFacial("130001",nil,CWRiP,[[There's a lot I could say to that, but it'd just be a waste of time... Let's just leave it at that.]],"VC_MC02_05_10_00_Novel_00013_YIzumi")
Adv.talkWithFacial("000002",nil,YRDu,[[Agreed. If this was a video game, players would skip this part.]],"VC_MC02_05_10_00_Novel_00014_RKayamori")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.8)
Layout.createStageZoomIn(IODBg,Position.BG_LEFT,0.3)Layout.show({LB0A,"110202"})
Adv.playCutIn("TKunimi","Default","Superiority","Not while I'm around!","VC_MC02_05_10_00_Novel_00015_TKunimi")
Layout.createStageFixBg(IODBg,Position.BG_RIGHT)Layout.show({YRDu,"0002"},CWRiP)
Adv.talkWithFacial("130201",nil,CWRiP,[[Where does that confidence come from?]],"VC_MC02_05_10_00_Novel_00016_YIzumi")
Layout.createStageFixBg(IODBg,Position.BG_CENTER)Layout.show({dl,"150201"})
Adv.talkWithFacial(nil,nil,dl,[[Can we focus here? We let you two start up one of these lame comedy routines and you just go on forever and ever.]],"VC_MC02_05_10_00_Novel_00017_MAikawa")
Layout.createStageFixBg(IODBg,Position.BG_RIGHT)
Adv.talkWithFacial("060201",nil,CWRiP,[[Damn, that one actually hurt...]],"VC_MC02_05_10_00_Novel_00018_YIzumi")
Layout.createStageFixBg(IODBg,Position.BG_LEFT)Layout.show(sKPjQkdn,{HHH9IlJp,"280202"})
Adv.talkWithFacial(
nil,nil,HHH9IlJp,[[I agree. 31-B is really at odds with each other. It's worrying.]],"VC_MC02_00373_v001_KAsakura")end
Adv.talkWithFacial(nil,nil,YRDu,[[This sounds like a job for Ruka.]],"VC_MC02_00374_v001_RKayamori")
Adv.talkWithFacial("0001",nil,CWRiP,[[What are you planning?]],"VC_MC02_00375_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[(I'll...)]],"VC_MC02_00376_v001_RKayamori",true)local zVPRGDnG=nil;local IKxw=nil
zVPRGDnG,IKxw=Adv.doubleQuestion([[]],[[Get the door to her heart;VC_MC02_00377_v001_RKayamori|Get the door to the bathroom;VC_MC02_00378_v001_RKayamori|Get the way of Whoopsie Gravy;VC_MC02_00379_v001_RKayamori]],[[opened;VC_MC02_00380_v001_RKayamori|broken down;VC_MC02_00381_v001_RKayamori|sealed off for eternity;VC_MC02_00382_v001_RKayamori]],
nil,0)
if zVPRGDnG==0 and IKxw==0 then
Adv.talkWithFacial("070301",nil,YRDu,[[I'll get the door to her heart opened.]],"VC_MC02_00383_v001_RKayamori")
Adv.talkWithFacial(nil,nil,YRDu,[[I've only talked to her once. Gotta work on winning her trust.]],"VC_MC02_00384_v001_RKayamori")
Adv.talkWithFacial("130003",nil,CWRiP,[[You really think it'll be that easy?]],"VC_MC02_00385_v001_YIzumi")
Layout.createStageFixBg(IODBg,Position.BG_LEFT)Layout.show({dl,"090002"})
Adv.talkWithFacial(nil,nil,dl,[[I got this. I'll give her a beatin' she won't forget.]],"VC_MC02_00386_v001_MAikawa")
Adv.talkWithFacial("060201",nil,CWRiP,[[We're not going to pick a fight with her.]],"VC_MC02_00387_v001_YIzumi")
Adv.talkWithFacial("130103",nil,CWRiP,[[Whoa, wait. I'm getting major déjà vu. Don't make me repeat myself like that.]],"VC_MC02_00388_v001_YIzumi")elseif zVPRGDnG==0 and IKxw==1 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the door to her heart broken down.]],"VC_MC02_00389_v001_RKayamori")
Adv.talkWithFacial("1301",nil,CWRiP,[[And leave her a broken shell of a human?]],"VC_MC02_00390_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[What? I just want to gain access to her heart of hearts.]],"VC_MC02_00391_v001_RKayamori")
Adv.talkWithFacial("2101",nil,CWRiP,[[Then just open it normally. Don't go in there and destroy things.]],"VC_MC02_00392_v001_YIzumi")Adv.act(YRDu,"090302",nil,0.2)
Adv.playCutIn("RKayamori","Default","Superiority",[[Niiice hackiiing!]],"VC_MC02_00393_v001_RKayamori",2.5,
-350,nil)
Adv.talkWithFacial("060003",nil,CWRiP,[[That wasn't hacking...]],"VC_MC02_00394_v001_YIzumi")elseif zVPRGDnG==0 and IKxw==2 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the door to her heart sealed off for eternity.]],"VC_MC02_00395_v001_RKayamori")
Adv.talkWithFacial("060103",nil,CWRiP,[[And make her a shut-in?]],"VC_MC02_00396_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[What? I just want to gain access to her heart of hearts.]],"VC_MC02_00391_v001_RKayamori")
Adv.talkWithFacial("2101",nil,CWRiP,[[Then don't seal it. <i>Open</i> it, or you'll end up further from accomplishing your goal.]],"VC_MC02_00398_v001_YIzumi")Adv.act(YRDu,"090302",nil,0.2)
Adv.playCutIn("RKayamori","Default","Superiority",[[Niiice hackiiing!]],"VC_MC02_00393_v001_RKayamori",2.5,
-350,nil)
Adv.talkWithFacial("130003",nil,CWRiP,[[That wasn't hacking...]],"VC_MC02_00394_v001_YIzumi")elseif zVPRGDnG==1 and IKxw==0 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the door to the bathroom opened.]],"VC_MC02_00401_v001_RKayamori")
Adv.talkWithFacial("0000",nil,CWRiP,[[You need to go? Then go.]],"VC_MC02_00402_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? No, I'm going to see if I can get Aoi to bare her heart to me.]],"VC_MC02_00403_v001_RKayamori")
Adv.talkWithFacial("0601",nil,CWRiP,[[You said something completely and utterly different from that, so you're aware.]],"VC_MC02_00404_v001_YIzumi")elseif zVPRGDnG==1 and IKxw==1 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the door to the bathroom broken down.]],"VC_MC02_00405_v001_RKayamori")
Adv.talkWithFacial("0401",nil,CWRiP,[[Please don't. Let's try to maintain some standard of decorum on base.]],"VC_MC02_00406_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? No, I'm going to see if I can get Aoi to bare her heart to me.]],"VC_MC02_00403_v001_RKayamori")
Adv.talkWithFacial("0601",nil,CWRiP,[[You said something completely and utterly different from that, so you're aware.]],"VC_MC02_00404_v001_YIzumi")elseif zVPRGDnG==1 and IKxw==2 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the door to the bathroom sealed off for eternity.]],"VC_MC02_00409_v001_RKayamori")
Adv.talkWithFacial("0601",nil,CWRiP,[[Please don't. Things would end up worse than unsanitary.]],"VC_MC02_00410_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? No, I'm going to see if I can get Aoi to bare her heart to me.]],"VC_MC02_00403_v001_RKayamori")
Adv.talkWithFacial("130003",nil,CWRiP,[[You said something completely and utterly different from that, so you're aware.]],"VC_MC02_00404_v001_YIzumi")elseif zVPRGDnG==2 and IKxw==0 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the way of Whoopsie Gravy opened.]],"VC_MC02_00413_v001_RKayamori")
Adv.talkWithFacial("0601",nil,CWRiP,[[We don't need you proselytizing that. Keep it closed.]],"VC_MC02_00414_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? No, I'm going to see if I can get Aoi to bare her heart to me.]],"VC_MC02_00403_v001_RKayamori")
Adv.talkWithFacial("130003",nil,CWRiP,[[You said something completely and utterly different from that, so you're aware.]],"VC_MC02_00404_v001_YIzumi")elseif zVPRGDnG==2 and IKxw==1 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the way of Whoopsie Gravy broken down.]],"VC_MC02_00417_v001_RKayamori")
Adv.talkWithFacial("010102",nil,CWRiP,[[Yes, please do!]],"VC_MC02_00418_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? I'm going to rebuild it afterwards. Just wanted a fresh start, you know?]],"VC_MC02_00419_v001_RKayamori")
Adv.talkWithFacial("030101",nil,CWRiP,[[I GOT EXCITED FOR NOTHING!]],"VC_MC02_00420_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[I'll ask Aoi how she's doing while I'm at it.]],"VC_MC02_00421_v001_RKayamori")
Adv.talkWithFacial("0601",nil,CWRiP,[[Just go, and don't come back.]],"VC_MC02_00422_v001_YIzumi")elseif zVPRGDnG==2 and IKxw==2 then
Adv.talkWithFacial(nil,nil,YRDu,[[I'll get the way of Whoopsie Gravy sealed off for eternity.]],"VC_MC02_00423_v001_RKayamori")Adv.actDelay(1,CWRiP,"0900")
Adv.talkWithFacial(nil,nil,CWRiP,[[FINALLY! THE MOMENT I'VE BEEN WAITING FOR!!! IT'S TOO GOOD TO BE TRUE!]],"VC_MC02_00424_v001_YIzumi")
Adv.actDelay(0,CWRiP,"0900",AdvCharacterMouth.Close)
Adv.talkWithFacial("0003",nil,YRDu,[[Huh? I'm going to open it up again afterwards. Just wanted a fresh start, you know?]],"VC_MC02_00425_v001_RKayamori")
Adv.talkWithFacial("030101",nil,CWRiP,[[I GOT EXCITED FOR NOTHING!]],"VC_MC02_00420_v001_YIzumi")
Adv.talkWithFacial("0003",nil,YRDu,[[I'll ask Aoi how she's doing while I'm at it.]],"VC_MC02_00421_v001_RKayamori")
Adv.talkWithFacial("060101",nil,CWRiP,[[Just go, and don't come back.]],"VC_MC02_00422_v001_YIzumi")end
Adv.talkWithFacial("110001",nil,YRDu,[[You can count on me. When it comes to dealing with sensitive topics, I'm a pro. I'm sure we can all agree.]],"VC_MC02_05_10_00_Novel_00032_RKayamori")
Adv.talkWithFacial("060102",nil,CWRiP,[[You're the most insensitive and capricious person here. Your misplaced self-confidence never ceases to amaze.]],"VC_MC02_05_10_00_Novel_00033_YIzumi")
Adv.act(sKPjQkdn,"1102",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("070203",nil,HHH9IlJp,[[Ruka, good luck!]],"VC_MC02_05_10_00_Novel_00034_KAsakura")
Adv.talkWithFacial("010001",nil,YRDu,[[Thanks! Have fun with the Uno game, girls!]],"VC_MC02_05_10_00_Novel_00035_RKayamori")Adv.swelling(YRDu,-100,0,1.1,0.5)
Adv.act(CWRiP,"130201",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial(nil,nil,CWRiP,[[When did we say we'd play Uno?]],"VC_MC02_05_10_00_Novel_00036_YIzumi")
Adv.talkWithFacial("130003",nil,CWRiP,[[Whatever... Sometimes I can't tell if she has a heart of gold, or if she's just plain stupid.]],"VC_MC02_05_10_00_Novel_00037_YIzumi")
Adv.act(YRDu,"090001",AdvCharacterMouth.Mouth01,0)Adv.appear(YRDu,100,0,1,0.5)
Routine(function()Wait(0.2)
Adv.act(CWRiP,"210101",AdvCharacterMouth.Mouth01,0.2)Adv.shakeXY(CWRiP,0.3,0.3,0.3)end)
Adv.talkWithFacial(nil,nil,YRDu,[[I'm just a busybody.]],"VC_MC02_05_10_00_Novel_00038_RKayamori")
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.5,350)
Adv.talkWithFacial("030102",nil,CWRiP,[[You're still here?! Any normal person would've left by now!]],"VC_MC02_05_10_00_Novel_00039_YIzumi")Exit_Novel()