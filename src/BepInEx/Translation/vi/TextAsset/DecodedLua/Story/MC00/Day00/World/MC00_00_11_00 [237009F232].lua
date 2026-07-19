local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("MainStreet","Assets/Lua/Story/MC00/Day00/World/MC00_00_11_00_MainStreet.unity")end;function init()Log("現在のフィールド："..
FieldLabel())
refresh()end
function refresh()
Field.setActiveWithTag("Gate",false)Field.setActiveWithTag("Narvy",false)
local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then Sound.playBGM("SB0040",0,0)
StartEvent(function()
Yield(StartMainStreet)Exit_World()end)end end
function StartMainStreet()Adv.fadeOut(0)
Field.resetPosition("SchoolPointLeft")Wait(0.1)Field.startEvent(0)Field.setCameraAngleV(
Field.getCameraAngleV()-8,0)
Field.moveBy("Camera",Vec(12),10)Field.moveBy("Player",Vec(12),10)Adv.fadeIn(1)
Wait(2)Transition.start()Field.stopTaskKey("Camera")
Field.stopTaskKey("Player")Field.setActive("Player",false)
Routine(function()
Field.moveOnRouteWait("SHiguchi","InFrontOfResearchBuilding")Field.fadeOutCharacter("SHiguchi",1)end)
Field.setCameraCompositionEx(Vec(96.800,1.200,87.200),Vec(0.000,7.000,0.000),30.00)Wait(1)Transition.finish()
local bClTIa=Field.getPosition("RKayamori")
Field.setPosition("RKayamori",bClTIa+Vec(0,0,-2))
local rDzL7SVO=Field.computeMoveTime("RKayamori",bClTIa,1.4)Field.moveToWait("RKayamori",bClTIa,rDzL7SVO)
Field.setLookAtTarget("RKayamori","SHiguchi")
Adv.kayamoriTalk([[Hửm?]],"VC_MC01_01_07_01_World_00000_RKayamori")
Adv.kayamoriTalk([[Bộ đồng phục đó là...]],"VC_MC01_01_07_01_World_00001_RKayamori")
Adv.kayamoriTalk([[Phải theo điều tra thôi.]],"VC_MC01_01_07_01_World_00002_RKayamori")Field.moveBy("RKayamori",Vec(1.1,0,2),1.6)end