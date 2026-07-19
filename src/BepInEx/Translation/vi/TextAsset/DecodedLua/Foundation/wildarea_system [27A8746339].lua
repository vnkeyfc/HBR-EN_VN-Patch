local w0qyLbH=require'xlua.util'WildArea={}StartWildAreaBattleSpot=function()
CS.LuaMethod.StartWildAreaBattleSpot()end;EndWildAreaBattleSpot=function()
CS.LuaMethod.EndWildAreaBattleSpot()end;WildArea.Start=function()return
CS.LuaMethod.WildArea_Start()end;WildArea.End=function()return
CS.LuaMethod.WildArea_End()end
WildArea.OnPushActionButton=function()return
CS.LuaMethod.WildArea_OnPushActionButton()end
WildArea.EnemyPrepareToAttack=function()
return CS.LuaMethod.WildArea_EnemyPrepareToAttack()end
WildArea.EnemyStartToAttack=function()
return CS.LuaMethod.WildArea_EnemyStartToAttack()end
WildArea.EnemyFinishAttacking=function()
return CS.LuaMethod.WildArea_EnemyFinishAttacking()end
WildArea.EnableShortWarp=function(nsgji)nsgji=nsgji or 100;return
CS.LuaMethod.WildArea_EnableShortWarp(nsgji)end
WildArea.ResisterDamageEvent=function(bClTIa,rDzL7SVO)return
CS.LuaMethod.WildArea_ResisterDamageEvent(parent,bClTIa,function()
if(rDzL7SVO)then Routine(function()
Yield(rDzL7SVO)end)end end)end
WildArea.StartLaserToPositionSequence=function(BW0WFP)return
CS.LuaMethod.WildArea_StartLaserToPositionSequence(BW0WFP)end
WildArea.EnableFieldEtherTwisterArea=function(X8,JQT)return
CS.LuaMethod.WildArea_enableFieldEtherTwisterArea(parent,X8,JQT)end
WildArea.EnableFieldEtherTwisterUnplayableAttack=function(AtYtR)return
CS.LuaMethod.WildArea_enableFieldEtherTwisterUnplayableUpdate(parent,AtYtR)end