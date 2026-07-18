local w0qyLbH="duel_game.IcOhshima.01"function init()refresh()end
function refresh()
local nsgji=Duel.getStep(w0qyLbH)
if nsgji==0 then
Duel.TouchEvent("IcOhshima_Duel",w0qyLbH,ReceiveEvent)elseif nsgji==1 then StartEvent(pregameEvent)elseif nsgji==2 then
StartEvent(gameEvent)elseif nsgji==3 then StartEvent(endEvent)end end
function ReceiveEvent()local bClTIa=Adv.characterAsync("IcOhshima")
Adv.waitAsyncInstanceAll()Layout.createStage()Field.startEvent()
if
GetLocalFlag("DuelLose_IcOhshima")==0 then
Layout.showEx({bClTIa,"010201"})
Adv.actDelayWrapper(bClTIa,{{0,"010201"},{2.4,"070201"}},function()
Adv.talkWithFacial(nil,nil,bClTIa,[[I brushed up on the rules, so all that's left is to put it to practice.]],"VC_Common_v009_00227_IcOhshima")end,true)Layout.showEx()else
Layout.showEx({bClTIa,"070201"})
Field.setLookAtTarget("IcOhshima_Duel","Player",0.6)
Adv.talkWithFacial(nil,nil,bClTIa,[[I read up on a different tactic, so I'd like to ask you for another match!]],"VC_Z_905800444_IcOhshima")Layout.showEx()end;local rDzL7SVO=Duel.showDuelStartDialog(w0qyLbH)
if
rDzL7SVO=="Receive"then Transition.start()Field.finishEvent()else
Field.finishEvent()Field.disableLookAt("Player")end;Field.disableLookAt("IcOhshima_Duel")
Field.refreshScripts(true)end
function pregameEvent()Adv.fadeOut(0)
if
GetLocalFlag("DuelLose_IcOhshima")==0 then local BW0WFP=Adv.characterAsync("RKayamori")
local X8=Adv.characterAsync("IcOhshima")Field.prepareEventCharacterV3("IcOhshima_Duel")
Field.moveTo("Player",Vec(23.2,0,0.34),2)Wait(2)
Field.setPosAndRot("Player",Vec(23.2,0,0.34),57.599)
Field.startTalk("IcOhshima_Duel",FaceToFaceMode.None,function()Transition.finish(nil,0)
Adv.fadeIn(0.5)
Layout.showEx({BW0WFP,"110302"},{X8,"010201"})
Field.setLookAtTarget("IcOhshima_Duel","Player",0.6)
Adv.actDelayWrapper(X8,{{0,"010201"},{0.6,"010101"}},function()
Adv.talkWithFacial(nil,nil,BW0WFP,[[Icchi, would you mind practicing with me?]],"VC_Common_v009_00228_RKayamori")end)
Adv.talkWithFacial("0101",nil,X8,[[Kayamori. Yes, let's. I have a few tactics I'd like to try.]],"VC_Common_v009_00229_IcOhshima")
Adv.talkWithFacial("080305",nil,BW0WFP,[[Huh? But Icchi, I thought you were a straight-A student?]],"VC_Common_v009_00230_RKayamori")
Adv.actDelayWrapper(X8,{{0,"010101"},{3.4,"070101"}},function()
Adv.talkWithFacial(nil,nil,X8,[[Studying is never wasted effort. Let's have a good game!]],"VC_Common_v009_00231_IcOhshima")end,true)Transition.start()Layout.showEx()
Field.disableLookAt("IcOhshima_Duel")end,true)else
Field.setPosAndRot("Player",Vec(23.2,0,0.34),57.599)Transition.start()Adv.fadeIn(0)end;Duel.clearStep(w0qyLbH)Field.refreshScripts()end
function gameEvent()Adv.fadeOut(0)Transition.start()
Duel.startGame(w0qyLbH)Transition.start()Field.refreshScripts(true)end
function endEvent()Adv.fadeOut(0)
local JQT=Adv.characterAsync("RKayamori")local AtYtR=Adv.characterAsync("IcOhshima")
Field.setPosAndRot("Player",Vec(23.2,0,0.34),57.599)Field.prepareEventCharacterV3("IcOhshima_Duel")
if
Duel.getLastResult(w0qyLbH)==1 then
Field.startTalk("IcOhshima_Duel",FaceToFaceMode.Face,function()
Sound.returnFieldBGM()Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"000301"},{AtYtR,"070201"})
Adv.actDelayWrapper(JQT,{{0,"000301"},{3,"0803"}},function()
Adv.talkWithFacial(nil,nil,AtYtR,[[I see... I made a mistake that turn. Had I started off with this move...]],"VC_Common_v009_00232_IcOhshima")end)
Adv.actDelayWrapper(JQT,{{0,"080301"},{2.1,"070301"}},function()
Adv.talkWithFacial(nil,nil,JQT,[[Already in studying mode, huh? For you, a loss is a learning experience.]],"VC_Common_v009_00233_RKayamori")end,true)Transition.start()Layout.showEx()end,true)Sound.stopAllBgmAndEnv(1)Wait(1)
Duel.finish(w0qyLbH)Exit_World()else
if GetLocalFlag("DuelLose_IcOhshima")==0 then
SetLocalFlag("DuelLose_IcOhshima",1)
Field.startTalk("IcOhshima_Duel",FaceToFaceMode.Face,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"0003"},{AtYtR,"090102"})
Adv.actDelayWrapper(AtYtR,{{0,"090102"},{1.2,"070101"}},function()
Adv.talkWithFacial(nil,nil,AtYtR,[[I won! Though, would you mind having another match? I'd like to continue learning.]],"VC_Common_v009_00234_IcOhshima")end)
Adv.talkWithFacial("030305",nil,JQT,[[How diligent! That's the eldest sister for you!]],"VC_Common_v009_00235_RKayamori")Transition.start()Layout.showEx()end,true)else
Field.startTalk("IcOhshima_Duel",FaceToFaceMode.Face,function()Sound.returnFieldBGM(1,1)
Wait(0.3)Transition.finish()Adv.fadeIn(0.5)
Layout.showEx({JQT,"030301"},{AtYtR,"090102"})
Adv.actDelayWrapper(AtYtR,{{0,"090102"},{1.8,"010101"}},function()
Adv.talkWithFacial(nil,nil,AtYtR,[[I won again! I feel like the more matches I experience, the better I get! Thank you!]],"VC_Z_905800445_IcOhshima")end)
Adv.actDelayWrapper(JQT,{{0,"080301"},{2.1,"110301"}},function()
Adv.talkWithFacial(nil,nil,JQT,[[Thanking the player she beat... The eldest Ohshima sister is just so pure...]],"VC_Z_905800446_RKayamori")end,true)Transition.start()Layout.showEx()end,true)end;Field.resetPosition()
Field.disableLookAt("Player")Duel.finish(w0qyLbH)Field.refreshScripts(true)end end