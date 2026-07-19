local w0qyLbH=require'xlua.util'Duel={}
Duel.getStep=function(nsgji)return
CS.LuaMethod.GetDuelStep(nsgji)end
Duel.setStep=function(bClTIa,rDzL7SVO)CS.LuaMethod.SetDuelStep(bClTIa,rDzL7SVO)end
Duel.clearStep=function(BW0WFP)CS.LuaMethod.ClearDuelStep(BW0WFP)end
Duel.finish=function(X8)CS.LuaMethod.FinishDuel(parent,X8)
if
Duel.getLastResult(X8)==1 and not Duel.isTutorial(X8)then
if not
Domain.lastDiveIsMainStoryLatestDay()then
local JQT=UI.showMessageDialog([[Quay về Màn hình chính?]],1,0,"Notification")if JQT==Dialog.OK then ReturnTerminal()end end end end;Duel.getLastResult=function(AtYtR)
return CS.LuaMethod.GetLastGameResult(AtYtR)end
Duel.isReceivable=function(ND2BCh3)return
CS.LuaMethod.Duel_IsGameReceivable(ND2BCh3)end
Duel.isActiveCondition=function(IODBg)
return CS.LuaMethod.IsDuelActiveCondition(IODBg)end;Duel.isSecretCharacter=function(YRDu)
return CS.LuaMethod.IsSecretCharacter(YRDu)end
Duel.isReceivableCondition=function(CWRiP)if
Field.isPlayedFreeTimeAtLatestDay()then return false end;return
CS.LuaMethod.IsDuelReceivableCondition(CWRiP)end
Duel.startGame=function(LB0A)Field.pauseEnvironmentSound()Adv.fadeIn(1)
local dl=nil
CoroutineYield(CS.LuaMethod.StartDuel(parent,LB0A,function(sKPjQkdn)dl=sKPjQkdn end))Field.resumeEnvironmentSound()end
Duel.DuelEventFromMaster=function(HHH9IlJp)
CS.LuaMethod.DuelEventFromMaster(parent,HHH9IlJp)end
Duel.TouchEvent=function(uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C)if Duel.isSecretCharacter(zVPRGDnG)and not
Duel.isActiveCondition(zVPRGDnG)then
EmptyEvent(uYz2ryy4)return end
if UgXzI_C then
ShowMapDuelIcon(UgXzI_C,zVPRGDnG)else ShowMapDuelIcon(uYz2ryy4,zVPRGDnG)end
if Duel.isReceivable(zVPRGDnG)then
Field.setBalloonType(uYz2ryy4,"DuelReceivable")else Field.setBalloonType(uYz2ryy4,"DuelUnReceivable")end
if not Duel.isActiveCondition(zVPRGDnG)then IKxw=function()
Duel.showDuelStartDialog(zVPRGDnG)end end
if
Game.isLatestTimebox()and CS.LuaMethod.IsFreeTimePlayed(parent)then
IKxw=function()
UI.showMessageDialog([[You have already played against this character during this free time period.\nYou may use "Relive Memories" to challenge her again.]])end end;TouchEventInternal(uYz2ryy4,IKxw,w0)end
Duel.showDuelStartDialog=function(MLFLplLe)local jwq=""
CoroutineYield(CS.LuaMethod.ShowDuelStartDialog(parent,MLFLplLe,function(kw3ei0a)jwq=kw3ei0a end))return jwq end
Duel.startWithoutStartDialog=function(EspneS5,LZeg0)
CS.LuaMethod.StartDuelWithoutStartDialog(EspneS5)end
Duel.isTutorial=function(OJZ)return CS.LuaMethod.Duel_IsTutorial(OJZ)end