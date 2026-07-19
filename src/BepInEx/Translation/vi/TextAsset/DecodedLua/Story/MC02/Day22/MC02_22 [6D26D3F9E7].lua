ROUTINE()
INCLUDE("Lua/Story/MC02/Common/BadEnd/MC02_BadEnd")PrepareDay()
Timebox("MC02_22_03_00","",function()
Novel("Lua/Story/MC02/Day22/Novel/MC02_22_03_00")end)
Timebox("MC02_22_06_00","",function()
Novel("Lua/Story/MC02/Day22/Novel/MC02_22_06_00")local A;local w0qyLbH
A,w0qyLbH=BattleWithoutPartySelect("MC02_22_Battle01","Lua/Story/MC02/Day22/Battle/MC02_22_06_01")if A~="Win"then MC02_BadEnd_03()end
Novel("Lua/Story/MC02/Day22/Novel/MC02_22_06_02")
ConfirmDeck([[[Trainer] Gorgon\nRecommended Rating: 6,000\nVulnerabilities: Pierce\nResistances: None]])
A,w0qyLbH=BattleWithoutPartySelect("MC02_22_Battle02","Lua/Story/MC02/Day22/Battle/MC02_22_06_03")if A~="Win"then MC02_BadEnd_03()end
Novel("Lua/Story/MC02/Day22/Novel/MC02_22_06_04")Novel("Lua/Story/MC02/Day22/Novel/MC02_22_06_05")end)
Timebox("MC02_22_09_00","",function()
World("Lua/Story/MC02/Day22/World/MC02_22_09_00","MainStreet","CafeteriaPoint")end)
Timebox("MC02_22_10_00","",function()
Novel("Lua/Story/MC02/Day22/Novel/MC02_22_10_00")end)BathTimebox("MC02_22_11_00",false)
Routine(function()
Yield("Lua/Story/MC02/Common/TimeLimit")Exit()end)