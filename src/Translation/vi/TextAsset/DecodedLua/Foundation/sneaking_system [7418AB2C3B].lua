local w0qyLbH=require'xlua.util'Sneaking={}
Sneaking.setTraceModeChangeFunction=function(nsgji,bClTIa)if bClTIa~=nil then
local rDzL7SVO=w0qyLbH.cs_generator(nsgji)
CoroutineYield(CS.LuaMethod.SetTraceModeChangeFunction(parent,rDzL7SVO,bClTIa))end end
Sneaking.setLoopModeChangeFunction=function(BW0WFP,X8)if X8 ~=nil then
local JQT=w0qyLbH.cs_generator(BW0WFP)
CoroutineYield(CS.LuaMethod.SetLoopModeChangeFunction(parent,JQT,X8))end end
Sneaking.setGameOverFunction=function(AtYtR,ND2BCh3)if ND2BCh3 ~=nil then local IODBg=function()
if AtYtR~=nil then Routine(AtYtR)end end
CS.LuaMethod.SetGameOverFunction(parent,IODBg,ND2BCh3)end end;Sneaking.getNearestPillarName=function()
return CS.LuaMethod.GetNearestPillarName()end
Sneaking.getMovePosition=function()
local YRDu=CS.LuaMethod.GetMovePosition()return Vec(YRDu.x,YRDu.y,YRDu.z)end;Sneaking.waitSwipe=function()
return CoroutineYield(CS.LuaMethod.WaitSwipe())end;Sneaking.exitCoverAction=function()
CS.LuaMethod.ExitCoverAction()end
Sneaking.executeQuickMoveAction=function(CWRiP,LB0A)return
CoroutineYield(CS.LuaMethod.ExecuteQuickMoveAction(parent,CWRiP,LB0A))end
Sneaking.resetSneakSetting=function()CS.LuaMethod.ResetSneakSetting()end