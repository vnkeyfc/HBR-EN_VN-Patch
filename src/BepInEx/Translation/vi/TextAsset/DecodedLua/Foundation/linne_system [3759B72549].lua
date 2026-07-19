local w0qyLbH=require'xlua.util'Linne={}
Linne.MessageCount=function()return
CS.LuaMethod.GetMessengerMessageCount()end
Linne.Receive=function(nsgji,bClTIa,rDzL7SVO)
CS.LuaMethod.MessengerAddReceiveMessage(nsgji,bClTIa,rDzL7SVO)end
Linne.ReceiveStamp=function(BW0WFP,X8,JQT)
CS.LuaMethod.MessengerAddReceiveStamp(BW0WFP,X8,JQT)end
Linne.Send=function(AtYtR,ND2BCh3)
CS.LuaMethod.MessengerAddSendMessage(AtYtR,ND2BCh3)end
Linne.SendStamp=function(IODBg,YRDu)
CS.LuaMethod.MessengerAddSendStamp(IODBg,YRDu)end
Linne.Inputing=function(CWRiP,LB0A)
CS.LuaMethod.MessengerAddInputingMessage(CWRiP,LB0A)end
Linne.Wait=function(dl,sKPjQkdn)
CoroutineYield(CS.LuaMethod.MessengerWait(dl,sKPjQkdn))end
LinneEvent=function(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe,jwq)UgXzI_C=UgXzI_C or false;w0=w0 or"None"
MLFLplLe=MLFLplLe or 0;jwq=jwq or false
return
CS.LuaMethod.MessengerEvent(parent,HHH9IlJp,uYz2ryy4,MLFLplLe,not IKxw,false,function(kw3ei0a)if(zVPRGDnG)then
Routine(function()
PlayerLock()zVPRGDnG(kw3ei0a)PlayerUnLock()
CS.LuaMethod.MessengerTalkEnd(kw3ei0a)end)end end,w0,UgXzI_C,"",jwq)end
RemoveLinneEvent=function(EspneS5,LZeg0)LZeg0=LZeg0 or 99
CS.LuaMethod.RemoveMessengerEvent(EspneS5,LZeg0)end
RemoveAllLinneEvent=function()CS.LuaMethod.RemoveAllMessengerEvent()end
LinneEventWithSender=function(OJZ,nmuj,bP,b4IqQW,iuGb,koZU,C,nmJGp_,h0v3PIV,Uc)nmJGp_=nmJGp_ or false;C=C or"None"
h0v3PIV=h0v3PIV or 0;koZU=koZU or false;Uc=Uc or false
return
CS.LuaMethod.MessengerEvent(parent,OJZ,bP,h0v3PIV,not iuGb,koZU,function(JSkUQL)if
(b4IqQW)then
Routine(function()PlayerLock()b4IqQW(JSkUQL)PlayerUnLock()
CS.LuaMethod.MessengerTalkEnd(JSkUQL)end)end end,C,nmJGp_,nmuj,Uc)end
LinneEventDirectToTalk=function(PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO)local b6SL0yka=""local hEk=true
LinneEvent(PTUZ2v,b6SL0yka,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,hEk)end
LinneEventDirectToTalkWithSender=function(E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ,CSSp)local CBZIwYHI=""
LinneEventWithSender(E8o,TdqFo,CBZIwYHI,ykLF0,cilhu,false,eVfN,LBIJ,CSSp,true)end