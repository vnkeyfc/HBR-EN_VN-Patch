ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtStudio_MC02_ADV")
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[(I'm at the Studio, but what should I do?)]],"VC_Activity_00041_v002_RKayamori")end)
if

Field.isItPossibleActivity([[Spent time at the studio today?]],[[Hang out]],[[Leave]],[[Spend time at the Studio to raise Charisma.]],Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_CHARISMA))and Domain.validateActivitySixSense(SixSense.ACTIVITY_CHARISMA)then Field.startActivity()
Field.playerGetOut("StudioPoint",Vec(0,0,3))Field.stopTaskKey("Player")PurgeField()
Field.startNovel(ActivityAtStudio_MC02_ADV)Field.clearActivity()Exit_World()end;Exit()