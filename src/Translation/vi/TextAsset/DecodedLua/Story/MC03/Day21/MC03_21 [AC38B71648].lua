ROUTINE()local bClTIa=Game.isLatestDay()PrepareDay()
local rDzL7SVO={"YShirakawa","MTsukishiro","SKura","MKiryu","CSugahara","HOgasawara","BIYamawaki","YBungo","MSatsuki","SSakuraba","MTenne","AKanzaki"}
local BW0WFP={"YShirakawa","MKiryu","CSugahara","HOgasawara","BIYamawaki","YBungo","MSatsuki","SSakuraba","MTenne","AKanzaki"}
Timebox("MC03_21_00_00","",function()
Novel("Lua/Story/MC03/Day21/Novel/MC03_21_00_00")end)
Timebox("MC03_21_01_00","",function()
Novel("Lua/Story/MC03/Day21/Novel/MC03_21_01_00")Novel("Lua/Story/MC03/Day21/Novel/MC03_21_01_01")end)
Timebox("MC03_21_03_00","",function()Domain.setDeckRule(rDzL7SVO)ConfirmDeck()
local X8=ExpeditionWorld("Expedition.MC03.OperationVega","Lua/Story/MC03/Day21/Expedition/MC03_21_03_00","MC03_OperationVega01","Area01","SavePoint_1")Sound.stopAllENV()
if X8 ==ExpeditionResult.TrueEnd then elseif X8 ==
ExpeditionResult.GoodEnd then ReturnTerminal()elseif X8 ==ExpeditionResult.BadEnd then
ReturnTerminal()end end)
Timebox("MC03_21_05_00","",function()
World("Lua/Story/MC03/Day21/World/MC03_21_06_00","Forest_OneRoadUp","GatePoint_2")Domain.setDeckRule(BW0WFP)ValidateDeck()
local JQT=ExpeditionWorld("Expedition.MC03.OperationVega","Lua/Story/MC03/Day21/Expedition/MC03_21_06_01","MC03_OperationVega02","Area01","GatePoint_2")Sound.stopAllENV()
if JQT==ExpeditionResult.TrueEnd then
Novel("Lua/Story/MC03/Day21/Novel/MC03_21_06_04")elseif JQT==ExpeditionResult.GoodEnd then ReturnTerminal()elseif JQT==
ExpeditionResult.BadEnd then ReturnTerminal()end end)
Timebox("MC03_21_06_00","",function()
World("Lua/Story/MC03/Day21/World/MC03_21_06_05","AegisTowerGate","StartPoint")
local AtYtR=ExpeditionWorld("Expedition.MC03.OperationVega","Lua/Story/MC03/Day21/Expedition/MC03_21_06_06","MC03_OperationVega03","Area01","GatePoint_2")Sound.stopAllENV()
if AtYtR==ExpeditionResult.TrueEnd then elseif AtYtR==
ExpeditionResult.GoodEnd then ReturnTerminal()elseif
AtYtR==ExpeditionResult.BadEnd then ReturnTerminal()end
World("Lua/Story/MC03/Day21/World/MC03_21_06_07","AegisTowerElevator","GatePoint_1Right")
World("Lua/Story/MC03/Day21/World/MC03_21_06_08","LaboratoryExtraArea","SavePoint_2")end)
Timebox("MC03_21_07_00","",function()
Novel("Lua/Story/MC03/Day21/Novel/MC03_21_07_00")Novel("Lua/Story/MC03/Day21/Novel/MC03_21_07_01")
Domain.setDeckRule(BW0WFP)ValidateDeck()
World("Lua/Story/MC03/Day21/World/MC03_21_07_02","LaboratoryExtraArea","CenterPointRight")
World("Lua/Story/MC03/Day21/World/MC03_21_07_03","AegisTowerElevator","GatePoint_1Right")end)
Timebox("MC03_21_07_05","",function()
if IsPlayingStoryHardMode()then
local ND2BCh3=BattleWithoutPartySelect("MC03_21_FlatHand1st","Lua/Story/MC03/Day21/Battle/MC03_21_07_05_Hard")if ND2BCh3 ~="Win"then ReturnTerminal()end else
World("Lua/Story/MC03/Day21/World/MC03_21_07_04","AegisTowerHallway","StartPoint")
local IODBg=BattleWithoutPartySelect("MC03_21_FlatHand1st","Lua/Story/MC03/Day21/Battle/MC03_21_07_05")if IODBg~="Win"then ReturnTerminal()end
Domain.clearDeckRule()
World("Lua/Story/MC03/Day21/World/MC03_21_07_06","AegisTowerBoss","StartPoint")Novel("Lua/Story/MC03/Day21/Novel/MC03_21_07_07")
World("Lua/Story/Common/StaffRoll/StaffRoll","WheatField","StartPoint")end end,true)
Timebox("MC03_21_08_00","",function()
Novel("Lua/Story/MC03/Day21/Novel/MC03_21_08_00")end,true)SetNextReturnTerminal(bClTIa)Exit()