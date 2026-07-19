local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("Dormitory1F","Assets/Lua/Story/MC00/Day00/World/MC00_00_09_07_Dormitory1F.unity")end;function init()
Log(
"現在のフィールド："..FieldLabel())refresh()end
function refresh()
Field.setActiveWithTag("Gate",false)
Field.returnToWayPoint("Blocker","31ARoomPoint",[[Phòng của mình... ở phía bên kia chứ nhỉ?]],"VC_MC00_00_09_07_World_00000_RKayamori")ShowMapDestinationIcon("31ARoomGate")
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,InitialTalk)elseif nsgji==1 then SetPeriodText("Hãy nghỉ ngơi trong phòng ký túc xá")
TouchEvent("YIzumi",Talk_YIzumi)TouchEvent("TTojo",Talk_TTojo)
TouchEvent("MAikawa",Talk_MAikawa)TouchEvent("KAsakura",Talk_KAsakura)
TouchEvent("TKunimi",Talk_TKunimi)
TouchEvent("31ARoomGate",function()SetPeriodText("")
Field.playerGetOut("31ARoomPoint",Vec(0,0,2))Exit_World()end)end end
function InitialTalk()Adv.fadeOut(0)
Field.resetPosition("WaterFallPointRight")
Field.turnToTarget("Player","YIzumi",0,AnimationMode.None)local bClTIa=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Wait(1)Adv.fadeIn(1)
Adv.actEnum0(bClTIa,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.showCharacter(bClTIa,0.3)
Adv.talk(bClTIa,[[...Tôi muốn ở một mình để suy nghĩ vài chuyện.]],"VC_MC00_00_09_07_World_00001_YIzumi")
Adv.talk(bClTIa,[[Mặc dù người ta bảo là về phòng chờ lệnh, nhưng mà tôi cứ ở đây nghỉ ngơi một chút đã.]],"VC_MC00_00_09_07_World_00002_YIzumi")Adv.hide(bClTIa,0.2)end)end
function Talk_YIzumi()EmptyEvent("YIzumi")
local rDzL7SVO=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Adv.actEnum0(rDzL7SVO,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth02,AdvCharacterPose.Pose_03)Adv.showCharacter(rDzL7SVO,0.3)
Adv.talk(rDzL7SVO,[[...Tôi muốn ở một mình để suy nghĩ vài chuyện.]],"VC_MC00_00_09_07_World_00003_YIzumi")Adv.hide(rDzL7SVO,0.2)end)end
function Talk_TTojo()EmptyEvent("TTojo")
local BW0WFP=Adv.characterAsync("TTojo","Default")
Field.startTalk("TTojo",FaceToFaceMode.Auto,function()
Adv.actEnum0(BW0WFP,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(BW0WFP,0.3)
Adv.talk(BW0WFP,[[Lộng lẫy tới cỡ này luôn á... Tự dưng thấy muốn biết nguồn tiền từ đâu ra ghê.]],"VC_MC00_00_09_07_World_00004_TTojo")
Adv.talk(BW0WFP,[[Liệu kinh phí có còn dư dả để mà xoay xở những việc khác không nhỉ?]],"VC_MC00_00_09_07_World_00005_TTojo")Adv.hide(BW0WFP,0.2)end)end
function Talk_MAikawa()EmptyEvent("MAikawa")
local X8=Adv.characterAsync("MAikawa","Default")
Field.startTalk("MAikawa",FaceToFaceMode.Auto,function()
Adv.actEnum0(X8,AdvCharacterFace.Serious,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.showCharacter(X8,0.3)
Adv.talk(X8,[[Nhất định có ngày... bà đây sẽ cho tụi bây nếm mùi siêu năng lực thứ thiệt... ]],"VC_MC00_00_09_07_World_00006_MAikawa")Adv.hide(X8,0.2)end)end
function Talk_KAsakura()EmptyEvent("KAsakura")
local JQT=Adv.characterAsync("KAsakura","Default")
Field.startTalk("KAsakura",FaceToFaceMode.Auto,function()
Adv.actEnum0(JQT,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.showCharacter(JQT,0.3)
Adv.talk(JQT,[[Narby ơi, chị dẫn em về phòng chung cho vui được không nè?]],"VC_MC00_00_09_07_World_00007_KAsakura")Adv.hide(JQT,0.2)end)end
function Talk_TKunimi()EmptyEvent("TKunimi")
local AtYtR=Adv.characterAsync("TKunimi","Default")
Field.startTalk("TKunimi",FaceToFaceMode.Face,function()
Adv.actEnum0(AtYtR,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.showCharacter(AtYtR,0.3)
Adv.talk(AtYtR,[[Cứ thế này, thì còn gì là uy nghiêm của hạm trưởng nữa chứ...!]],"VC_MC00_00_09_07_World_00008_TKunimi")
Adv.talk(AtYtR,[[Vừa nãy... chỉ là tình cờ lọt chữ Tama vào thôi mà...]],"VC_MC00_00_09_07_World_00009_TKunimi")Adv.hide(AtYtR,0.2)end)end