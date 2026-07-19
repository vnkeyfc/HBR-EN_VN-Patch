ROUTINE()
INCLUDE("Lua/Story/MC02/Common/BadEnd/MC02_BadEnd")PrepareDay()
Timebox("MC02_21_03_00","",function()
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_03_00")end)
Timebox("MC02_21_06_00","",function()
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_06_00")local A;local w0qyLbH
A,w0qyLbH=BattleWithoutPartySelect("MC02_21_Battle01","Lua/Story/MC02/Day21/Battle/MC02_21_06_01")if A~="Win"then MC02_BadEnd_03()end
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_06_02")
ConfirmDeck([[[Trainer] Ivory Sculler\nRecommended Rating: 6,000\nVulnerabilities: Crush\nResistances: None]])
A,w0qyLbH=BattleWithoutPartySelect("MC02_21_Battle02","Lua/Story/MC02/Day21/Battle/MC02_21_06_03")if A~="Win"then MC02_BadEnd_03()end
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_06_04")end)
Timebox("MC02_21_09_00","",function()
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_09_00")end)
Timebox("MC02_21_10_00","",function()
World("Lua/Story/MC02/Day21/World/MC02_21_10_00","MainStreet","CafeteriaPoint")end)BathTimebox("MC02_02_11_00",false)
Timebox("MC02_21_12_00","",function()
Novel("Lua/Story/MC02/Day21/Novel/MC02_21_12_00")end)
Routine(function()Yield("Lua/Story/MC02/Common/TimeLimit")Exit()end)