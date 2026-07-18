
function init()
Log("現在のフィールド："..FieldLabel())Field.setActiveWithTag("Gate",false)
local A=Field.getFieldEventState()
if A=="FromClockTower"then
Field.setByWaypointPosition("Cat","ClockTowerPoint",Vec(1.5,0,0))Field.turnTo("Cat",-40,0)elseif A=="FromHeliport"then
Field.setPosition("Cat",Vec(32.5,0,66))Field.turnTo("Cat",5.5,0)elseif A=="FromCafeteria"then
Field.setByWaypointPosition("Cat","CafeteriaPoint",Vec(1.5,0,0))Field.turnTo("Cat",-90,0)elseif A=="FromScoreAttack"then
StartEvent(FromScoreAttack)else Field.setCatChaseTarget("Cat","Player",true)end;StartEvent(ResumeMemoryStory)refresh()end
function refresh()FieldSound.requestFieldBGM("SB0029")
Field.setActiveWithTag("Mob",false)Field.setActiveWithTag("Narvy",false)
Field.setActiveWithTag("GardenShopMob",false)Garden.Setup(Field.refreshScripts)
InitScript("Lua/Jamaisvu/Garden/Gate")TouchEvent("Cat",TalkToCat)
if

Battle.isCleared("Battle.Prism01_01")==false and
GetFlag("Garden庭拡張チュートリアル終了")==0 then ShowMapDestinationIcon("Garden.PrismBattle01")elseif
Battle.isCleared("Battle.Prism01_01")and
GetFlag("Garden庭拡張チュートリアル終了")==0 then
SetFlag("StartGarden",1)elseif
Battle.isCleared("Battle.Prism01_01")and
GetFlag("Garden庭拡張チュートリアル終了")==1 then HideMapDestinationIcon("Garden.PrismBattle01")end;if GetFlag("StartGarden")==1 then SetFlag("StartGarden",0)
StartEvent(StartGarden)end;if

