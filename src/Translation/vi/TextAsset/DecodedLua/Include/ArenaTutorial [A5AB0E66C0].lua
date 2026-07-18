
TutorialArenaFirst=function()local A=Tutorial.start()Wait(0.5)
Tutorial.waitUIOpen("UIArenaTop")Tutorial.showMask()
Tutorial.setMessage([[Visiting the arena during free time gives you one experience-increasing item per day.]])Tutorial.show()
Tutorial.setMessage([[You can use items to level up units from the Squad menu.]],-300,-200,[[You can use such items to level up units from the Squad menu.\nPress the Options button to open up your mePad.]])
Tutorial.showFocusButton("RootView/UI3D/UIArenaTop/btnMenu")Tutorial.waitUIOpen("UIHudMenuList")
Tutorial.showFocusButton("RootView/UI3D/UIHudMenuList/Root/container/btnParty/button")Tutorial.waitUIOpen("UIParty")
Tutorial.disablePartySwipe()local w0qyLbH=Domain.getCurrentDeckHeadCharacterAt()
Tutorial.showFocusButtonRect(
"RootView/UI-Foreground/Main/UIParty/container/partyScrollView/party/members/member"..w0qyLbH.."/selectState/btnSelect",
nil,nil,nil,"次へ","pad_ok")Wait(0.2)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIParty/container/partyScrollView/party/customMenu/btnCharacter")Tutorial.enablePartySwipe()
Tutorial.waitUIOpen("UIPartyDetailCharacterSecond")
Tutorial.disablePartyDetailCharacterSecondSwipe()
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIPartyDetailCharacterSecond/container/viewTabLeft/leftTabButtonContainer/btnCLv/button",nil,
nil,"RootView/UI-Foreground/Main/UIPartyDetailCharacterSecond/container/viewTabLeft/leftTabButtonContainer/btnCLv/btnBase")Wait(0.2)
Tutorial.setMessage([[You can use upgrade items from here.\nTry battling in the arena once you've upgraded your team.]])Tutorial.show()
Tutorial.enablePartyDetailCharacterSecondSwipe()Tutorial.hideMask()Tutorial.finish(A)Tutorial.waitUIOpen("UIArenaTop",
nil,true)
A=Tutorial.start()Wait(0.5)Tutorial.showMask()
Tutorial.setMessage([[The GP you earn at the arena is used as currency within the base.\nUse your free time to earn more GP.]],0,0)Tutorial.show()Tutorial.hideMask()
Tutorial.finish(A)end
TutorialArenaBattleGuideFirst=function()local nsgji=Tutorial.start()Wait(0.5)
Tutorial.waitUIOpen("UIArenaTop")Tutorial.showMask()
Tutorial.setMessage([[You've unlocked the "Battle Familiarization" feature.]])Tutorial.show()
Tutorial.showDialog("ArenaTutorial_BattleGuide")Tutorial.finish(nsgji)end
TutorialArenaTrainingFirst=function()local bClTIa=Tutorial.start()Wait(0.5)
Tutorial.waitUIOpen("UIArenaTop")Tutorial.showMask()
Tutorial.setMessage([[You've unlocked the "Free Practice" feature.]])Tutorial.show()
Tutorial.showDialog("ArenaTutorial_TrainingMode")Tutorial.finish(bClTIa)end
TutorialArenaChallengeFirst=function()local rDzL7SVO=Tutorial.start()Wait(0.5)
Tutorial.waitUIOpen("UIArenaTop")Tutorial.showMask()
Tutorial.setMessage([[You've unlocked the "Proving Ground Challenges" feature.]])Tutorial.show()
Tutorial.showDialog("ArenaTutorial_ChallengeExercises")Tutorial.finish(rDzL7SVO)end