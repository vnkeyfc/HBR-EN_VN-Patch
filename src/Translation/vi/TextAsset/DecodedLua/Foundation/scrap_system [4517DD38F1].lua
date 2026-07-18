local w0qyLbH=require'xlua.util'ScrapField={}
ScrapField.GetCustomScrapList=function()local nsgji={}
CS.LuaMethod.GetCustomScrapList(function(bClTIa,rDzL7SVO,BW0WFP)
local X8={name=bClTIa,num=rDzL7SVO,value=BW0WFP}table.insert(nsgji,X8)end)return nsgji end
ScrapField.saleScrap=function(JQT)JQT=JQT or""local AtYtR;local ND2BCh3
CoroutineYield(CS.LuaMethod.SaleScrap(parent,function(IODBg,YRDu)
AtYtR=IODBg;ND2BCh3=YRDu end,JQT))return AtYtR,ND2BCh3 end
ScrapField.hasScrap=function()local CWRiP,LB0A
CS.LuaMethod.HasScrap(function(dl,sKPjQkdn)CWRiP=dl;LB0A=sKPjQkdn end)return CWRiP,LB0A end
ScrapField.showScrapFieldStartDialog=function()
CoroutineYield(CS.LuaMethod.ShowScrapFieldStartDialog(parent))local HHH9IlJp=nil
CoroutineYield(CS.LuaMethod.ShowScrapFieldRecoverStaminaDialog(parent,function(uYz2ryy4)HHH9IlJp=uYz2ryy4 end))return HHH9IlJp end;ScrapField.startScrapField=function(zVPRGDnG)
CS.LuaMethod.StartScrapField(zVPRGDnG)end
ScrapField.showScrapFieldBackDialog=function(IKxw)local w0=
nil;if GetLocalFlag(IKxw)~=0 then return w0 end
CoroutineYield(CS.LuaMethod.ShowScrapFieldBackDialog(parent))local w0=nil
CoroutineYield(CS.LuaMethod.ShowScrapFieldBackRecoverStaminaDialog(parent,function(UgXzI_C)w0=UgXzI_C end))return w0 end
ScrapField.scrapFieldBacked=function(MLFLplLe)
if GetLocalFlag(MLFLplLe)~=0 then return end;CS.LuaMethod.ScrapFieldBacked()
SetLocalFlag(MLFLplLe,1)end
ScrapField.setDropItemPickupCallback=function(jwq,kw3ei0a)
CS.LuaMethod.SetDropItemPickupCallback(jwq,function()Routine(kw3ei0a)end)end