local w0qyLbH=require'xlua.util'
Sound.returnNarashinoBGM=function(nsgji,bClTIa)nsgji=nsgji or 1
bClTIa=bClTIa or 2;local rDzL7SVO="SB0112"
local BW0WFP=GetLocalFlag("習志野フィールドBGM")
if GetLocalFlag("習志野フィールドBGM")~=0 then if
GetLocalFlag("習志野フィールドBGM")<10 then rDzL7SVO="SJ_00"..BW0WFP else
rDzL7SVO="SJ_0"..BW0WFP end end;Sound.playBGM(rDzL7SVO,nsgji,bClTIa)end
Sound.playBGMDelayWrapper=function(X8,JQT,AtYtR,ND2BCh3,IODBg)
Routine(function()Wait(X8)
Sound.playBGM(JQT,AtYtR,ND2BCh3)end)if IODBg~=nil then IODBg()end;Sound.playBGM(JQT)end
Sound.playStreetStore=function(YRDu,CWRiP,LB0A,dl,sKPjQkdn)LB0A=LB0A or 1;dl=dl or false
sKPjQkdn=sKPjQkdn or"Stop"local HHH9IlJp=Sound.playEx(CWRiP,LB0A,dl)
CS.LuaMethod.StreetStore_SetSkipSound(parent,YRDu,HHH9IlJp,sKPjQkdn)return HHH9IlJp end
Sound.stopAllBgmAndEnv=function(uYz2ryy4)Sound.stopBGM(uYz2ryy4)
Sound.stopBattleBGM(uYz2ryy4)Sound.stopAllENV(uYz2ryy4)end
Sound.stopAllBgmAndEnvV2=function(zVPRGDnG)Sound.stopBGM(zVPRGDnG)
Sound.stopBattleBGM(zVPRGDnG)Sound.stopAllEnvV2(zVPRGDnG)end
Sound.fadeOut=function(IKxw,w0)if w0 ==nil then w0=0 end;Sound.volume(IKxw,0,w0)
Routine(function()
Wait(w0)Sound.stop(IKxw)Sound.volume(IKxw,1,0)end)end;HomeNovel={}
HomeNovel.playBGM=function(UgXzI_C,MLFLplLe,jwq)
Sound.playBGM(UgXzI_C,MLFLplLe,jwq,1,true)end
HomeNovel.stopBGM=function(kw3ei0a)Sound.stopBGM(kw3ei0a,1)end