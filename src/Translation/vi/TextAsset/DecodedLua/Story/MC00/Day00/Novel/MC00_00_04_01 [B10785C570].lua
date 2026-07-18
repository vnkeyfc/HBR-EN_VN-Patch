ROUTINE()Adv.shield()local AtYtR=1.25;local ND2BCh3=AtYtR+0.1
local IODBg=Adv.loadImage("Still/MC00/Still_MC00_00_03_00_001","BG",
-319,437,1.8,0)
local YRDu=Adv.loadImage("Still/MC00/Still_MC00_00_03_00_001","BG",885,437,1.8,0)local CWRiP=Adv.character("RKayamori","Default")
local LB0A=Adv.character("NNanase","Default")local dl=Adv.fade()Adv.color(dl,"FF0000")
Adv.alpha(dl,0)local sKPjQkdn=0
function MC00_00_04_00_RedLight()if sKPjQkdn==1 then sKPjQkdn=0 else sKPjQkdn=1 end
Routine(function()
while
sKPjQkdn==1 do Adv.alpha(dl,0.3,0.2)
if sKPjQkdn==1 then Wait(0.8)end;Adv.alpha(dl,0,0.3)if sKPjQkdn==1 then Wait(0.9)end end end)end;MC00_00_04_00_RedLight()Adv.preset(CWRiP,0,0,1)
Adv.actEnum0(CWRiP,AdvCharacterFace.Nil,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Nil,AdvCharacterPose.Nil)Adv.moveBy(IODBg,Vec(50,0),7)
Adv.moveBy(CWRiP,Vec(80,0),7)Adv.show(CWRiP,0)Adv.show(IODBg,0)
Adv.setBackgroundBlur(1,0)Adv.novelInit()Wait(1)
Adv.talk(CWRiP,[[Hở? Tiếng ồn gì kia?]],"VC_MC00_00_04_01_Novel_00000_RKayamori")
Adv.actEnum(LB0A,AdvCharacterFace.Anger,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Nil,AdvCharacterPose.Pose_03,0.3)Adv.hide(YRDu,0)Adv.presetBG(YRDu,885,323,1.8,0,0)
Adv.preset(LB0A,0,0,1)Adv.moveLayer(YRDu,"BG")
Adv.moveBy(YRDu,Vec(-50,0),4)Adv.show(YRDu,0.3)Adv.hide(CWRiP,0.2)
Adv.moveBy(LB0A,Vec(-80),4)Adv.show(LB0A,0.3)Wait(0.2)
Adv.AddBackLog("Sĩ quan",[[Tất cả đơn vị hãy chuyển sang trạng thái phòng thủ.]],"VC_MC00_00_04_01_Novel_00001_NNanase")
Adv.talkAllIn(LB0A,"Sĩ quan",[[Tất cả đơn vị hãy chuyển sang trạng thái phòng thủ.]],"VC_MC00_00_04_01_Novel_00001_NNanase",nil,nil,nil,true)Adv.hide(IODBg,0)
Adv.presetBG(IODBg,-319,323,1.8,0,0)Adv.preset(CWRiP,0,0,1)Adv.moveLayer(IODBg,"BG")
Adv.hide(LB0A,0.2)Adv.moveBy(IODBg,Vec(50,0),7)
Adv.moveBy(CWRiP,Vec(80,0),7)Adv.show(IODBg,0.3)Adv.show(CWRiP,0.3)Wait(0.2)
Adv.talk(CWRiP,[["Trạng thái phòng thủ"? Chiến tranh nổ ra hay gì à?]],"VC_MC00_00_04_01_Novel_00002_RKayamori")Adv.fadeOut(1)Wait(1)Sound.playBGM("SB0038",2,1)
Wait(1)Exit_Novel()