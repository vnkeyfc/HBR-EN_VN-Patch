ROUTINE()
if

not Tutorial.isBlocked("blocker.secretBoss")and GetFlag("EventSecretBossチュートリアル")==0 then tutorial=Tutorial.start()
Tutorial.waitUIOpen("UISecretBossTop")Wait(0.5)Tutorial.showMask()
if not
Domain.isClearedChapter("MC02")then
Tutorial.setMessage([[The List of Targets allows you to view information on bosses appearing in events.]],0,100)Tutorial.show()Wait(0.3)end
Tutorial.setMessage([[Select the icon for the boss to view its details.\nGrow your strength and continuing challenging stronger opponents!]],0,50)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UISecretBossTop/map/bossMap/mapBossIconContainer/AC0027/btnBossIcon")Tutorial.show()
SetFlag("EventSecretBossチュートリアル",1)
SetFlag("EventTop隠しボスチュートリアル",1)Tutorial.flagSave()Tutorial.hideMask()
Wait(0.3)Tutorial.finish(tutorial)Exit()end;Exit()