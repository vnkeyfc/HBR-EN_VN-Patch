ROUTINE()PrepareDay()
Timebox("MC02_06_03_00","",function()
Novel("Lua/Story/MC02/Day06/Novel/MC02_06_03_00")end)
Timebox("MC02_06_06_00","",function()
Novel("Lua/Story/MC02/Day06/Novel/MC02_06_06_00")ConfirmDeck()
local A=ExpeditionWorld("Expedition.MC02","Lua/Story/MC02/Common/Expedition/Expedition_MC02_Phase02","MC02_Phase02","Area02","GatePoint_1")Sound.stopAllENV()
if A==ExpeditionResult.TrueEnd then Log("ExpeditionResult: "..
"ゴール！")
SetFlag("MC02_06_Result",1)elseif A==ExpeditionResult.GoodEnd then
Log("ExpeditionResult: ".."離脱！")SetFlag("MC02_06_Result",2)elseif A==ExpeditionResult.BadEnd then Log(
"ExpeditionResult: ".."バトル敗北")
SetFlag("MC02_06_Result",3)end;Novel("Lua/Story/MC02/Day06/Novel/MC02_06_06_02")end)
Timebox("MC02_06_08_00","",function()
World("Lua/Story/MC02/Day06/World/MC02_06_08_00","MainStreet","CafeteriaPoint")end)BathTimebox("MC02_06_10_00",false)
Timebox("MC02_06_11_00","",function()
World("Lua/Story/MC02/Day06/World/MC02_06_11_00","Dormitory1F","BigBathPoint")Novel("Lua/Story/MC02/Day06/Novel/MC02_06_11_01")end)
Routine(function()Yield("Lua/Story/MC02/Common/TimeLimit")Exit()end)