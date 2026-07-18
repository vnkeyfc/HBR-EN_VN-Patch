local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("BackStreet","Assets/Lua/Story/MC02/Day20/World/MC02_20_08_01_BackStreet.unity")end
function init()refresh()end
function refresh()Sound.playBGM("SB0048")
SetPeriodText("Enter the studio!")ShowMapDestinationIcon("StudioGate")
Field.setActiveWithTag("Gate",false)local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,StartBackStreet)elseif nsgji==1 then
Routine(function()
while(true)do local bClTIa=Field.getPlayerPosition()
local rDzL7SVO=Field.getPosition("KAsakura")if bClTIa.x>rDzL7SVO.x+1.2 then
Field.setPlayerMoveSpeedRate(1,0,1)elseif bClTIa.x<rDzL7SVO.x+1.0 then
Field.setPlayerMoveSpeedRate(1,0,1.4/4.5)end
Wait(0.1)end end)ReachEventNoLock("TKunimi",GayaTalk31A)
TouchEvent("StudioGate",function()
Field.playerGetOut("StudioPoint",Vec(0,0,10))Exit_World()end)end end
function StartBackStreet()Field.playerComeIn("EndRightPoint",Vec(2))end
function GayaTalk31A()EmptyEvent("TKunimi")
Field.talkByGayaBalloon("YIzumi",[[Geez. Eager as ever...]],2,nil,nil,nil,"VC_MC02_20_08_01_World_00000_YIzumi")
Field.talkByGayaBalloon("KAsakura",[[This is Ruka's way of cheering us up. I'm sure of it.]],2,nil,nil,nil,"VC_MC02_20_08_01_World_00001_KAsakura")
Field.talkByGayaBalloon("TKunimi",[[THAT'S what this was about?]],2,nil,nil,nil,"VC_MC02_20_08_01_World_00002_TKunimi")
Field.talkByGayaBalloon("MAikawa",[[Ha! That moron doesn't have the brains to think of others.]],2,nil,nil,nil,"VC_MC02_20_08_01_World_00003_MAikawa")
Field.talkByGayaBalloon("TTojo",[[I wonder if Aoi's already inside.]],2,nil,nil,nil,"VC_MC02_20_08_01_World_00004_TTojo")end