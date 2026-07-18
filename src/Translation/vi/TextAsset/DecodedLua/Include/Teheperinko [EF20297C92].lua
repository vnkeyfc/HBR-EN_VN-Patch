
function Teheperinko(A,w0qyLbH,nsgji,bClTIa,rDzL7SVO,BW0WFP,X8)local JQT=1.25;local AtYtR=0
if A=="MC00_00_09_00"then
SetFlag("てへぺりんこMC00_00_09_00",1)elseif A=="MC00_00_09_06"then
SetFlag("てへぺりんこMC00_00_09_06",1)elseif A=="MC01_02_03_00"then
SetFlag("てへぺりんこMC01_02_03_00",1)elseif
A=="MC01_04_03_00"or A=="MC01_05_03_00"or A=="MC02_22_03_00"then
SetFlag("てへぺりんこ1章Day3Day4Day5_2章Day22",1)elseif A=="MC03"then SetFlag("てへぺりんこ3章",1)end
AtYtR=
GetFlag("てへぺりんこMC00_00_09_00")+
GetFlag("てへぺりんこMC00_00_09_06")+
GetFlag("てへぺりんこMC01_02_03_00")+
GetFlag("てへぺりんこ1章Day3Day4Day5_2章Day22")+GetFlag("てへぺりんこ3章")SetFlag("てへぺりんこした回数",AtYtR)
if

