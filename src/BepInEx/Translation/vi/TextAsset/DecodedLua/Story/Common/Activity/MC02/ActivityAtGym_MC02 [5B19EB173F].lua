ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtGym_MC02_ADV")
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[(I'm at the gym, but what should I do?)]],"VC_ActivityAtGym_MC02_ADV_00000_RKayamori")end)
if

Field.isItPossibleActivity([[Train at the gym today?]],[[Train]],[[Don't train]],[[Train at the Gym to raise your Determination.]],Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_MENTAL))and Domain.validateActivitySixSense(SixSense.ACTIVITY_MENTAL)then Field.startActivity()
Field.playerGetOut("GymPoint",Vec(0,0,3))Field.stopTaskKey("Player")PurgeField()
Field.startNovel(ActivityAtGym_MC02_ADV)Field.clearActivity()Exit_World()end;Exit()