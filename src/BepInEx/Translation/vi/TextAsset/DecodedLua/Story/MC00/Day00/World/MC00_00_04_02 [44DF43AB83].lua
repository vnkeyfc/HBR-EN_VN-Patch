local nsgji="Event"..WorldLabel()
local bClTIa=Tutorial.handGuide(400,0,1,"Proceed","pad_move")function preload()
EventScene("School1F","Assets/Lua/Story/MC00/Day00/World/MC00_00_04_02_School1F.unity")end;function init()Log("現在のフィールド："..
FieldLabel())
refresh()end
function refresh()
Field.setActiveWithTag("Gate",false)Field.setActiveWithTag("Mob",false)
ReachEvent("Blocker",ReturnBack)local rDzL7SVO=GetWorldEventStep(nsgji)
if rDzL7SVO==0 then
StartEvent_NextWorldEventStep(nsgji,InitialTalk)elseif rDzL7SVO==1 then SetPeriodText("Hướng về phía bên phải!")
if
Domain.getLatestChapterLabel()=="MC00"then Adv.show(bClTIa)end;EmptyEvent("Mob")
ReachEvent_NextWorldEventStep("YIzumiBlocker",nsgji,AutoTalk_YIzumi)elseif rDzL7SVO==2 then SetPeriodText("Hướng về phía bên phải!")
if
Domain.getLatestChapterLabel()=="MC00"then Adv.show(bClTIa)end;EmptyEvent("Mob")
ReachEventNoLock("YShirakawa",AutoGaya_YShirakawa)
ReachEvent("NNanase",function()if Domain.getLatestChapterLabel()=="MC00"then
Adv.hide(bClTIa)end;Yield(AutoTalk_STezuka)
Exit_World()end)end end
function InitialTalk()
Adv.kayamoriTalkAsync([[N-Này, mình đã bao giờ thực chiến đâu chứ...]],"VC_MC00_00_04_02_World_00001_RKayamori",4)
Field.playerComeIn("AuditoriumPoint",Vec(0,0,24),4)Wait(1)end
function ReturnBack()Adv.hide(bClTIa)
Adv.kayamoriTalk([[Mọi người dường như đang tập hợp ở hướng khác cơ!]],"VC_MC00_00_04_02_World_00000_RKayamori")Wait(0.3)
Field.moveOnRouteWait("Player","AuditoriumPoint")Field.resetPosition()if
Domain.getLatestChapterLabel()=="MC00"then Adv.show(bClTIa)end end
function AutoTalk_YIzumi()Adv.hide(bClTIa)EmptyEvent("YIzumi")
EmptyEvent("YIzumiBlocker")
local BW0WFP=Field.getPlayerPosition()+Vec(1,0,0.5)local X8=Field.computeMoveTime("YIzumi",BW0WFP,4.5)
Field.moveTo("YIzumi",BW0WFP,X8)Field.waitTaskKey("YIzumi")
local JQT=Adv.characterAsync("YIzumi","Default")
Field.startTalk("YIzumi",FaceToFaceMode.Auto,function()
Adv.actEnum0(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_02)Adv.showCharacter(JQT,0.3)
Adv.talk(JQT,[[Ê này, coi bộ cậu bình thản ra phết nhỉ?]],"VC_MC00_00_04_02_World_00002_YIzumi")
Adv.actEnum(JQT,AdvCharacterFace.Thought,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,[[...Lúc nãy các chỉ huy có nói về... trạng thái phòng thủ gì đó.]],"VC_MC00_00_04_02_World_00003_YIzumi")
Adv.actEnum(JQT,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(JQT,[[...Dù là gì thì chúng ta vẫn nên khẩn trương ra ngoài theo họ thôi.]],"VC_MC00_00_04_02_World_00004_YIzumi")Adv.hide(JQT,0.3)
Field.moveBy("YIzumi",Vec(10),3)end)Field.stopTaskKey("YIzumi")end
function AutoGaya_YShirakawa()Adv.hide(bClTIa)EmptyEvent("YShirakawa")
Field.talkByGayaBalloon("YShirakawa",[[<size=90%>...Đường đột quá, chuyện gì xảy ra vậy?]],2,
nil,nil,nil,"VC_MC00_00_04_02_World_00005_YShirakawa")
Field.talkByGayaBalloon("SKura",[[<size=90%>...Phải xuất kích rồi à.]],2,nil,nil,nil,"VC_MC00_00_04_02_World_00006_SKura")end
function AutoTalk_STezuka()Field.turnToTarget("Player","STezuka",0.3)
Field.startEvent()Field.setTalkCamera("STezuka")Wait(0.5)end