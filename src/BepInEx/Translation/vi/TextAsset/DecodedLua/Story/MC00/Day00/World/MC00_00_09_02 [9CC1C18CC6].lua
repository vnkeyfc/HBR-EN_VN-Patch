local bClTIa="Event"..WorldLabel()local rDzL7SVO;local BW0WFP;function preload()
EventScene("MainStreet","Assets/Lua/Story/MC00/Day00/World/MC00_00_09_02_MainStreet.unity")end
function init()refresh()end
function refresh()Field.setActiveWithTag("Gate",false)
Field.setActive("DormitoryGate",true)Field.setActiveWithTag("Narvy",false)
SetFlag("Permission.Menu",1)TouchEvent("DormitoryGate",Exit_GoToDormitory1F)
ShowMapDestinationIcon("DormitoryGate")local X8=GetWorldEventStep(bClTIa)
if X8 ==0 then EmptyEvent("TTojo")
EmptyEvent("YIzumi")EmptyEvent("KAsakura")EmptyEvent("NNanase_1")
StartEvent_NextWorldEventStep(bClTIa,StartMainStreet)elseif X8 ==1 then EmptyEvent("TTojo")EmptyEvent("YIzumi")
EmptyEvent("KAsakura")EmptyEvent("NNanase_1")
StartEvent_NextWorldEventStep(bClTIa,TutorialEnhance)elseif X8 ==2 then EmptyEvent("TTojo")EmptyEvent("YIzumi")
EmptyEvent("KAsakura")EmptyEvent("NNanase_1")
StartEvent_NextWorldEventStep(bClTIa,TutorialFieldAuto)elseif X8 ==3 then EmptyEvent("TTojo")EmptyEvent("YIzumi")
EmptyEvent("KAsakura")
ReachEvent_NextWorldEventStep("NNanase_1",bClTIa,InitialTalk)elseif X8 ==4 then Field.setActive("NNanase_1",false)
SetPeriodText("Theo Nanase đến ký túc xá!")rDzL7SVO=Routine(GayaTalkWith31APart1)
ReachEvent_NextWorldEventStep("NNanase_2",bClTIa,AutoTalk_NNanase)elseif X8 ==5 then
SetPeriodText("Theo Nanase đến ký túc xá!")Field.setActive("NNanase_2",false)
EmptyEvent("SHiguchi")rDzL7SVO=Routine(GayaTalkWith31APart2)
ReachEventNoLock("IMinase",AutoTalk_IMinase)Field.setActiveWithTag("30G",true)
ReachEvent_NextWorldEventStep("YShirakawa",bClTIa,AutoTalk_YShirakawa)elseif X8 ==6 then
SetPeriodText("Theo Nanase đến ký túc xá!")rDzL7SVO=Routine(GayaTalkWith31APart3)
ReachEventNoLock("BIYamawaki",AutoTalk_BIYamawaki)ReachEventNoLock("YoOhshima",SleepingYoOhshima)
ReachEventNoLock("MuOhshima",RunningMuOhshima)
ReachEvent_NextWorldEventStep("EventNarvy",bClTIa,LookAtNarvy)elseif X8 ==7 then
SetPeriodText("Theo Nanase đến ký túc xá!")ReachEventNoLock("YoOhshima",SleepingYoOhshima)
ReachEventNoLock("MuOhshima",RunningMuOhshima)ReachEvent("NNanase_3",AutoTalk_Blocker)end end;function StartMainStreet()
Field.playerComeIn("BridgePointLeft",Vec(2))Wait(1)end
function InitialTalk()
EmptyEvent("NNanase_1")local JQT=Adv.characterAsync("NNanase","Default")
Field.startTalk("NNanase_1",FaceToFaceMode.Auto,function()
Field.setLookAtTarget("YIzumi","NNanase_1")Field.setLookAtTarget("KAsakura","NNanase_1")
Field.setLookAtTarget("TTojo","NNanase_1")Adv.showCharacter(JQT,0.3)
Adv.talk(JQT,[[Ký túc xá nằm ở mạn bên kia căn cứ, nên chúng ta phải đi vòng sang đó.]],"VC_MC00_00_09_02_World_00001_NNanase")
Adv.talk(JQT,[[Tôi sẽ dẫn các cô đi. Hãy theo tôi.]],"VC_MC00_00_09_02_World_00002_NNanase")Adv.hide(JQT,0.2)end)Field.moveBy("NNanase_1",Vec(-4,0,0),3)Wait(1)
local AtYtR=Adv.fadeOutWithShield(1)Field.createFollower("YIzumi")
Field.createFollower("KAsakura")Field.createFollower("TTojo")
Field.turnTo("Follower/YIzumi",-90,0)Field.turnTo("Follower/KAsakura",-90,0)Field.turnTo("Follower/TTojo",
-90,0)
Field.setActive("NNanase_1",false)Wait(0.5)Adv.hide(AtYtR,1)Wait(1)end
function TutorialEnhance()
if
Domain.getLatestChapterLabel()=="MC00"and
GetFlag("スタイル強化チュートリアルを既読")==0 then Tutorial.showDialog("styleEnhance1")
Field.setForceActiveHud(true)local ND2BCh3=Tutorial.start()Tutorial.showMask()
Tutorial.waitUIOpen("UIHudMenu")
Tutorial.setMessage([[Hãy thử cường hóa Style nào!\nBạn có thể mở MENU bằng nút bấm ở góc dưới bên trái màn hình.]],0,0,[[Hãy thử cường hóa Style nào!\nNhấn nút Option để mở MENU.]])
Tutorial.showFocusButton("HudMenu/UIHudMenu/container/btnMenu/Menubutton")Tutorial.waitUIOpen("UIHudMenuList")
Tutorial.showFocusButton("RootView/UI3D/UIHudMenuList/Root/container/btnStyleBord/button")Tutorial.waitUIOpen("UIEnhanceCardSelect")
Tutorial.showFocusScrollViewButtonRect("RootView/UI-Foreground/Main/UIEnhanceCardSelect/container/scrollView/Viewport/Content","enhanceCardTemplate(Clone)/image/btnStyle",0)Tutorial.waitUIOpen("UIEnhanceCard")
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIEnhanceCard/container/viewTabLeft/leftTabButtonContainer/btnEnhance/button",
nil,nil,"RootView/UI-Foreground/Main/UIEnhanceCard/container/viewTabLeft/leftTabButtonContainer/btnEnhance/btnBase")Tutorial.disableEnhanceSwipe()
Tutorial.setMessage([[Nhấn vào mũi tên để kiểm tra chi tiết nội dung cường hóa.]])Wait(0.2)
Tutorial.showFocusScrollViewButton("RootView/UI-Foreground/Main/UIEnhanceCard/container/viewTypeRight/enhance/menuParent/Viewport/Content/parentTemplate(Clone)[1]/container","btnCategoryOpen",0)Wait(0.2)
Tutorial.showFocusScrollViewButtonRect("RootView/UI-Foreground/Main/UIEnhanceCard/container/viewTypeRight/enhance/menuParent/Viewport/Content/parentTemplate(Clone)[1]/menuChild","childTemplate(Clone)/buttonType/btnConfirm",0)Tutorial.waitUIOpen("UIEnhanceConfirm")Wait(0.5)
SetFlag("スタイル強化チュートリアルを既読",1)Tutorial.flagSave()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIEnhanceConfirm/ModalContainer/container/front/Normal/btnDouble/btnOk")Tutorial.hideMask()
Tutorial.waitUIClose("UILineInfo2")Wait(0.5)Tutorial.disableEnhanceSwipe()
Tutorial.showMask()
Tutorial.setMessage([[Đã cường hóa Style thành công!\nHãy nhấn nút "Quay lại" nào.]],0,0,[[Đã cường hóa Style thành công!\nHãy nhấn nút X để quay lại.]])
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIEnhanceCard/container/commonBg/btnReturn")Tutorial.waitUIOpen("UIEnhanceCardSelect")
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIEnhanceCardSelect/container/commonBg/btnReturn")Tutorial.waitUIOpen("UIHudMenuList")
Tutorial.setMessage([[Chạm vào vùng bên ngoài thiết bị hiển thị trên màn hình để đóng MENU.]],0,0,[[Bạn có thể đóng MENU bằng cách nhấn nút X.]])local IODBg=Tutorial.handGuide(-700,0,0)Adv.show(IODBg)
Tutorial.showFocusButtonRect("RootView/UI3D/UIHudMenuList/closeButton",true)Adv.remove(IODBg)Tutorial.hideMask()
Tutorial.finish(ND2BCh3)Field.setForceActiveHud(false)
Tutorial.showDialog("styleEnhance2")local YRDu=Tutorial.start()
Tutorial.setMessage([[Hãy cường hóa nhiều Style khác nhau để có một đội hình mạnh mẽ hơn!]])Tutorial.show()Tutorial.finish(YRDu)end end
function TutorialFieldAuto()
if GetFlag("Permission.FieldAuto")==0 then
SetFlag("Permission.FieldAuto",1)Field.setForceActiveHud(true)
local CWRiP=Tutorial.start()Tutorial.waitUIOpen("UIHudMenu")
Tutorial.showMask()Wait(0.5)
if IsGamepadMode()then
Tutorial.setMessage([[Nhấn nút □ để tự động di chuyển đến điểm tiếp theo.\n(Nhấn nút □ lần nữa để hủy bỏ.)]])
Tutorial.setFocusAreaRect(220,100,20,0,"FastTravel/UIFastTravel/Anchor/btnAutoMode")else
Tutorial.setMessage([[Nhấn nút này để tự động di chuyển đến điểm tiếp theo.\n(Chạm vào màn hình để hủy bỏ.)]])
Tutorial.setFocusRect("FastTravel/UIFastTravel/Anchor/btnAutoMode")end;Tutorial.show()Tutorial.finish(CWRiP)end end
function AutoTalk_NNanase()Field.setForceActiveHud(false)
Field.deleteGayaBalloonFollowerAll()StopRoutine(rDzL7SVO)EmptyEvent("NNanase_2")
Sound.play("AS_Chime_Bell")Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Hửm?]],"VC_MC00_00_09_02_World_00003_RKayamori")Field.turnTo("Player",0,0.3)Adv.fadeOut(1)
Field.finishEvent(0)Field.deleteGayaBalloonAll("Follower/YIzumi")
Field.deleteGayaBalloonAll("Follower/KAsakura")Field.deleteGayaBalloonAll("Follower/TTojo")
Field.setCameraCompositionEx(Vec(118.700,4.200,65.500),Vec(358.000,0.000,0.000),30.00)
Field.setPosition("Follower/YIzumi",Vec(118.5,3,68.4))
Field.setPosition("Follower/KAsakura",Vec(119.1,3,69.4))
Field.setPosition("Follower/TTojo",Vec(119.5,3,68.7))Field.turnTo("Follower/YIzumi",0,0.3)
Field.turnTo("Follower/KAsakura",0,0.3)Field.turnTo("Follower/TTojo",0,0.3)Wait(1)
Field.setCameraCompositionEx(Vec(118.700,4.200,65.500),Vec(327.200,0.000,0.000),30.00,4)
Field.showAdvHudWrapper(function()Adv.fadeIn(2)Wait(0.5)Adv.fadeOut(1.5)
Field.stopTaskKey("CameraComposition")
Field.setCameraCompositionEx(Vec(118.700,23.000,73.200),Vec(347.000,0.000,0.000),33.00)Wait(1)
Field.setCameraCompositionEx(Vec(118.700,23.000,73.200),Vec(347.000,0.000,0.000),30.00,2)Adv.fadeIn(1)Wait(0.5)
Yield("Lua/Story/MC00/Day00/Novel/MC00_00_09_03")end)Transition.start()
Field.setCameraCompositionEnabled(false)local LB0A=Adv.characterAsync("NNanase","Default")
Field.startTalk("NNanase_2",FaceToFaceMode.Auto,function()
Wait(1)Transition.finish()Adv.showCharacter(LB0A,0.2)
Field.turnToTargetAllFollower("NNanase_2")
Adv.talk(LB0A,[[Giờ tôi sẽ tiếp tục dẫn các cô tới ký túc xá.]],"VC_MC00_00_09_02_World_00004_NNanase")Adv.hideCharacter(LB0A,0.2)end)Field.moveByWait("NNanase_2",Vec(-5,0,0),3)end
function AutoTalk_IMinase()EmptyEvent("IMinase")
BW0WFP=Routine(function()
Field.talkByGayaBalloon("IMinase",[[Đám đằng kia cùng khóa với chị em mình thì phải.]],2,"Normal",0,
-1,"VC_MC00_00_09_02_World_00005_IMinase")
Field.talkByGayaBalloon("SMinase",[[Là mấy đứa vừa ra trận lúc nãy kìa, meo!]],2,"Normal",0,-1,"VC_MC00_00_09_02_World_00006_SMinase")Field.deleteGayaBalloonFollowerAll()
StopRoutine(rDzL7SVO)
Field.talkByGayaBalloon("Follower/KAsakura",[[Hình như... mọi người đang nhìn tụi mình ấy nhỉ...?]],2,"Normal",0,nil,"VC_MC00_00_09_02_World_00007_KAsakura")
Field.talkByGayaBalloon("Follower/YIzumi",[[Tân binh bao giờ chẳng bị dòm ngó.]],2,"Normal",0,nil,"VC_MC00_00_09_02_World_00008_YIzumi")end)end
function AutoTalk_YShirakawa()Field.deleteGayaBalloonFollowerAll()
StopRoutine(rDzL7SVO)StopRoutine(BW0WFP)
Field.turnToTargetAll("YShirakawa")local dl=Adv.characterAsync("YShirakawa","Default")
Field.startTalk("YShirakawa",FaceToFaceMode.Auto,function()
Adv.actEnum0(dl,AdvCharacterFace.Joy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01)Adv.showCharacter(dl,0.3)
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Hậu phương mấy đứa đã vất vả rồi.]],"VC_MC00_00_09_02_World_00009_YShirakawa")
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Lên theo lối này sẽ ra đến bãi đáp trực thăng.]],"VC_MC00_00_09_02_World_00010_YShirakawa")
Adv.actEnum(dl,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Còn khu ký túc xá nằm ở hướng bên kia.]],"VC_MC00_00_09_02_World_00011_YShirakawa")
Adv.actEnum(dl,AdvCharacterFace.Joy,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Nếu được Tư lệnh công nhận, chắc chắn mấy đứa cũng sẽ được cấp riêng chiến cơ chuyên dụng.]],"VC_MC00_00_09_02_World_00012_YShirakawa")
Adv.actEnum(dl,AdvCharacterFace.Joy,AdvCharacterEyes.EyeClose,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Chị rất mong chờ ngày chúng ta cùng kề vai sát cánh trên chiến trường.]],"VC_MC00_00_09_02_World_00013_YShirakawa")
Adv.actEnum(dl,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_01,0.3)
Adv.talkAllIn(dl,"Thiếu nữ quý tộc",[[Tới đây thôi, hẹn gặp lại sau nhé.]],"VC_MC00_00_09_02_World_00014_YShirakawa")Adv.hide(dl,0.2)end)Field.moveBy("YShirakawa",Vec(-2,0,4),3)Wait(1)
Transition.start()Wait(1)Field.remove("YShirakawa")
Field.remove("SKura")Field.remove("MTsukishiro")
Field.remove("CSugahara")Field.remove("MKiryu")Field.remove("HOgasawara")
PurgeCache()Transition.finish()end
function LookAtNarvy()Field.deleteGayaBalloonFollowerAll()
StopRoutine(rDzL7SVO)EmptyEvent("EventNarvy")
Field.turnToTargetAll("EventNarvy",0.3)Transition.start()
Field.setPosition("Player",Vec(0,0,30))
Field.setPosition("Follower/KAsakura",Vec(0.5,0,29))
Field.setPosition("Follower/TTojo",Vec(-1.2,0,30.3))
Field.setPosition("Follower/YIzumi",Vec(-0.6,0,30.45))Field.turnTo("Follower/KAsakura",-108.5,0)Field.turnTo("Follower/TTojo",
-216,0)
Field.turnTo("Follower/YIzumi",-146,0)Field.turnToTarget("EventNarvy","Player",0)
Field.setLookAtTargetAll("EventNarvy",0)Field.startEvent()
Field.setCameraCompositionEx(Vec(2.260,0.550,30.120),Vec(5.000,255.000,0.000),30.00)Wait(1)Transition.finish()
Yield("Lua/Story/MC00/Day00/Novel/MC00_00_09_05")Field.finishEvent()Field.disableLookAtAll()
Field.resetPosition()Field.resetDirection(180)
Field.resetFollowerPosition()end
function AutoTalk_BIYamawaki()EmptyEvent("BIYamawaki")
Field.talkByGayaBalloon("BIYamawaki",[[Lại qua được một ngày nữa rồi...]],2,
nil,nil,nil,"VC_MC00_00_09_02_World_00015_BIYamawaki")
Field.talkByGayaBalloon("YBungo",[[Ngày mai cũng siêu đáng mong chờ đó hen!]],2,nil,nil,nil,"VC_MC00_00_09_02_World_00016_YBungo")end
function GayaTalkWith31APart1()
Field.talkByGayaBalloon("Follower/KAsakura",[[Khu ký túc xá đó trông ra sao ta...]],2,nil,nil,-1,"VC_MC00_00_09_02_World_00017_KAsakura")
Field.talkByGayaBalloon("Follower/TTojo",[[Này, cậu đoán xem thứ ở kia là gì nào?]],2,nil,nil,-1,"VC_MC00_00_09_02_World_00018_TTojo")end
function GayaTalkWith31APart2()
Field.talkByGayaBalloon("Follower/KAsakura",[[Không biết họ làm cách nào mà đếm được từng người nhỉ?]],2,nil,nil,-1,"VC_MC00_00008_v002_KAsakura")
Field.talkByGayaBalloon("Follower/TTojo",[[Không chừng một ai đó đang ngồi sau bấm máy đếm tạch tạch đấy.]],3,nil,nil,-1,"VC_MC00_00009_v002_TTojo")
Field.talkByGayaBalloon("Follower/TTojo",[[Kiểu như hội điểu học chuyên kiểm đếm chim trời ấy mà.]],2,nil,nil,-1,"VC_MC00_00010_v002_TTojo")
Field.talkByGayaBalloon("Follower/YIzumi",[[Sức mấy mà có vụ đó...]],2,nil,nil,nil,"VC_MC00_00011_v002_YIzumi")end
function GayaTalkWith31APart3()
Field.talkByGayaBalloon("Follower/TTojo",[[Trực thăng luôn kìa! Hóng quá đi mất!]],2,"Normal",0,-1,"VC_MC00_00_09_02_World_00025_TTojo")
Field.talkByGayaBalloon("Follower/YIzumi",[[Cũng dữ ta...]],2,"Normal",0,nil,"VC_MC00_00_09_02_World_00026_YIzumi")
Field.talkByGayaBalloon("Follower/KAsakura",[[Xem ra... vẫn có những tiền bối tử tế nhỉ.]],2,"Normal",0,-1,"VC_MC00_00_09_02_World_00027_KAsakura")end
function AutoTalk_Blocker()local sKPjQkdn=Adv.characterAsync("NNanase","Default")
local HHH9IlJp=Adv.characterAsync("YIzumi","Default")local uYz2ryy4=Adv.characterAsync("KAsakura","Default")
local zVPRGDnG=Adv.characterAsync("TTojo","Default")Field.turnToTargetAll("NNanase_3")
Field.startTalk("NNanase_3",FaceToFaceMode.Auto,function()
Adv.showCharacter(sKPjQkdn,0.3)local IKxw=GetLocalFlag("blockerCount")
if IKxw==0 then
Adv.talk(sKPjQkdn,[[Khu ký túc xá nằm dưới chân con dốc này.]],"VC_MC00_00_09_02_World_00028_NNanase")Adv.hide(sKPjQkdn,0.2)
if
Domain.getLatestChapterLabel()=="MC00"then local w0=Tutorial.start()
Tutorial.setMessage([[Chạm vào mũi tên trên bản đồ để di chuyển đến Ký túc xá.]],0,300,[[Theo hướng mũi tên trên bản đồ để di chuyển đến Ký túc xá.]])Tutorial.show()Tutorial.finish(w0)end;IncLocalFlag("blockerCount")elseif IKxw==1 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00029_NNanase")Adv.hide(sKPjQkdn,0.2)IncLocalFlag("blockerCount")elseif
IKxw==2 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này. Đứng từ đây cũng thấy mà?]],"VC_MC00_00_09_02_World_00030_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Ê, tính diễn cái trò này tới bao giờ nữa hả? Thôi giùm tôi cái đi...]],"VC_MC00_00_09_02_World_00031_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")elseif
IKxw==3 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(zVPRGDnG,AdvCharacterFace.Thought,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(zVPRGDnG,0.3)
Adv.actDelay(4,zVPRGDnG,"0900")
Adv.talk(zVPRGDnG,[[Đằng đó có mùi khả nghi phải không...? Tôi cũng vừa ngờ ngợ y như vậy luôn.]],"VC_MC00_00_09_02_World_00033_TTojo")Adv.hide_Wait(zVPRGDnG,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Khả nghi tới đâu thì ưu tiên hiện tại vẫn là di chuyển về khu ký túc xá.]],"VC_MC00_00_09_02_World_00034_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")elseif
IKxw==4 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(uYz2ryy4,AdvCharacterFace.Neutral,AdvCharacterEyes.EyeRightDir,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(uYz2ryy4,0.3)
Adv.talk(uYz2ryy4,[[Nhưng mà, biết đâu ở phía bên này cũng có Narby thì sao...]],"VC_MC00_00_09_02_World_00036_KAsakura")Adv.hide_Wait(uYz2ryy4,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Có hay không cũng mặc, việc quan trọng nhất bây giờ là tới được khu ký túc xá.]],"VC_MC00_00_09_02_World_00037_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")elseif
IKxw==5 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Shout,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth03,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Nghe rõ tới mòn cả màng nhĩ luôn là khác!]],"VC_MC00_00_09_02_World_00039_YIzumi")
Adv.talk(HHH9IlJp,[[Bên đây thì nghe mà, chỉ tại cái đám này không thèm nghe đấy chứ!]],"VC_MC00_00_09_02_World_00040_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")elseif
IKxw==6 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Đủ lắm rồi... Cứ chạy tới chạy lui chỗ này cho đến khi nào vừa lòng mấy người đi...]],"VC_MC00_00_09_02_World_00042_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")elseif
IKxw==7 then
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[Trò này là một phương pháp huấn luyện à? Hay là loại nghi thức cúng tế nào đó?]],"VC_MC00_00_09_02_World_00044_YIzumi")Adv.hide(HHH9IlJp,0.2)IncLocalFlag("blockerCount")else
Adv.talk(sKPjQkdn,[[Không nghe rõ sao? Khu ký túc xá là toà nhà nằm ở cuối con dốc này.]],"VC_MC00_00_09_02_World_00032_NNanase")Adv.hide_Wait(sKPjQkdn,0.2)
Adv.actEnum0(HHH9IlJp,AdvCharacterFace.Amazed,AdvCharacterEyes.EyeOpen,AdvCharacterMouth.Mouth01,AdvCharacterPose.Pose_03)Adv.showCharacter(HHH9IlJp,0.3)
Adv.talk(HHH9IlJp,[[......]],"VC_MC00_00_09_02_World_00046_YIzumi",
nil,nil,true)Adv.hide(HHH9IlJp,0.2)end end)
Field.moveToWaypointWait("Player","DormitoryPoint",2)Field.resetPosition("DormitoryPoint")end;function Exit_GoToDormitory1F()
Field.goToDormitory1F(function()Exit_World()end)end
function SleepingYoOhshima()
EmptyEvent("YoOhshima")
Field.talkByGayaBalloon("YoOhshima",[[Khò... khò...]],2,nil,nil,nil,"VC_FieldPlacementVoice_00027_YoOhshima")end
function RunningMuOhshima()EmptyEvent("MuOhshima")
Field.talkByGayaBalloon("MuOhshima",[[Hộc... hộc... hộc...]],2,nil,nil,
nil,"VC_FieldPlacementVoice_00033_MuOhshima")end