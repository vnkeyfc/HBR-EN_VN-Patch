ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtLibrary_MC02_ADV")
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[(I'm at the library, but what should I do?)]],"VC_ActivityAtLibrary_MC02_ADV_00000_RKayamori",nil)end)
if

Field.isItPossibleActivity([[Hang out at the library today?]],[[Hang out]],[[Leave]],[[Spend time at the Library to raise your Openness.]],Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_HEART))and Domain.validateActivitySixSense(SixSense.ACTIVITY_HEART)then Field.startActivity()
Field.playerGetOut("LibraryPoint",Vec(0,0,5),1)Field.stopTaskKey("Player")PurgeField()
Field.startNovel(ActivityAtLibrary_MC02_ADV)Field.clearActivity()Exit_World()end;Exit()