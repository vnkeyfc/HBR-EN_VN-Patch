ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtNarvySquare_MC02_ADV")
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[(I'm at Narby Square, but what should I do?)]],"VC_ActivityAtNarvySquare_MC02_ADV_00000_RKayamori")end)
if

Field.isItPossibleActivity([[Hang out at Narby Square today?]],[[Hang out]],[[Leave]],[[Spend time at Narby Square to raise your Kindness.]],Domain.isSelectedAnyReachedLimitActivitySixSense(SixSense.ACTIVITY_KIND))and Domain.validateActivitySixSense(SixSense.ACTIVITY_KIND)then Field.startActivity()
Field.playerGetOut("NarvySquarePoint",Vec(-2,0,0),1)Field.stopTaskKey("Player")PurgeField()
Field.startNovel(ActivityAtNarvySquare_MC02_ADV)Field.clearActivity()Exit_World()end;Exit()