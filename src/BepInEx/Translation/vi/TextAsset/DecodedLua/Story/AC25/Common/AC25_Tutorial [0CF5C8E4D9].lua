ROUTINE()
if
GetFlag("AC25_StoryLiveチュートリアル")==0 then local A=Tutorial.start()
Tutorial.waitUIOpen("UILiveStartConfirm")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[In this event, you will make progress by playing the Gig Mode mini-game instead of engaging in combat.]])Tutorial.show()Wait(0.3)
Tutorial.showDialog("AC25LiveTutorial")Wait(0.7)
Tutorial.setMessage([[You can edit the squad formation you wish to perform this gig from here.]],200,-300,[[Press the □ button to edit the squad formation you wish to perform this gig.]])
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/party/party/btnChoiceBase/btnChoice_1",false,0,"RootView/UI-Foreground/Main/UILiveStartConfirm/container/party/party/btnChoiceBase")Tutorial.hideMask()
Tutorial.waitUIOpen("UIParty")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Your gig score will increase the higher your squad's rating is.]],50,320)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UIParty/container/partyScrollView/party/totalStrengthGroup/totalStrength")Tutorial.show()Wait(0.3)
Tutorial.setMessage([[You can view your squad's gig skills from here.]],360,430,[[Press down on the right analog stick to view your gig skills.]])
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
Tutorial.setMessage([[You can adjust the Gig Mode settings from here.]],490,310,[[Press the OPTIONS button to adjust the Gig Mode settings.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/btnOption")Tutorial.show()
Tutorial.setMessage([[Press this button to finish preparations for your performance.]],0,-230,[[Press the O button to finish preparations for your performance.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UILiveStartConfirm/container/buttons/btnReady")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(A)SetFlag("AC25_StoryLiveチュートリアル",1)
Tutorial.flagSave()end;Exit()