ROUTINE()PrepareDay()
Timebox("MC02_19_03_00","",function()
Novel("Lua/Story/MC02/Day19/Novel/MC02_19_03_00")end)
Timebox("MC02_19_06_00","",function()
Novel("Lua/Story/MC02/Day19/Novel/MC02_19_06_00")Novel("Lua/Story/MC02/Day19/Novel/MC02_19_06_01")
local A=BattleWithoutPartySelect("MC02_19_Battle01","Lua/Story/MC02/Day19/Battle/MC02_19_06_02")
if A=="Win"then SetFlag("MC02_19_Result",1)
World("Lua/Story/MC02/Day19/World/MC02_19_06_03","CountryTownArena1","GatePoint_2")else SetFlag("MC02_19_Result",2)end;Novel("Lua/Story/MC02/Day19/Novel/MC02_19_06_04")end)
Timebox("MC02_19_08_00","",function()
if not IsPlayingStoryHardMode()then
Novel("Lua/Story/MC02/Day19/Novel/MC02_19_08_00")
ConfirmDeck([[Medusa\nRecommended Rating: 6,000\nVulnerabilities: Pierce\nResistances: Crush]])end
if IsPlayingStoryHardMode()then
ExpeditionWorld("Expedition.MC02.SpecialPatrol","Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02","MC02_SpecialPatrol02","Area02","GatePoint_1",false,false,true)else
ExpeditionWorld("Expedition.MC02.SpecialPatrol","Lua/Story/MC02/Common/SpecialPatrol/SpecialPatrol_MC02","MC02_SpecialPatrol01","Area01","GatePoint_1")end;Sound.stopAllENV()if not IsPlayingStoryHardMode()then
Novel("Lua/Story/MC02/Day19/Novel/MC02_19_08_02")end end,IsPlayingStoryHardMode())
Timebox("MC02_19_09_00","SB0012",function()
World("Lua/Story/MC02/Day19/World/MC02_19_09_00","MainStreetShop","StairsLowerPoint")end)BathTimebox("MC02_19_11_00",false)
Routine(function()
Yield("Lua/Story/MC02/Common/TimeLimit")Exit()end)