GetFlag("てへぺりんこした回数EX")>GetFlag("てへぺりんこした回数")then AtYtR=GetFlag("てへぺりんこした回数EX")end
if AtYtR==1 or A=="MC00_00_09_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[Gì vậy nè? Mốt mới chắc?]],"VC_MC01_02_03_00_Novel_00054_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0.3)
Adv.talk(w0qyLbH,[[Đâu có, đây là lần đầu tiên tớ thốt ra từ đó đấy.]],"VC_MC00_00_09_00_Novel_00057_RKayamori")elseif AtYtR==2 or A=="MC00_00_09_06"then
Adv.actEnum(nsgji,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[Bộ... cái từ đó thật sự đang là mốt à?]],"VC_MC01_02_03_00_Novel_00056_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0.3)
Adv.talk(w0qyLbH,[[Đây là lần thứ hai trong đời tớ nói từ đó đấy nhá.]],"VC_MC01_04_03_00_Novel_00016_RKayamori")elseif AtYtR==3 or A=="MC01_02_03_00"then
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[I'm already sick of hearing that. Cut it out already.]],"VC_MC01_02_03_00_Novel_00059_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Serious,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[But it's all the rage in Ruka Land. Who am I supposed to share the joy with, if not you?!]],"VC_MC01_02_03_00_Novel_00060_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[No one, that's who. Stop trying to make it happen.]],"VC_Teheperinko_00006_YIzumi")Adv.act(w0qyLbH,"1703")
Adv.talk(w0qyLbH,[[Whaaat.]],"VC_MC01_02_03_00_Novel_00075_RKayamori")elseif
AtYtR==4 or(A=="MC01_04_03_00"or A=="MC01_05_03_00"or
A=="MC02_22_03_00")then
Adv.actEnum(nsgji,AdvCharacterFace.Shout,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth03,AdvCharacterPose.Pose_01,0.3)
Adv.playCutIn("YIzumi","Default","Anger","My god, stop saying that!","VC_MC01_04_03_00_Novel_00027_YIzumi",3,400)
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[Why?]],"VC_MC01_04_03_00_Novel_00028_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Shout,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth03,AdvCharacterPose.Pose_01,0.3)Adv.actDelay(2.5,nsgji,"0301")
Adv.talk(nsgji,[[Didn't I say to stop trying to make it a thing?! So, stop!!!]],"VC_MC01_04_03_00_Novel_00029_YIzumi")
Adv.act(w0qyLbH,"070301",AdvCharacterMouth.Mouth01)Adv.actDelay(1.9,w0qyLbH,"0303")
Adv.actDelay(2.5,w0qyLbH,"0703")
Adv.talk(w0qyLbH,[[But if I don't whoopsie gravy every once in a while, my head's going to explode from stress! Like, literally KABOOM!]],"VC_MC01_04_03_00_Novel_00030_RKayamori")
Adv.act(nsgji,"030103",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[That's not going to happen! That's NEVER going to happen!]],"VC_MC01_04_03_00_Novel_00031_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Anger,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth03,AdvCharacterPose.Pose_01,0.3)
Adv.playCutIn("RKayamori","Default","Surprise","Whyyy not?!","VC_MC01_04_03_00_Novel_00032_RKayamori",2.5,-400)
Adv.talk(w0qyLbH,[[C'mon, I'm begging you! Just let me say it!]],"VC_MC01_04_03_00_Novel_00033_RKayamori")
Adv.talk(w0qyLbH,[[I'll only use it sometimes, I swear! It'll be as rare as a unicorn!]],"VC_MC01_04_03_00_Novel_00034_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)Adv.actDelay(3,nsgji,"0400")
Adv.talk(nsgji,[[Ugh, fine...only sometimes, you got that?]],"VC_MC01_04_03_00_Novel_00035_YIzumi")
Adv.act(w0qyLbH,"070001",AdvCharacterMouth.Mouth01)
Adv.talk(w0qyLbH,[[Yukkie!]],"VC_MC01_04_03_00_Novel_00040_RKayamori")Adv.act(w0qyLbH,"070301")
Adv.talk(w0qyLbH,[[You've earned all my love and devotion just now.]],"VC_MC01_04_03_00_Novel_00041_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[Don't go around handing out your love and devotion for something as stupid as this...]],"VC_MC01_04_03_00_Novel_00042_YIzumi")
SetLocalFlag("「それ二度と言うなーーーー！！」を通っていた場合",1)elseif AtYtR>=5 then
Adv.actEnum(nsgji,AdvCharacterFace.Shout,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[Also, didn't I say you can only use it sometimes?]],"VC_Teheperinko_00020_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[Yeah, this is that sometime. It's been a while since I said it, so my head was just about to explode. What a relief!]],"VC_Teheperinko_00021_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Shout,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.playCutIn("YIzumi","Default","Anger","Just let that head of yours explode, if you're so bent on that!!!","VC_Teheperinko_00022_YIzumi",3,400)
Adv.actEnum(w0qyLbH,AdvCharacterFace.Spoil,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[Why are you so angry all of a sudden?! Please, go back to the normal Yukkie I know and love!]],"VC_Teheperinko_00023_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[My "normal" is me being constantly annoyed and angry with you.]],"VC_Teheperinko_00024_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0.3)
Adv.talk(w0qyLbH,[[No way?! In that case, are you usually more lovey-dovey-Yukkie, or angry-Yukkie?!]],"VC_Teheperinko_00025_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[Angry. I've never been lovey-dovey.]],"VC_Teheperinko_00026_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[But what about that passionate night we spent together?!]],"VC_Teheperinko_00027_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Shout,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.playCutIn("YIzumi","Default","Anger","Don't go around\nmaking up weird stuff on your own!!","VC_Teheperinko_00028_YIzumi",3,400)
Adv.playCutIn("YIzumi","Default","Anger","Stop it right now\nbefore I get <i>seriously</i> angry!!","VC_Teheperinko_00029_YIzumi",3,400)
Adv.actEnum(w0qyLbH,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(w0qyLbH,[[Uwh...sniff...]],"VC_Teheperinko_00030_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Upset,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(nsgji,[[What? Do you think that if you cry, I'll let you whoopsie gravy yourself out of this?]],"VC_Teheperinko_00031_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(w0qyLbH,[[No, it's not about the gravy anymore...I just don't want you to hate me, Yukkie...that's all.]],"VC_Teheperinko_00032_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.Upset,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_01,0.3)
Adv.talk(nsgji,[[Ugh...look, I don't hate you or anything...]],"VC_Teheperinko_00033_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(w0qyLbH,[[Seriously?!]],"VC_Teheperinko_00034_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(nsgji,[[Why are you so happy about that...?]],"VC_Teheperinko_00035_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.LittleJoy,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)
Adv.talk(w0qyLbH,[[Because I love you sooo much, Yukkie!]],"VC_Teheperinko_00036_RKayamori")
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(nsgji,[[God, you're like a little kid...]],"VC_Teheperinko_00037_YIzumi")
Adv.actEnum(nsgji,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(nsgji,[[Whatever. Fine. I'll let it go for today.]],"VC_Teheperinko_00038_YIzumi")local ND2BCh3=true
Routine(function()Wait(1.2)
if ND2BCh3 then
Adv.actEnum(w0qyLbH,AdvCharacterFace.Special1,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)ND2BCh3=false;Adv.playLipSync(w0qyLbH,1)end end)
Adv.actEnum(w0qyLbH,AdvCharacterFace.LittleJoy,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(w0qyLbH,[[Really? You're gonna let me whoopsie? You're gonna let me gravy?! Alright, whoopsie gravy!]],"VC_Teheperinko_00039_RKayamori")ND2BCh3=false
Adv.actEnum(w0qyLbH,AdvCharacterFace.Special1,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0.3)Adv.hide(BW0WFP,0)
Adv.presetBG(BW0WFP,-370,0,JQT,0,0)Adv.preset(bClTIa,0,0,1)Adv.moveLayer(BW0WFP,"BG")
Adv.actEnum0(bClTIa,AdvCharacterFace.Anger,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(w0qyLbH,0.2)Adv.hide(nsgji,0.2)
Adv.show(BW0WFP,0.3)Adv.show(bClTIa,0.3)Wait(0.2)
Adv.playCutIn("STezuka","Default","Anger","ARE YOU A DUM-DUM?!","VC_Teheperinko_00040_STezuka",3)
Adv.actEnum0(nsgji,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(nsgji,-700,0,1)
Adv.moveBy(nsgji,Vec(350),0.5)Adv.moveBy(bClTIa,Vec(350),0.5)
Adv.moveBy(BW0WFP,Vec(200),0.5)Adv.show(nsgji,0.3)Wait(0.5)
Adv.actEnum0(bClTIa,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.talk(nsgji,[[Thank you, commander.]],"VC_Teheperinko_00041_YIzumi")
Adv.talk(bClTIa,[[You're welcome. Now, let's begin.]],"VC_Teheperinko_00042_STezuka")Adv.hide(bClTIa,0.2)end end