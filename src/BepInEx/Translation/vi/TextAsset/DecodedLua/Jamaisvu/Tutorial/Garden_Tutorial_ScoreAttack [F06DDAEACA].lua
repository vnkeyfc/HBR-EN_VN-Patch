ROUTINE()
if
GetFlag("スコアアタックリニューアル")==0 then
if

GetFlag("スコアアタックチュートリアル")==0 and Domain.getScoreAttackMaxClearLevel()>0 then
SetFlag("スコアアタックチュートリアル",1)end;if GetFlag("グレード初解放")==0 and
Domain.getScoreAttackMaxClearLevel()>=60 then
SetFlag("グレード初解放",1)end
SetFlag("スコアアタックリニューアル",1)end;if
GetFlag("スコアアタックチュートリアル")==1 then
SetFlag("スコアアタックトップチュートリアル",1)end
if
GetFlag("ScoreAttackAccessTutorial")==0 then tutorial=Tutorial.start()
Tutorial.showDialog("scoreattack1")Tutorial.finish(tutorial)
SetFlag("ScoreAttackAccessTutorial",1)end
if
GetFlag("スコアアタックトップチュートリアル")==0 then Tutorial.waitUIOpen("UIEventScoreAttack")
tutorial=Tutorial.start()
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UIEventScoreAttack/scoreAttack/leftContainer/btnContainer/btnReward")Tutorial.hideMask()Wait(0.7)
Tutorial.showMask()
Tutorial.setMessage([[You can confirm the high-score and cumulative-score rewards here.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(tutorial)
SetFlag("スコアアタックトップチュートリアル",1)end
if
GetFlag("スコアアタックチュートリアル")==0 then Tutorial.waitUIOpen("UIScoreAttackTop")
tutorial=Tutorial.start()Wait(0.7)Tutorial.showMask()
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UIScoreAttackTop/container/rightBox/selectLevelWindow/selectButton")Tutorial.hideMask()Wait(0.7)
Tutorial.showMask()
Tutorial.setMessage([[You can adjust the difficulty here.]])Tutorial.show()
Tutorial.setMessage([[First, try clearing this Score Challenge at the beginner difficulty.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(tutorial)
SetFlag("スコアアタックチュートリアル",1)end
if Domain.isOpenedCurrentScoreAttackGrade()and
GetFlag("グレード初解放")==0 then
Tutorial.waitUIOpen("UIScoreAttackTop")tutorial2=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You are now able to select the intensity level.]])Tutorial.show()
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UIScoreAttackTop/container/rightBox/scrollview")Tutorial.hideMask()Wait(0.7)
Tutorial.showMask()
Tutorial.setMessage([[Increasing the intensity will boost your score even higher.]])Tutorial.show()
Tutorial.showDialog("scoreattack2")
Tutorial.setMessage([[So mark the available checkboxes and aim for ever higher scores!]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(tutorial2)SetFlag("グレード初解放",1)end