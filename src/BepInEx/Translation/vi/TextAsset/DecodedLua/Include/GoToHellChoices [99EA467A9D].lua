local w0qyLbH=nil
function SetRireki(nsgji)local bClTIa=GetFlag("GotoHell履歴")local rDzL7SVO=0
if w0qyLbH then bClTIa=(
bClTIa*10)+nsgji+1;bClTIa=bClTIa%1000 else
if
bClTIa>=100 then rDzL7SVO=bClTIa%10 elseif bClTIa>=20 then rDzL7SVO=bClTIa-20 elseif bClTIa>=10 then
rDzL7SVO=bClTIa-10 else rDzL7SVO=bClTIa end;bClTIa=bClTIa-rDzL7SVO;bClTIa=bClTIa+nsgji+1 end;SetFlag("GotoHell履歴",bClTIa)end
function ResetRireki()SetFlag("GotoHell履歴",0)
SetFlag("GotoHell通過_11",0)SetFlag("GotoHell通過_12",0)
SetFlag("GotoHell通過_111",0)SetFlag("GotoHell通過_112",0)
SetFlag("GotoHell通過_121",0)SetFlag("GotoHell通過_122",0)
SetFlag("GotoHell通過_21",0)SetFlag("GotoHell通過_22",0)
SetFlag("GotoHell通過_211",0)SetFlag("GotoHell通過_212",0)
SetFlag("GotoHell通過_221",0)SetFlag("GotoHell通過_222",0)end
function GoToHellChoices(BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu,CWRiP)local LB0A=1.25;local dl=LB0A+0.1;local sKPjQkdn=nil;local HHH9IlJp=0
local uYz2ryy4=GetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ")
if BW0WFP=="MC01_01_03_01"then
SetFlag("GotoHell_選択肢三つ目カウンタMC01_01_03_01",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",1)elseif BW0WFP=="MC02_02_03_00"then
SetFlag("GotoHell_選択肢三つ目カウンタMC02_02_03_00",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",2)elseif BW0WFP=="MC02_13_06_02"then
SetFlag("GotoHell_選択肢三つ目カウンタMC02_13_06_02",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",3)elseif BW0WFP=="MC02_15_06_00"then
SetFlag("GotoHell_選択肢三つ目カウンタMC02_15_06_00",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",4)elseif BW0WFP=="MC03_02_08_02"then
SetFlag("GotoHell_選択肢三つ目カウンタMC03_02_08_02",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",5)elseif BW0WFP=="MC03_04_01_02"then
SetFlag("GotoHell_選択肢三つ目カウンタMC03_04_01_02",1)
SetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ",6)end
w0qyLbH=(uYz2ryy4 ~=
GetFlag("最後にGoToHell統合選択肢を呼んだ日付の記録フラグ"))
HHH9IlJp=


GetFlag("GotoHell_選択肢三つ目カウンタMC01_01_03_01")+
GetFlag("GotoHell_選択肢三つ目カウンタMC02_02_03_00")+
GetFlag("GotoHell_選択肢三つ目カウンタMC02_13_06_02")+GetFlag("GotoHell_選択肢三つ目カウンタMC02_15_06_00")+GetFlag("GotoHell_選択肢三つ目カウンタMC03_02_08_02")+GetFlag("GotoHell_選択肢三つ目カウンタMC03_04_01_02")
if HHH9IlJp==1 or BW0WFP=="MC01_01_03_01"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|Running to Horizon...]],1)elseif HHH9IlJp==2 or BW0WFP=="MC02_02_03_00"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|Fly me to the moon...]],1)elseif HHH9IlJp==3 or BW0WFP=="MC02_13_06_02"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|Dive into your body...]],1)elseif HHH9IlJp==4 or BW0WFP=="MC02_15_06_00"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|Ultra soul...]],1)elseif HHH9IlJp==5 or BW0WFP=="MC03_02_08_02"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|Ez Do Dance…]],1)elseif HHH9IlJp==6 or BW0WFP=="MC03_04_01_02"then
sKPjQkdn=Adv.question([[When that happens...]],[[Go to hell...|Go to heaven...|My Revolution…]],1)end
if sKPjQkdn==0 then SetRireki(sKPjQkdn)
Adv.act(X8,"070201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,"We go to hell...","VC_GoToHellChoices_00000_RKayamori")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(X8,0.2)Adv.show(YRDu,0.3)
Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"A certain death...","VC_GoToHellChoices_00001_KAsakura")Adv.hide(AtYtR,0.2)
if BW0WFP=="MC03_02_08_02"then
Adv.hide(IODBg,0)Adv.presetBG(IODBg,-370,0,LB0A,0,0)
Adv.preset(JQT,0,0,1)Adv.moveLayer(IODBg,"BG")
Adv.act(JQT,"130201",nil,0)Adv.show(IODBg,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,[[There's not going to be any dying, okay?]],"VC_MC03_00019_v002_YIzumi")Adv.hideAllCharacter(0.2)end elseif sKPjQkdn==1 then SetRireki(sKPjQkdn)
Adv.act(X8,"070201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,"We go to heaven.","VC_GoToHellChoices_00002_RKayamori")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(X8,0.2)Adv.show(YRDu,0.3)
Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"A certain death...","VC_GoToHellChoices_00003_KAsakura")Adv.hide(AtYtR,0.2)
if BW0WFP=="MC03_02_08_02"then
Adv.hide(IODBg,0)Adv.presetBG(IODBg,-370,0,LB0A,0,0)
Adv.preset(JQT,0,0,1)Adv.moveLayer(IODBg,"BG")
Adv.act(JQT,"130201",nil,0)Adv.show(IODBg,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,[[There's not going to be any dying, okay?]],"VC_MC03_00019_v002_YIzumi")Adv.hideAllCharacter(0.2)end elseif sKPjQkdn==2 then ResetRireki()
if
HHH9IlJp==1 or BW0WFP=="MC01_01_03_01"then Layout.leave(JQT)
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,nil,"GoToHellChoices_1")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"We running to horizon...","VC_GoToHellChoices_00004_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"What kind of situation are you imagining...?","VC_GoToHellChoices_00005_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"A certain death...","VC_GoToHellChoices_00006_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"We'd just be running toward the horizon. I wouldn't tie it directly to dying.","VC_GoToHellChoices_00007_YIzumi")Adv.hide(JQT,0.2)Adv.hide(AtYtR,0.2)elseif HHH9IlJp==2 or
BW0WFP=="MC02_02_03_00"then Layout.leave(JQT)
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,
nil,"GoToHellChoices_2")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"Fly me to the moon...","VC_GoToHellChoices_00008_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"What kind of situation are you imagining...?","VC_GoToHellChoices_00009_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Close,AdvCharacterPose.Pose_03)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"A certain death...","VC_GoToHellChoices_00010_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
if BW0WFP=="MC03_02_08_02"then
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"There's not going to be any dying, okay?","VC_MC03_00019_v002_YIzumi")Adv.hideAllCharacter(0.2)else
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"Well, if you fly straight out into space, you're definitely going to die.","VC_GoToHellChoices_00011_YIzumi")Adv.hideAllCharacter(0.2)end elseif HHH9IlJp==3 or BW0WFP=="MC02_13_06_02"then
Layout.leave(JQT)
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,nil,"GoToHellChoices_3")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"Dive into your body...","VC_GoToHellChoices_00012_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"What kind of situation are you imagining...?","VC_GoToHellChoices_00013_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"A certain death...","VC_GoToHellChoices_00014_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
if BW0WFP=="MC03_02_08_02"then
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"There's not going to be any dying, okay?","VC_MC03_00019_v002_YIzumi")Adv.hideAllCharacter(0.2)else
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"I mean, if you dive straight into somebody, you could in theory severely injure or kill them...","VC_GoToHellChoices_00015_YIzumi")Adv.hideAllCharacter(0.2)end elseif HHH9IlJp==4 or BW0WFP=="MC02_15_06_00"then
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,
nil,"GoToHellChoices_4")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"Ultra Soul...","VC_GoToHellChoices_00016_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.Upset,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_01)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"Huh?!","VC_GoToHellChoices_00017_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Joy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth03,AdvCharacterPose.Pose_03)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"Hai!","VC_GoToHellChoices_00018_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.Upset,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"Huh? What are you two even on about?","VC_GoToHellChoices_00019_YIzumi")
if BW0WFP=="MC03_02_08_02"then
Adv.actEnum(JQT,AdvCharacterFace.Nil,AdvCharacterEyes.Nil,AdvCharacterMouth.Mouth01,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"And nobody's dying here.","VC_GoToHellChoices_00024_YIzumi")end;Adv.hideAllCharacter(0.2)elseif
HHH9IlJp==5 or BW0WFP=="MC03_02_08_02"then
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,nil,"GoToHellChoices_5")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"Ez Do Dance...","VC_GoToHellChoices_00020_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.TightSmile,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_03)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"What?","VC_GoToHellChoices_00021_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"I'll watch over you as you die...","VC_GoToHellChoices_00022_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.Anger,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"Huh? Is this some kind of reference? Did you plan this together? When?!","VC_GoToHellChoices_00023_YIzumi")
Adv.actEnum(JQT,AdvCharacterFace.Nil,AdvCharacterEyes.Nil,AdvCharacterMouth.Mouth01,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"And nobody's dying here.","VC_GoToHellChoices_00024_YIzumi")Adv.hideAllCharacter(0.2)elseif
HHH9IlJp==6 or BW0WFP=="MC03_04_01_02"then
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,nil,"GoToHellChoices_6")Adv.act(X8,"0702",nil,0)
Adv.talk(X8,"My Revolution...","VC_GoToHellChoices_00025_RKayamori")
Adv.actEnum0(JQT,AdvCharacterFace.TightSmile,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_03)Adv.preset(JQT,700,0,1)
Adv.moveBy(JQT,Vec(-350),0.5)Adv.moveBy(X8,Vec(-350),0.5)
Adv.moveBy(ND2BCh3,Vec(-200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.talk(JQT,"What?","VC_GoToHellChoices_00026_YIzumi")Adv.hide(YRDu,0)Adv.presetBG(YRDu,0,0,LB0A,0,0)
Adv.preset(AtYtR,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.actEnum0(AtYtR,AdvCharacterFace.Sadness2,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.hide(X8,0.2)Adv.hide(JQT,0.2)
Adv.show(YRDu,0.3)Adv.show(AtYtR,0.3)Wait(0.2)
Adv.talk(AtYtR,"We're gonna die tomorrow...","VC_GoToHellChoices_00027_KAsakura")
Adv.actEnum0(JQT,AdvCharacterFace.Anger,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_01)Adv.preset(JQT,-700,0,1)
Adv.moveBy(JQT,Vec(350),0.5)Adv.moveBy(AtYtR,Vec(350),0.5)
Adv.moveBy(YRDu,Vec(200),0.5)Adv.show(JQT,0.3)Wait(0.5)
Adv.actEnum(AtYtR,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(JQT,"We're always together. When are you two finding the time to coordinate these jokes?!","VC_GoToHellChoices_00028_YIzumi")Adv.hideAllCharacter(0.2)elseif HHH9IlJp>=7 then end end;local zVPRGDnG=GetFlag("GotoHell履歴")
if zVPRGDnG==11 then
if w0qyLbH and
GetFlag("GotoHell通過_11")==1 then
if BW0WFP~="MC03_02_08_02"then
Adv.hide(ND2BCh3,0)Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)
Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell again?","VC_GoToHellChoices_00029_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Layout.leave(JQT)
Domain.addSixSenseByNovel(SixSense.NOVEL_NATURAL,
nil,"GoToHellChoices_7")Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Serious,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Do you like hell that much? Or is it just the only place you can go?","VC_GoToHellChoices_00030_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Nil,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(X8,"Heaven doesn't suit me!","VC_GoToHellChoices_00031_RKayamori")
Adv.talk(JQT,"Well, don't drag us down along with you.","VC_GoToHellChoices_00032_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_11",1)end elseif zVPRGDnG==21 then
if
w0qyLbH and GetFlag("GotoHell通過_21")==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell this time, huh.","VC_GoToHellChoices_00033_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hideAllCharacter(0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"You said heaven before, why'd you change your mind?","VC_GoToHellChoices_00034_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(X8,"Hell's a lot more rock 'n' roll, don'tcha think?","VC_GoToHellChoices_00035_RKayamori")
Adv.actEnum(JQT,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,"Stop, you're going to jinx things.","VC_GoToHellChoices_00036_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_21",1)end elseif zVPRGDnG==111 then
if
w0qyLbH and GetFlag("GotoHell通過_111")==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell again?","VC_GoToHellChoices_00037_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(X8,"Man, it's just a nonstop ride to hell...","VC_GoToHellChoices_00038_RKayamori")
Adv.talk(JQT,"You're the one who keeps saying it, you know?","VC_GoToHellChoices_00039_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_111",1)end elseif zVPRGDnG==121 then
if
w0qyLbH and GetFlag("GotoHell通過_121")==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell this time, huh.","VC_GoToHellChoices_00040_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(X8,"Going straight from heaven to hell...talk about whiplash!","VC_GoToHellChoices_00041_RKayamori")
Adv.talk(JQT,"You're the one who keeps saying it, you know?","VC_GoToHellChoices_00042_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_121",1)end elseif zVPRGDnG==211 then
if
w0qyLbH and GetFlag("GotoHell通過_211")==211 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell again?","VC_GoToHellChoices_00043_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"First heaven, then hell, and then hell yet again...","VC_GoToHellChoices_00044_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(X8,"We've got ourselves two hells in a row, that can't be good.","VC_GoToHellChoices_00045_RKayamori")
Adv.actEnum(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,"It's all because you keep choosing to say stuff like that...","VC_GoToHellChoices_00046_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_211",1)end elseif zVPRGDnG==221 then
if
w0qyLbH and GetFlag("GotoHell通過_221")==221 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell this time, huh.","VC_GoToHellChoices_00047_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"So we've got heaven twice, and finally hell.","VC_GoToHellChoices_00048_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(X8,"Ended up in hell at last. You could say it's...hella ominous.","VC_GoToHellChoices_00049_RKayamori")
Adv.actEnum(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,"It's all because you keep choosing to say stuff like that...","VC_GoToHellChoices_00050_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_221",1)end elseif zVPRGDnG==12 then
if
w0qyLbH and GetFlag("GotoHell通過_12")==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Guess we're going to heaven this time, then.","VC_GoToHellChoices_00051_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then
Domain.addSixSenseByNovel(SixSense.NOVEL_CHARISMA,nil,"GoToHellChoices_8")Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"You said hell before. Any reason for the change of heart?","VC_GoToHellChoices_00052_YIzumi")
Adv.talk(X8,"I figured if I'm gonna die anyways, I might as well go to heaven.","VC_GoToHellChoices_00053_RKayamori")
Adv.talk(JQT,"Some rock star you are.","VC_GoToHellChoices_00054_YIzumi")
Adv.act(X8,"170301",AdvCharacterMouth.Mouth01)
Adv.talk(X8,"Fire and brimstone sounds terrible though, don'tcha think?!","VC_GoToHellChoices_00055_RKayamori",nil,nil,nil,AdvCharacterMouth.Mouth01)Adv.act(X8,"1703",AdvCharacterMouth.Mouth01)
Adv.talk(JQT,"You're a cowardly rock star, then.","VC_GoToHellChoices_00056_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_12",1)end elseif zVPRGDnG==22 then
if
w0qyLbH and GetFlag("GotoHell通過_22")==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Heaven again?","VC_GoToHellChoices_00057_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(X8,"Heaven, ha! Pearly gates or not, you're still going to end up dead...DEAD!!!","VC_GoToHellChoices_00058_RKayamori")
Adv.talk(JQT,"What are you even getting worked up about?","VC_GoToHellChoices_00059_YIzumi")Adv.hide(JQT,0.2)Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_22",1)end elseif zVPRGDnG==112 then
if
w0qyLbH and GetFlag("GotoHell通過_112")==112 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Guess we're going to heaven this time, then.","VC_GoToHellChoices_00060_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Sadness,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.actDelay(4.5,X8,"0902")
Adv.talk(X8,"Through two hells too many, we've finally reached heaven. We weren't forsaken after all!","VC_GoToHellChoices_00061_RKayamori")Adv.act(X8,"0902")
Adv.talk(JQT,"But that doesn't change the fact that you'd be dead.","VC_GoToHellChoices_00062_YIzumi")Adv.hide(JQT,0.2)Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_112",1)end elseif zVPRGDnG==122 then
if
w0qyLbH and GetFlag("GotoHell通過_122")==122 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Heaven again?","VC_GoToHellChoices_00063_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.LittleJoy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(X8,"Hell once, and heaven twice...I think fortune is smiling upon us!","VC_GoToHellChoices_00064_RKayamori")
Adv.talk(JQT,"You're the one who's been saying all that, though...","VC_GoToHellChoices_00065_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_122",1)end elseif zVPRGDnG==212 then
if
w0qyLbH and GetFlag("GotoHell通過_212")==122 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Guess we're going to heaven this time, then.","VC_GoToHellChoices_00066_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"From heaven to hell, and then back to heaven.","VC_GoToHellChoices_00067_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Serious,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)
Adv.talk(X8,"Heaven's got a little bit of a lead...looks like we haven't been forsaken.","VC_GoToHellChoices_00068_RKayamori")
Adv.actEnum(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,"It's all because you keep choosing to say stuff like that...","VC_GoToHellChoices_00069_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_212",1)end elseif zVPRGDnG==222 then
if
w0qyLbH and GetFlag("GotoHell通過_222")==222 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Heaven again?","VC_GoToHellChoices_00070_YIzumi")Adv.hideAllCharacter(0.2)end else
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(X8,-350,0,1)Adv.preset(JQT,350,0,1)
Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(X8,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(X8,0.3)Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Heaven three times in a row, huh?","VC_GoToHellChoices_00071_YIzumi")
Adv.actEnum(X8,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil,0.3)Adv.actDelay(3,X8,"1102")
Adv.talk(X8,"Seriously? Wow! I guess we're super lucky right now!","VC_GoToHellChoices_00072_RKayamori")
Adv.actEnum(JQT,AdvCharacterFace.LittleAmazed,AdvCharacterEyes.Nil,AdvCharacterMouth.Nil,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,"You're the one who keeps choosing to say it.","VC_GoToHellChoices_00073_YIzumi")Adv.hideAllCharacter(0.2)end;SetFlag("GotoHell通過_222",1)end else
if w0qyLbH and HHH9IlJp>1 then
zVPRGDnG=GetFlag("GotoHell履歴")%100
if zVPRGDnG==1 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell this time, huh.","VC_GoToHellChoices_00074_YIzumi")Adv.hideAllCharacter(0.2)end elseif zVPRGDnG==11 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell again?","VC_GoToHellChoices_00075_YIzumi")Adv.hideAllCharacter(0.2)end elseif zVPRGDnG==21 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Going to hell this time, huh.","VC_GoToHellChoices_00076_YIzumi")Adv.hideAllCharacter(0.2)end elseif zVPRGDnG==2 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Guess we're going to heaven this time, then.","VC_GoToHellChoices_00077_YIzumi")Adv.hideAllCharacter(0.2)end elseif zVPRGDnG==12 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Guess we're going to heaven this time, then.","VC_GoToHellChoices_00078_YIzumi")Adv.hideAllCharacter(0.2)end elseif zVPRGDnG==22 then
if BW0WFP~="MC03_02_08_02"then Adv.hide(ND2BCh3,0)
Adv.presetBG(ND2BCh3,370,0,LB0A,0,0)Adv.preset(JQT,0,0,1)Adv.moveLayer(ND2BCh3,"BG")
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.hide(AtYtR,0.2)Adv.show(ND2BCh3,0.3)
Adv.show(JQT,0.3)Wait(0.2)
Adv.talk(JQT,"Heaven again?","VC_GoToHellChoices_00079_YIzumi")Adv.hideAllCharacter(0.2)end end end end end