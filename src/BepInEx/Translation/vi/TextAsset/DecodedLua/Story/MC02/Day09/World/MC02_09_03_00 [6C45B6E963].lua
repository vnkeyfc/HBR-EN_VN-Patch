local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("BackStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/BackStreet_Gaya_MC02.unity")
EventScene("ClockTowerRoof","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/ClockTowerRoof_Gaya_MC02.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/Dormitory1F_Gaya_MC02.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/FriendStreet_Gaya_MC02.unity")
EventScene("Grave","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/Grave_Gaya_MC02.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/MainStreet_Gaya_MC02.unity")
EventScene("School1F","Assets/Lua/Story/Common/FieldPlacement/GayaCharacter/MC02/School1F_Gaya_MC02.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY07_08_09/MainStreet_General.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY07_08_09/FriendStreet_General.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY07_08_09/Dormitory1F_General.unity")
EventScene("School1F","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY07_08_09/School1F_General.unity")
EventScene("Grave","Assets/Lua/Story/Common/FieldPlacement/GeneralTalkCharacter/MC02/DAY07_08_09/Grave_General.unity")
EventScene("MainStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/MainStreet_Quest.unity")
EventScene("FriendStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/FriendStreet_Quest.unity")
EventScene("Dormitory1F","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/Dormitory1F_Quest.unity")
EventScene("School1F","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/School1F_Quest.unity")
EventScene("Grave","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/Grave_Quest.unity")
EventScene("ClockTowerRoof","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/ClockTowerRoof_Quest.unity")
EventScene("BackStreet","Assets/Lua/Story/Common/FieldPlacement/QuestCharacter/MC02/BackStreet_Quest.unity")end;function init()refresh()end
function refresh()Field.setFreeTimeTediumBGM()
FieldSound.requestFieldBGM()Field.setActiveWithTag("Gate",false)
FastTravelButtonEvent()InitScript("Lua/Story/Common/Gate")
InitScript("Lua/Story/Common/Activity/MC02/Activity")GayaTalkFromMaster()GeneralTalkFromMaster()
QuestEventFromMaster()local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent(function()
NextWorldEventStep(w0qyLbH,false)StartDormitory1F()end)elseif nsgji==1 then
StartEvent(function()NextWorldEventStep(w0qyLbH,false)
Yield(StartFreeTime)Field.refreshScripts()end)end end
function StartDormitory1F()
Field.playerComeIn("31ARoomPoint",Vec(0,0,2))Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[One of our rare days off, and I overslept!]],"VC_MC02_09_03_00_World_00000_RKayamori",
nil)
Adv.kayamoriTalk([[Everyone...already left? I've gotta seize the day, too!]],"VC_MC02_09_03_00_World_00001_RKayamori",nil)Field.finishEvent()Transition.setOutdoor()
Exit_FieldAndChange("MainStreet","DormitoryPoint")end
function StartFreeTime()
Field.playerComeIn("DormitoryPoint",Vec(-2))Field.startFreeTime()end