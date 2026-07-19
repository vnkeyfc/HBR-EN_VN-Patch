
UI.AC13_showEventDifficultyDialog=function(A)
return UI.showEventDifficultyDialog(nil,5000,11000,15000,A)end
UI.AC19_showEventDifficultyDialog=function(w0qyLbH,nsgji)nsgji=nsgji or 2;return
UI.showEventDifficultyDialogEx(nil,4000,11500,nil,"EASY","NORMAL","HARD",w0qyLbH,nsgji)end
UI.AC25_showEventDifficultyDialog=function(bClTIa)bClTIa=bClTIa or 1;return
UI.showEventDifficultyDialogForStoryLive(nil,false,bClTIa)end
UI.AC13_saveBattleResultOnce=function(rDzL7SVO,BW0WFP,X8,JQT)
if GetFlag(rDzL7SVO)==0 then if X8 ==nil then X8=JQT end;local AtYtR=X8;if
BW0WFP=="Win"then SetFlag(rDzL7SVO,1)if X8 >JQT then AtYtR=JQT end else
SetFlag(rDzL7SVO,2)X8=0;AtYtR=JQT end
SetFlag("國見イベント_合計ターン",
GetFlag("國見イベント_合計ターン")+X8)
SetFlag("國見イベント_合計ターンスコア用",
GetFlag("國見イベント_合計ターンスコア用")+AtYtR)end end
UI.AC13_showBattleLoseDialog=function()
while 1 ==1 do local ND2BCh3=UI.showEventBattleDefeatDialog()
if
ND2BCh3 =="choose"then local IODBg=UI.AC13_showEventDifficultyDialog()if IODBg==
"cancel"then else break end elseif ND2BCh3 =="giveup"then
local YRDu=UI.showMessageDialog([[Bỏ cuộc và quay về Màn hình chính?]],1,0,"Notification")if YRDu==Dialog.OK then Exit_BadEnd()break end elseif ND2BCh3 =="ok"then
break end end end
UI.AC13_CalcScoreResult=function()local CWRiP
if GetFlag("AC13難易度設定")==1 then CWRiP=51000 elseif
GetFlag("AC13難易度設定")==2 then CWRiP=78000 else CWRiP=120000 end;local LB0A
if
GetFlag("國見イベント_Day01勝敗")==1 and
GetFlag("國見イベント_Day02勝敗")==1 and
GetFlag("國見イベント_Day03勝敗")==1 then LB0A=3 elseif


GetFlag("國見イベント_Day01勝敗")==2 and
GetFlag("國見イベント_Day02勝敗")==1 and
GetFlag("國見イベント_Day03勝敗")==1 or
GetFlag("國見イベント_Day01勝敗")==1 and
GetFlag("國見イベント_Day02勝敗")==2 and
GetFlag("國見イベント_Day03勝敗")==1 or
GetFlag("國見イベント_Day01勝敗")==1 and
GetFlag("國見イベント_Day02勝敗")==1 and
GetFlag("國見イベント_Day03勝敗")==2 then LB0A=2 elseif


GetFlag("國見イベント_Day01勝敗")==2 and
GetFlag("國見イベント_Day02勝敗")==2 and
GetFlag("國見イベント_Day03勝敗")==1 or
GetFlag("國見イベント_Day01勝敗")==2 and
GetFlag("國見イベント_Day02勝敗")==1 and
GetFlag("國見イベント_Day03勝敗")==2 or
GetFlag("國見イベント_Day01勝敗")==1 and
GetFlag("國見イベント_Day02勝敗")==2 and
GetFlag("國見イベント_Day03勝敗")==2 then LB0A=1 else LB0A=0 end;local dl;if GetFlag("國見イベント_Day03勝敗")==1 then dl=CWRiP else
dl=0 end
local sKPjQkdn=GetFlag("國見イベント_合計ターン")
local HHH9IlJp=GetFlag("國見イベント_合計ターンスコア用")
local uYz2ryy4=math.floor((85-HHH9IlJp)/100*CWRiP)if(uYz2ryy4 <0)then uYz2ryy4=0 end;local zVPRGDnG=dl+uYz2ryy4;local IKxw
if
zVPRGDnG<=79999 then IKxw=0 elseif zVPRGDnG<=119999 then IKxw=1 elseif zVPRGDnG<=159999 then IKxw=2 elseif zVPRGDnG<=179999 then
IKxw=3 else IKxw=4 end
Log("UI.AC13_CalcScoreResult "..IKxw.." "..
dl.." "..uYz2ryy4 .." "..
zVPRGDnG.." "..sKPjQkdn.." "..LB0A)return IKxw,dl,uYz2ryy4,zVPRGDnG,sKPjQkdn,LB0A end
UI.AC14_OpenConfirmExtend=function()local w0=Domain.AC14_GetExtendCount()local UgXzI_C=w0+1
local MLFLplLe=Domain.AC14_GetGP()local jwq=Domain.AC14_GetExtendConsumeGp(UgXzI_C)
local kw3ei0a=Domain.AC14_GetSellItemDisplayNum(w0)local EspneS5=Domain.AC14_GetSellItemDisplayNum(UgXzI_C)
local LZeg0=Adv.FormatText("Expand the store?\nCurrent GP: {0}\nGP Required: {1}\nDisplayable Products: {2}→{3}",tostring(MLFLplLe),tostring(jwq),tostring(kw3ei0a),tostring(EspneS5))local OJZ=UI.showMessageDialog(LZeg0,1)
if OJZ==Dialog.OK then
if
MLFLplLe>=jwq then
SetLocalFlag("六宇亜イベント_増築の利用GP",jwq)return Dialog.OK else
UI.showMessageDialog("You don't have enough GP.")end end;return Dialog.CANCEL end
UI.setMissionNotificationVisible=function(nmuj,bP)nmuj=nmuj or"Story_NotificationUIVisible"
CS.LuaMethod.SetMissionNotificationVisible(nmuj,bP)end
UI.setMasterlySkillNotificationVisible=function(b4IqQW,iuGb)
b4IqQW=b4IqQW or"Story_NotificationUIVisible"
CS.LuaMethod.SetMasterlySkillNotificationVisible(b4IqQW,iuGb)end
UI.setTitleBadgeNotificationVisible=function(koZU,C)
koZU=koZU or"Story_NotificationUIVisible"
CS.LuaMethod.SetTitleBadgeNotificationVisible(koZU,C)end
UI.setNotificationUIVisible=function(nmJGp_)local h0v3PIV="Story_NotificationUIVisible"
UI.setMissionNotificationVisible(h0v3PIV,nmJGp_)
UI.setMasterlySkillNotificationVisible(h0v3PIV,nmJGp_)
UI.setTitleBadgeNotificationVisible(h0v3PIV,nmJGp_)end