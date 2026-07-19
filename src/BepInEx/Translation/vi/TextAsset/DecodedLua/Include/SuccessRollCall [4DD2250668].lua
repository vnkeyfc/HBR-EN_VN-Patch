
function SuccessRollCall(A,w0qyLbH,nsgji,bClTIa)
local rDzL7SVO=Adv.loadBG("Background/Dormitory1FHallway/Dormitory1FHallway_Noon")local w0qyLbH=Adv.character("RKayamori")
local nsgji=Adv.character("YIzumi")local bClTIa=Adv.character("NNanase")local BW0WFP=1.25;local X8=BW0WFP+0.1
local JQT=0
if A=="MC01_03_00_00"then SetFlag("点呼MC01_03_00_00",1)elseif
A=="MC01_10_01_00"then SetFlag("点呼MC01_10_01_00",1)elseif A=="MC02_03_00_00"then
SetFlag("点呼MC02_03_00_00",1)elseif A=="MC02_08_00_00"then SetFlag("点呼MC02_08_00_00",1)elseif
A=="MC02_10_00_00"then SetFlag("点呼MC02_10_00_00",1)elseif A=="MC02_12_00_00"then
SetFlag("点呼MC02_12_00_00",1)elseif A=="MC02_17_00_00"then SetFlag("点呼MC02_17_00_00",1)elseif
A=="MC03_05_00_00"then SetFlag("点呼MC03_05_00_00",1)elseif A=="MC04_05_00_00"then
SetFlag("点呼MC04_05_00_00",1)elseif A=="MC04_06_00_00"then SetFlag("点呼MC04_06_00_00",1)elseif
A=="MC04_08_00_00"then SetFlag("点呼MC04_08_00_00",1)elseif A=="MC04_10_00_00"then
SetFlag("点呼MC04_10_00_00",1)elseif A=="MC05A_03_01_00"then SetFlag("点呼MC05A_03_01_00",1)elseif
A=="MC05A_07_01_00"then SetFlag("点呼MC05A_07_01_00",1)elseif A=="MC05B2_08_01_00"then
SetFlag("点呼MC05B2_08_01_00",1)end
JQT=












