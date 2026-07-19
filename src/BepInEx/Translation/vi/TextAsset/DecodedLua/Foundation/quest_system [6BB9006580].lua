local w0qyLbH=require'xlua.util'Quest={}
Quest.isReceivable=function(nsgji)return
CS.LuaMethod.IsQuestReceivable(nsgji)end
Quest.unreceivableMessage=function(bClTIa)
return CS.LuaMethod.GetQuestUnreceivableMessage(bClTIa)end
Quest.isActiveCondition=function(rDzL7SVO)
return CS.LuaMethod.IsQuestActiveCondition(rDzL7SVO)end
Quest.isReceivableCondition=function(BW0WFP)
if Field.isPlayedFreeTimeAtLatestDay()then return false end
return CS.LuaMethod.IsQuestReceivableCondition(BW0WFP)end
Quest.receive=function(X8,JQT)result=nil
if Quest.isReceivableCondition(X8)then
CoroutineYield(CS.LuaMethod.ShowQuestReceiveDialog(parent,function(AtYtR)
result=AtYtR end,X8,JQT))else UI.unreceivableMessageDialog(X8,false)end
if result==QuestWindow.Receive then RemoveAllLinneEvent()end;return result end
Quest.stateUnreceivable=function(ND2BCh3)if
(Quest.getState(ND2BCh3)~=QuestState.Unreceived)then return false end;if Quest.isHasAnyActive()then
return true end
if Quest.isActiveCondition(ND2BCh3)then return false end;return true end
Quest.stateUnreceivablelinne=function(IODBg)if

(Quest.getState(IODBg)~=QuestState.Unreceived)and Quest.isActiveCondition(IODBg)~=true then return true end;return false end
Quest.stateReceivable=function(YRDu)if
(Quest.getState(YRDu)~=QuestState.Unreceived)then return false end;if
not Quest.isActiveCondition(YRDu)then return false end;return true end
Quest.stateStep=function(CWRiP,LB0A)
if not Quest.isReceivable(CWRiP)then return false end
if Quest.getState(CWRiP)~=QuestState.Ongoing then return false end;if Quest.getStep(CWRiP)~=LB0A then return false end
return true end
Quest.stateCleard=function(dl)
if CS.LuaMethod.IsBathTime(dl)then return false end
if not CS.LuaMethod.IsQuestCleared(dl)then return false end;if GetLocalFlag("ImmediatelyAfter."..dl)~=1 then
return false end;return true end
Quest.stateBathStep=function(sKPjQkdn)return CS.LuaMethod.IsBathTime(sKPjQkdn)end
Quest.getState=function(HHH9IlJp)return CS.LuaMethod.GetQuestState(HHH9IlJp)end
Quest.getClearCount=function(uYz2ryy4)
return CS.LuaMethod.GetQuestClearCount(uYz2ryy4)end
Quest.getStep=function(zVPRGDnG)return CS.LuaMethod.GetQuestStep(zVPRGDnG)end
Quest.clearStep=function(IKxw)CS.LuaMethod.ClearQuestStep(IKxw)end
Quest.clear=function(w0,UgXzI_C)Sound.playEmptyBGM(1)
SetLocalFlag("ImmediatelyAfter."..w0,1)UgXzI_C=nil or false;if(UgXzI_C)then Field.setSleep(true)else
PurgeField()end
CoroutineYield(CS.LuaMethod.ClearQuest(parent,w0))if(UgXzI_C)then Field.setSleep(false)end
if
Quest.getQuestType(w0)~="MobQuest"and
GetFlag("限界突破チュートリアル")==0 then
Tutorial.showDialog("limitbreak")SetFlag("限界突破チュートリアル",1)
SetFlag("万能ピース変換チュートリアル",1)end end
Quest.isHasAnyActive=function()return CS.LuaMethod.IsHasAnyActiveQuest()end
Quest.refreshState=function()Field.refreshScripts(true)end
Quest.getQuestBlanch=function(MLFLplLe)return GetLocalFlag(MLFLplLe.."_Blanch")end
Quest.setQuestBlanch=function(jwq,kw3ei0a)return SetLocalFlag(jwq.."_Blanch",kw3ei0a)end
Quest.isCleardOnce=function(EspneS5)return CS.LuaMethod.IsCleardOnce(EspneS5)end
Quest.TouchEvent=function(LZeg0,OJZ,nmuj,bP)
if Quest.getState(OJZ)~=QuestState.Ongoing then
ShowMapQuestIcon(LZeg0,OJZ)else ShowMapDestinationIcon(LZeg0)end;TouchQuestEvent(LZeg0,OJZ,nmuj,bP)end
Quest.LastBattleResult=function()
local b4IqQW=GetLocalFlag("Quest.LastBattleResult")if b4IqQW==1 then return"Win"elseif b4IqQW==2 then return"Lose"end;return""end
Quest.BattleWithFixedParty=function(iuGb,koZU,C,nmJGp_,h0v3PIV)
return
BattleCommon(koZU,nil,true,C,nmJGp_,h0v3PIV,function(Uc,JSkUQL)
if(Uc=="Win")then
SetLocalFlag("Quest.LastBattleResult",1)else SetLocalFlag("Quest.LastBattleResult",2)end;if not JSkUQL then Quest.clearStep(iuGb)end end,HowToGrant.LuaQuestBattle)end
Quest.mediatorBoy=function(PTUZ2v,qlZeO3Pr,fG9zS)Adv.fadeOut(0.5)_AssertIsNotNull(PTUZ2v)
_AssertIsNotNull(qlZeO3Pr)fG9zS=fG9zS or"Any of these jobs to your liking?"
local WiXG=""local QgyWztK=""
Field.startNovel(function()Layout.createStage(qlZeO3Pr)
Layout.show(PTUZ2v)Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,PTUZ2v,[[You lookin' for work, kid?]],"VC_MC04B_03456_v001_MediatorBoy")Layout.show()
CoroutineYield(CS.LuaMethod.OpenQuestOrderMenu(parent,fG9zS,autoReceive,"MediatorBoy",function(Oo6ecUO,b6SL0yka)
WiXG=Oo6ecUO;QgyWztK=b6SL0yka end))
if WiXG==QuestWindow.Receive then
if QgyWztK=="Quest_MC04B_NarashinoDome_Mob7"then
Transition.start()else Layout.show(PTUZ2v)
Adv.talkWithFacial(nil,nil,PTUZ2v,[[I'm counting on you, kid.]],"VC_Z_902200334_MediatorBoy")Transition.start()end else Layout.show(PTUZ2v)
Adv.talkWithFacial(nil,nil,PTUZ2v,[[If you're ever looking for work, come talk to me, kid.]],"VC_Z_902200335_MediatorBoy")Transition.start()end end)Layout.show()Adv.remove(qlZeO3Pr)return WiXG end
Quest.getQuestType=function(hEk)return CS.LuaMethod.GetQuestType(hEk)end;QuestEventFromMaster=function(E8o)
CS.LuaMethod.QuestEventFromMaster(parent,E8o)end
GeneralTalkFromMaster=function(TdqFo)
CS.LuaMethod.GeneralTalkFromMaster(parent,TdqFo)end;GayaTalkFromMaster=function(ykLF0)
CS.LuaMethod.GayaTalkFromMaster(parent,ykLF0)end