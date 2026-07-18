ROUTINE()
INCLUDE("Lua/Story/MC05B/DayTransition/MC05B_DayTransition01")Log("MC05B2_DayTransition start")local w0qyLbH
if

Domain.getCurrentTimebox()~=nil and
(

Domain.getTimeBoxPlayerCharacterLabel()=="BIYamawaki"or
Domain.getTimeBoxPlayerCharacterLabel()=="BIYamawakiNoEyePatch"or
Domain.getTimeBoxPlayerCharacterLabel()=="BIYamawakiDirt"or
Domain.getTimeBoxPlayerCharacterLabel()=="BIYamawakiBloody")then
w0qyLbH="Assets/Contents/Character/BIYamawaki/BIYamawakiIsland/Image/Sleep/BIYamawakiIslandSleep.prefab"Log("MC05B2_DayTransition "..w0qyLbH)
Transition.setDayTransition(w0qyLbH)Transition.start()Exit()else
local nsgji=Domain.getDivingDay()
if nsgji==10 then
w0qyLbH="Assets/Contents/Character/KAsakura/Common/Image/Sleep/KAsakuraSleep.prefab"Log("MC05B2_DayTransition "..w0qyLbH)
Transition.setDayTransition(w0qyLbH)Transition.start()Exit()else Routine(Play)
Log("MC05B2_DayTransition MC05B_DayTransition01.lua")end end