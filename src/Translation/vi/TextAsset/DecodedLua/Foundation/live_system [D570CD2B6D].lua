local w0qyLbH=require'xlua.util'LiveMode={}
LiveMode.hasNewMusic=function()return
CS.LuaMethod.Live_HasNewMusic()end
LiveMode.showNewMusic=function()
CoroutineYield(CS.LuaMethod.Live_ShowNewMusic(parent))end;LiveMode.isRankingActive=function()
return CS.LuaMethod.Live_IsRankingActive()end
LiveMode.ConfirmLive=function(nsgji)
CoroutineYield(CS.LuaMethod.ConfirmLive(parent,nsgji))end
LiveMode.StartLive=function(bClTIa)local rDzL7SVO=nil
CoroutineYield(CS.LuaMethod.StartLive(parent,bClTIa,function(BW0WFP)rDzL7SVO=BW0WFP end))return rDzL7SVO end
LiveMode.IsSuccessLastStoryLive=function(X8)
return CS.LuaMethod.IsSuccessLastStoryLive(parent,X8)end
LiveMode.GetLastStoryLiveResult=function(JQT)
local AtYtR=CS.LuaMethod.GetLastStoryLiveScore(parent,JQT)
local ND2BCh3=CS.LuaMethod.GetLastStoryLiveUseAuto(parent,JQT)return AtYtR,ND2BCh3 end
LiveMode.GetSavedStoryLiveResult=function(IODBg)
local YRDu=CS.LuaMethod.GetSavedStoryLiveScore(parent,IODBg)
local CWRiP=CS.LuaMethod.GetSavedStoryLiveUseAuto(parent,IODBg)return YRDu,CWRiP end
LiveMode.GetStoryLiveTotalResult=function(LB0A)
local dl=CS.LuaMethod.GetStoryLiveTotalScoreNotUseAuto(parent,LB0A)
local sKPjQkdn=CS.LuaMethod.GetStoryLiveUseAutoAny(parent,LB0A)return dl,sKPjQkdn end