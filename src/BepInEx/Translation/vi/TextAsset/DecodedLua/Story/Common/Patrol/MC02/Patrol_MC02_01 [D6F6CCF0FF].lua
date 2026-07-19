local nsgji=Domain.getDivingChapter()
local bClTIa=Domain.getDivingDay()function init()refresh()end
function refresh()
if Quest.isHasAnyActive()then
HideMapDestinationIcon("MAsami")return else ShowMapDestinationIcon("MAsami")end;if Field.getPatrolCount()>0 then
TouchEvent("MAsami",ShowPatrolInfo)end;if
Field.getMobHuntUnclearedCount()>0 then
LinneEvent("MAsami",[[Thanks for investigating.]],MAsamiMessage,nil,"Patrol")end
if
Field.getPatrolState()==PatrolState.Accepted then
Adv.fadeOut(0,nil,AdvLayer.BG)StartEvent(ResumePatrol)elseif
Field.getPatrolState()==PatrolState.Ended then Sound.stopAllENV()
if
Field.getMobHuntState()==MobHuntState.Ended then StartEvent(PatrolTrueEnd)elseif Expedition.result()==
ExpeditionResult.GoodEnd then StartEvent(PatrolGoodEnd)elseif
Expedition.result()==ExpeditionResult.BadEnd then
StartEvent(PatrolBadEnd)end end end
function ShowPatrolInfo()local rDzL7SVO=Adv.characterAsync("MAsami")
Field.startTalk("MAsami",FaceToFaceMode.Auto,function()
Layout.show(rDzL7SVO)
Adv.talk(rDzL7SVO,[[So, will you accept this patrol mission?]],"VC_Common_00000_v003_MAsami")local BW0WFP;if Quest.isHasAnyActive()then BW0WFP=1 else
BW0WFP=Adv.question([[]],[[Accept|Decline]],0,true)end
if BW0WFP==0 then
Layout.show()UI.patrol()local X8=Field.getPatrolLabel()
if X8 ~=""then Wait(0.3)
Field.disableLookAt("MAsami")Field.moveBy("MAsami",Vec(-3,0,6),4)Wait(0.5)Field.moveBy("Player",Vec(
-3,0,6),4)Wait(1.5)
Sound.stopBGM(1)Transition.setFlyGo()Transition.start()
Wait(2)PurgeField()PatrolWorld(X8)end else
Adv.talk(rDzL7SVO,[[Shame. If you change your mind, let me know.]],"VC_Patrol_MC02_00015_MAsami")end end)Field.finishEvent()end
function MAsamiMessage(JQT)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
local AtYtR=Field.getRecommendMobHuntAreaName()Linne.Inputing(JQT)Linne.Wait(JQT,2)
Linne.Receive(JQT,([[A target has appeared. Do you have time to take care of it?]]):format(AtYtR))Linne.Wait(JQT,1)
Linne.Receive(JQT,([[If you're up for it, come talk to me in front of the heliport.]]):format(AtYtR))Wait(1.5)
local ND2BCh3=Adv.question([[Go talk to Makiko Asami?]],[[Yes|No]],0,true)
if ND2BCh3 ==0 then RemoveLinneEvent("MAsami",ND2BCh3)
UI.closeLinne()Transition.setOutdoor("","Near Heliport")
Exit_FieldAndChangeFast("MainStreet","HeliportPoint")elseif ND2BCh3 ==1 then RemoveLinneEvent("MAsami",ND2BCh3)end end;function ResumePatrol()Transition.start()
Adv.fadeIn(0,nil,AdvLayer.BG)Wait(2)PurgeField()
PatrolWorld(Field.getPatrolLabel(),true)end
function PatrolTrueEnd()
Sound.playEmptyBGM(0)Field.setFootstepEnabled(false)
Transition.setFlyReturn()Transition.start()
Field.resetPosition("HeliportPoint")Field.setByPlayerPosition("MAsami",Vec(1,0,1))
Wait(1)local IODBg=Adv.characterAsync("MAsami")
Field.startTalk("MAsami",FaceToFaceMode.Auto,function()
Wait(1)Transition.finish()
Sound.playBGM("SB0010_ALT",1)Wait(1)Layout.show(IODBg)
Adv.talkWithFacial(nil,nil,IODBg,[[Thank you. This should put the dome residents at ease.]],"VC_Common_00001_v003_MAsami")
Adv.talkWithFacial(nil,nil,IODBg,[[More patrol missions will be issued in future. I will update you via RINNE.]],"VC_Common_00002_v003_MAsami")
Adv.talkWithFacial(nil,nil,IODBg,[[I'm counting on you.]],"VC_Common_00003_v003_MAsami")Layout.show()Transition.start()end)Exit_World()end;function PatrolGoodEnd()Sound.playEmptyBGM(0)
Field.setFootstepEnabled(false)Transition.setFlyReturn()Transition.start()
Exit_World()end;function PatrolBadEnd()
Adv.fadeOut(0)Sound.playEmptyBGM(0)
Field.setFootstepEnabled(false)Exit_World()end