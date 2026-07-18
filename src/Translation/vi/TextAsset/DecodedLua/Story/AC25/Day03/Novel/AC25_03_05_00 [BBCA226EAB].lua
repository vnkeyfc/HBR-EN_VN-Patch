ROUTINE()
local nsgji=Adv.loadBGAsync("Background/InstructorRoom/InstructorRoom")local bClTIa=Adv.character("EAoi")
Adv.waitAsyncInstanceAll()
Layout.createStagePanL(nsgji,Position.BG_RIGHT_CENTER,10)Layout.showEx()
Adv.setPostEffectSepiaColor(0.5,0.5,SepiaColor0,0)
Adv.novelInitEx(function()Sound.playBGM("")Sound.playENV("")end)Wait(0.5)
Adv.talkWithTextInMiddle(bClTIa,[[I gave it my all during lessons and rehearsals...and soon enough, it was the day of the concert at the shopping district.]],"VC_AC25_v001_00757_EAoi",1,2,
nil,nil,White,nil,nil,nil,false,MessageArrowColor.Gray)Sound.stopAllENV(1)Sound.playEmptyBGM(1)
Exit_Novel()