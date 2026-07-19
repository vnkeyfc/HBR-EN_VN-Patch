local w0qyLbH=require'xlua.util'MissileShooting={}
StartMissileShooting=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3)
bClTIa=bClTIa or-1.0;rDzL7SVO=rDzL7SVO or-1.0;BW0WFP=BW0WFP or-1.0;X8=X8 or nil;JQT=JQT or
nil;AtYtR=AtYtR or nil;ND2BCh3=ND2BCh3 or nil
Field.setActive(nsgji,true)Adv.fadeIn(0.5,true)result=""local IODBg=false
CoroutineYield(CS.LuaMethod.StartMissileShooting(parent,nsgji,bClTIa,rDzL7SVO,BW0WFP,function(YRDu)
result=YRDu;IODBg=true end,function(CWRiP)if X8 ==nil then CWRiP()else
Routine(function()X8()CWRiP()end)end end,function(LB0A)if
JQT==nil then LB0A()else
Routine(function()JQT()LB0A()end)end end,function(dl,sKPjQkdn,HHH9IlJp)if
AtYtR~=nil then AtYtR(dl,sKPjQkdn,HHH9IlJp)end end,function(uYz2ryy4,zVPRGDnG,IKxw)
if
ND2BCh3 ~=nil then ND2BCh3(uYz2ryy4,zVPRGDnG,IKxw)end end))while not IODBg do Wait(0.2)end;return result end
MissileShooting.ShowHud=function(w0,UgXzI_C)w0=w0 or"Main"UgXzI_C=UgXzI_C or-1.0
local MLFLplLe=nil
CoroutineYield(CS.LuaMethod.ShowMissileShootingHudHud(parent,w0,UgXzI_C,function(jwq)MLFLplLe=jwq end))return MLFLplLe end
MissileShooting.InMeteoriteShootingCursor=function(kw3ei0a,EspneS5,LZeg0)
CoroutineYield(CS.LuaMethod.InMeteoriteShootingCursor(parent,kw3ei0a,EspneS5,LZeg0))end
MissileShooting.OutMeteoriteShootingCursor=function(OJZ)
CS.LuaMethod.OutMeteoriteShootingCursor(parent,OJZ)end;MissileShooting.ChangeHudAlertForApproach=function()
CS.LuaMethod.ChangeHudAlertForApproach()end
MissileShooting.showSubtitleMessage=function(nmuj,bP,b4IqQW,iuGb,koZU,C,nmJGp_)
_AssertIsNotNull(nmuj)_AssertIsNotNull(bP)b4IqQW=b4IqQW or nil;iuGb=iuGb or 0.5;koZU=
koZU or b4IqQW;C=C or false;nmJGp_=nmJGp_ or false
if
MissileShooting.GetNowHitPoint()>0 then if not nmJGp_ then
Adv.AddBackLog(nmuj,bP,koZU,nil,nil)end
Adv.showSubtitleMessage(nmuj,bP,b4IqQW,iuGb,C,true)end end;MissileShooting.GetNowHitPoint=function()
return CS.LuaMethod.GetNowHitPoint()end
MissileShooting.GetTotalShotDownCount=function()return
CS.LuaMethod.GetTotalShotDownCount()end;MissileShooting.GetTotalDamage=function()
return CS.LuaMethod.GetTotalDamage()end
MissileShooting.GetShotDownCountInWave=function(h0v3PIV)h0v3PIV=
h0v3PIV or""
return CS.LuaMethod.GetShotDownCountInWave(h0v3PIV)end
MissileShooting.GetDamageInWave=function(Uc)Uc=Uc or""
return CS.LuaMethod.GetDamageInWave(Uc)end