ROUTINE()
if
GetFlag("UserProfileチュートリアル")==0 then local A=Tutorial.start()Wait(0.5)
Tutorial.showDialog("UserProfileTutorial")SetFlag("UserProfileチュートリアル",1)
Tutorial.finish(A)Tutorial.flagSave()end;Exit()