GetFlag("Permission.AccessoryCharm")==1 and Garden.Level()==3 then Garden.LevelUp()end end
function StartGarden()Adv.whiteOut(0)GCCollectWait(7)PurgeCache()
Field.startEventScriptCamera()if Field.getFieldEventState()~="FromHomeShortcut"then
Field.resetDirection(125)end;if
GetFlag("TerminalButton")==0 then UI.forceEnableHudHome(false)else
UI.forceEnableHudHome(true)end
Field.moveCameraTarget("Player",0)
if
FieldLabel()~="School1F"and FieldLabel()~="Dormitory1F"then Field.moveBy("Camera",Vec(0,3,0),0)end;Field.setCameraFov(50,0)
if IsExist("JameisvuAppear_In")then
local w0qyLbH=Field.getPosition("Player")Field.setPosition("JameisvuAppear_In",w0qyLbH)
Field.setActive("JameisvuAppear_In",true)end;Wait(0.4)Sound.play("SY_Leave_Home")
Field.fadeInCharacter("Player",2.5)
Field.changeAnimation("Player","FieldJameisvuInLoop",1,0)Field.setCameraFov(35,2)if FieldLabel()~="School1F"and
FieldLabel()~="Dormitory1F"then
Field.moveBy("Camera",Vec(0,-3,0),2)end;Wait(0.5)
Field.changeAnimation("Player","FieldJameisvuInEnd")Field.setCharacterFootstepEnabled("Player",true)
Adv.whiteIn(1)Field.waitTaskKey("Player")
Field.setActive("JameisvuAppear_In",false)Field.recoverPlayableCamera(1.0)
Field.finishEventScriptCamera()Field.resetFieldEventState()
StartEvent(TalkToCatFirst)end
function OnExitGarden()Field.disableLookAt("Player")
PlayerLock("ExitGarden",false)local nsgji=Field.getCameraFov()
Field.startEventScriptCamera()
if IsExist("JameisvuAppear_Out")then
local bClTIa=Field.getPosition("Player")Field.setPosition("JameisvuAppear_Out",bClTIa)Field.moveBy("JameisvuAppear_Out",Vec(0,
-1,0),0)
Field.setActive("JameisvuAppear_Out",true)end;Field.setCameraFov(50,2)
Field.moveBy("Camera",Vec(0,1.5,0),2)Wait(0.5)Sound.play("SY_Return_to_Home")
Field.changeAnimation("Player","FieldJameisvuInStart")Field.fadeOutCharacter("Player",2.5)Wait(0.5)
ExitGarden(function()
Field.finishEventScriptCamera()PlayerUnLock("ExitGarden",true)
Field.setActive("JameisvuAppear_In",false)end)end
function TalkToCatFirst()local rDzL7SVO;local BW0WFP=Domain.getPlayerRank()
local X8=Garden.GetNextLevelInfo()local JQT=X8.level;local AtYtR=X8.needPlayerRank;local ND2BCh3=X8.needItemCount
local IODBg=X8.levelUpMessage
if
GetFlag("ガーデンチュートリアル終了")==0 then Field.startEvent(nil,false,false,true)
FaceToFaceCat()
Adv.talkNoCharacter("???","This \"Garden of Memories\" contains powers that will help you reach your destiny.","VC_Jamaisvu_00004_")
Adv.talkNoCharacter("???","You might not be able to do much here yet, but the garden will gradually grow as you do.","VC_Jamaisvu_00005_")Wait(0.5)Tutorial.showDialog("garden")Wait(0.5)
UI.showMessageDialog("Try your hand at the flashback battles\nfound nearby the cafeteria.")
SetFlag("ガーデンチュートリアル終了",1)Field.finishEvent()
Field.changeAnimation("Player","FieldIdle",1.0,0.7)Wait(0.70)SetFlag("TerminalButton",0)
UI.forceEnableHudHome(false)elseif
Garden.Level()~=0 and Battle.isCleared("Battle.Prism01_01")and
GetFlag("Garden庭拡張チュートリアル終了")==0 then
Field.startEvent(nil,false,false,true)FaceToFaceCat()
Adv.talkNoCharacter("???","The Garden of Memories seems to have grown along with your experience.","VC_Jamaisvu_00007_")
UI.showMessageDialog("You are now able to travel to both Union Street and the woodway!\nAttempt the new flashback battles there to gain valuable upgrade materials for crush- and pierce-type Memorias.")Tutorial.showDialog("garden_b_2")
SetFlag("Garden記憶の迷宮チュートリアル終了",1)Field.finishEvent()
Field.changeAnimation("Player","FieldIdle",1.0,0.7)Wait(0.7)SetFlag("TerminalButton",1)
UI.forceEnableHudHome(true)Field.setForceActiveHud(true)
local rDzL7SVO=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage("You can dramatically increase your squad's rating\nby equipping the accessories obtained from flashback battles.")Tutorial.show()
Tutorial.setMessage("If your squad's rating is not making the grade,\nthen try gathering better accessories for each of your squad's units.")Tutorial.show()Tutorial.waitUIOpen("UIHudMap")
Tutorial.setMessage("You can return to the Home screen from here.",200,
-250,"You can return to the Home screen by pressing the L1 button.")
Tutorial.setFocus("RootView/UI-Foreground/HudMenu/UIHudMap/container/gotoHomeButton")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(rDzL7SVO)Field.setForceActiveHud(false)Wait(0.2)
SetFlag("Garden庭拡張チュートリアル終了",1)end
if
Garden.Level()~=0 and Battle.isCleared("Battle.Prism01_01")and
GetFlag("Garden庭拡張チュートリアル終了")==1 then
Field.refreshScripts(true)end end
function TalkToCat()Field.startEvent(nil,false,false,true)
FaceToFaceCat()
Adv.talkNoCharacter("???","How may I be of assistance?","VC_Jamaisvu_00011_")local YRDu;local CWRiP=2;local LB0A=2
if Tutorial.isBlocked("blocker.JewelShop")then
YRDu=Adv.question([[What are you in need of help with?]],[[Buy stuff with GP|Buy stuff with GGP|Let's shoot the breeze]],0,true)else
YRDu=Adv.question([[What are you in need of help with?]],[[Buy stuff with GP|Buy stuff with GGP|I wanna do some crafting|Let's shoot the breeze]],0,true)CWRiP=3 end
if YRDu==0 then
if GetFlag("Tutorial.JamaisvuShop")==0 then
Adv.talkNoCharacter("???","Here in this Garden of Memories, you can purchase items from me.","VC_Jamaisvu_00031_")
Adv.talkNoCharacter("???","Some of them are quite useful, so be sure to check out my wares from time to time.","VC_Jamaisvu_00032_")
UI.showMessageDialog("The items available for purchase in the Garden of Memories\nwill change as you progress through the main scenario.")SetFlag("Tutorial.JamaisvuShop",1)end;shopID=getShopData()UI.shop(shopID)
Adv.talkNoCharacter("???","Give me a shout whenever you feel like it.","VC_Jamaisvu_00035_")elseif YRDu==1 then
if GetFlag("Tutorial.JamaisvuShopGGP")==0 then
UI.showMessageDialog("Here you use the GGP that you gain from recruitment to purchase items. \n(Recruitment exchange points are automatically converted to GGP at the end of recruitment draws.)")SetFlag("Tutorial.JamaisvuShopGGP",1)end;UI.shop("Shop.GGP001")
Adv.talkNoCharacter("???","Did you find what you want?","VC_Jamaisvu_00034_")elseif YRDu==CWRiP then local dl=Domain.getLatestChapterLabel()
local sKPjQkdn=Domain.getLatestDayNum()local HHH9IlJp=Domain.getPlayerRank()local uYz2ryy4=Garden.Level()
local zVPRGDnG
if uYz2ryy4 ==0 then zVPRGDnG=math.random(0,1)
if zVPRGDnG==0 then
Adv.talkNoCharacter("???","Are you making full use of chips and boosters?","VC_Jamaisvu_00017_")
Adv.talkNoCharacter("???","It may serve you well to revisit the past and stop by the munitions store every now and then.","VC_Jamaisvu_00018_")else
Adv.talkNoCharacter("???","Are your Memorias enhanced enough?","VC_Jamaisvu_00019_")
Adv.talkNoCharacter("???","It may serve you well to revisit the past and train in the arena every now and then.","VC_Jamaisvu_00020_")end else zVPRGDnG=0
if Domain.isClearStory("MC04_06")then zVPRGDnG=math.random(0,3)elseif
Domain.isClearStory("MC03_20")then zVPRGDnG=math.random(0,2)elseif Domain.isClearStory("MC03_14")then
zVPRGDnG=math.random(0,1)end
if zVPRGDnG==0 then
Adv.talkNoCharacter("???","Engage in flashback battles to become even stronger.","VC_Jamaisvu_00025_")
Adv.talkNoCharacter("???","Collect valuable crafting materials to upgrade your Memorias.","VC_Jamaisvu_00026_")elseif zVPRGDnG==1 then
Adv.talkNoCharacter("???","Go exploring on patrol missions available from the heliport to become even stronger.","VC_Jamaisvu_00029_")
Adv.talkNoCharacter("???","Collect accessories as you explore different areas, then equip them to strengthen your squad.","VC_Jamaisvu_00030_")elseif zVPRGDnG==2 then
Adv.talkNoCharacter("???","Engage in flashback battles to become even stronger.","VC_Jamaisvu_00025_")
Adv.talkNoCharacter("???","To grow even further, I suggest you partake in gem flashback battles.","VC_Jamaisvu_00026_")elseif zVPRGDnG==3 then
Adv.talkNoCharacter("???","Challenge Orb Bosses in the dormitories to become even stronger.","VC_Jamaisvu_00029_")
Adv.talkNoCharacter("???","Increase the amount of skills you can use and widen your options in battle.","VC_Jamaisvu_00030_")end end elseif YRDu==LB0A then
if GetFlag("Tutorial.JewelShop")==0 then
Adv.talkNoCharacter("???","By spending gems, you can craft powerful accessories.","VC_Jamaisvu_00031_")
Adv.talkNoCharacter("???","Attributes are randomized, so keep tweaking them to find your new favorite bling.","VC_Jamaisvu_00032_")
UI.showMessageDialog("Crafting allows you to make powerful accessories.\nChallenge gem flashback battles to acquire the necessary gems.")SetFlag("Tutorial.JewelShop",1)end;UI.jewelShop("Shop.Forging001")
Adv.talkNoCharacter("???","Give me a shout whenever you feel like it.","VC_Jamaisvu_00035_")end
Field.changeAnimation("Player","FieldIdle",1.0,0.7)Wait(0.70)Field.finishEvent()
Field.refreshScripts()end
getShopData=function()shopRank=GetFlag("Jamaisvu.ShopRank")
if shopRank<=1 then
shopID="Shop.Garden001"elseif shopRank<=2 then shopID="Shop.Garden002"elseif shopRank<=3 then shopID="Shop.Garden003"elseif shopRank<=4 then
shopID="Shop.Garden004"elseif shopRank<=5 then shopID="Shop.Garden005"elseif shopRank<=6 then shopID="Shop.Garden006"elseif shopRank<=7 then
shopID="Shop.Garden007"else shopID="Shop.Garden008"end;return shopID end
function OnPrismBattleEvent(IKxw,w0,UgXzI_C,MLFLplLe,jwq,kw3ei0a)
Routine(function()local EspneS5=""local LZeg0=0;Transition.start()
PurgeField()EspneS5,LZeg0=PrismBattleStart(IKxw,UgXzI_C,MLFLplLe)
Field.gotoGardenPrism(jwq)Transition.finish()end)end
function OnScoreAttackEvent(OJZ,nmuj,bP,b4IqQW)
Routine(function()local iuGb=""local koZU=0;Yield(GoToScoreAttackEvent)
PurgeField()iuGb,koZU=ScoreAttackStart(OJZ,nmuj,bP,b4IqQW)
Field.setFieldEventState("FromScoreAttack")
Exit_FieldAndChange("Grave","FrontScoreAttackPoint")end)end
function OnScoreAttackAccessedTutorial(C)
Routine(function()
if GetFlag("ScoreAttackAccessTutorial")==0 then Field.startEvent(
nil,false,false,true)FaceToFaceCat()
Adv.talkNoCharacter("???",[[You appear to be able to participate in Score Challenges.]])
Adv.talkNoCharacter("???",[[You can gain experience-boosting items from them.\nSo don't hesitate to participate in such challenges.]])tutorial=Tutorial.start()
Tutorial.showDialog("scoreattack1")Tutorial.finish(tutorial)Field.finishEvent()
SetFlag("ScoreAttackAccessTutorial",1)end;C()end)end
function FromScoreAttack()PlayerLock("FromScoreAttack")
Field.setActive("Player",false)ComeBackScoreAttackEvent()
Field.resetFieldEventState()PlayerUnLock("FromScoreAttack")if
ScoreAttack.IsOpenGardenToScoreAttack()then
ScoreAttackAccessPointObjectAt("Grave","ScoreAttackPoint")end
ScoreAttack.ResetScoreAttackPlayingLabel()end
function GoToScoreAttackEvent()
local nmJGp_=Field.getPosition("FrontScoreAttackPoint")local h0v3PIV=Field.computeMoveTime("Player",nmJGp_)
Field.moveToWait("Player",nmJGp_,h0v3PIV)Sound.play("SY_Return_to_Home")
Field.changeAnimation("Player","FieldJameisvuInStart")Wait(0.4)local Uc=Field.getPosition("Player")
Field.setPosition("JameisvuScoreAttack_In",
Uc+Vec(0,-0.2,0))Field.setActive("JameisvuScoreAttack_In",true)
Field.setEnvironmentColor("Shadow",
1.0/0.4392157,1.0/0.4998816,1.0/0.6784314,1)Wait(1)Field.setActive("Player",false)Wait(0.03)
Sound.play("SY_ScoreAttack_IN")Wait(3.37)Transition.setWhite()
Transition.start(0.3)Sound.playBGM("",0.2,0,0,true)
Field.setEnvironmentColor("Shadow",1.0,1.0,1.0,1.2)Field.finishEvent(0)
Field.setActive("JameisvuScoreAttack_In",false)end
function ComeBackScoreAttackEvent()Sound.returnFieldBGM()
local JSkUQL=Field.getPosition("FrontScoreAttackPoint")Field.setPosition("Player",JSkUQL)
Field.setPosition("JameisvuScoreAttack_Out",
JSkUQL+Vec(0,-0.2,0))Field.setCatChaseTarget("Cat","Player",true)
Field.setEnvironmentColor("Shadow",1.0,1.0,1.0,0)Field.setActive("JameisvuScoreAttack_Out",true)
Wait(0.6)Sound.play("SY_ScoreAttack_OUT")Wait(2)
Field.setEnvironmentColor("Shadow",
1.0/0.4392157,1.0/0.4998816,1.0/0.6784314,1)Wait(0.27)Sound.play("SY_Leave_Home")Wait(0.73)
Field.setActive("Player",true)
Field.setEnvironmentColor("Shadow",1.0,1.0,1.0,0.80)Field.fadeInCharacterWait("Player",0.5)Wait(0.3)
Field.moveByWait("Player",Vec(0,0,2),2)Field.resetPosition()
Field.setActive("JameisvuScoreAttack_Out",false)end
function OnNoiseCharacterTalkEvent(PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK)
Routine(function()Field.turnToTarget("Player",PTUZ2v,0.5)
if
GetLocalFlag(
"NoiseCharacter."..PTUZ2v.."."..qlZeO3Pr)==0 then local Oo6ecUO=Adv.characterAsync(PTUZ2v)
Field.talkCutscene(PTUZ2v,function()
Field.setLookAtTarget(PTUZ2v,"Player")Layout.createStage()
if qlZeO3Pr>0 then Layout.show(Oo6ecUO)end;Adv.addLocalizedString(fG9zS)
Adv.talk(Oo6ecUO,fG9zS,WiXG)Layout.show()Field.disableLookAt(PTUZ2v)end,true,false)
SetLocalFlag("NoiseCharacter."..PTUZ2v.."."..qlZeO3Pr,1)end;QgyWztK()end)end;function OnNoiseCharacterLevelUp(b6SL0yka)
Routine(function()Adv.whiteOut(1.5)Wait(2)Adv.whiteIn(1)
Wait(1)b6SL0yka()end)end
function OnMemoryStoryStart(hEk)
Routine(function()
PlayerLock("WaitMemoryStory")
local E8o=Field.getPlayerPosition()+Vec(0,0.35)
Field.setCameraFov(Field.getCameraFov()*0.2,0.7)Field.moveTo("Camera",E8o,0.7)
Transition.setWhite()Transition.start(0.7)Wait(2)
MemoryStoryWorld(hEk)PlayerUnLock("WaitMemoryStory")end)end;function ResumeMemoryStory()ResumeMemoryStoryWorld()end
function FaceToFaceCat()
Field.faceToFace("Cat")Wait(0.3)local TdqFo=Field.getPosition("Player")
local ykLF0=Field.getPosition("Cat")if(ykLF0.y-TdqFo.y<0.60)then
Field.changeAnimation("Player","FieldUnique04",1.0,0.7)end;local cilhu=
(ykLF0-TdqFo)*0.50+TdqFo-Vec(0,0.9,0)duration=1
magnification=0.6;Field.stopTaskKey("Camera")
Field.setCameraAngleV(-10,duration,1,0.2)
Field.setCameraFov(Field.getDefaultCameraFov()*magnification,duration,1,0.2)
Field.moveTo("Camera",cilhu,duration,AnimationMode.Auto,1,0.2)Wait(duration/2)end
function OnGateBossEvent(eVfN,LBIJ)
Routine(function()Transition.start()
local CSSp=string.format("オーブボス%d挑戦済み",
GateBoss.GetTabIndex(eVfN)+1)SetFlag(CSSp,1)PurgeField()GateBossWorld(eVfN)
Field.goToGateBoss(LBIJ)Transition.finish()end)end;function OnPrismBattleTutorial(CBZIwYHI)SetFlag("TerminalButton",1)
UI.forceEnableHudHome(true)CBZIwYHI()end