GetFlag("点呼MC01_03_00_00")+GetFlag("点呼MC01_10_01_00")+GetFlag("点呼MC02_03_00_00")+GetFlag("点呼MC02_08_00_00")+GetFlag("点呼MC02_10_00_00")+GetFlag("点呼MC02_12_00_00")+GetFlag("点呼MC02_17_00_00")+GetFlag("点呼MC03_05_00_00")+GetFlag("点呼MC04_05_00_00")+GetFlag("点呼MC04_06_00_00")+GetFlag("点呼MC04_08_00_00")+GetFlag("点呼MC04_10_00_00")+GetFlag("点呼MC05A_03_01_00")+GetFlag("点呼MC05A_07_01_00")+GetFlag("点呼MC05B2_08_01_00")
if JQT==1 or A=="MC01_03_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Does it always rise for something as simple as this? This is getting nowhere...]],"VC_Tenko_00000_YIzumi")elseif JQT==2 or A=="MC01_10_01_00"then
Adv.actEnum(nsgji,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Uh, yeah. This is something anybody should be able to do.]],"VC_Tenko_00001_YIzumi")elseif JQT==3 or A=="MC02_03_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[I'm starting to think this might be kind of a miracle.]],"VC_Tenko_00002_YIzumi")elseif JQT==4 or A=="MC02_08_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Wait, is it actually going up?]],"VC_Tenko_00003_YIzumi")elseif JQT==5 or A=="MC02_10_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[For some reason, there's a part of me that's hoping it's actually going up.]],"VC_Tenko_00004_YIzumi")elseif JQT==6 or A=="MC02_12_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Joy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Hey, stay confident! It might actually be going up!]],"VC_Tenko_00005_YIzumi")
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0)
Adv.talk(w0qyLbH,[[Uh, sure...]],"VC_Tenko_00006_RKayamori")elseif JQT==7 or A=="MC02_17_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Joy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Don't worry. It's probably going up.]],"VC_Tenko_00007_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...]],"VC_Tenko_00008_RKayamori")elseif JQT==8 or A=="MC03_05_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Maybe it's gone so far up that it won't rise any further...?]],"VC_Tenko_00009_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...?]],"VC_Tenko_00010_RKayamori")elseif JQT==9 or A=="MC04_05_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[There's no way it all went to waste, right...?]],"VC_Tenko_00011_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...?]],"VC_Tenko_00012_RKayamori")elseif JQT==10 or A=="MC04_06_00_00"then
Adv.actEnum(nsgji,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,nil})
Adv.talk(nsgji,[[Nanase...isn't she doing great?!]],"VC_MC04_02092_v001_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...?]],"VC_MC04_02093_v001_RKayamori")elseif JQT==11 or A=="MC04_08_00_00"then
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,"210201"})
Adv.talk(nsgji,[[Nanase...she's trying her best!]],"VC_MC04_02636_v001_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...?]],"VC_Tenko_00012_RKayamori")elseif JQT==12 or A=="MC04_10_00_00"then
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,"2002"})
Adv.talk(nsgji,[[Nanase...why, Nanase! Whyyy?!]],"VC_MC04_03161_v001_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...?]],"VC_Tenko_00012_RKayamori")elseif JQT==13 or A=="MC05A_03_01_00"then
local AtYtR=Sound.pushBGM("",1,1)
Layout.createStageFixBg(rDzL7SVO,Position.BG_CENTER)Layout.show({bClTIa,"0002"})
Adv.talk(bClTIa,[[My trust in you has certainly risen.]],"VC_MC05A_01172_v001_NNanase")Sound.playBGM("SB0130")
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,"560202"})
Adv.talk(nsgji,[[Finally!!! You finally, really did it, Ruka! After all your determined efforts, it's all been worth it!!!]],"VC_MC05A_01173_v001_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...]],"VC_MC05A_01174_v001_RKayamori")Sound.popBGM(AtYtR,1,1)elseif JQT==14 or A=="MC05A_07_01_00"then
Sound.playEmptyBGM(1)
Layout.createStageFixBg(rDzL7SVO,Position.BG_CENTER)Layout.show({bClTIa,"0002"})
Adv.talk(bClTIa,[[My trust in you has certainly risen.]],"VC_MC05A_00780_v002_NNanase")Sound.playBGM("SB0130")
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,"560202"})
Adv.talk(nsgji,[[Like a salmon swimming rapidly upstream, you've managed to actually raise her trust level!!! Now that's something to celebrate!!!]],"VC_MC05A_00781_v002_YIzumi")
Adv.actEnum(w0qyLbH,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02,0)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,nil})
Adv.talk(w0qyLbH,[[Uh, sure...]],"VC_MC05A_00782_v002_RKayamori")elseif JQT==15 or A=="MC05B2_08_01_00"then
local ND2BCh3=Sound.pushBGM("",1,1)
Layout.createStageFixBg(rDzL7SVO,Position.BG_CENTER)Layout.show({bClTIa,"080201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[On the contrary, I find that quite terrifying.]],"VC_MC05B_v002_00186_NNanase")Sound.playBGM("SB0034")
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show({nsgji,"030201"})
Adv.zoomShakeWithEffect(nsgji,rDzL7SVO,nil,function()
Adv.talkWithFacial(
nil,nil,nsgji,[[How could that be?! Nanaseeee!!!]],"VC_MC05B_v002_00187_YIzumi")end,nil,nil,nil,true)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,"1602"})
Adv.talkWithFacial(nil,nil,w0qyLbH,[[Calm down.]],"VC_MC05B_v002_00188_RKayamori")
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)
Adv.act(nsgji,"030202",AdvCharacterMouth.Mouth03)Layout.show({nsgji})
Adv.zoomShakeWithEffect(nsgji,rDzL7SVO,nil,function()
Adv.playCutIn("YIzumi","Default","Anger",[[Calm down? How the hell am I supposed to calm down?!\nYou're not exactly known for being sincere, you know!]],"VC_MC05B_v002_00189_YIzumi",
nil,0)end,
nil,nil,nil,true)
Layout.createStageFixBg(rDzL7SVO,Position.BG_RIGHT)Layout.show({w0qyLbH,"0802"})
Adv.talkWithFacial(nil,nil,w0qyLbH,[[Uh, sure...]],"VC_MC05B_v002_00190_RKayamori")Sound.popBGM(ND2BCh3,1,1)end end