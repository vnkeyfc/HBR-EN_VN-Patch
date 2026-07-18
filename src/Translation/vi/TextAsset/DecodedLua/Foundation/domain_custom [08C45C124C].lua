
Domain.AC14_GetFlyerEffect=function(A)local w0qyLbH=0;if A==nil then
w0qyLbH=Domain.AC14_GetTotalFlyerConsumeGP("AC14")else w0qyLbH=A end
if w0qyLbH<1000 then return 3 end;return math.log(w0qyLbH,5)end
Domain.AC14_GetSaleEffect=function()
local nsgji=Domain.AC14_GetTotalEarning("AC14")if nsgji<=0 then return 3 end;return math.log(nsgji,9)end
Domain.AC14_GetReputeRank=function(bClTIa)return
Domain.AC14_GetReputeRankFromConsumeGp(bClTIa.flyerConsumedGpNum)end
Domain.AC14_GetReputeRankFromConsumeGp=function(rDzL7SVO)
local BW0WFP=Domain.AC14_GetReputeValue(rDzL7SVO)
if BW0WFP>=60000 then return 4 elseif BW0WFP>=51000 and BW0WFP<60000 then return 3 elseif BW0WFP>=39000 and BW0WFP<
51000 then return 2 elseif BW0WFP>=27000 and BW0WFP<39000 then return 1 end;return 0 end
Domain.AC14_GetReputeValue=function(X8)
local JQT=Domain.AC14_GetTotalStoryStreetStoreInfo("AC14")local AtYtR=1000;local ND2BCh3=2500;local IODBg=Domain.AC14_GetFlyerEffect(X8)
local YRDu=Domain.AC14_GetSaleEffect()local CWRiP=JQT.satisfiedDemandNum;local LB0A=ND2BCh3*CWRiP;local dl=AtYtR*IODBg*YRDu+
LB0A;if CS.LuaMethod.AC14_EnableForceReputeValue()==
true then
dl=CS.LuaMethod.AC14_GetForceReputeValue()end
CS.LuaMethod.AC14_SetReputeValue(dl)return dl end
Domain.AC14_GetCustomerCount=function(sKPjQkdn)local HHH9IlJp=1500
return math.floor(sKPjQkdn/HHH9IlJp)end
Domain.AC14_GetSellItemDisplayNum=function(uYz2ryy4)
local uYz2ryy4=uYz2ryy4 or Domain.AC14_GetExtendCount()
if uYz2ryy4 ==0 then return 4 elseif uYz2ryy4 ==1 then return 6 elseif uYz2ryy4 ==2 then return 7 elseif uYz2ryy4 ==3 then return 8 end;return 8 end
Domain.AC14_GetExtendConsumeGp=function(zVPRGDnG)
if zVPRGDnG==0 then return 1500 elseif zVPRGDnG==1 then return 5000 elseif zVPRGDnG==2 then return 10000 elseif
zVPRGDnG==3 then return 15000 end;return 1 end
_AC14_AverageCustomerSpend=function(IKxw)local w0=math.random(700,1300)/1000;if
IKxw<=9000 then return 5000*w0 end
local UgXzI_C=math.log(IKxw/3000,1.8)local MLFLplLe=2000;return UgXzI_C*MLFLplLe*w0 end
_AC14_PurchaseCriteria=function(jwq)local kw3ei0a=math.random(750,1000)/1000
local EspneS5=_AC14_AverageCustomerSpend(jwq)return EspneS5*kw3ei0a,EspneS5 end
Domain.AC14_salesOpportunity=function()
local LZeg0=Domain.AC14_GetTotalStoryStreetStoreInfo("AC14")
local OJZ=Domain.AC14_GetReputeValue(LZeg0.flyerConsumedGpNum)local nmuj=math.log(OJZ/3000,1.8)local bP=2000;return nmuj*bP end
Domain.AC14_CalculateCustomerItem=function(b4IqQW,iuGb)iuGb=iuGb or 9;_AssertIsNotNull(b4IqQW)
local koZU=CS.LuaMethod.AC14_CreateCustomerList(iuGb,b4IqQW,_AC14_PurchaseCriteria)local C={}local nmJGp_={}local h0v3PIV={}
for Uc=0,koZU.Count-1 do local JSkUQL=koZU[Uc].character
table.insert(C,JSkUQL)local PTUZ2v=koZU[Uc].itemList;local qlZeO3Pr={}
for Uc=0,PTUZ2v.Count-1 do
local QgyWztK=PTUZ2v[Uc]table.insert(qlZeO3Pr,QgyWztK)end;table.insert(nmJGp_,qlZeO3Pr)
local fG9zS=koZU[Uc].amountList;local WiXG={}for Uc=0,fG9zS.Count-1 do local Oo6ecUO=fG9zS[Uc]
table.insert(WiXG,Oo6ecUO)end
table.insert(h0v3PIV,WiXG)end;return C,nmJGp_,h0v3PIV end
Domain.AC14_GetTotalStoryStreetStoreInfo=function(b6SL0yka)b6SL0yka=b6SL0yka or"AC14"return
CS.LuaMethod.GetTotalStoryStreetStoreInfo(b6SL0yka)end;Domain.AC14_GetTotalEarning=function(hEk)
return CS.LuaMethod.GetTotalEarning(hEk)end
Domain.AC14_GetTotalFlyerConsumeGP=function(E8o)
local TdqFo=Domain.AC14_GetTotalStoryStreetStoreInfo(E8o)return TdqFo.flyerConsumedGpNum end
Domain.AC14_ResetDay=function(ykLF0)CS.LuaMethod.AC14_ResetDay(ykLF0)end
Domain.AC14_Reset=function()CS.LuaMethod.AC14_Reset()end
Domain.AC14_KnowExchangeDemand=function()
local cilhu=GetFlag("六宇亜イベント_2週目三野里交換の用件聞いた")
cilhu=cilhu+
GetFlag("六宇亜イベント_3週目三野里交換の用件聞いた")
cilhu=cilhu+
GetFlag("六宇亜イベント_4週目三野里交換の用件聞いた")return cilhu>0 end
Domain.AC14_SetExchangeFlag=function()local eVfN=Domain.getDivingDay()
local LBIJ=string.format("六宇亜イベント_%d週目三野里交換の用件聞いた",eVfN)SetFlag(LBIJ,1)end
Domain.AC14_showDialogAndSkipExpedition=function()
if(not
CS.LuaMethod.Resume("AC14_showDialogAndSkipExpedition"))then
Log("ExpeditionSkip レジューム中です。ここから再開すべきではありません")return end
if(not Domain.isClearedChapter("AC14"))then
Log("ExpeditionSkip AC14イベント未クリアなので探検スキップを出しません")return false end;if(not Domain.ExistsStoryItemRecord())then
Log("ExpeditionSkip 記録がありません")return false end
Transition.finish()Wait(0.5)local CSSp=false
local CBZIwYHI=UI.showMessageDialog("Skip this dungeon course's item collection?\nSkip it and the previous week's item collection results will be used instead.",1,
nil,nil,nil,false)Wait(0.5)
if(CBZIwYHI=="ok")then
Domain.AC14_ResetDay(Domain.getDivingStory())Domain.GrantStoryItemFromRecord()
UI.showMessageDialog("Item collection has been skipped. The previous week's results will be used.")CSSp=true end;Transition.start()return CSSp end