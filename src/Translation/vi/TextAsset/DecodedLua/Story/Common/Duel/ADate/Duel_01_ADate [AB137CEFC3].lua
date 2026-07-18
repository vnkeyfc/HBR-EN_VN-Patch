local w0qyLbH="duel_game.ADate.01"function init()refresh()end
function refresh()
local nsgji=Duel.getStep(w0qyLbH)
if nsgji==0 then
Duel.TouchEvent("ADate_Duel",w0qyLbH,ReceiveEvent)elseif nsgji==1 then StartEvent(pregameEvent)elseif nsgji==2 then
StartEvent(gameEvent)elseif nsgji==3 then StartEvent(endEvent)end end
function ReceiveEvent()local bClTIa=Adv.characterAsync("ADate")
Adv.waitAsyncInstanceAll()Layout.createStage()Field.startEvent()
if
GetLocalFlag("DuelLose_ADate")==0 then Layout.showEx({bClTIa,"020201"})
Adv.actDelayWrapper(bClTIa,{{0,"020201"},{2.8,"020001"}},function()
Adv.talkWithFacial(
nil,nil,bClTIa,[[I've never lost before. Well, I can't really lose if no one asks me to play...]],"VC_Common_v009_00037_ADate")end)Layout.showEx()else
Layout.showEx({bClTIa,"080201"})Field.setLookAtTarget("ADate_Duel","Player",0.6)
Adv.actDelayWrapper(bClTIa,{{0,"080201"},{1.5,"050201"},{6.2,"000201"}},function()
Adv.talkWithFacial(
nil,nil,bClTIa,[[Huh? You're really asking me to play with you? Are you...a god by chance?]],"VC_Z_905800441_ADate")end)Layout.showEx()end;local rDzL7SVO=Duel.showDuelStartDialog(w0qyLbH)
if
rDzL7SVO=="Receive"then Transition.start()Field.finishEvent()else
Field.finishEvent()Field.disableLookAt("Player")end;Field.disableLookAt("ADate_Duel")
Field.refreshScripts(true)end
function pregameEvent()Adv.fadeOut(0)
Field.hideTagCharacters("Gaya")
if GetLocalFlag("DuelLose_ADate")==0 then
local BW0WFP=Adv.characterAsync("RKayamori")local X8=Adv.characterAsync("ADate")
Field.prepareEventCharacterV3("ADate_Duel")Field.moveTo("Player",Vec(9.12,0,47.87),2)
Wait(2)
Field.setPosAndRot("Player",Vec(9.12,0,47.87),-16.215)
Field.startTalk("ADate_Duel",FaceToFaceMode.None,function()Transition.finish()
Adv.fadeIn(0.5)
Layout.showEx({BW0WFP,"110301"},{X8,"020001"})Field.setLookAtTarget("ADate_Duel","Player")
Adv.talkWithFacial(
nil,nil,BW0WFP,[[Akarin, let's duelo.]],"VC_Common_v009_00038_RKayamori")
Adv.actDelayWrapper(X8,{{0,"210102"},{5,"000102"}},function()
Adv.talkWithFacial(nil,nil,X8,[[Y-You're really asking me to play with you? Are you...Buddha by chance?]],"VC_Common_v009_00039_ADate")end)
Adv.talkWithFacial("150002",nil,BW0WFP,[[Nah, I just happened to see you first.]],"VC_Common_v009_00040_RKayamori")Adv.act(BW0WFP,"0003")
Adv.actDelayWrapper(X8,{{0,"280101"},{8.1,"070001"},{9.2,"070101"}},function()
Adv.talkWithFacial(
nil,nil,X8,[[No, no, no. You'll definitely be the first and last. If you get bored at any point, you're welcome to leave... So, umm...if you don't mind...]],"VC_Common_v009_00041_ADate")end)Transition.start()Layout.showEx()
Field.disableLookAt("ADate_Duel")end,true)else
Field.setPosAndRot("Player",Vec(9.12,0,47.87),-16.215)Transition.start()Adv.fadeIn(0)end;Duel.clearStep(w0qyLbH)Field.refreshScripts()end
function gameEvent()Adv.fadeOut(0)Transition.start()
Duel.startGame(w0qyLbH)Transition.start()Field.refreshScripts(true)end
function endEvent()Adv.fadeOut(0)Field.hideTagCharacters("Gaya")
local JQT=Adv.characterAsync("RKayamori")local AtYtR=Adv.characterAsync("ADate")Field.setPosAndRot("Player",Vec(9.12,0,47.87),
-16.215)
Field.prepareEventCharacterV3("ADate_Duel")
if Duel.getLastResult(w0qyLbH)==1 then
Field.startTalk("ADate_Duel",FaceToFaceMode.Face,function()
Sound.returnFieldBGM()Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"000301"},{AtYtR,"110102"})
local ND2BCh3=Routine(function()Adv.act(JQT,"000301")Wait(8.8)
Adv.act(JQT,"030301")end)
Adv.actDelayWrapper(AtYtR,{{0,"110102"},{7.5,"110002"}},function()
Adv.talkWithFacial(nil,nil,AtYtR,[[Even though I lost, you at least let me have the experience of playing Duelo with another person... That's more than I deserve.]],"VC_Common_v009_00042_ADate")end)StopRoutine(ND2BCh3)
Adv.talkWithFacial("030301",nil,JQT,[[Don't say sad stuff like that!]],"VC_Common_v009_00043_RKayamori")Transition.start()Layout.showEx()end,true)Sound.stopAllBgmAndEnv(1)Wait(1)
Duel.finish(w0qyLbH)Exit_World()else
if GetLocalFlag("DuelLose_ADate")==0 then
SetLocalFlag("DuelLose_ADate",1)
Field.startTalk("ADate_Duel",FaceToFaceMode.Face,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"150001"},{AtYtR,"050102"})
local IODBg=Routine(function()Adv.act(AtYtR,"050103")Wait(5.5)
Adv.act(AtYtR,"020002")end)
Adv.talkWithFacial(nil,nil,AtYtR,[[I'm sorry, I'm so sorry, I'm sorry that I won... I'll go die as an apology.]],"VC_Common_v009_00044_ADate")StopRoutine(IODBg)Adv.act(AtYtR,"020002")
Adv.actDelayWrapper(JQT,{{0,"150301"},{2.1,"150002"}},function()
Adv.talkWithFacial(
nil,nil,JQT,[[So this is what it feels like to be kicked when you're down...]],"VC_Common_v009_00045_RKayamori")end)Transition.start()Layout.showEx()end,true)else
Field.startTalk("ADate_Duel",FaceToFaceMode.Face,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"150001"},{AtYtR,"050301"})
Adv.actDelayWrapper(AtYtR,{{0,"050301"},{5.2,"110101"}},function()
Adv.talkWithFacial(nil,nil,AtYtR,[[Oh, I won again. Err, rather, you must've lost on purpose again. You don't have to be so kind...]],"VC_Z_905800442_ADate")end)
Adv.actDelayWrapper(JQT,{{0,"150101"},{1.7,"1500"}},function()
Adv.talkWithFacial(nil,nil,JQT,[[Look, Akarin. As the winner, you've gotta give yourself credit where it's due, or it'll just come off as disrespectful.]],"VC_Z_905800443_RKayamori")end)Transition.start()Layout.showEx()end,true)end;Field.resetPosition()
Field.disableLookAt("Player")Duel.finish(w0qyLbH)Field.refreshScripts(true)end end