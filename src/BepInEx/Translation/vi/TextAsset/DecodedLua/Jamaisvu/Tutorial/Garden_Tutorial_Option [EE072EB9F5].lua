ROUTINE()
if IsPcMode()and
GetFlag("キーコンフィグチュートリアル")==0 then tutorial=Tutorial.start()
Tutorial.waitUIOpen("UIOption")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Bạn có thể tuỳ chỉnh keybind thông qua Cài đặt.]])Tutorial.show()
Tutorial.showFocusButton("RootView/UI-Foreground/HudMenu/UIOption/container/container/tabs/settingTab")Tutorial.hideMask()Wait(0.7)
Tutorial.showMask()
Tutorial.scrollRectScrollToObject("RootView/UI-Foreground/HudMenu/UIOption/container/container/contents/setting","RootView/UI-Foreground/HudMenu/UIOption/container/container/contents/setting/Viewport/setting/boxKeyboard&Mouse")
Tutorial.showFocusButton("RootView/UI-Foreground/HudMenu/UIOption/container/container/contents/setting/Viewport/setting/boxKeyboard&Mouse/titleKeyConfig/btnKeyConfig")Tutorial.hideMask()
Tutorial.waitUIOpen("UIKeyConfig")Wait(0.7)Tutorial.showMask()
Tutorial.setMessage([[Hãy thử tuỳ chỉnh keybind mà bạn cảm thấy thích hợp nhất.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(tutorial)
SetFlag("キーコンフィグチュートリアル",1)Tutorial.flagSave()end