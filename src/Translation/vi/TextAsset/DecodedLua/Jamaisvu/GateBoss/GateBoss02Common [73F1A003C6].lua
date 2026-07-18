
function StartGateBoss()Adv.whiteOut(0)
Field.prepareEventCharacterV3("Boss")Field.prepareEventCharacterV3("Boss01")
Field.prepareEventCharacterV3("RKayamori_1")Wait(0.1)Field.hidePartyCharacters()
Field.resetPosition("LandingPoint")Wait(0.1)local A=Field.getPosition("Player")
Field.setPosition("RKayamori_1",A)Wait(0.1)Field.turnToTarget("RKayamori_1","Boss")
Wait(1)Field.startEvent(nil,false)
Field.moveCameraTarget("RKayamori_1",0)Wait(0.1)
Field.setTraceCameraTarget("RKayamori_1")Wait(0.1)Field.moveBy("Camera",Vec(0,3,0),0)
if
IsExist("JameisvuAppear_In")then local bClTIa=Field.getPosition("RKayamori_1")
Field.setPosition("JameisvuAppear_In",bClTIa)Field.setActive("JameisvuAppear_In",true)end;Wait(0.5)Sound.play("SY_Leave_Home")
Field.fadeInCharacter("RKayamori_1",2.5)
Field.changeAnimation("RKayamori_1","FieldJameisvuInLoop",1,0)Field.moveBy("Camera",Vec(0,-3,0),2)Wait(0.5)
Field.changeAnimation("RKayamori_1","FieldJameisvuInEnd")Adv.whiteIn(1)Field.waitTaskKey("RKayamori_1")
Field.setActive("JameisvuAppear_In",false)Field.finishEventScriptCamera()
Field.resetFieldEventState()Wait(0.5)
Field.moveToAct("RKayamori_1",
Field.getWaypointPosition("CenterPoint_PointCamera")+Vec(-14),2,"FieldRun")Wait(2)
Field.transport("RKayamori_1","Boss",true,true,Vec(-10,0,270))Wait(0.85)
Transition.setSymbolEncountTransition()Transition.start()Field.finishEvent()
local w0qyLbH,nsgji=GateBossBattleStart(function()
Battle.waitLoadEnd()Battle.waitPreResult()end,function()
Sound.stopBGM()Transition.finish()end)Exit_World()end