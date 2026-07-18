ROUTINE()
if




not Tutorial.isBlocked("blocker.secretBoss")and Domain.isClearedChapter("MC02")and
GetFlag("EventTop隠しボスチュートリアル")==0 and Domain.getShopPurchaseCount("Shop.Card")>0 and Domain.isAllCategoryMissionReceived("StoryEvent")and not Tutorial.isProgress()then tutorial=Tutorial.start()
Tutorial.waitUIOpen("UIEventHeader")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[The List of Targets allows you to view information on bosses appearing in events.]],0,100,[[The List of Targets allows you to view information on bosses appearing in events.\nPress the Left Stick to access the List of Targets.]])
Tutorial.setFocusRect("RootView/UI3D/UIEventHeader/commonBg/btnBossList")Tutorial.show()
SetFlag("EventTop隠しボスチュートリアル",1)Tutorial.flagSave()Tutorial.hideMask()
Wait(0.3)Tutorial.finish(tutorial)Exit()end;Exit()