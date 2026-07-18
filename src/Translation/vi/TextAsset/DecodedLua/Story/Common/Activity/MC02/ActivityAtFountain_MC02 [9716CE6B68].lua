ROUTINE()
INCLUDE("Lua/Story/Common/Activity/MC02/ActivityAtFountain_MC02_ADV")
Field.goToFountain(function()Field.startActivity()PurgeField()
Field.startNovel(ActivityAtFountain_MC02_ADV)Field.clearActivity()Exit_World()end,true,[[Yeah]],[[Nah]],[[Should I do a street performance?]],[[Spend time at Fountain Square to raise your Openness.]])Exit()