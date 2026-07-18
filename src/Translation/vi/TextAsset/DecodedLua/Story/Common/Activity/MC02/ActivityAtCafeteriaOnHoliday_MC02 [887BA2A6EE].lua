ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtCafeteriaOnHoliday_MC02_ADV")
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[(I'm at the cafeteria, should I get something to eat?)]],"VC_ActivityAtCafeteriaOnHoliday_MC02_ADV_00000_RKayamori")end)
if

Field.isItPossibleActivity([[Have a meal at the cafeteria?]],[[Eat a meal]],[[Leave]],[[Spend time at the Cafeteria to raise Silliness.]],Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_NATURAL))and Domain.validateActivitySixSense(SixSense.ACTIVITY_NATURAL)then Field.startActivity()
Field.playerGetOut("CafeteriaPoint",Vec(-3,0,3))Field.stopTaskKey("Player")PurgeField()
Field.startNovel(ActivityAtCafeteriaOnHoliday_MC02_ADV)Field.clearActivity()Exit_World()end;Exit()