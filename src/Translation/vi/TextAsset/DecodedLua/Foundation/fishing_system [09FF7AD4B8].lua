local w0qyLbH=require'xlua.util'Fishing={}FishingScale={}
FishingScale.None=-1;FishingScale.Small=0;FishingScale.Middle=1
FishingScale.Large=2;FishingScale.OverLarge=3
Fishing.getFishInfoWithLabel=function(nsgji)return
CS.LuaMethod.GetFishInfoWithLabel(nsgji)end
Fishing.getFishInfoWithId=function(bClTIa)
return CS.LuaMethod.GetFishInfoWithId(bClTIa)end
Fishing.getFishingRodInfo=function(rDzL7SVO)rDzL7SVO=rDzL7SVO or"rodLevelGroupLabel1"return
CS.LuaMethod.GetFishingRodInfo(rDzL7SVO)end
Fishing.catchUpFish=function(BW0WFP,X8,JQT,AtYtR,ND2BCh3)_AssertIsNotNull(BW0WFP)
X8=X8 or"rodLevelGroupLabel1"
CoroutineYield(CS.LuaMethod.CatchUpFish(parent,BW0WFP,X8,JQT,AtYtR,ND2BCh3))end
Fishing.consumeFishingBait=function(IODBg,YRDu)
CS.LuaMethod.ConsumeFishingBait(IODBg,YRDu)end
Fishing.saleAllFishLineInfo=function()
CoroutineYield(CS.LuaMethod.SaleAllFishLineInfo(parent))end
Fishing.saleAllFish=function()CS.LuaMethod.SaleAllFish(parent)end
Fishing.takeOutFish=function(CWRiP)_AssertIsNotNull(CWRiP)local LB0A=""
Yield(function()
local dl=CS.LuaMethod.GetActiveFishInfoList()if dl.Count<=0 then
Adv.question([[You didn't get any fish.]],[[Nothing]])return end
if dl.Count==1 then
LB0A=dl[0].label;_SetFishingFlags(CWRiP,LB0A)return LB0A end
if dl.Count<=4 then local sKPjQkdn=nil;local HHH9IlJp=nil
for zVPRGDnG=0,dl.Count-1 do
local IKxw=Adv.FormatText("{0}",dl[zVPRGDnG].fishName)
local w0=GetFlag("TakeOutCount_"..dl[zVPRGDnG].label)if w0 >0 and dl[zVPRGDnG].label~=""then
IKxw=Adv.FormatText("{0} again",IKxw)end;if sKPjQkdn==nil then sKPjQkdn=IKxw else
sKPjQkdn=Adv.FormatText("{0}|{1}",sKPjQkdn,IKxw)end
if HHH9IlJp==nil then HHH9IlJp="Flag(TakeOutCount_"..
dl[zVPRGDnG].label..") > 1"else HHH9IlJp=
HHH9IlJp..
"|".."Flag(TakeOutCount_"..dl[zVPRGDnG].label..") > 1"end end
local uYz2ryy4=Adv.question("What do I want to feed Rumi?",sKPjQkdn,0,false,nil,"Assets/Contents/Character/MAikawa/MAikawaOrdinaryOffcap/Image/AdvChoice/MAikawaOrdinaryOffcapThinking.png",
nil,HHH9IlJp)
if uYz2ryy4 <=dl.Count-1 then LB0A=dl[uYz2ryy4].label end else local UgXzI_C={}
for OJZ=0,dl.Count-1 do fishName=dl[OJZ].fishName
fishLabel=dl[OJZ].label;index=OJZ;local nmuj=math.floor(OJZ/3)local bP=OJZ%3
local b4IqQW={name=Adv.FormatText("{0}",fishName),fishLabel=fishLabel,page=nmuj,questionIndex=bP}table.insert(UgXzI_C,b4IqQW)end;local MLFLplLe=0;local jwq=0
if dl.Count%3 ==0 then
jwq=math.floor(dl.Count/3)else jwq=math.floor(dl.Count/3)+1 end;local kw3ei0a=""local EspneS5=nil;local LZeg0=Adv.FormatText("{0}","Next Page")
while
true do
for C,nmJGp_ in pairs(UgXzI_C)do local h0v3PIV=nmJGp_.name
local Uc=GetFlag("TakeOutCount_"..nmJGp_.fishLabel)if Uc>0 and nmJGp_.fishLabel~=""then
h0v3PIV=Adv.FormatText("{0} again",nmJGp_.name)end
if nmJGp_.page==MLFLplLe then if
kw3ei0a==""then kw3ei0a=h0v3PIV else
kw3ei0a=Adv.FormatText("{0}|{1}",kw3ei0a,h0v3PIV)end
if EspneS5 ==nil then EspneS5="Flag(TakeOutCount_"..
nmJGp_.fishLabel..") > 1"else EspneS5=
EspneS5 ..
"|".."Flag(TakeOutCount_"..nmJGp_.fishLabel..") > 1"end end end;kw3ei0a=Adv.FormatText("{0}|{1}",kw3ei0a,LZeg0)
EspneS5=EspneS5 .."|"
local iuGb=Adv.question([[]],kw3ei0a,0,false,nil,"Assets/Contents/Character/MAikawa/MAikawaOrdinaryOffcap/Image/AdvChoice/MAikawaOrdinaryOffcapThinking.png",nil,EspneS5)local koZU=-1
if iuGb==0 then koZU=MLFLplLe*3+1 elseif iuGb==1 then koZU=MLFLplLe*3+2 elseif iuGb==
2 then koZU=MLFLplLe*3+3 end
if koZU<0 or koZU>dl.Count then kw3ei0a=""EspneS5=nil;if jwq>MLFLplLe+1 then MLFLplLe=
MLFLplLe+1 else MLFLplLe=0 end else
LB0A=UgXzI_C[koZU].fishLabel;break end end end;if LB0A==""then return end;_SetFishingFlags(CWRiP,LB0A)end)return LB0A end
_SetFishingFlags=function(JSkUQL,PTUZ2v)
local qlZeO3Pr=CS.LuaMethod.GetFishInfoWithLabel(PTUZ2v)SetLocalFlag(JSkUQL,qlZeO3Pr.id)
local fG9zS="TakeOutCount_"..PTUZ2v;SetFlag(fG9zS,GetFlag(fG9zS)+1)end
Fishing.lotteryFish=function(WiXG,QgyWztK)WiXG=WiXG or"Narashino.Fishing"
QgyWztK=QgyWztK or"FishingBait.Mimizu"return CS.LuaMethod.LotteryFish(WiXG,QgyWztK)end
Fishing.selectBait=function()local Oo6ecUO=""
Yield(function()
local b6SL0yka=CS.LuaMethod.GetActiveLuaFishingBaitList()if b6SL0yka.Count<=0 then
Adv.question([[You don't got any bait.]],[[End]],0,true)Oo6ecUO=""return end
local hEk=Fishing.getFishingRodInfo()
if b6SL0yka.Count<=3 then local x1vCS0=nil;local Herp=nil
for Sb=0,b6SL0yka.Count-1 do local _OwI=hEk.level>=
b6SL0yka[Sb].needLevel
if x1vCS0 ==nil then
if not _OwI then
x1vCS0=Adv.FormatText("{0} unlocks at Lv. {1} (Held: {2})",b6SL0yka[Sb].name,tostring(b6SL0yka[Sb].needLevel),tostring(b6SL0yka[Sb].amount))Herp="FALSE"else
x1vCS0=Adv.FormatText("{0} (Held: {1})",b6SL0yka[Sb].name,tostring(b6SL0yka[Sb].amount))
if b6SL0yka[Sb].amount>0 then Herp="TRUE"else Herp="FALSE"end end else
if not _OwI then
x1vCS0=Adv.FormatText("{0} | {1} unlocks at Lv. {2} (Held: {3})",x1vCS0,b6SL0yka[Sb].name,tostring(b6SL0yka[Sb].needLevel),tostring(b6SL0yka[Sb].amount))Herp=Herp.."|FALSE"else
x1vCS0=Adv.FormatText("{0} | {1} (Held: {2})",x1vCS0,b6SL0yka[Sb].name,tostring(b6SL0yka[Sb].amount))if b6SL0yka[Sb].amount>0 then Herp=Herp.."|TRUE"else
Herp=Herp.."|FALSE"end end end end;x1vCS0=Adv.FormatText("{0}|{1}",x1vCS0,"Quit")
Herp=Herp.."|TRUE"local TNczSeT=Adv.question([[]],x1vCS0,0,true,Herp)if TNczSeT>
b6SL0yka.Count-1 then Oo6ecUO=""return else
Oo6ecUO=b6SL0yka[TNczSeT].label;return end end;local E8o={}
for GBDhi2D=0,b6SL0yka.Count-1 do baitName=b6SL0yka[GBDhi2D].name
baitLabel=b6SL0yka[GBDhi2D].label;baitAmount=b6SL0yka[GBDhi2D].amount
needLevel=b6SL0yka[GBDhi2D].needLevel;index=GBDhi2D;local XDYs=math.floor(GBDhi2D/3)local JyOmN=GBDhi2D%3;local Gu2sqpyD=
hEk.level>=needLevel
local N_Pk={name=baitName,baitLabel=baitLabel,baitAmount=baitAmount,needLevel=needLevel,page=XDYs,questionIndex=JyOmN,selectable=Gu2sqpyD}table.insert(E8o,N_Pk)end;local TdqFo=Adv.FormatText("{0}","End")
local ykLF0={name=TdqFo,baitLabel="",baitAmount=-1,needLevel=0,page=math.floor(b6SL0yka.Count/3),questionIndex=
(b6SL0yka.Count)%3,selectable=true}table.insert(E8o,ykLF0)local cilhu=0;local eVfN=
math.floor(b6SL0yka.Count/3)+1;local LBIJ=""local CSSp=""
local CBZIwYHI=Adv.FormatText("{0}","Next Page")
while true do
for s4,EF in pairs(E8o)do
if EF.page==cilhu then
if LBIJ==""then
if not EF.selectable then
LBIJ=Adv.FormatText("{0} unlocks at Lv. {1} (Held: {2})",EF.name,tostring(EF.needLevel),tostring(EF.baitAmount))CSSp="FALSE"else
if EF.baitAmount<0 then
LBIJ=Adv.FormatText("{0}",EF.name)CSSp="FALSE"else
LBIJ=Adv.FormatText("{0} (Held: {1})",EF.name,tostring(EF.baitAmount))CSSp="TRUE"end end else
if not EF.selectable then
LBIJ=Adv.FormatText("{0} | {1} unlocks at Lv. {2} (Held: {3})",LBIJ,EF.name,tostring(EF.needLevel),tostring(EF.baitAmount))CSSp=CSSp.."|FALSE"else
if EF.baitAmount<0 then
LBIJ=Adv.FormatText("{0}|{1}",LBIJ,EF.name)CSSp=CSSp.."|FALSE"else
LBIJ=Adv.FormatText("{0} | {1} (Held: {2})",LBIJ,EF.name,tostring(EF.baitAmount))CSSp=CSSp.."|TRUE"end end end end end;LBIJ=Adv.FormatText("{0}|{1}",LBIJ,CBZIwYHI)
CSSp=CSSp.."|TRUE"local G_v887o0=Adv.question([[]],LBIJ,0,true,CSSp)local oiM7BRAl=-1
if
G_v887o0 ==0 then oiM7BRAl=cilhu*3+1 elseif G_v887o0 ==1 then oiM7BRAl=cilhu*3+2 elseif G_v887o0 ==2 then oiM7BRAl=
cilhu*3+3 end
if oiM7BRAl<0 or oiM7BRAl>b6SL0yka.Count+1 then LBIJ=""if eVfN>
cilhu+1 then cilhu=cilhu+1 else cilhu=0 end else
Oo6ecUO=E8o[oiM7BRAl].baitLabel;return end end end)return Oo6ecUO end
Fishing.getActiveFishInfoListCount=function()
local wYFDyw8=CS.LuaMethod.GetActiveFishInfoList()return wYFDyw8.Count end
Fishing.showFishGauge=function(JyI,hncZR4my,KqeVtj)JyI=JyI or 0;hncZR4my=hncZR4my or 0
CoroutineYield(CS.LuaMethod.ShowFishGauge(parent,JyI,hncZR4my,KqeVtj))end;Fishing.removeFishGauge=function(LD)
CS.LuaMethod.RemoveFishGauge(parent,LD)end
Fishing.upgradeRodLevelLimit=function()return
CS.LuaMethod.UpgradeRodLevelLimit()end
Fishing.totalFishAmount=function()return CS.LuaMethod.GetTotalFishAmount()end;Fishing.coolerBoxCapacity=function()
return CS.LuaMethod.GetCoolerBoxCapacity()end
Fishing.canStartFishing=function()
if
Fishing.totalFishAmount()>=Fishing.coolerBoxCapacity()then return false end;local Q=CS.LuaMethod.GetActiveLuaFishingBaitList()return
Q.Count>0 end
Fishing.getMostLargeActiveFishScale=function()
local QKTF34q3=CS.LuaMethod.GetActiveFishInfoList()if QKTF34q3.Count<=0 then return FishingScale.None end
local z=-1
for UD61M=0,QKTF34q3.Count-1 do if z<QKTF34q3[UD61M].scaleCategory then
z=QKTF34q3[UD61M].scaleCategory end end;return z end
Fishing.existActiveFish=function(Kmr_vDN)
if Kmr_vDN==nil or Kmr_vDN==""then return false end;local VJw9J2c=CS.LuaMethod.GetActiveFishInfoList()if
VJw9J2c.Count<=0 then return false end
for Q5oEQY=0,VJw9J2c.Count-1 do
local eVzQHT=VJw9J2c[Q5oEQY]if eVzQHT.label==Kmr_vDN then return true end end;return false end
Fishing.getFishingBaitTotalCount=function()
local bdl6box_=CS.LuaMethod.GetActiveLuaFishingBaitList()local o=0
for RMqe=0,bdl6box_.Count-1 do o=o+bdl6box_[RMqe].amount end;return o end;Fishing.showFishList=function()
CoroutineYield(CS.LuaMethod.ShowFishList(parent))end
Fishing.showFishGetMark=function()
CoroutineYield(CS.LuaMethod.ShowFishGetMark(parent))end
Fishing.isMaximumFishingRodLevelLimit=function(c6H01I5a)
c6H01I5a=c6H01I5a or"rodLevelGroupLabel1"local CuoodPvK=Fishing.getFishingRodInfo(c6H01I5a)return CuoodPvK.maxLevel>=
CuoodPvK.maxLevelLimit end