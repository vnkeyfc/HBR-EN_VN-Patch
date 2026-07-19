INCLUDE("Lua/Jamaisvu/GateBoss/GateBoss02Common")function init()
Log("ゲートボス開始")FieldSound.requestFieldBGM("SB0009",1,1)
refresh()end
function refresh()
Log("ゲートボスリフレッシュ")StartEvent(StartGateBoss)end