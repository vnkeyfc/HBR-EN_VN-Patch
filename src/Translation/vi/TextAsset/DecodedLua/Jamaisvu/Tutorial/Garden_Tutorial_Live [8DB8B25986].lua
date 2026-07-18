ROUTINE()
if GetFlag("Liveチュートリアル")==0 then
tutorial=Tutorial.start()Tutorial.waitUIOpen("UILiveMusicSelect")
Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[In Gig Mode, you play a rhythm mini-game featuring the game's songs.]])Tutorial.show()Tutorial.hideMask()
Tutorial.showDialog("LiveTutorial")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Start off by selecting a difficulty level.]],200,
-400)
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UILiveMusicSelect/container/levelBtn/btnEasy/button",nil,nil,nil,"Confirm","pad_ok")Tutorial.hideMask()
Tutorial.waitUIOpen("UILiveStartConfirm")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Clearing each of these missions will reward you with stars.]],0,
-150)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/liveMission")Tutorial.show()Wait(0.3)Tutorial.showMask()
Tutorial.setMessage([[You can edit the squad formation you wish to perform this gig from here.]],200,
-300)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/party/party/btnChoiceBase/btnChoice_1",false,0,"RootView/UI-Foreground/Main/UILiveStartConfirm/container/party/party/btnChoiceBase")Tutorial.hideMask()
Tutorial.waitUIOpen("UIParty")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Your gig score will increase the higher your squad's rating is.]],50,320)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UIParty/container/partyScrollView/party/totalStrengthGroup/totalStrength")Tutorial.show()Wait(0.3)
Tutorial.setMessage([[You can view your squad's gig skills from here.]],360,430,[[Press down on the right stick to view your gig skills.]])
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIParty/container/headerButton/btnLiveSkill")Tutorial.hideMask()
Tutorial.waitUIOpen("UILivePartySkillDialog")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Characters will activate different skills during a performance depending on their role.\nThe higher the rarity of a Memoria, the greater effect its skills will have.]],0,350)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UILivePartySkillDialog/container/scrollView")Tutorial.show()if(IsGamepadMode())then
Tutorial.setMessage([[]],0,0,[[Press the X button to return.]])end
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UILivePartySkillDialog/container/btnClose")Tutorial.waitUIClose("UILivePartySkillDialog")if
(IsGamepadMode())then
Tutorial.setMessage([[]],0,0,[[Press the X button to return.]])end
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UIParty/container/btnReturn")Tutorial.hideMask()
Tutorial.waitUIOpen("UILiveStartConfirm")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Press this button to begin your performance.]],0,
-230,[[Press the O button to begin your performance.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/buttons/btnStart")Tutorial.show()Tutorial.hideMask()Wait(1)
Tutorial.showDialog("Live2DTutorial")Tutorial.finish(tutorial)
SetFlag("Liveチュートリアル",1)SetFlag("Permission.Live",1)
SetFlag("Liveホームチュートリアル",1)SetFlag("Live2Dチュートリアル",1)
SetFlag("Live緩和チュートリアル",1)Tutorial.flagSave()Exit()CoroutineYield()end
if LiveMode.isRankingActive()and
GetFlag("LiveRankingチュートリアル")==0 then tutorial=Tutorial.start()
Tutorial.waitUIOpen("UILiveMusicSelect")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[You can move to GIG FEST from here.]],500,130,[[You can move to GIG FEST by pressing the △ button.]])
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UILiveMusicSelect/container/banner/bannerButton")Tutorial.hideMask()
Tutorial.waitUIOpen("UILiveRanking")Wait(0.7)
Tutorial.showDialog("LiveRankingTutorial")Wait(0.7)Tutorial.finish(tutorial)
SetFlag("LiveRankingチュートリアル",1)Tutorial.flagSave()Exit()CoroutineYield()end
if GetFlag("Live2Dチュートリアル")==0 then Wait(1)
Tutorial.showDialog("Live2DTutorial")SetFlag("Live2Dチュートリアル",1)
Tutorial.flagSave()Exit()CoroutineYield()end
if GetFlag("Live楽曲解放チュートリアル")==1 and
GetFlag("Live緩和チュートリアル")==0 then
tutorial=Tutorial.start()Wait(1)Tutorial.showMask()
Tutorial.setMessage([[You can now unlock a song's Easy to Hard difficulties\nwithout using stars by simply clearing its associated story.\nThe Expert difficulty is unlocked by clearing the song on Hard.]],0,0)Tutorial.show()
SetFlag("Live緩和チュートリアル",1)Tutorial.flagSave()Exit()CoroutineYield()end;Exit()