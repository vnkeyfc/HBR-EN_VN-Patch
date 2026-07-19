local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("ShoppingStreet","Assets/Lua/Story/MC02/Day09/World/MC02_09_04_00_ShoppingStreet.unity")end
function init()refresh()end
function refresh()Sound.stopBGM(1,nil)
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
EmptyEvent("KAsakura")
StartEvent(function()Yield(StartWorld)Exit_World()end)end end
function StartWorld()
local bClTIa=Field.getWaypointPosition("MaguwaiPoint")+Vec(0,0,2)local rDzL7SVO=Vec(7.7,0,-50.3)
local BW0WFP=Field.computeMoveTime("KAsakura",rDzL7SVO)
Field.setCameraCompositionEx(Vec(-2.500,1.100,-42.000),Vec(358.000,120.000,0.000),30.00)
Field.showAdvHudWrapper(function()
Routine(function()
Field.moveToWait("KAsakura",rDzL7SVO,BW0WFP)Field.fadeOutCharacter("KAsakura")end)Field.setPosition("Player",bClTIa)Wait(1)Field.moveByWait("Player",Vec(0,0,
-2),2)
Field.setLookAtTarget("Player","KAsakura")
Adv.kayamoriTalk([[(Huh? It's Karerin. Is this the boutique?)]],"VC_MC02_09_04_00_World_00000_RKayamori",nil)
Adv.kayamoriTalk([[(Guess I'll have a look.)]],"VC_MC02_09_04_00_World_00001_RKayamori",nil)local X8=Field.computeMoveTime("Player",rDzL7SVO)
Field.moveTo("Player",rDzL7SVO,X8)end)end