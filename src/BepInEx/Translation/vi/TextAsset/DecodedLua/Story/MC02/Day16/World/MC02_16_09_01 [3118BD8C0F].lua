local w0qyLbH="Event"..WorldLabel()function preload()end
function init()refresh()end
function refresh()FieldSound.requestFieldBGM()
LinneEvent("EAoi","We have practice for the new song, right?",EAoiMessage,
nil,nil,true)local nsgji=GetWorldEventStep(w0qyLbH)if nsgji==0 then
StartEvent(function()
Yield(StartWorld)Exit_World()end)end end
function StartWorld()
Field.playerComeIn("CafeteriaPoint",Vec(-2,0,2))Wait(1)Sound.play("SY_Dencho_Calling")
Adv.kayamoriTalk([[Hm?]],"VC_field_custom_00030_RKayamori")UI.linne()Wait(1.5)
Field.moveOnRoute("Player","DormitoryPoint")Wait(1.5)end
function EAoiMessage(bClTIa)Linne.Inputing(bClTIa)Linne.Wait(bClTIa,1.5)
Linne.Receive(bClTIa,"I want to see how far we can get!")Linne.Wait(bClTIa,1.5)
Linne.Send(bClTIa,"c u at the studio")Linne.Wait(bClTIa,1.5)
Linne.Receive(bClTIa,"Yes, of course!")WaitTap()end