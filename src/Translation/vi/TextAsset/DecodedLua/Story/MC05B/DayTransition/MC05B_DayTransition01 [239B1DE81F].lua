function init()Routine(Play)end
function Play()
local A=Adv.loadImageAsync("Still/MC05B1/Still_MC05B_01_12_01_001","ForegroundStill",0,0,1,0)
local w0qyLbH=Adv.loadImageAsync("Still/MC05B1/Still_MC05B_01_12_01_002","ForegroundStill",0,0,1,0)Adv.waitAsyncInstanceAll()Transition.finish()Sound.playBGM("",
nil,0,nil,true)
Adv.presetStill(A,0,0,1,0,0,"ForegroundStill")Adv.show(A)
local nsgji=Routine(function()Wait(1)
Sound.playEx2("SY_Day_Forward_01")Sound.playEx2("SY_Day_Forward_02")end)local bClTIa=UI.ShowDayFlowEffect()UI.BeginDayTransition()
local rDzL7SVO=Routine(function()
Adv.presetStill(w0qyLbH,0,0,1,0,0,"ForegroundStill")Adv.show(w0qyLbH,1)Wait(0.5)
Sound.playEx2("SY_Day_Forward_03")end)UI.EndDayTransition(false)Transition.start()
StopRoutine(nsgji)StopRoutine(rDzL7SVO)Adv.remove(A)
Adv.remove(w0qyLbH)Adv.remove(bClTIa)Exit()end