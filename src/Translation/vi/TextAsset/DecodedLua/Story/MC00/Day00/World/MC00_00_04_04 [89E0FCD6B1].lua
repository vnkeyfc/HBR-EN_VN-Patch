local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC00/Day00/World/MC00_00_04_04_MainStreet.unity")end;function init()Log("現在のフィールド："..
FieldLabel())
refresh()end
function refresh()
Field.setActiveWithTag("Gate",false)Field.setActiveWithTag("Mob",false)
Field.setActiveWithTag("Narvy",false)ReachEvent("Blocker",AutoTalk_Blocker)
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then EmptyEvent("STezuka")EmptyEvent("YIzumi")
EmptyEvent("Mob1")StartEvent_NextWorldEventStep(w0qyLbH,InitialTalk)elseif
nsgji==1 then EmptyEvent("MAikawa")EmptyEvent("TTojo")
EmptyEvent("KAsakura")StartEvent_NextWorldEventStep(w0qyLbH,TutorialMove)elseif
nsgji==2 then
SetPeriodText("Đi đến điểm tập kết ở cây cầu!")EmptyEvent("MAikawa")EmptyEvent("TTojo")
EmptyEvent("KAsakura")
ReachEventNoLock("Blocker_TKunimi",AutoTalk_TKunimi)AutoTalk_MAikawa()AutoTalk_TTojo()
AutoTalk_KAsakura()
ReachEvent("NNanase",function()Yield(TalkToNNanase)Exit_World()end)end end
function InitialTalk()local bClTIa=Adv.characterAsync("STezuka","Default")
local rDzL7SVO=Adv.characterAsync("YIzumi","Default")Field.playerComeIn("SchoolPoint",Vec(0,0,9),3)
Field.startTalk("STezuka",FaceToFaceMode.Face,function()
Adv.actEnum0(bClTIa,AdvCharacterFace.Serious,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(bClTIa,0.3)
Adv.talk(bClTIa,[[Xem ra chỉ còn lại mỗi mình nhóm các cô thôi đấy. Khẩn trương lên.]],"VC_MC00_00_04_04_World_00000_STezuka")
Adv.actEnum(bClTIa,AdvCharacterFace.Serious,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(bClTIa,[[Điểm tập kết là cây cầu phía trước. Theo chân tôi.]],"VC_MC00_00_04_04_World_00001_STezuka")Adv.hide(bClTIa,0.3)end)
Routine(function()Field.moveByWait("STezuka",Vec(4,0,0),2)
Field.setActive("STezuka",false)end)Wait(0.5)
Field.startTalkEx("YIzumi",FaceToFaceMode.Auto,FaceToFaceMode.Face,function()Wait(0.5)
Adv.actEnum0(rDzL7SVO,AdvCharacterFace.Surprise,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.showCharacter(rDzL7SVO,0.3)
Adv.talk(rDzL7SVO,[[Rốt cuộc là có chuyện gì thế này? Diễn biến nhanh quá mức rồi đấy...]],"VC_MC00_00_04_04_World_00002_YIzumi")
Adv.actEnum(rDzL7SVO,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeLeftDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talk(rDzL7SVO,[[Trước mắt có lẽ cũng chỉ còn cách đi theo thôi nhỉ...]],"VC_MC00_00_04_04_World_00003_YIzumi")Adv.hide(rDzL7SVO,0)Transition.start()end)Field.createFollower("YIzumi")
Field.turnToWait("Player",90,0)Wait(1)Field.turnTo("Follower/YIzumi",90,0)
Transition.finish()end
function TutorialMove()
if Domain.getLatestChapterLabel()=="MC00"then
local BW0WFP=Tutorial.start()
Tutorial.setMessage([[Có 2 cách để di chuyển: Vuốt và Giữ.]],0,300,[[Giữ cần trái về hướng mà bạn muốn hướng đến.]])Tutorial.show()
Tutorial.setMessage([[Vuốt nhanh để nhân vật tự động di chuyển theo hướng mong muốn.]],0,300,[[Gạt đúp cần trái về hướng mong muốn để tự động di chuyển.]])Tutorial.show()
Tutorial.setMessage([[Hãy di chuyển đến điểm tập kết ở cây cầu!]],0,300)Tutorial.show()Tutorial.finish(BW0WFP)end end
function AutoTalk_TKunimi()EmptyEvent("TKunimi")
EmptyEvent("Blocker_TKunimi")
Routine(function()
Field.moveOnRouteWait("TKunimi","BridgePoint",5)Field.setActive("TKunimi",false)end)
Routine(function()Wait(2)
Field.talkByGayaBalloon("TKunimi",[[Oa! Oa! Phải nhanh chân lên mới được!!]],5,"Anger",nil,nil,"VC_MC00_00_04_04_World_00008_TKunimi")end)end
function AutoTalk_MAikawa()
Routine(function()
Field.moveOnRouteWait("MAikawa","BridgePoint")Field.setActive("MAikawa",false)end)
ReachEventNoLock("MAikawa",function()EmptyEvent("MAikawa")
Field.talkByGayaBalloon("MAikawa",[[Chèn ơi, nản gì đâu...]],3,
nil,nil,nil,"VC_MC00_00_04_04_World_00004_MAikawa")
Field.talkByGayaBalloon("MAikawa",[[Vụ gì dzậy trời...]],3,nil,nil,nil,"VC_MC00_00_04_04_World_00005_MAikawa")
Field.talkByGayaBalloon("MAikawa",[[...Mà thôi, càng tốt.]],3,nil,nil,nil,"VC_MC00_00_04_04_World_00006_MAikawa")
Field.talkByGayaBalloon("MAikawa",[[Tui sẽ cho mấy người thấy hết thực lực của tui.]],3,nil,nil,nil,"VC_MC00_00_04_04_World_00007_MAikawa")end)end
function AutoTalk_TTojo()
Routine(function()
Field.moveOnRouteWait("TTojo","BridgePoint")Field.setActive("TTojo",false)end)
ReachEventNoLock("TTojo",function()EmptyEvent("TTojo")
Field.talkByGayaBalloon("TTojo",[[...Cuối cùng thì giây phút này cũng tới rồi]],3,nil,nil,
nil,"VC_MC00_00_04_04_World_00009_TTojo")
Field.talkByGayaBalloon("TTojo",[[Hãy dõi theo con nhé, mẹ ơi.]],3,nil,nil,nil,"VC_MC00_00_04_04_World_00010_TTojo")end)end
function AutoTalk_KAsakura()
Routine(function()
Field.moveOnRouteWait("KAsakura","BridgePoint")Field.setActive("KAsakura",false)end)
ReachEventNoLock("KAsakura",function()EmptyEvent("KAsakura")
Field.talkByGayaBalloon("KAsakura",[[Để xem chuyện gì sắp sửa bắt đầu đây nhỉ.]],5,
nil,nil,nil,"VC_MC00_00_04_04_World_00011_KAsakura")end)end
function AutoTalk_Blocker()local X8=Adv.characterAsync("YIzumi","Default")
Field.startTalk("Follower/YIzumi",FaceToFaceMode.Auto,function()
Adv.actEnum0(X8,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.showCharacter(X8,0.3)
local JQT=GetLocalFlag("blockerCount")
if JQT==0 then
Adv.talk(X8,[[Này, có phải hướng đó đâu!]],"VC_MC00_00_04_04_World_00012_YIzumi")
Adv.talk(X8,[[Đừng có lựa những lúc oái oăm như này mà nổi loạn chứ...]],"VC_MC00_00_04_04_World_00013_YIzumi")IncLocalFlag("blockerCount")elseif JQT==1 then
Adv.talk(X8,[[Đã bảo rồi, không phải hướng đó mà!]],"VC_MC00_00_04_04_World_00014_YIzumi")
Adv.talk(X8,[[Tôi chẳng muốn mới ngày đầu đã bị ăn mắng lây đâu nhé...]],"VC_MC00_00_04_04_World_00015_YIzumi")IncLocalFlag("blockerCount")elseif JQT==2 then
Adv.talk(X8,[[Này, cậu cố tình đấy hả?]],"VC_MC00_00_04_04_World_00016_YIzumi")
Adv.talk(X8,[[Trời ạ... Tương lai không biết sẽ ra sao nữa đây.]],"VC_MC00_00_04_04_World_00017_YIzumi")IncLocalFlag("blockerCount")elseif JQT==3 then
Adv.talk(X8,[[Tha cho tôi đi...]],"VC_MC00_00_04_04_World_00018_YIzumi")IncLocalFlag("blockerCount")elseif JQT==4 then
Adv.act(X8,"040201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Tha cho tôi đi... Cậu biết nghe mà, đúng không?]],"VC_MC00_00_04_04_World_00019_YIzumi")IncLocalFlag("blockerCount")elseif JQT==5 then
Adv.act(X8,"030201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Tại làm sao tôi đã xin tha rồi mà cậu vẫn không chịu tha vậy hả?!]],"VC_MC00_00_04_04_World_00020_YIzumi")
Adv.act(X8,"040201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Tôi cáu thật đấy nhé.]],"VC_MC00_00_04_04_World_00021_YIzumi")IncLocalFlag("blockerCount")elseif JQT==6 then
Adv.act(X8,"120001",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Đã nói là tôi cáu thật đấy...!]],"VC_MC00_00_04_04_World_00022_YIzumi")IncLocalFlag("blockerCount")elseif JQT==7 then
Adv.act(X8,"120001",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Hay là cậu thích nghe tôi mắng? Cậu cố tình làm thế để nghe mắng hả? Bị mắng làm cậu thấy rạo rực lắm hay gì?]],"VC_MC00_00_04_04_World_00023_YIzumi")IncLocalFlag("blockerCount")elseif JQT==8 then
Adv.talk(X8,[[Chạy theo đối phó với cậu cũng tốn sức lắm đấy.]],"VC_MC00_00_04_04_World_00024_YIzumi")
Adv.act(X8,"060101",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Đặt mình vào vị trí của tôi giùm cái đi.]],"VC_MC00_00_04_04_World_00025_YIzumi",nil,nil,nil,AdvCharacterMouth.Mouth01)IncLocalFlag("blockerCount")elseif JQT==9 then
Adv.act(X8,"030201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Hiểu rồi! Tại tôi cứ phản ứng lại nên cậu mới được nước lấn tới đúng không?]],"VC_MC00_00_04_04_World_00026_YIzumi")IncLocalFlag("blockerCount")elseif JQT<=14 then
Adv.talk(X8,[[......]],"VC_MC00_00_04_04_World_00027_YIzumi")IncLocalFlag("blockerCount")else
Adv.act(X8,"210201",AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Hay lắm, tôi chịu thua. Nếu cậu thèm khát bị mắng đến vậy thì để tôi mắng cho!]],"VC_MC00_00_04_04_World_00028_YIzumi",nil,nil,nil,AdvCharacterMouth.Mouth01)
Adv.talk(X8,[[Nhưng mà, bây giờ đâu phải lúc diễn trò này chứ? Năn nỉ cậu đấy...]],"VC_MC00_00_04_04_World_00029_YIzumi")
Domain.addSixSenseByNovel(SixSense.NOVEL_CRAZY,nil,"MC00_00_04_04_1")IncLocalFlag("blockerCount")end;Adv.hide(X8,0.2)end)
Field.moveToWaypointWait("Player","SchoolPointLeft",1)Field.resetPosition()end
function TalkToNNanase()Field.turnToTarget("Player","NNanase",0.3)
Field.turnToTargetWait("Follower/YIzumi","NNanase",0.3)Transition.start()Field.startEvent()
Field.setCameraComposition(Vec(133.52,2.8,71.91),Vec(
-0.471,25.708,-0.249))Field.setActive("KAsakura",false)
Field.setActive("TTojo",false)Field.setActive("MAikawa",false)
Field.setActive("TKunimi",false)Field.setPosition("Player",Vec(131,3,69.3))
Field.setPosition("Follower/YIzumi",Vec(131.4,3,68.5))
Field.turnToTargetWait("Follower/YIzumi","NNanase",0)Wait(1)Transition.finish()Wait(0.5)
Yield("Lua/Story/MC00/Day00/Novel/MC00_00_04_05")end