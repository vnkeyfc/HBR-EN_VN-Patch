local w0qyLbH="duel_game.INatsume.01"function init()refresh()end
function refresh()
local nsgji=Duel.getStep(w0qyLbH)
if nsgji==0 then
Duel.TouchEvent("INatsume_Duel",w0qyLbH,ReceiveEvent)elseif nsgji==1 then StartEvent(pregameEvent)elseif nsgji==2 then
StartEvent(gameEvent)elseif nsgji==3 then StartEvent(endEvent)end end
function ReceiveEvent()local bClTIa=Adv.characterAsync("RKayamori")
local rDzL7SVO=Adv.characterAsync("INatsume")Adv.waitAsyncInstanceAll()Layout.createStage()
Field.startEvent()
if GetLocalFlag("DuelLose_INatsume")==0 then
Layout.showEx({rDzL7SVO,"000201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[......]],"VC_Common_v009_00208_INatsume",true)Layout.showEx()else
Layout.showEx({bClTIa,"070201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[Alright, let's go again.]],"VC_Z_905800459_RKayamori")Layout.showEx()
Field.turnToTarget("INatsume_Duel","Player",0.8)Layout.showEx({rDzL7SVO,"080201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Huh?!]],"VC_Z_905800460_INatsume")Layout.showEx()end;local BW0WFP=Duel.showDuelStartDialog(w0qyLbH)if BW0WFP=="Receive"then
Transition.start()Field.finishEvent()else Field.finishEvent()
Field.disableLookAt("Player")end
Field.disableLookAt("INatsume_Duel")Field.refreshScripts(true)end
function pregameEvent()Adv.fadeOut(0)
if
GetLocalFlag("DuelLose_INatsume")==0 then local X8=Adv.characterAsync("RKayamori")
local JQT=Adv.characterAsync("INatsume")Field.prepareEventCharacterV3("INatsume_Duel")Field.moveTo("Player",Vec(
-29.54,0,-131.98),2)
Wait(2)
Field.setPosAndRot("Player",Vec(-29.54,0,-131.98),-16.002)
Field.startTalk("INatsume_Duel",FaceToFaceMode.None,function()Transition.finish()
Adv.fadeIn(0.5)
Layout.showEx({X8,"000302"},{JQT,"000201"})
Adv.talkWithFacial(nil,nil,X8,[[......]],"VC_Common_v009_00209_RKayamori",true)
Adv.talkWithFacial(nil,nil,JQT,[[......]],"VC_Common_v009_00210_INatsume",true)
Adv.talkWithFacial("110301",nil,X8,[[Alright, I'm down.]],"VC_Common_v009_00211_RKayamori")
Field.setLookAtTarget("INatsume_Duel","Player",0.5)
Adv.talkWithFacial("080101",nil,JQT,[[Huh?!]],"VC_Common_v009_00212_INatsume")Transition.start()Layout.showEx()
Field.disableLookAt("INatsume_Duel")end,true)else
Field.setPosAndRot("Player",Vec(-29.54,0,-131.98),-16.002)Transition.start()Adv.fadeIn(0)end;Duel.clearStep(w0qyLbH)Field.refreshScripts()end
function gameEvent()Adv.fadeOut(0)Transition.start()
Duel.startGame(w0qyLbH)Transition.start()Field.refreshScripts(true)end
function endEvent()Adv.fadeOut(0)
local AtYtR=Adv.characterAsync("RKayamori")local ND2BCh3=Adv.characterAsync("INatsume")
Field.setPosAndRot("Player",Vec(-29.54,0,
-131.98),-16.002)Field.prepareEventCharacterV3("INatsume_Duel")
if
Duel.getLastResult(w0qyLbH)==1 then
Field.startTalk("INatsume_Duel",FaceToFaceMode.Auto,function()
Sound.returnFieldBGM()Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({AtYtR,"110301"},{ND2BCh3,"030101"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[......]],"VC_Common_v009_00213_INatsume",true)
Adv.talkWithFacial(nil,nil,AtYtR,[[Let's play again sometime.]],"VC_Common_v009_00214_RKayamori")Transition.start()Layout.showEx()end,true)Sound.stopAllBgmAndEnv(1)Wait(1)
Duel.finish(w0qyLbH)Exit_World()else
if GetLocalFlag("DuelLose_INatsume")==0 then
SetLocalFlag("DuelLose_INatsume",1)
Field.startTalk("INatsume_Duel",FaceToFaceMode.Auto,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({AtYtR,"000301"},{ND2BCh3,"000001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[I won...]],"VC_Common_v009_00215_INatsume")
Adv.talkWithFacial("0303",nil,AtYtR,[[She spoke!]],"VC_Common_v009_00216_RKayamori")Transition.start()Layout.showEx()end,true)else
Field.startTalk("INatsume_Duel",FaceToFaceMode.Auto,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({AtYtR,"000301"},{ND2BCh3,"110001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[......]],"VC_Z_905800461_INatsume",true)
Adv.talkWithFacial("0303",nil,AtYtR,[[She smiled!]],"VC_Z_905800462_RKayamori")Transition.start()Layout.showEx()end,true)end;Field.resetPosition()
Field.disableLookAt("Player")Duel.finish(w0qyLbH)Field.refreshScripts(true)end end