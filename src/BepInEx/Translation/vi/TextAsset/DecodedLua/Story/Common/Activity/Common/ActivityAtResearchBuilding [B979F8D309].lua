ROUTINE()
if
Field.isItPossibleActivity("","Go to the Research Center","Stay here")then local A=Domain.getCurrentStorySeasonType()local w0qyLbH
if A==
StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"elseif A==StorySeasonType.LateAutumn then
w0qyLbH="_LateAutumn"elseif isPowerOutage then w0qyLbH="_PowerOutage"else w0qyLbH=""end
local nsgji=Adv.loadBGAsync("Background/Institute/Institute_oneffect")local bClTIa=Adv.characterAsync("SHiguchi","Default")
Field.goToResearchBuilding(function()
Transition.start()end)PurgeField()
Field.startNovel(function()local rDzL7SVO=Domain.getDivingChapter()
local BW0WFP=Domain.getDivingDay()
if rDzL7SVO=="MC01"and BW0WFP>=4 and BW0WFP<=6 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"090201"})
Transition.finish(nil,1)
Adv.talk(bClTIa,[[Oh? Are you here to let me examine your Seraph?]],"VC_GeneralTalk_31B_01_00005_SHiguchi")elseif rDzL7SVO=="MC02"and BW0WFP>=13 and BW0WFP<=15 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talk(bClTIa,[[What do you want from me today?]],"VC_GeneralTalk_31B_02_00005_SHiguchi")elseif rDzL7SVO=="MC02"and BW0WFP>=22 and BW0WFP<=23 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"090202"})
Transition.finish(nil,1)
Adv.talk(bClTIa,[[I'll be a part of the operation this time. How exciting...]],"VC_GeneralTalk_31B_03_00005_SHiguchi")elseif rDzL7SVO=="MC04"and BW0WFP>=1 and BW0WFP<=3 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"0002"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[Hm...there is a different air about you.]],"VC_Common_00006_v004_SHiguchi")elseif rDzL7SVO=="MC04"and BW0WFP>=4 and BW0WFP<=6 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000002"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[Lately, I have seen an influx of visitors inquiring about Seraphim.]],"VC_Common_00019_v004_SHiguchi")elseif
rDzL7SVO=="MC04"and(BW0WFP==7 or BW0WFP==11)then Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"0802"})Transition.finish(nil,1)
Adv.actDelay(6.7,bClTIa,"0900")
Adv.talkWithFacial(nil,nil,bClTIa,[[Given that their mePads already contain all the information they could want, they must possess a deep love for yours truly.]],"VC_Common_00032_v004_SHiguchi")elseif
rDzL7SVO=="MC04B"and(BW0WFP==-1 or BW0WFP==0 or BW0WFP==1 or
BW0WFP==2)then Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"040201"})Transition.finish(nil,1)
Adv.actDelay(9.5,bClTIa,"040002")
Adv.talkWithFacial(nil,nil,bClTIa,[[Your mePad would have sufficed, without needing to see me. Just how deep is your love for me? I fear my own heart may be swayed.]],"VC_Common_00105_v006_SHiguchi")elseif
rDzL7SVO=="MC04B"and(BW0WFP==7 or BW0WFP==8)then Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"090201"})Transition.finish(nil,1)
Adv.actDelay(6.5,bClTIa,"090001")
Adv.talkWithFacial(nil,nil,bClTIa,[[It seems you continue to grow. That's a fine glimmer in your eyes. Perhaps I should reward you with a kiss.]],"VC_Common_00122_v006_SHiguchi")elseif
rDzL7SVO=="MC04B"and(BW0WFP==9 or BW0WFP==10)then Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"040002"})Transition.finish(nil,1)
Adv.actDelay(3.8,bClTIa,"040202")Adv.actDelay(8.2,bClTIa,"090201")
Adv.talkWithFacial(nil,nil,bClTIa,[[Your mePad would have sufficed, without needing to see me. Is it the glasses? Do you have a thing for glasses? I suppose <i>she</i> wears them as well.]],"VC_Common_00135_v006_SHiguchi")elseif rDzL7SVO=="MC05A"and
(BW0WFP==2 or BW0WFP==3 or BW0WFP==4)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[Please don't get too friendly. I would prefer to keep our relationship cordial and businesslike.]],"VC_Common_00097_v008_SHiguchi")elseif rDzL7SVO=="MC05A"and(BW0WFP==5)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Adv.actDelay(4,bClTIa,"090203")Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[This may be the last time you can come to me like this. Should I give you a hug as a souvenir?]],"VC_Common_00121_v008_SHiguchi")elseif
rDzL7SVO=="MC05A"and(BW0WFP==6 or BW0WFP==7)then Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"000201"})Adv.actDelay(2.5,bClTIa,"090201")
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[I have decided to remain in the Seraph Squadron. I'm sure you're glad. Come here any time for your Seraphim needs.]],"VC_Common_00122_v008_SHiguchi")elseif rDzL7SVO=="MC05A"and(BW0WFP==8)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[What do you say to some tea? I am very curious which emotions it dredges up.]],"VC_Common_00135_v008_SHiguchi")elseif rDzL7SVO=="MC05A"and
(BW0WFP==9 or BW0WFP==10 or BW0WFP==11)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Adv.actDelay(3,bClTIa,"090203")Adv.actDelay(5,bClTIa,"000002")
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[Do take your time. I wish to observe you closely. Some snacks to go with your tea? I would need to go buy them first, I suppose.]],"VC_Common_00153_v008_SHiguchi")elseif rDzL7SVO=="MC05A"and(BW0WFP==12)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[How are you faring? Keep your wits about you, Kayamori. If you go down, the entire Squadron goes with you.]],"VC_Common_00167_v008_SHiguchi")elseif rDzL7SVO=="MC05B"and
(BW0WFP==1 or BW0WFP==2 or BW0WFP==3)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[['Sup, what're ya havin' today?]],"VC_Common_v009_00500_SHiguchi")elseif rDzL7SVO=="MC05B"and(BW0WFP==6)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)Adv.actDelay(0.9,bClTIa,"090002")
Adv.talkWithFacial(nil,nil,bClTIa,[[Take a seat. What're you in the mood for?]],"VC_Common_v009_00518_SHiguchi")elseif rDzL7SVO=="MC05B"and(BW0WFP==7)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000203"})
Transition.finish(nil,1)isEnd1=false;local JQT=Sound.pushBGM("SB0148")
local AtYtR=Routine(function()
Adv.act(bClTIa,"000203")Wait(1.5)Adv.act(bClTIa,"060001")Wait(0.6)
Adv.act(bClTIa,"090201")Wait(1)Adv.act(bClTIa,"070301")Wait(1)
Adv.act(bClTIa,"090002")Wait(1.5)isEnd1=true;Sound.popBGM(JQT,1,1)end)
Adv.talkWithFacial(nil,nil,bClTIa,[[We upgradin' Seraphim, 'cause you the heroine. Need you for our comedy fix, thank god you're a regular phoenix. Don't you slack on the service, else we facin' EoS.]],"VC_Common_v009_00539_SHiguchi")StopRoutine(AtYtR)
if isEnd1 ==false then Sound.popBGM(JQT,1,1)end elseif rDzL7SVO=="MC05B"and
(BW0WFP==8 or BW0WFP==9 or BW0WFP==10)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"090002"})
Transition.finish(nil,1)Adv.actDelay(2.9,bClTIa,"090202")
Adv.talkWithFacial(nil,nil,bClTIa,[[What do you say we have a rap battle sometime? You're a former pro musician, aren't you? I think the two of us could melt some ice.]],"VC_Common_v009_00555_SHiguchi")elseif rDzL7SVO=="MC05C"and
(BW0WFP==1 or BW0WFP==2 or BW0WFP==3)then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"090201"})
Adv.actDelay(4,bClTIa,"090202")Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[I was not expecting Tezuka to participate. I'm quite curious about her Seraph as well, so I will be looking forward to what data you bring back.]],"VC_Common_v014_00081_SHiguchi")elseif rDzL7SVO=="MC05C"and BW0WFP==4 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Adv.actDelay(2.5,bClTIa,"000001")Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[The arena may be closed, but my lab stays open. If you wish to see your beloved Higuchi, drop by any time.]],"VC_Common_v014_00103_SHiguchi")elseif rDzL7SVO=="MC05C"and BW0WFP==6 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[Gotcher meal tickets over there. Help yaself.]],"VC_Common_v014_00123_SHiguchi")elseif rDzL7SVO=="MC05C"and BW0WFP==8 then
Layout.createStageZoomOut(nsgji)Layout.show({bClTIa,"000201"})
Transition.finish(nil,1)
Adv.talkWithFacial(nil,nil,bClTIa,[[C'mon in. Ya want seconds, you're gonna need ta serve yaself.]],"VC_Common_v014_00139_SHiguchi")else Layout.createStageZoomOut(nsgji)
Layout.show({bClTIa,"000201"})Transition.finish(nil,1)
Adv.talk(bClTIa,[[What are you here for?]],"VC_ActivityAtResearchBuilding_00000_SHiguchi")end
local X8=Adv.question("",[[Here to upgrade Memorias|Nothing in particular]],0,true)
if X8 ==0 then
Adv.talkWithFacial("000202",nil,bClTIa,[[I see. Let me heat up the equipment.]],"VC_ActivityAtResearchBuilding_00001_SHiguchi")Layout.show()Wait(0.5)UI.cardEnhanceSelect()
Wait(0.2)Layout.show({bClTIa,"000201"})
Adv.talkWithFacial("000201",nil,bClTIa,[[Will that be all? Farewell.]],"VC_ActivityAtResearchBuilding_00002_SHiguchi")else Adv.act(bClTIa,"000201")
Adv.talk(bClTIa,[[Farewell.]],"VC_ActivityAtResearchBuilding_00005_SHiguchi")end;Transition.start()Layout.hide()
Adv.remove(nsgji)end)Field.setFieldEventState("FromResearchBuilding")
Exit_FieldAndChange(
"MainStreet"..w0qyLbH,"ResearchBuildingPoint")end;Exit()