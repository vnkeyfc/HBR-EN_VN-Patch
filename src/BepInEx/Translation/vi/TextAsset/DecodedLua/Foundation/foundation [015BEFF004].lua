local w0qyLbH=require'xlua.util'INCLUDE=function(nsgji)end;ROUTINE=function()end;Exit=function()
CS.LuaMethod.Exit(parent)end
CoroutineYield=function(bClTIa)
if coroutine.isyieldable()then return
coroutine.yield(bClTIa)else
assert(false,"Routineの外側でRoutine命令を叩いています\n"..debug.traceback())end end
Routine=function(rDzL7SVO,BW0WFP)
if type(rDzL7SVO)=="string"then _AssertIsLuaPath(rDzL7SVO)
local X8=CS.LuaMethod.CallScript(parent,rDzL7SVO)if BW0WFP then
CoroutineYield(CS.LuaMethod.WaitLoadScript(X8))end;return X8 else
_AssertIsFunction(rDzL7SVO)
return parent:StartCoroutine(w0qyLbH.cs_generator(rDzL7SVO))end end
StopRoutine=function(JQT,AtYtR)if JQT==nil then return end
if
AtYtR~=nil and type(AtYtR)=="string"then
if CS.LuaMethod.IsValidScript(JQT)then JQT:KillRequest()end else parent:StopCoroutine(JQT)end end
RoutineWithKey=function(ND2BCh3,IODBg,YRDu)
CS.LuaMethod.CreateRoutineWithKey(parent,ND2BCh3,IODBg,w0qyLbH.cs_generator(YRDu))end
StopRoutineWithKey=function(CWRiP,LB0A)
CS.LuaMethod.RemoveRoutineWithKey(parent,CWRiP,LB0A)end
Yield=function(dl)
if type(dl)=="string"then _AssertIsLuaPath(dl)
CoroutineYield(CS.LuaMethod.YieldScript(parent,dl))else
CoroutineYield(parent:StartCoroutine(w0qyLbH.cs_generator(dl)))end end
InitScript=function(sKPjQkdn)_AssertIsLuaPath(sKPjQkdn)return
CS.LuaMethod.InitScript(parent,sKPjQkdn)end
InitScriptAt=function(HHH9IlJp,uYz2ryy4)if not MatchField(HHH9IlJp)then return end
_AssertIsLuaPath(uYz2ryy4)return CS.LuaMethod.InitScript(parent,uYz2ryy4)end
Log=function(zVPRGDnG)CS.LuaMethod.Log(parent,zVPRGDnG)end
FirebaseLog=function(IKxw)CS.LuaMethod.FirebaseLog(parent,IKxw)end
Wait=function(w0)if w0 ==0 then return end
CoroutineYield(CS.UnityEngine.WaitForSeconds(w0))end
WaitToPlayable=function(UgXzI_C)
CoroutineYield(CS.LuaMethod.WaitToPlayable(parent,UgXzI_C))end
WaitTap=function(MLFLplLe)MLFLplLe=MLFLplLe or 0;return
CoroutineYield(CS.LuaMethod.AddCollisionAndWait(parent,MLFLplLe))end
WaitVoiceEnd=function(jwq,kw3ei0a,EspneS5)kw3ei0a=kw3ei0a or 2.5;EspneS5=EspneS5 or false
if jwq~=nil and
EspneS5 ==false then
CoroutineYield(CS.LuaMethod.WaitMessageVoiceEnd(parent,jwq,kw3ei0a))else Wait(kw3ei0a)end end
WaitTapVoiceEnd=function(LZeg0,OJZ,nmuj)OJZ=OJZ or 0;nmuj=nmuj or false
if
LZeg0 ~=nil and nmuj==false then
CoroutineYield(CS.LuaMethod.WaitTapMessageVoiceEnd(parent,LZeg0,OJZ))else WaitTap(OJZ)end end
WaitVoiceEndPlayable=function(bP,b4IqQW,iuGb)b4IqQW=b4IqQW or 2.5;iuGb=iuGb or false
if
bP~=nil and iuGb==false then
CoroutineYield(CS.LuaMethod.WaitMessageVoiceEndPlayable(parent,bP,b4IqQW))else WaitToPlayable(b4IqQW)end end
WaitCurrentlyPlayingVoicesEnd=function()
CoroutineYield(CS.LuaMethod.WaitCurrentlyPlayingVoicesEnd())end