local w0qyLbH=require'xlua.util'Domain={}
Domain.addLuaReward=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8)
rDzL7SVO=rDzL7SVO or 3;if BW0WFP==nil then BW0WFP=false end;X8=X8 or false;return
CoroutineYield(CS.LuaMethod.AddLuaReward(parent,nsgji,bClTIa,rDzL7SVO,BW0WFP,X8))end;Domain.isLuaRewardAcquired=function(JQT)
return CS.LuaMethod.IsLuaRewardAcquired(JQT)end
Domain.characterName=function(AtYtR)
local ND2BCh3=CS.LuaMethod.GetCharacterName(AtYtR)Adv.addLocalizedString(ND2BCh3)return ND2BCh3 end
Domain.tieLevel=function(IODBg)return CS.LuaMethod.GetTieLevel(IODBg)end
Domain.getSixSense=function(YRDu)return CS.LuaMethod.GetSixSense(YRDu)end
Domain.addSixSense=function(CWRiP,LB0A,dl)dl=dl or""
return CS.LuaMethod.AddSixSense(parent,CWRiP,LB0A,dl)end
Domain.addSixSenseByActivity=function(sKPjQkdn,HHH9IlJp)_AssertIsSixSenseActivityKey(sKPjQkdn)
local uYz2ryy4=Field.ClearActivity(sKPjQkdn,HHH9IlJp)if uYz2ryy4 >0 then
UI.showLineInfo(Domain._getSixSenseUpMessage(sKPjQkdn,uYz2ryy4),1,3)end
UI.showSixSenseDialog()end
Domain._getSixSenseUpMessage=function(zVPRGDnG,IKxw)
if
zVPRGDnG=="ActivityCharisma"or zVPRGDnG=="NovelCharisma"then
return Adv.FormatText("Charisma +{0}!",tostring(IKxw))elseif zVPRGDnG=="ActivityHeart"or zVPRGDnG=="NovelHeart"then return
Adv.FormatText("Openness +{0}!",tostring(IKxw))elseif
zVPRGDnG=="ActivityKind"or zVPRGDnG=="NovelKind"then
return Adv.FormatText("Kindness +{0}!",tostring(IKxw))elseif zVPRGDnG=="ActivityMental"or zVPRGDnG=="NovelMental"then return
Adv.FormatText("Determination +{0}!",tostring(IKxw))elseif
zVPRGDnG=="ActivityCrazy"or zVPRGDnG=="NovelCrazy"then
return Adv.FormatText("Eccentricity +{0}!",tostring(IKxw))elseif
zVPRGDnG=="ActivityNatural"or zVPRGDnG=="NovelNatural"then
return Adv.FormatText("Silliness +{0}!",tostring(IKxw))end;return"シックスセンス上昇！"end
Domain.addSixSenseByNovel=function(w0,UgXzI_C,MLFLplLe)_AssertIsSixSenseNovelKey(w0)
_AssertIsNotNull(MLFLplLe)local UgXzI_C=UgXzI_C or 1
local jwq=Domain.addSixSense(w0,UgXzI_C,MLFLplLe)if jwq>0 then
UI.showNotification(Domain._getSixSenseUpMessage(w0,jwq))end end
Domain.isSelectedAnyReachedLimitActivitySixSense=function(kw3ei0a)
if kw3ei0a~=nil then if type(kw3ei0a)~="table"then
kw3ei0a={kw3ei0a}end;for EspneS5=1,#kw3ei0a do
_AssertIsSixSenseActivityKey(kw3ei0a[EspneS5])end end
return CS.LuaMethod.IsReachedLimitActivitySixSense(kw3ei0a)end
Domain.isSelectedAllReachedLimitActivitySixSense=function(LZeg0)if LZeg0 ~=nil then
if type(LZeg0)~="table"then LZeg0={LZeg0}end
for OJZ=1,#LZeg0 do _AssertIsSixSenseActivityKey(LZeg0[OJZ])end end;return
CS.LuaMethod.IsSelectedAllReachedLimitActivitySixSense(LZeg0)end
Domain.validateActivitySixSense=function(nmuj)if nmuj~=nil then
if type(nmuj)~="table"then nmuj={nmuj}end
for bP=1,#nmuj do _AssertIsSixSenseActivityKey(nmuj[bP])end end;return
UI.validateActivitySixSense(nmuj)end
Domain.isJoinParty=function(b4IqQW)return CS.LuaMethod.IsJoinParty(b4IqQW)end
Domain.lastDiveIsMainStoryLatestDay=function()
return CS.LuaMethod.LastDiveIsMainStoryLatestDay()end;Domain.getLatestStoryLabel=function()
return CS.LuaMethod.GetLatestStoryLabel()end
Domain.getLatestDayString=function()return
CS.LuaMethod.GetLatestDayString()end;Domain.getLatestChapterLabel=function()
return CS.LuaMethod.GetLatestChapterLabel()end
Domain.getLatestDayNum=function()return
CS.LuaMethod.GetLatestDayNum()end
Domain.getLatestDayNum=function(iuGb)return CS.LuaMethod.GetLatestDayNum(iuGb)end
Domain.getDivingChapter=function()return CS.LuaMethod.GetDivingChapter()end
Domain.getDivingStory=function()return CS.LuaMethod.GetDivingStoryLabel()end
Domain.getDivingDay=function()return CS.LuaMethod.GetDivingDay()end
Domain.getCurrentOperationLabel=function()
return CS.LuaMethod.GetCurrentOperationLabel()end;Domain.isClearedChapter=function(koZU)
return CS.LuaMethod.IsClearedChapter(koZU)end
Domain.isClearStory=function(C)return
CS.LuaMethod.IsClearStoryLabel(C)end
Domain.getIntroductionFlag=function(nmJGp_)
return CS.LuaMethod.GetIntroducedFlag(nmJGp_)end
Domain.setIntroductionFlag=function(h0v3PIV)
return CS.LuaMethod.SetIntroducedFlag(h0v3PIV)end
Domain.getElapsedSecondFromLastWelcoming=function()return
CS.LuaMethod.GetElapsedSecondFromLastWelcoming()end
Domain.getPlayerRank=function()return CS.LuaMethod.GetPlayerRank()end
Domain.getItemCount=function(Uc)return CS.LuaMethod.GetItemCount(Uc)end
Domain.getGpCount=function()return CS.LuaMethod.GetGpCount()end
Domain.reduceGp=function(JSkUQL)return CS.LuaMethod.ReduceGp(JSkUQL)end
Domain.getCurrentTimebox=function()return CS.LuaMethod.GetCurrentTimebox()end
Domain.getTimeBoxPlayerCharacterLabel=function()
return CS.LuaMethod.GetTimeBoxPlayerCharacterLabel()end
Domain.checkDeck=function(PTUZ2v,qlZeO3Pr)local fG9zS=PTUZ2v or{}local WiXG=qlZeO3Pr or{}return
CS.LuaMethod.CheckDeck(fG9zS,WiXG)end
Domain.isValidDeck=function()return CS.LuaMethod.IsValidDeck()end
Domain.setDeckRule=function(QgyWztK,Oo6ecUO,b6SL0yka)local hEk=QgyWztK or{}local E8o=Oo6ecUO or{}
local TdqFo=b6SL0yka or{}CS.LuaMethod.SetDeckRule(hEk,E8o,TdqFo)end
Domain.setSubDeckRule=function(ykLF0,cilhu,eVfN)local LBIJ=ykLF0 or{}local CSSp=cilhu or{}local CBZIwYHI=eVfN or{}
CS.LuaMethod.SetSubDeckRule(LBIJ,CSSp,CBZIwYHI)end
Domain.clearDeckRule=function()CS.LuaMethod.ClearDeckRule()end
Domain.getLotteryDrawCount=function(x1vCS0)
return CS.LuaMethod.GetLotteryDrawCount(x1vCS0)end;Domain.getNotReceivedGiftCount=function()
return CS.LuaMethod.GetNotReceivedGiftCount()end
Domain.canUseNickName=function(Herp)return(
Domain.tieLevel(Herp)>=2)end
Domain.banCharacterExists=function()return CS.LuaMethod.BanCharacterExists()end
Domain.getCurrentDeckHeadCharacterAt=function()
return CS.LuaMethod.GetCurrentDeckHeadCharacterAt()end
Domain.setMainStoryRewardBalloonMessage=function(TNczSeT,Sb,_OwI,GBDhi2D)local Sb=Sb or nil;local _OwI=_OwI or 0
local GBDhi2D=GBDhi2D or false;return
CS.LuaMethod.SetMainStoryRewardBalloonMessage(parent,TNczSeT,Sb,_OwI,GBDhi2D,false)end
Domain.setEventStoryRewardBalloonMessage=function(XDYs,JyOmN,Gu2sqpyD)local JyOmN=JyOmN or nil;local Gu2sqpyD=Gu2sqpyD or 0;return
CS.LuaMethod.SetMainStoryRewardBalloonMessage(parent,XDYs,JyOmN,Gu2sqpyD,true,true)end
Domain.isOpenedChapter=function(N_Pk)return CS.LuaMethod.IsOpenedChapter(N_Pk)end
Domain.isOpenedCurrentScoreAttackGrade=function()
return CS.LuaMethod.IsOpenedCurrentScoreAttackGrade()end
Domain.isInEventPeriod=function(G_v887o0)
return CS.LuaMethod.IsInEventPeriod(G_v887o0)end
Domain.getFlagmentChapterLabel=function(oiM7BRAl)
return CS.LuaMethod.GetFlagmentChapterLabel(oiM7BRAl)end;Domain.getCookedDishLabel=function(s4)
return CS.LuaMethod.GetCookedDishLabel(s4)end
Domain.getDishScore=function(EF)return
CS.LuaMethod.GetDishScore(EF)end
Domain.getFoodMaterialAmount=function(wYFDyw8)
return CS.LuaMethod.GetFoodMaterialAmount(wYFDyw8)end
Domain.canCooking=function()return CS.LuaMethod.CanCooking()end;Domain.resetShopPurchasedCount=function(JyI)
CS.LuaMethod.ResetShopPurchasedCount(JyI)end
Domain.isSatisfiedDemand=function(hncZR4my)return
CS.LuaMethod.AlreadySatisfiedDemand(hncZR4my)end
Domain.hasDemandingItem=function(KqeVtj)
return CS.LuaMethod.HasDemandingItem(KqeVtj)end
Domain.exchangeItem=function(LD)CS.LuaMethod.ExchangeItem(LD)end
Domain.AC14_SetExtendCount=function(Q)CS.LuaMethod.AC14_SetExtendCount(Q)end;Domain.AC14_GetExtendCount=function()
return CS.LuaMethod.AC14_GetExtendCount()end;Domain.AC14_GetGP=function()return
CS.LuaMethod.AC14_GetGP()end;Domain.AC14_ConsumeGP=function(QKTF34q3)
CS.LuaMethod.AC14_ConsumeGP(QKTF34q3)end;Domain.AC14_ToExtend=function(z,UD61M)
CS.LuaMethod.AC14_ToExtend(z,UD61M)end
Domain.AC14_GetStoryStreetStoreInfo=function(Kmr_vDN)return
CS.LuaMethod.AC14_GetStoryStreetStoreInfo(Kmr_vDN)end
Domain.getCustomerTalk=function(VJw9J2c)local Q5oEQY=""local eVzQHT=""local bdl6box_=""local o=""
CS.LuaMethod.GetDemandCustomerTalk(VJw9J2c,function(RMqe,c6H01I5a,CuoodPvK,e1iM)
Q5oEQY=RMqe;eVzQHT=c6H01I5a;bdl6box_=CuoodPvK;o=e1iM end)Adv.addLocalizedString(Q5oEQY)
Adv.addLocalizedString(bdl6box_)return Q5oEQY,eVzQHT,bdl6box_,o end
Domain.AC14_ShouldExchange=function()return
not CS.LuaMethod.AC14_SatisfiedAllExchange()end
Domain.AC14_HasAnyProduct=function()return CS.LuaMethod.AC14_HasAnyProduct()end;Domain.GrantStoryItem=function(bN32Fa,Ub)
CS.LuaMethod.GrantStoryItem(bN32Fa,Ub)end;Domain.getLanguage=function()return
CS.LuaMethod.GetLanguage()end;Domain.isJpLanguage=function()return
CS.LuaMethod.IsJpLanguage()end;Domain.SaveCurrentStoryItemToRecord=function()
CS.LuaMethod.SaveCurrentStoryItemToRecord()end;Domain.GrantStoryItemFromRecord=function()
CS.LuaMethod.GrantStoryItemFromRecord()end
Domain.ExistsStoryItemRecord=function()return
CS.LuaMethod.ExistsStoryItemRecord()end
Domain.SaveStreetStoreInfo=function()CS.LuaMethod.StreetStore_Save()end
Domain.GetLimitPointFromLastVariableChallenge=function()return
CS.LuaMethod.GetLimitPointFromLastVariableChallenge()end;Domain.forceIgnoreDeckRule=function(fQEH)
CS.LuaMethod.ForceIgnoreDeckRule(fQEH)end
Domain.getLatestFragmentChapterLabel=function()return
CS.LuaMethod.GetLatestFragmentChapterLabel()end
Domain.maxPartyTotalAccessoryLevel=function()
return CS.LuaMethod.GetMaxPartyTotalAccessoryLevel()end
Domain.getCurrentStorySeasonType=function()
return CS.LuaMethod.GetCurrentStorySeasonType()end
Domain.getJoinedGetJoinedCardCount=function(_om)
return CS.LuaMethod.GetJoinedGetJoinedCardCount(_om)end;Domain.isExistScoreAttackUser=function()
return CS.LuaMethod.IsExistScoreAttackUser()end
Domain.getScoreAttackMaxClearLevel=function()return
CS.LuaMethod.GetScoreAttackMaxClearLevel()end
Domain.random=function(kEI4,DSsD0,jRQUk)if GetLocalFlag(jRQUk)~=0 then local M=GetLocalFlag(jRQUk)return
math.min(math.max(M,kEI4),DSsD0)end;return
math.random(kEI4,DSsD0)end;Domain.resetTitleBadgeNotification=function()
CS.LuaMethod.ResetTitleBadgeNotification()end
Domain.resetMasterlySkillNotification=function()
CS.LuaMethod.ResetMasterlySkillNotification()end;Domain.getLatestMainStoryOrder=function()
return CS.LuaMethod.GetLatestMainStoryOrder()end
Domain.getShopPurchaseCount=function(p_I)return
CS.LuaMethod.GetShopPurchaseCount(p_I)end
Domain.isAllCategoryMissionReceived=function(ka)
return CS.LuaMethod.IsAllCategoryMissionReceived(ka)end
Domain.GetCurrentItemLottery=function(OAvmrJ)
return CS.LuaMethod.GetCurrentItemLottery(OAvmrJ)end
Domain.getItemLabelById=function(i)return CS.LuaMethod.GetItemLabelById(i)end
Domain.isValidItemCreationMaterials=function(BBJcTiAS,m7jWgGw)return
CS.LuaMethod.IsValidItemCreationMaterials(BBJcTiAS,m7jWgGw)end
Domain.getStoryItemAmount=function(cq,Mk3)
return CS.LuaMethod.GetStoryItemAmount(cq,Mk3)end
Domain.getItemNameByLabel=function(jUhLQEm)
local Ed4qx=CS.LuaMethod.GetItemNameByLabel(jUhLQEm)Adv.addLocalizedString(Ed4qx)return Ed4qx end
Domain.AC38_Reset=function(ZrR2o,_g)if _g==nil then _g=true end
CS.LuaMethod.AC38_ResetDay(ZrR2o,_g)end
Domain.AC38_AlchemyMedicineCount=function(_NgROQrI)
return CS.LuaMethod.AC38_AlchemyMedicineCount(_NgROQrI)end
Domain.getLatestHomeSatsukiShopLabel=function()
return CS.LuaMethod.GetLatestHomeSatsukiShopLabel()end