
function TerminalHome_ShowWelcomeMessage(A,w0qyLbH)if
GetFlag("HomeチュートリアルSkip")==1 then return end
local nsgji=GetFlag("Tutorial.JamaisvuHome")local bClTIa;Log("○-------Welcome Home!-------")
Log("○ tutorial step:"..nsgji)Log("○ chapter:"..A)
Log("○ day:"..w0qyLbH)Log("○---------------------------")
if
A=="MC01"and w0qyLbH==1 and nsgji<1 then bClTIa=Tutorial.start()Wait(1)
Tutorial.showMask()
Tutorial.setMessage([[Chào mừng bạn đến với Heaven Burns Red!]])Tutorial.show()
Tutorial.setMessage([[Đây là Màn hình Chính của trờ chơi.\nNó chứa nhiều tính năng có ích cho hành trình của bạn.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)
Adv.talkNoCharacter("???",[[Dọc theo hành trình dài của số phận, có đôi lúc chúng ta cần phải rẽ hướng sang những ngả đường khác.]],"VC_Jamaisvu_00075_")
Domain.addLuaReward("LuaReward.tutorialMC00Day00",HowToGrant.LuaHome)SetFlag("Tutorial.JamaisvuHome",1)
Tutorial.flagSave()elseif A=="MC01"and w0qyLbH>3 and nsgji<2 then
Adv.talkNoCharacter("???",[[Welcome home! And well done! I have been watching over your efforts from here.]],"VC_Jamaisvu_00076_")
Domain.addLuaReward("LuaReward.RKayamoriR3",HowToGrant.LuaHome,4)SetFlag("Tutorial.JamaisvuHome",2)elseif

A=="MC01"and w0qyLbH==6 and GetFlag("Tutorial.TezukaBattle")==1 and nsgji<3 then
Adv.talkNoCharacter("???",[[You appear to have had a bad dream. But there is plenty more that you can do.]],"VC_Jamaisvu_00079_")
Adv.talkNoCharacter("???",[[The powers you receive here shall certainly aid you.\nBy no means should you ever give up.]],"VC_Jamaisvu_00080_")bClTIa=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You can increase your units' attributes by equipping accessories and boosters.]])Tutorial.show()
Tutorial.setMessage([[The Recommended Rating for Day 6 is: 2,000.\nTry improving your squad's rating before attempting to progress further in the main scenario.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)elseif A=="MC01"and w0qyLbH>7 and nsgji<3 then
Adv.talkNoCharacter("???",[[Welcome home! And well done! I have been watching over your efforts from here.]],"VC_Jamaisvu_00081_")
Domain.addLuaReward("LuaReward.tutorialMC01Day07",HowToGrant.LuaHome)SetFlag("Tutorial.JamaisvuHome",3)elseif
A=="MC01"and w0qyLbH>8 and w0qyLbH<=11 and nsgji<4 then
Adv.talkNoCharacter("???",[[Welcome home! There is still much for you to do.]],"VC_Jamaisvu_00082_")
Adv.talkNoCharacter("???",[[The powers you receive here shall certainly aid you.\nBy no means should you ever give up.]],"VC_Jamaisvu_00083_")bClTIa=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You can increase your units' attributes by equipping accessories and boosters.\nTry improving your squad's rating before attempting to progress further in the main scenario.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)elseif A=="MC01"and w0qyLbH>11 and nsgji<4 then
Adv.talkNoCharacter("???",[[Welcome home! The efforts you made here will surely not go wasted.]],"VC_Jamaisvu_00084_")
Domain.addLuaReward("LuaReward.tutorialMC01Day11",HowToGrant.LuaHome)SetFlag("Tutorial.JamaisvuHome",4)elseif


A=="MC01"and w0qyLbH==12 and GetFlag("第1章ダンジョン4層踏破")==0 and GetFlag("Tutorial.MC01BadEnd")==1 and nsgji<5 then
Adv.talkNoCharacter("???",[[You appear to have had a bad dream. But there is plenty more that you can do.]],"VC_Jamaisvu_00085_")bClTIa=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Try replaying Chapter 1, Day 11 to fully complete the dungeon!\n(Any previously unlocked checkpoints will remain available during subsequent playthroughs.)]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)elseif A=="MC01"and w0qyLbH==12 and
GetFlag("Tutorial.MC01BadEnd")==1 and nsgji<5 then
Adv.talkNoCharacter("???",[[You appear to have had a bad dream. But there is plenty more that you can do.]],"VC_Jamaisvu_00086_")bClTIa=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Progress through the main scenario\nand try to find the correct selections.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)elseif
A=="MC01"and w0qyLbH==12 and
GetFlag("Tutorial.MC01LoseBossBattle")==1 and nsgji<5 then
Adv.talkNoCharacter("???",[[You appear to have had a bad dream. But there is plenty more that you can do.]],"VC_Jamaisvu_00087_")bClTIa=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You can obtain large amounts of experience and important materials used to\nraise up Memorias from flashback battles in the Garden of Memories.]])Tutorial.show()
Tutorial.setMessage([[The Recommended Rating for Day 12 is: 3,800.\nTry improving your squad's rating before attempting to progress further in the main scenario.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(bClTIa)elseif Domain.isClearedChapter("MC01")and nsgji<5 then
SetFlag("Tutorial.JamaisvuHome",5)
Adv.talkNoCharacter("???",[[Welcome home! You seem to have overcome a massive hurdle. Well done!]],"VC_Jamaisvu_00088_")
Adv.talkNoCharacter("???",[[You shall require even more power to progress further along the path of destiny.]],"VC_Jamaisvu_00089_")
Adv.talkNoCharacter("???",[[Try building up your fighting power as you proceed with utmost caution.]],"VC_Jamaisvu_00090_")else
if DimensionBattle.CanChangeHome()then
local rDzL7SVO=DimensionBattle.GetLabel()
if
GetFlag("DimensionBattleNews")==0 or GetFlag(""..
rDzL7SVO.."_DimensionBattleNews")==0 then
Adv.talkNoCharacter("???","I see that some special training is being held. Try that out in order to gain greater power.","VC_Jamaisvu_00091_")
if
GetFlag(""..rDzL7SVO.."_DimensionBattleNews")==0 then
SetFlag(""..rDzL7SVO.."_DimensionBattleNews",1)elseif GetFlag("DimensionBattleNews")==0 then
SetFlag("DimensionBattleNews",1)end else local BW0WFP=math.random(0,2)
if BW0WFP==0 then
Adv.talkNoCharacter("???","Welcome home! Were you able to find what you needed to do?","VC_Jamaisvu_00091_")elseif BW0WFP==1 then
Adv.talkNoCharacter("???","Welcome home! If the going gets tough, you know you can always return here.","VC_Jamaisvu_00092_")else
Adv.talkNoCharacter("???","Welcome home! Believe in yourself as you forge your own destiny!","VC_Jamaisvu_00093_")end end end end
if
Domain.isClearedChapter("MC01")and not
Domain.isLuaRewardAcquired("LuaReward.tutorialMC01Day07")then
Domain.addLuaReward("LuaReward.tutorialMC01Day07",HowToGrant.LuaHome)end
if
Domain.isClearedChapter("MC01")and not
Domain.isLuaRewardAcquired("LuaReward.tutorialMC01Day11")then
Domain.addLuaReward("LuaReward.tutorialMC01Day11",HowToGrant.LuaHome)end end
function TerminalHome_ShowRewardInfo()if GetFlag("HomeチュートリアルSkip")==1 then
return end
if Domain.isClearStory("MC01_11")and
GetFlag("GetLuaReward.tutorialLifeStone")==0 then
SetFlag("GetLuaReward.tutorialLifeStone",1)
Domain.addLuaReward("LuaReward.tutorialLifeStone",HowToGrant.LuaHome)local X8=Tutorial.start()Wait(1)Tutorial.showMask()
Tutorial.setMessage([[You can use lifestones to restore your Life Points.]])Tutorial.show()
Tutorial.setMessage([[Feel free to use them when you want to carry out\nfurther socializations and flashback battles.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(X8)end
if Domain.isClearStory("MC01_12")and
GetFlag("GetLuaReward.tutorialEdelweiss")==0 then
SetFlag("GetLuaReward.tutorialEdelweiss",1)
Domain.addLuaReward("LuaReward.tutorialEdelweiss",HowToGrant.LuaHome)local JQT=Tutorial.start()Wait(1)Tutorial.showMask()
Tutorial.setMessage([[On top of the currently active event,\nmost parts of past events will remain accessible from the archives.]])Tutorial.show()
Tutorial.setMessage([[You can use edelweiss to unlock the parts of past events' content\nwhere you obtain tokens, which are in turn used\nat the corresponding Token Exchange to receive prizes.]])Tutorial.show()
Tutorial.setMessage([[You can play through the story sections of past events at any time.\nIn fact, many events' stories are best enjoyed in parallel\nwith your progress through the main scenario.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(JQT)end
if Domain.isClearStory("MC02_02")and
GetFlag("GetLuaReward.tutorialMC02Day02")==0 then
SetFlag("GetLuaReward.tutorialMC02Day02",1)
Domain.addLuaReward("LuaReward.tutorialMC02Day02",HowToGrant.LuaHome)end
if Domain.isClearStory("MC02_10")and
GetFlag("GetLuaReward.tutorialMC02Day10")==0 then
SetFlag("GetLuaReward.tutorialMC02Day10",1)
Domain.addLuaReward("LuaReward.tutorialMC02Day10",HowToGrant.LuaHome)end
if Domain.isClearStory("MC02_24")and
GetFlag("GetLuaReward.tutorialMC02Day24")==0 then
SetFlag("GetLuaReward.tutorialMC02Day24",1)
Domain.addLuaReward("LuaReward.tutorialMC02Day24",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_03")and
GetFlag("GetLuaReward.tutorialMC03Day03")==0 then
SetFlag("GetLuaReward.tutorialMC03Day03",1)
Domain.addLuaReward("LuaReward.tutorialMC03Day03",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_08")and
GetFlag("GetLuaReward.tutorialMC03Day08")==0 then
SetFlag("GetLuaReward.tutorialMC03Day08",1)
Domain.addLuaReward("LuaReward.tutorialMC03Day08",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_15")and
GetFlag("GetLuaReward.tutorialMC03Day15")==0 then
SetFlag("GetLuaReward.tutorialMC03Day15",1)
Domain.addLuaReward("LuaReward.tutorialMC03Day15",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_21")and
GetFlag("GetLuaReward.tutorialMC03Day21")==0 then
SetFlag("GetLuaReward.tutorialMC03Day21",1)
Domain.addLuaReward("LuaReward.tutorialMC03Day21",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04_02")and
GetFlag("GetLuaReward.tutorialMC04Day02")==0 then
SetFlag("GetLuaReward.tutorialMC04Day02",1)
Domain.addLuaReward("LuaReward.tutorialMC04Day02",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04_06")and
GetFlag("GetLuaReward.tutorialMC04Day06")==0 then
SetFlag("GetLuaReward.tutorialMC04Day06",1)
Domain.addLuaReward("LuaReward.tutorialMC04Day06",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04_13")and
GetFlag("GetLuaReward.tutorialMC04Day13")==0 then
SetFlag("GetLuaReward.tutorialMC04Day13",1)
Domain.addLuaReward("LuaReward.tutorialMC04Day13",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04B_03")and
GetFlag("GetLuaReward.tutorialMC04BDay03")==0 then
SetFlag("GetLuaReward.tutorialMC04BDay03",1)
Domain.addLuaReward("LuaReward.tutorialMC04BDay03",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04B_07")and
GetFlag("GetLuaReward.tutorialMC04BDay07")==0 then
SetFlag("GetLuaReward.tutorialMC04BDay07",1)
Domain.addLuaReward("LuaReward.tutorialMC04BDay07",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04B_14")and
GetFlag("GetLuaReward.tutorialMC04BDay14")==0 then
SetFlag("GetLuaReward.tutorialMC04BDay14",1)
Domain.addLuaReward("LuaReward.tutorialMC04BDay14",HowToGrant.LuaHome)end
if Domain.isClearStory("MC01_12")and
GetFlag("GetLuaReward.LotteryTicket_MC01Day12")==0 then
SetFlag("GetLuaReward.LotteryTicket_MC01Day12",1)
Domain.addLuaReward("LuaReward.LotteryTicket_MC01Day12",HowToGrant.LuaHome)end
if Domain.isClearStory("MC02_19")and
GetFlag("GetLuaReward.LotteryTicket_MC02Day19")==0 then
SetFlag("GetLuaReward.LotteryTicket_MC02Day19",1)
Domain.addLuaReward("LuaReward.LotteryTicket_MC02Day19",HowToGrant.LuaHome)end
if Domain.isClearStory("MC02_25")and
GetFlag("GetLuaReward.LotteryTicket_MC02Day25")==0 then
SetFlag("GetLuaReward.LotteryTicket_MC02Day25",1)
Domain.addLuaReward("LuaReward.LotteryTicket_MC02Day25",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_14")and
GetFlag("GetLuaReward.LotteryTicket_MC03Day14")==0 then
SetFlag("GetLuaReward.LotteryTicket_MC03Day14",1)
Domain.addLuaReward("LuaReward.LotteryTicket_MC03Day14",HowToGrant.LuaHome)end
if Domain.isClearStory("MC03_21")and
GetFlag("GetLuaReward.LotteryTicket_MC03Day21")==0 then
SetFlag("GetLuaReward.LotteryTicket_MC03Day21",1)
Domain.addLuaReward("LuaReward.LotteryTicket_MC03Day21",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04B_07")and
GetFlag("GetLuaReward.tutorialMC04BDay07")==0 then
SetFlag("GetLuaReward.tutorialMC04BDay07",1)
Domain.addLuaReward("LuaReward.tutorialMC04BDay07",HowToGrant.LuaHome)end
if Domain.isClearStory("MC04B_14")and
GetFlag("GetLuaReward.tutorialMC04BDay14")==0 then
SetFlag("GetLuaReward.tutorialMC04BDay14",1)
Domain.addLuaReward("LuaReward.tutorialMC04BDay14",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05A_03")and
GetFlag("GetLuaReward.tutorialMC05ADay03")==0 then
SetFlag("GetLuaReward.tutorialMC05ADay03",1)
Domain.addLuaReward("LuaReward.tutorialMC05ADay03",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05A_07")and
GetFlag("GetLuaReward.tutorialMC05ADay07")==0 then
SetFlag("GetLuaReward.tutorialMC05ADay07",1)
Domain.addLuaReward("LuaReward.tutorialMC05ADay07",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05A_14")and
GetFlag("GetLuaReward.tutorialMC05ADay14")==0 then
SetFlag("GetLuaReward.tutorialMC05ADay14",1)
Domain.addLuaReward("LuaReward.tutorialMC05ADay14",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05B_03")and
GetFlag("GetLuaReward.tutorialMC05BDay03")==0 then
SetFlag("GetLuaReward.tutorialMC05BDay03",1)
Domain.addLuaReward("LuaReward.tutorialMC05BDay03",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05B_06")and
GetFlag("GetLuaReward.tutorialMC05BDay06")==0 then
SetFlag("GetLuaReward.tutorialMC05BDay06",1)
Domain.addLuaReward("LuaReward.tutorialMC05BDay06",HowToGrant.LuaHome)end
if Domain.isClearStory("MC05B2_12")and
GetFlag("GetLuaReward.tutorialMC05B2Day12")==0 then
SetFlag("GetLuaReward.tutorialMC05B2Day12",1)
Domain.addLuaReward("LuaReward.tutorialMC05B2Day12",HowToGrant.LuaHome)end end
function TerminalHome_OpenNewFunction(AtYtR,ND2BCh3)
if GetFlag("HomeチュートリアルSkip")==1 then if
Domain.isClearStory("MC01_11")and Garden.Level()==0 then
Garden.LevelUp()end
if Domain.isClearStory("MC03_20")and
Garden.Level()==1 then Garden.LevelUp()end;if Garden.Level()==2 then Garden.LevelUp()end;if

GetFlag("Permission.AccessoryCharm")==1 and Garden.Level()==3 then Garden.LevelUp()end;return end
if
GetFlag("限界突破チュートリアル")==1 and
GetFlag("万能ピース変換チュートリアル")==0 then
UI.showLineInfo("The \"Protean Shard Conversion\" feature has been added.",2,3)TutorialHome_PieceExchange()end;local IODBg
if AtYtR~="MC00"and ND2BCh3 >2 and
GetFlag("Permission.Communication")==0 then
SetFlag("Permission.Communication",1)
UI.showLineInfo("You've unlocked the \"Socializations\" menu option.",2,3)end
if AtYtR~="MC00"and ND2BCh3 >5 and
GetFlag("Permission.TerminalHandlyMenu")==0 then
SetFlag("Permission.TerminalHandlyMenu",1)SetFlag("Permission.TerminalFreeTime",1)end
if
Domain.isClearStory("MC01_05")and
GetFlag("アリーナ_バトル指南開放フラグ")==0 and
GetFlag("便利機能チュートリアルでバトル指南解放通知済み")==0 then
UI.showLineInfo("You've unlocked the \"Battle Familiarization\" feature.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([["Battle Familiarization" can now be accessed in the arena.]])Tutorial.show()
Tutorial.setMessage([[If you ever run into trouble in battle, be sure to have a look.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)
SetFlag("アリーナ_バトル指南開放フラグ",1)end;ShowVariableChallengeTutorial(AtYtR,ND2BCh3)
if
Domain.isClearStory("MC01_11")and Garden.Level()==0 then
Garden.LevelUp()
UI.showLineInfo("You've unlocked the Garden of Memories.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[You are now able to visit the Garden of Memories.]])Tutorial.show()
Tutorial.setMessage([[You can obtain large amounts of experience and important materials\nused to raise up Memorias from flashback battles in the Garden of Memories.\nTry improving your squad's rating before attempting to progress further in the main scenario.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)end
if

Tutorial.isBlocked("blocker.prismMultipleStamina")==false and GetFlag("Permission.PrismBattleMultipleConsume")==0 then
UI.showLineInfo("You've unlocked the \"Flashback Batch Battles\" feature.",2,3)IODBg=Tutorial.start()
Tutorial.showDialog("PrismBattleMultipleConsumeTutorial01")Tutorial.finish(IODBg)
SetFlag("Permission.PrismBattleMultipleConsume",1)Tutorial.flagSave()end
if
Tutorial.isBlocked("blocker.gardenExpeditionMultipleStamina")==false and
GetFlag("Permission.GardenExpeditionMultipleConsume")==0 then
SetFlag("Permission.GardenExpeditionMultipleConsume",1)Tutorial.flagSave()end
if


Tutorial.isBlocked("blocker.gateBossMultipleStamina")==false and Tutorial.isBlocked("blocker.GateBoss")==false and GetFlag("Permission.GateBossMultipleConsume")==0 then
UI.showLineInfo("You've unlocked the \"Orb Boss Batch Battles\" feature.",2,3)SetFlag("Permission.GateBossMultipleConsume",1)
Tutorial.flagSave()end;if Domain.isClearedChapter("MC01")and
GetFlag("Permission.Gallery")==0 then
SetFlag("Permission.Gallery",1)end
if
Tutorial.isBlocked("blocker.LimitBreakPower")==false and
GetFlag("限界突破の器Tutorial表示")==0 then
UI.showLineInfo("You've unlocked the \"Delimiter\" feature.",2,3)SetFlag("限界突破の器Tutorial表示",1)
Tutorial.flagSave()end
if
Domain.isClearStory("MC01_12")and GetFlag("Open_MemoryStory")==0 then SetFlag("Open_MemoryStory",1)
UI.showLineInfo("You've unlocked recollections available from people found throughout the Garden of Memories.",2,3)end
if
GetFlag("Open_MemoryStory")==1 and
GetFlag("Homeメモストチュートリアル終了")==0 then TutorialHome_MemoryStory()end
if Domain.isClearStory("MC01_12")and
GetFlag("UserProfileチュートリアル")==0 and
GetFlag("UserProfile解放")==0 then
SetFlag("UserProfile解放",1)
UI.showLineInfo("You've unlocked the \"Profile\" menu option.",2,3)end
if

Domain.isClearStory("MC01_12")and GetFlag("UserProfile解放")==1 and GetFlag("UserProfileチュートリアル")==0 then TutorialHome_UserProfile()end
if
Domain.isClearStory("MC01_12")and IsOpened("release.live")then
if GetFlag("Permission.Live")==0 then
SetFlag("Permission.Live",1)elseif GetFlag("Liveチュートリアル")==1 and
LiveMode.hasNewMusic()then LiveMode.showNewMusic()end end
if
Tutorial.isBlocked("blocker.StoryHardModeRenewal")==false and
GetFlag("異時層リニューアルTutorial表示")==0 then
UI.showLineInfo("You've unlocked the \"Anachronies\" feature.",2,3)IODBg=Tutorial.start()if
IsOpened("release.StoryHardModeRenewal_Mission")then Tutorial.showDialog("StoryHardModeRenewal")else
Tutorial.showDialog("StoryHardMode1")end
Tutorial.finish(IODBg)
SetFlag("異時層リニューアルTutorial表示",1)Tutorial.flagSave()end
if Domain.isClearStory("MC02_03")and
GetFlag("アリーナ_訓練場開放フラグ")==0 then
UI.showLineInfo("You've unlocked the \"Free Practice\" feature.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([["Free Practice" can now be accessed in the arena.]])Tutorial.show()
Tutorial.setMessage([[In "Free Practice", you can freely adjust the enemy's settings and formation.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)SetFlag("アリーナ_訓練場開放フラグ",1)end
if Domain.isClearStory("MC02_23")and
GetFlag("スキル解放Tutorial表示")==0 then
if
not Domain.isClearedChapter("MC03")then
UI.showMessageDialog("[TIP: Enhance a Variety of Memorias!]\nBy upgrading the different Memorias a unit possesses, you strengthen the overall unit as a whole.")IODBg=Tutorial.start()
Tutorial.showDialog("styleEnhance3")Tutorial.finish(IODBg)end;SetFlag("スキル解放Tutorial表示",1)
Tutorial.flagSave()end
if
Domain.isClearStory("MC02_23")and
GetFlag("アリーナ_チャレンジ演習開放フラグ")==0 then
UI.showLineInfo("You've unlocked the \"Proving Ground Challenges\" feature.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([["Proving Ground Challenges" can now be accessed in the arena.]])Tutorial.show()
Tutorial.setMessage([[There, you can attempt special challenges in which you can try out certain Memorias.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)
SetFlag("アリーナ_チャレンジ演習開放フラグ",1)end
if
IsOpened("release.MasterSkill01")and
Tutorial.isBlocked("blocker.MasterlySkill")==false and
GetFlag("マスタースキルTutorial表示")==0 then
UI.showLineInfo("You've unlocked the \"Master Skill\" feature",2,3)IODBg=Tutorial.start()
Tutorial.showDialog("MasterlySkillTutorial")Tutorial.finish(IODBg)
Domain.resetMasterlySkillNotification()SetFlag("マスタースキルTutorial表示",1)
Tutorial.flagSave()end
if Domain.isClearStory("MC03_13")and
GetFlag("イベントリマインドInfo表示")==0 then
if not
Domain.isClearedChapter("MC04")then
UI.showMessageDialog("[TIP: Play Event Stories!]\nYou can collect tokens and perform Limit Breaks on event-exclusive S Memorias!\nThe more Limit Breaks you perform on a character, the higher her max level gets!")IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Ruka's S-rank [Passing Moment of Reprieve] Memoria,\nobtainable from the "Summer, Swimsuits, and Tropical Festivals!" story event,\ncan acquire a fire-based skill that attacks all enemies!]])Tutorial.show()
Tutorial.setMessage([[Such fire-element offensive skills are useful when battling enemies that are vulnerable to fire,\nso make the most of them!]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)end;SetFlag("イベントリマインドInfo表示",1)
Tutorial.flagSave()end
if Domain.isClearStory("MC03_14")and
GetFlag("ヘリポート解放Info表示")==0 then
UI.showLineInfo("You've unlocked dungeon courses accessible from the Garden of Memories' heliport.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[\nYou can acquire powerful accessories and valuable upgrade materials\nfrom the different dungeon courses,\nIt is well worth exploring them!]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)SetFlag("ヘリポート解放Info表示",1)
Tutorial.flagSave()end
if
Domain.isClearStory("MC03_14")and not
Domain.isLuaRewardAcquired("LuaReward.tutorialExpedition")then
Domain.addLuaReward("LuaReward.tutorialExpedition",HowToGrant.LuaHome)end
if
Domain.isClearStory("MC03_20")and Garden.Level()==1 then Garden.LevelUp()
if

not Tutorial.isBlocked("blocker.JewelShop")and GetFlag("錬成解放Info表示")==0 then
UI.showLineInfo("You've unlocked Gem Flashback Battles in the Garden of Memories.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage("The gemstones you obtain from these gem flashback battles\ncan be used to craft accessories.")Tutorial.show()
Tutorial.setMessage("Higher difficulty levels reap greater gem rewards,\nso rise to the challenge by strengthening your squad's rating,\nand create the most powerful accessories that you can!")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)SetFlag("錬成解放Info表示",1)
SetFlag("錬成ショップ商品追加Info表示",1)end end
if Garden.Level()==2 then Garden.LevelUp()if

GetFlag("Permission.AccessoryCharm")==1 and Garden.Level()==3 then Garden.LevelUp()end end
if
GetFlag("錬成解放Info表示")==1 and
GetFlag("錬成ショップ商品追加Info表示")==0 then
UI.showLineInfo("New items have been added to the crafting shop.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[\nNew accessories have been added to the "Crafting" option's lineup.\nYou can now use gems to craft chains with 6 ★s.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)
SetFlag("錬成ショップ商品追加Info表示",1)Tutorial.flagSave()elseif
GetFlag("錬成解放Info表示")==0 and
GetFlag("錬成ショップ商品追加Info表示")==0 then
SetFlag("錬成ショップ商品追加Info表示",1)Tutorial.flagSave()end
if Domain.isClearStory("MC03_20")and
GetFlag("アクセサリ合成Tutorial表示")==0 then
UI.showLineInfo("You've unlocked the \"Accessory Synthesis\" feature.",2,3)IODBg=Tutorial.start()
Tutorial.showDialog("AccessorySynthesizeTutorial")Tutorial.finish(IODBg)
SetFlag("アクセサリ合成Tutorial表示",1)Tutorial.flagSave()end
if Domain.isClearStory("MC03_20")and
GetFlag("オートバトル設定Tutorial表示")==0 then
if not
Domain.isClearedChapter("MC04")then
UI.showMessageDialog("[TIP: Make the Most of Auto-Battle Mode!]\nYou can change how your squad acts in auto-battle mode, such as when to perform offensive skills or trigger overdrive, via the Auto Battle Advanced Settings sub-menu.")IODBg=Tutorial.start()
Tutorial.showDialog("AutoBattleSettingTutorial")Tutorial.finish(IODBg)end;SetFlag("オートバトル設定Tutorial表示",1)
Tutorial.flagSave()end
if
Domain.isClearStory("MC03_21")and
GetFlag("時計塔Tutorial表示")==0 and ClockTower.isAvailable()then
UI.showLineInfo("You've unlocked the clock tower!",2,3)IODBg=Tutorial.start()
Tutorial.showDialog("ClockTowerTutorial")Tutorial.finish(IODBg)
SetFlag("時計塔Tutorial表示",1)Tutorial.flagSave()end
if
Domain.isClearStory("MC04_02")and
GetFlag("宝珠の迷宮Info表示")==0 and
GardenExpedition.getExpeditionMaxFloorNum("GardenExpeditionGroup.LabyrinthOfGrowth")<1 then
UI.showLineInfo("You've unlocked the \"Oubliette of Tears\" dungeon course\navailable from the Garden of Memories' heliport.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[The "Oubliette of Tears" course has been added to the Garden of Memories' dungeon.\nThe gemstone "tears" found within there are enhancement items\nused to unlock passive powers and other attributes.]])Tutorial.show()
Tutorial.setMessage([[Flashback battle and dungeon passes can be won from limited-time score challenge events.]])Tutorial.show()
Tutorial.setMessage([[Try it out and see how good you are!]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)SetFlag("宝珠の迷宮Info表示",1)
Tutorial.flagSave()elseif
GetFlag("宝珠の迷宮Info表示")==0 and
GardenExpedition.getExpeditionMaxFloorNum("GardenExpeditionGroup.LabyrinthOfGrowth")>0 then SetFlag("宝珠の迷宮Info表示",1)
Tutorial.flagSave()end
if
GateBoss.IsAvailable()and
not Tutorial.isBlocked("blocker.GateBoss")and GetFlag("ゲートボス解放Info表示")==
0 then
UI.showLineInfo("You've unlocked the Orb Boss battles option in the Power Training menu.",2,3)IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[When you first defeat an Orb Boss, you will receive an orb that,\nwhile equipped, will grant that unit an exclusive skill.]])Tutorial.show()Tutorial.hideMask()
Tutorial.showMask()
Tutorial.setMessage([[Repeatedly defeating the Orb Boss with that orb equipped\nwill allow your unit to gain proficiency in that orb's skill.\nOnce their proficiency reaches 100%,\nthey will be able to use that orb's skill without having to equip the orb.]])Tutorial.show()Tutorial.hideMask()
Tutorial.showMask()
Tutorial.setMessage([[The higher the boss's level, the more powerful their attacks become.\nTo reduce the damage incurred by them on your squad,\ntry equipping the exclusive accessories which that kind of boss occasionally drop\nwhen you take on their higher-level versions.]])Tutorial.show()Tutorial.hideMask()
Tutorial.showMask()
Tutorial.setMessage([[You can attempt to fight Orb Bosses from the Power Training menu.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)SetFlag("ゲートボス解放Info表示",1)
Tutorial.flagSave()end
if Domain.isClearStory("MC04B_06")and
GetFlag("限界突破Info表示")==0 then
if
not Domain.isClearedChapter("MC04B")then
UI.showMessageDialog("[TIP: Limit Break Your Memorias!]\nWhen you perform Limit Breaks on your Memorias, you increase their attributes and max level. Further, the \"Inspiring Spark\" passive power that many SS Memorias possess, will grant an additional +1 SP while that squad member is in the front line.")IODBg=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Protean shards (SS), that can be used to Limit Break any SS-rank Memoria,\nare obtainable as prizes from the Token Exchange of each story event.]])Tutorial.show()
Tutorial.setMessage([[Collect and cash in tokens at the story event Token Exchange\nin order to obtain such prizes that help power up your squad members further!]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(IODBg)end;SetFlag("限界突破Info表示",1)
Tutorial.flagSave()end
if IsOpened("release.gateboss03_thunder")then
if
Domain.maxPartyTotalAccessoryLevel()>=
250 and
not Tutorial.isBlocked("blocker.GateBoss")and
GetFlag("オーブボス3解放Info表示")==0 then if GetFlag("オーブボス3挑戦済み")==0 then
UI.showLineInfo("You've unlocked the Orb Boss III battles in the Power Training menu.",2,3)end
SetFlag("オーブボス3解放Info表示",1)Tutorial.flagSave()end end;local YRDu=GetFlag("プリズムバトル解放Info")
if
Domain.isClearStory("MC03_14")and YRDu<=8 then
SetFlag("プリズムバトル解放Info",9)
if PrismInfoVisible("Battle.Prism01_10","Battle.Prism02_10","Battle.Prism03_10")then
UI.showLineInfo("You've unlocked Lv. 10 flashback battles.",2,3)end elseif Domain.isClearStory("MC03_11")and YRDu<=7 then
SetFlag("プリズムバトル解放Info",8)
if PrismInfoVisible("Battle.Prism01_09","Battle.Prism02_09","Battle.Prism03_09")then
UI.showLineInfo("You've unlocked Lv. 9 flashback battles.",2,3)end elseif Domain.isClearStory("MC03_09")and YRDu<=6 then
SetFlag("プリズムバトル解放Info",7)
if PrismInfoVisible("Battle.Prism01_08","Battle.Prism02_08","Battle.Prism03_08")then
UI.showLineInfo("You've unlocked Lv. 8 flashback battles.",2,3)end elseif Domain.isClearStory("MC03_06")and YRDu<=5 then
SetFlag("プリズムバトル解放Info",6)
if PrismInfoVisible("Battle.Prism01_07","Battle.Prism02_07","Battle.Prism03_07")then
UI.showLineInfo("You've unlocked Lv. 7 flashback battles.",2,3)end elseif Domain.isClearStory("MC02_24")and YRDu<=4 then
SetFlag("プリズムバトル解放Info",5)
if PrismInfoVisible("Battle.Prism01_06","Battle.Prism02_06","Battle.Prism03_06")then
UI.showLineInfo("You've unlocked Lv. 6 flashback battles.",2,3)end elseif Domain.isClearStory("MC02_19")and YRDu<=3 then
SetFlag("プリズムバトル解放Info",4)
if PrismInfoVisible("Battle.Prism01_05","Battle.Prism02_05","Battle.Prism03_05")then
UI.showLineInfo("You've unlocked Lv. 5 flashback battles.",2,3)end elseif Domain.isClearStory("MC02_15")and YRDu<=2 then
SetFlag("プリズムバトル解放Info",3)
if PrismInfoVisible("Battle.Prism01_04","Battle.Prism02_04","Battle.Prism03_04")then
UI.showLineInfo("You've unlocked Lv. 4 flashback battles.",2,3)end elseif Domain.isClearStory("MC02_08")and YRDu<=1 then
SetFlag("プリズムバトル解放Info",2)
if PrismInfoVisible("Battle.Prism01_03","Battle.Prism02_03","Battle.Prism03_03")then
UI.showLineInfo("You've unlocked Lv. 3 flashback battles.",2,3)end elseif Domain.isClearStory("MC01_12")and YRDu==0 then
SetFlag("プリズムバトル解放Info",1)
if PrismInfoVisible("Battle.Prism01_02","Battle.Prism02_02","Battle.Prism03_02")then
UI.showLineInfo("You've unlocked Lv. 2 flashback battles.",2,3)end end;local CWRiP=GetFlag("Jamaisvu.ShopRank")
if CWRiP<8 and
Domain.isClearStory("MC04_11")then SetFlag("Jamaisvu.ShopRank",8)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<7 and Domain.isClearStory("MC04_05")then
SetFlag("Jamaisvu.ShopRank",7)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<6 and Domain.isClearStory("MC03_16")then
SetFlag("Jamaisvu.ShopRank",6)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<5 and Domain.isClearStory("MC03_09")then
SetFlag("Jamaisvu.ShopRank",5)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<4 and Domain.isClearStory("MC02_15")then
SetFlag("Jamaisvu.ShopRank",4)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<3 and Domain.isClearStory("MC02_05")then
SetFlag("Jamaisvu.ShopRank",3)
UI.showLineInfo("The lineup of goods for sale in the Garden of Memories Shop has changed.",2,3)elseif CWRiP<2 and Domain.isClearStory("MC01_11")then
SetFlag("Jamaisvu.ShopRank",2)end end
function TerminalHome_FragmentDialog(LB0A)if GetFlag("HomeチュートリアルSkip")==1 then return
""end
local dl=GetLatestFragmentLabel(LB0A)local sKPjQkdn=""
if dl~=""then
local HHH9IlJp=GetFlag("第四章 前編断章解放")==2 or
GetFlag("第四章 前篇断章解放")==2 or
GetFlag("제4장 전편断章解放")==2
if HHH9IlJp then if GetFlag("第四章 前編断章解放")~=2 then
SetFlag("第四章 前編断章解放",2)end;if
GetFlag("第四章 前篇断章解放")~=2 then
SetFlag("第四章 前篇断章解放",2)end;if
GetFlag("제4장 전편断章解放")~=2 then
SetFlag("제4장 전편断章解放",2)end end;local uYz2ryy4=Domain.isClearedChapter("AC10")
local zVPRGDnG=

GetFlag("第四章 前編断章解放")<2 and
GetFlag("第四章 前篇断章解放")<2 and
GetFlag("제4장 전편断章解放")<2 and Domain.isClearedChapter("MC04")
if LB0A=="MC04"and
(Domain.isInEventPeriod("SideEvent.AC0010")and
GetFlag("第四章 前編クリア")==0)or
zVPRGDnG and not uYz2ryy4 then
UI.showLineInfo("Main Scenario: Interlude I \"Colors of a Distant Sea\" is now available.",2,3)
if Domain.isOpenedChapter("MC04B")then
sKPjQkdn=UI.ShowFragmentRecommendDialog(dl)
if sKPjQkdn~=""then SetFlag("第四章 前編断章解放",2)
SetFlag("第四章 前篇断章解放",2)SetFlag("제4장 전편断章解放",2)elseif not
Domain.isInEventPeriod("SideEvent.AC0010")then
SetFlag("第四章 前編断章解放",2)SetFlag("第四章 前篇断章解放",2)
SetFlag("제4장 전편断章解放",2)end else sKPjQkdn=UI.ShowFragmentRecommendDialog(dl)
if sKPjQkdn~=""then
SetFlag("第四章 前編断章解放",2)SetFlag("第四章 前篇断章解放",2)
SetFlag("제4장 전편断章解放",2)elseif not Domain.isInEventPeriod("SideEvent.AC0010")then
SetFlag("第四章 前編断章解放",2)SetFlag("第四章 前篇断章解放",2)
SetFlag("제4장 전편断章解放",2)end end elseif dl~=""then
if
dl=="AC24"and
GetFlag("SideEvent.AC0024レコメンドダイアログ既読済")==0 then
UI.showLineInfo("Main Scenario: Interlude II \"Us, in the Season of Dying\" is now available.",2,3)end;sKPjQkdn=UI.ShowFragmentRecommendDialog(dl)end end;return sKPjQkdn end
function TerminalHome_UITutorial(IKxw)
if GetFlag("HomeチュートリアルSkip")==0 then
Routine(function()
if
GetFlag("Homeギフトチュートリアル終了")==0 then TutorialHome_GiftBox()end;if GetFlag("Home初回チュートリアル終了")==0 then
TutorialHome_First()end;if
GetFlag("Permission.Communication")==1 and
GetFlag("Home交流チュートリアル終了")==0 then
TutorialHome_Communication()end;if
Tutorial.isBlocked("blocker.VariableChallenge")==false and
GetFlag("時の修練場Tutorial表示")==0 then
TutorialHome_VariableChallenge(IKxw)end
if

GetFlag("Permission.TerminalHandlyMenu")==1 and
GetFlag("Homeフリータイムチュートリアル終了")==0 then TutorialHome_FreeTime()end;if Garden.Level()~=0 and GetFlag("Home庭拡張チュートリアル終了")==
0 then
TutorialHome_HeliportAndBattle()end
if

GetFlag("第四章 前編クリア")<2 and Domain.isInEventPeriod("SideEvent.AC0010")then TutorialHome_FlagmentStory()end;if Domain.isClearedChapter("MC01")and
GetFlag("Home設定チュートリアル終了")==0 then
TutorialHome_HomeSetting(IKxw)end
if

Domain.isClearedChapter("MC01")and GetFlag("Liveホームチュートリアル")==0 then Tutorial_Contents()end
if
IsOpened("release.EventStory_Mission")and Domain.isClearedChapter("MC01")and
GetFlag("SSスタイル交換所チュートリアル終了")==0 then
Tutorial_ExchangeShop()end
if
IsOpened("release.LimitedDungeon_Thunder_1")and
Domain.isClearStory("MC04B_13")and
GetFlag("聖環の庭ホームチュートリアル")==0 then Tutorial_LimitedDungeon()end;if
GetFlag("Garden庭拡張チュートリアル終了")==1 and
GetFlag("ガーデンチュートリアル終了")==1 then
TutorialHome_Garden()end
if

IsOpened("release.titlebadge_01_start")and Tutorial.isBlocked("blocker.TitleBadge")==false then
if
GetFlag("Liveホームチュートリアル")==1 and
GetFlag("称号バッジホームチュートリアル")==0 then TutorialHome_TitleBadge()end end
if

IsOpened("release.MC05B1_start")and
Duel.getLastResult("duel_game.MAsami.01")==1 and
GetFlag("デュエルホームチュートリアル終了")==0 and Tutorial.isBlocked("blocker.Duel")==false then Tutorial_Duel()end
if
IsOpened("release.conquest01A_start")and
Tutorial.isBlocked("blocker.Conquest")==false and
GetFlag("制圧戦ホームチュートリアル")==0 then Tutorial_Conquest()end end)end end
function TutorialHome_First()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local w0=Tutorial.start()Wait(0.5)Tutorial.showMask()
Tutorial.setMessage([[<size=80%>Những đội viên bạn thêm vào đội hình sẽ tăng cấp thông qua những trận chiến diễn ra trong mạch truyện.\nKhuyến khích chọn những đội viên bạn muốn huấn luyện khi tạo đội hình.]],
-250,-150)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/btnMenu")Tutorial.show()Wait(0.2)
Tutorial.setMessage([[Một khi đã sẵn sàng, bạn có thể bắt đầu cuộc hành trình của mình tại Heaven Burns Red ở đây.]],0,
-100)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnMainStory")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(w0)SetFlag("Home初回チュートリアル終了",1)
Tutorial.flagSave()end
function TutorialHome_GiftBox()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local UgXzI_C=Tutorial.start()Wait(0.5)Tutorial.showMask()Tutorial.setMessage([[Hãy bắt đầu bằng việc nhận thưởng.]],-350,
-200)
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UITerminalHome/container/btnGiftBox")
if Tutorial.isReachableInternet()then
Tutorial.waitUIOpen("UIGiftBox")Tutorial.waitGiftBoxSync()
if
Domain.getNotReceivedGiftCount()>0 then if(IsGamepadMode())then
Tutorial.setMessage([[]],0,0,[[Nhấn nút △ để nhận nhanh vật phẩm.]])end
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBox/container/viewType/unReceiptScrollView/button/btnReceiptAll")Tutorial.waitUIOpen("UIGiftBoxConfirm")
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/allUnReceiptContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")
Tutorial.waitGiftBoxSync()
if Tutorial.isGiftUnReceivableDialogVisible()then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/pendingContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")
if
Tutorial.isGiftVanishingDialogVisible()then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/receiptedContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")end else
if Tutorial.isObjectActive("RootView/UI-Foreground/Main/UIGiftBoxConfirm")then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/receiptedContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")
if
Tutorial.isGiftVanishingDialogVisible()then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/receiptedContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")end end
if Tutorial.isGiftUnReceivableDialogVisible()then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/pendingContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")
if
Tutorial.isGiftVanishingDialogVisible()then
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBoxConfirm/viewType/receiptedContainer/buttons/btnReceipt")Tutorial.waitUIClose("UIGiftBoxConfirm")end end end
SetFlag("Homeギフトチュートリアル終了",1)else
SetFlag("Homeギフトチュートリアル終了",1)end;Wait(0.2)if(IsGamepadMode())then
Tutorial.setMessage([[]],0,0,[[Press the X button to return.]])end
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UIGiftBox/container/commonBg/btnReturn")Tutorial.waitUIClose("UIGiftBox")
Tutorial.waitUIOpen("UITerminalHome")
Tutorial.setMessage([[Bây giờ hãy dùng vật phẩm mà bạn nhận được để thực hiện chiêu mộ.]],-350,-200)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnGacha")Tutorial.hideMask()
Tutorial.waitUIOpen("UILotteryTop4")end;Tutorial.finish(UgXzI_C)
Tutorial.waitUIClose("UILotteryTop4")end
function TutorialHome_Communication()if GetFlag("HomeチュートリアルSkip")==1 then
return end
Tutorial.waitUIOpen("UITerminalHome")local MLFLplLe=Tutorial.start()Wait(0.5)
Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnMainStory")
Tutorial.waitUIOpen("UITerminalHomeSubMenuStory2")Wait(0.5)
Tutorial.setMessage([[From here you can choose to socialize with other cadets.\nCompleting such socializations will increase your Bond (♡ Lv.) with them,\nas well as help raise your Player Rank.]],
-275,40)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/btnCommunication")
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/btnCommunication/normal/label")Tutorial.show()
Tutorial.setMessage([[Raising Bond (♡ Lv.) will make enhancing that character's Memorias easier.]],
-250,40)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/btnCommunication")
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/btnCommunication/normal/label")Tutorial.show()Tutorial.hideMask()
Tutorial.showDialog("life")Tutorial.finish(MLFLplLe)
SetFlag("Home交流チュートリアル終了",1)Tutorial.flagSave()end
function TutorialHome_FreeTime()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local jwq=Tutorial.start()Wait(0.5)
UI.showLineInfo("You've unlocked some shortcut buttons.",2,3)Wait(0.5)Tutorial.showMask()
if not
Tutorial.isObjectActive("UITerminalHomeSubMenuStory2")then
Tutorial.setMessage([[You've unlocked some Main Scenario shortcut buttons.]])
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnMainStory")
Tutorial.waitUIOpen("UITerminalHomeSubMenuStory2")end
Tutorial.setMessage([[This shortcut will take you to the most recent munitions store.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/Slot2/dotimage/btnLatestShop")
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/Slot2/dotimage/btnLatestShop/normal/label")Tutorial.show()
Tutorial.setMessage([[This shortcut will take you directly to the latest Free Time period you had.\nUse it to carry out socializations and extracurricular activities.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/Slot4/dotimage/btnFreeTime")
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/Slot4/dotimage/btnFreeTime/normal/label")Tutorial.show()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/btnReturn")Wait(0.5)Tutorial.showMask()
Tutorial.setMessage([[You've unlocked the "Power Training" menu.]],50,0)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEnhance/button")
Tutorial.waitUIOpen("UITerminalHomeSubMenuEnhance")
Tutorial.setMessage([[This will allow you to train at the arena.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/Slot6/dotimage/btnArena")
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/Slot6/dotimage/btnArena/normal/label")Tutorial.show()
Tutorial.setMessage([[Furthermore, the "Battle Familiarization" feature can now be accessed in the arena.]])Tutorial.show()
Tutorial.setMessage([[If you ever find yourself having any trouble with battles, be sure to give it a try.]])Tutorial.show()
SetFlag("便利機能チュートリアルでバトル指南解放通知済み",1)Tutorial.hideMask()Tutorial.finish(jwq)
SetFlag("Homeフリータイムチュートリアル終了",1)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuEnhance")end
function TutorialHome_HeliportAndBattle()if
GetFlag("HomeチュートリアルSkip")==1 then return end
Tutorial.waitUIOpen("UITerminalHome")local kw3ei0a=Tutorial.start()Wait(0.5)
Tutorial.showMask()
Tutorial.setMessage([[The Garden of Memories can now be accessed in the Power Training menu.]],50,0)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEnhance/button")
Tutorial.waitUIOpen("UITerminalHomeSubMenuEnhance")
Tutorial.setMessage([[Let's start by checking out the Garden of Memories.]],100,0)
Tutorial.showFocusButton("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/btnGarden")Tutorial.hideMask()Tutorial.finish(kw3ei0a)
SetFlag("Home庭拡張チュートリアル終了",1)Tutorial.flagSave()end
function TutorialHome_HomeSetting(EspneS5)if GetFlag("HomeチュートリアルSkip")==1 then
return end;if EspneS5 ==OpenHomeType.Event then
Tutorial.waitUIClose("UIEventList")end;local LZeg0=Tutorial.start()
Tutorial.waitUIOpen("UITerminalHome")
UI.showLineInfo("You've unlocked the \"Home Screen Customization\" menu option.",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.setMessage("You can change the Home screen's background from here.")
if IsOpened("release.season_function")then
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/HomeSettingAfterSeason/DotPink2/ButtonHomeSettingAfterSeason")else
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/HomeSettingSingle/DotPink/ButtonHomeSettingSingle")end;Tutorial.show()Tutorial.hideMask()
Tutorial.finish(LZeg0)SetFlag("Home設定チュートリアル終了",1)
Tutorial.flagSave()end
function TutorialHome_MemoryStory()if GetFlag("HomeチュートリアルSkip")==1 then
return end;local OJZ=Tutorial.start()
Wait(0.5)Tutorial.showMask()
Tutorial.setMessage([[You are now able to recover fellow cadets' memories\nby talking with them in the Garden of Memories.]])Tutorial.show()Tutorial.hideMask()
Tutorial.showDialog("memorystory")Tutorial.showMask()
Tutorial.setMessage([[From here on out, remember to keep strengthening your squad\nas you progress through new scenario segments.]])Tutorial.show()Tutorial.hideMask()
Tutorial.finish(OJZ)
SetFlag("Homeメモストチュートリアル終了",1)Tutorial.flagSave()end
function TutorialHome_Dungeon()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local nmuj=Tutorial.start()Wait(0.5)Tutorial.showDialog("garden_c")
Tutorial.showMask()
Tutorial.setMessage([[Lv. 2 flashback battles will give you\nmore than double the experience of Lv. 1 ones.]])Tutorial.show()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEnhance/button")
Tutorial.waitUIOpen("UITerminalHomeSubMenuEnhance")
Tutorial.setMessage([[You'll need to clear L10 of the Maze of Memories\nin order to unlock Lv. 2 flashback battles.]],300,0)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/Slot2/dotimage/btnExpedition")Tutorial.hideMask()
Tutorial.waitUIOpen("UIGardenExpeditionTop")Tutorial.finish(nmuj)
SetFlag("記憶の迷宮チュートリアル終了",1)Tutorial.flagSave()
Tutorial.waitUIClose("UIGardenExpeditionTop")end
function TutorialHome_FlagmentStory()if GetFlag("HomeチュートリアルSkip")==1 then
return end
Tutorial.waitUIOpen("UITerminalHome")local bP=Tutorial.start()Wait(0.5)
Tutorial.showMask()
Tutorial.setMessage([[The main scenario's interludes\nare accessible from the Events menu.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEvent")Tutorial.show()Tutorial.hideMask()
SetFlag("第四章 前編クリア",3)Tutorial.finish(bP)Tutorial.flagSave()end
function Tutorial_Contents()
if GetFlag("HomeチュートリアルSkip")==1 then return end;local b4IqQW=Tutorial.start()
UI.showLineInfo("You've unlocked the Home screen's \"Extras\" menu.",2,3)Tutorial.waitUIOpen("UITerminalHome")Wait(0.5)
Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnContent")
Tutorial.waitUIOpen("UITerminalHomeSubMenuContents3")Wait(0.1)
Tutorial.setMessage([[Diorama Mode allows you to create your own unique tableau\nby combining character models and backgrounds as you please.]],400,
-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot1/dotimage/btnDiorama")Tutorial.show()
Tutorial.setMessage([[You can enjoy a rhythm mini-game,\nfeaturing your favorite HBR songs, in Gig Mode.]],400,
-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot2/dotimage/btnLive")Tutorial.show()
Tutorial.setMessage([[You can look back on the illustrations uncovered\nduring your adventures from the Art Gallery.]],400,
-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot3/dotimage/btnGallery")Tutorial.show()
if IsOpened("release.titlebadge_01_start")and
Tutorial.isBlocked("blocker.TitleBadge")==false then
Tutorial.setMessage([[You can unlock title badges\nby completing certain requirements.]],400,
-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot5/dotimage/btnTitleBadge")Tutorial.show()
Domain.resetTitleBadgeNotification()
SetFlag("称号バッジホームチュートリアル",1)end
Tutorial.setMessage([[You can view the list of\nSeraph Squadron members in [Roster].]],400,-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot6/dotimage/btnList")Tutorial.show()Tutorial.hideMask()
SetFlag("Liveホームチュートリアル",1)Tutorial.finish(b4IqQW)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuContents3")end
function Tutorial_ExchangeShop()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.WaitUIInTop("UITerminalHome")
local iuGb=Tutorial.start()Tutorial.waitUIOpen("UITerminalHome")
UI.showLineInfo("You've unlocked the \"SS Memoria Exchange\" feature!",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnShop/button")Tutorial.waitUIOpen("UITerminalHomeSubMenuShop")
Wait(0.1)
Tutorial.setMessage([[You can access this through Token Exchange > SS Memoria Exchange]],370,-35)
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHomeSubMenuShop/container/contents/Slot5/dotimage/btnExchangeShop/button/default")Tutorial.show()Wait(0.5)Tutorial.showMask()
Tutorial.showDialog("EventStoryMissionTutorial")Tutorial.hideMask()Tutorial.finish(iuGb)
SetFlag("SSスタイル交換所チュートリアル終了",1)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuShop")end
function Tutorial_Arcade()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.WaitUIInTop("UITerminalHome")
Tutorial.waitUIOpen("UITerminalHome")local koZU=Tutorial.start()
UI.showLineInfo("You've unlocked Arts Battles.",2,3)Wait(0.5)
Tutorial.showDialog("ArcadeTutorialHome")Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnContent")
Tutorial.waitUIOpen("UITerminalHomeSubMenuContents3")Wait(0.5)
Tutorial.setMessage([[In Arts Battles, you fight using cards that showcase the artwork of your Memorias.]],400,-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot4/dotimage/btnCardGame")Tutorial.show()Tutorial.hideMask()
SetFlag("アーケードホームチュートリアル",1)Tutorial.finish(koZU)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuContents3")end
function Tutorial_LimitedDungeon()if GetFlag("HomeチュートリアルSkip")==1 then
return end
Tutorial.WaitUIInTop("UITerminalHome")Tutorial.waitUIOpen("UITerminalHome")
local C=Tutorial.start()
UI.showLineInfo("You've unlocked the dungeon \"Garden of Sacred Rings\".",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEnhance/button")
Tutorial.waitUIOpen("UITerminalHomeSubMenuEnhance")Wait(0.5)
Tutorial.setMessage([[In the Garden of Sacred Rings,\nyou can attempt limited-time, high-difficulty dungeons\ngeared toward specific elements.]],200,
-70)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/Slot2/dotimage/btnExpedition")Tutorial.show()Wait(0.5)
Tutorial.setMessage([[Complete these dungeons to earn ★6 rings\nthat boost the ATK of skills of the same element and other stats.]],200,
-70)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuEnhance/container/Slot2/dotimage/btnExpedition")Tutorial.show()Tutorial.hideMask()
SetFlag("聖環の庭ホームチュートリアル",1)Tutorial.finish(C)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuEnhance")end
function Tutorial_Conquest()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.WaitUIInTop("UITerminalHome")
Tutorial.waitUIOpen("UITerminalHome")local nmJGp_=Tutorial.start()
UI.showLineInfo("You've unlocked the \"Suppression Mission\".",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.setMessage([[You can play the Suppression Mission under Events > Suppression Mission.]],0,0)
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnEvent")Tutorial.waitUIOpen("UIEventTop")
Tutorial.setMessage([[Tap the Suppression Mission button to begin.]],0,0)
Tutorial.setFocusRect("RootView/UI3D/UIEventTop/container/menuContents/Slot3/dotMenu3/btnConquest")Tutorial.show()Tutorial.hideMask()
SetFlag("制圧戦ホームチュートリアル",1)Tutorial.finish(nmJGp_)Tutorial.flagSave()end
function TutorialHome_TitleBadge()if GetFlag("HomeチュートリアルSkip")==1 then
return end
Tutorial.WaitUIInTop("UITerminalHome")Tutorial.waitUIOpen("UITerminalHome")
local h0v3PIV=Tutorial.start()
UI.showLineInfo("You've unlocked the \"Title Badge\" feature.",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.showDialog("TitleBadgeTutorialHome")
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnContent")
Tutorial.waitUIOpen("UITerminalHomeSubMenuContents3")Wait(0.5)
Tutorial.setMessage([[You can check it under Extras - Title Badge.]],400,-35)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuContents3/container/Slot5/dotimage/btnTitleBadge")Tutorial.show()
Domain.resetTitleBadgeNotification()
SetFlag("称号バッジホームチュートリアル",1)Tutorial.finish(h0v3PIV)Tutorial.flagSave()
Tutorial.waitUIClose("UITerminalHomeSubMenuContents3")end
function TutorialHome_PieceExchange()if GetFlag("HomeチュートリアルSkip")==1 then
return end;local Uc=Tutorial.start()Wait(0.5)
Tutorial.showDialog("PieceExchange")
SetFlag("万能ピース変換チュートリアル",1)Tutorial.finish(Uc)Tutorial.flagSave()end
function TutorialHome_UserProfile()if GetFlag("HomeチュートリアルSkip")==1 then
return end;local JSkUQL=Tutorial.start()
Wait(0.5)Tutorial.showDialog("UserProfileTutorial")
SetFlag("UserProfileチュートリアル",1)Tutorial.finish(JSkUQL)Tutorial.flagSave()end
function TutorialHome_Garden()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local PTUZ2v=Tutorial.start()Tutorial.showMask()
Tutorial.setMessage([[Be sure to enhance your Memorias\nand learn their new skills whenever you can.]])
Tutorial.setFocusRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnMenu")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(PTUZ2v)
SetFlag("Garden庭拡張チュートリアル終了",3)Tutorial.flagSave()end
function Tutorial_Duel()
if GetFlag("HomeチュートリアルSkip")==1 then return end;Tutorial.waitUIOpen("UITerminalHome")
local qlZeO3Pr=Tutorial.start()
UI.showLineInfo("The \"Duelo\" feature has been added.",2,3)Tutorial.showMask()
Tutorial.showFocusButtonRect("RootView/UI-Foreground/Main/UITerminalHome/container/btnMainStory")
Tutorial.waitUIOpen("UITerminalHomeSubMenuStory2")Wait(0.1)
Tutorial.setMessage([[From here, you can go back in time and play Duelo matches.]],265,120)
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHomeSubMenuStory2/container/contents/Slot5/dotimage/btnDuel")Tutorial.show()Tutorial.hideMask()
Tutorial.finish(qlZeO3Pr)
SetFlag("デュエルホームチュートリアル終了",1)Tutorial.flagSave()end
function TutorialHome_VariableChallenge(fG9zS)if
GetFlag("HomeチュートリアルSkip")==1 then return end;if fG9zS==OpenHomeType.Event then
Tutorial.waitUIClose("UIEventList")end
Tutorial.waitUIOpen("UITerminalHome")local WiXG=Tutorial.start()
UI.showLineInfo("You've unlocked the Hyperbolic Time Arena.",2,3)Wait(0.5)Tutorial.showMask()
Tutorial.setMessage("You can try out the Hyperbolic Time Arena here.")
if Domain.isClearedChapter("MC01")then
if IsOpened("release.season_function")then
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/HomeSettingAfterSeason/DotPink1/btnVariableChallengeAfterSeason/button")else
if Terminal.IsDefaultMode()then
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/HomeSettingSingle/DotPink_1/btnVariableChallenge/button")else
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/HomeSettingDouble/DotPink_1/btnVariableChallenge2/button")end end else
Tutorial.setFocus("RootView/UI-Foreground/Main/UITerminalHome/container/circleHome/HomeSetting/VariableChallengeSingle/btnVariableChallenge3/button")end;Tutorial.show()Tutorial.hideMask()
Tutorial.finish(WiXG)SetFlag("時の修練場Tutorial表示",1)
Tutorial.flagSave()end
function ShowVariableChallengeTutorial(QgyWztK,Oo6ecUO)if
GetFlag("HomeチュートリアルSkip")==1 then return end
local b6SL0yka=Domain.GetLimitPointFromLastVariableChallenge()if GetFlag("Tutorial.HomeVariableChallenge")==0 then
SetFlag("Tutorial.HomeVariableChallenge",b6SL0yka)end
local hEk=GetFlag("Tutorial.HomeVariableChallenge")
if Domain.isClearStory("MC05B2_12")and hEk<110 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 110.",2,3)SetFlag("Tutorial.HomeVariableChallenge",110)elseif
Domain.isClearedChapter("MC05A")and hEk<100 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 100.",2,3)SetFlag("Tutorial.HomeVariableChallenge",100)elseif
Domain.isClearedChapter("MC04B")and hEk<90 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 90.",2,3)SetFlag("Tutorial.HomeVariableChallenge",90)elseif
QgyWztK=="MC04B"and Oo6ecUO>7 and hEk<80 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 80.",2,3)SetFlag("Tutorial.HomeVariableChallenge",80)elseif
Domain.isClearedChapter("MC04")and hEk<70 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 70.",2,3)SetFlag("Tutorial.HomeVariableChallenge",70)elseif
QgyWztK=="MC04"and Oo6ecUO>6 and hEk<60 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 60.",2,3)SetFlag("Tutorial.HomeVariableChallenge",60)elseif
Domain.isClearedChapter("MC03")and hEk<50 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 50.",2,3)SetFlag("Tutorial.HomeVariableChallenge",50)elseif
QgyWztK=="MC03"and Oo6ecUO>14 and hEk<40 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 40.",2,3)SetFlag("Tutorial.HomeVariableChallenge",40)elseif
QgyWztK=="MC02"and Oo6ecUO>23 and hEk<30 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 30.",2,3)SetFlag("Tutorial.HomeVariableChallenge",30)elseif
QgyWztK=="MC02"and Oo6ecUO>14 and hEk<15 then
UI.showLineInfo("The maximum number of Reward Pts. usable in the Hyperbolic Time Arena has been raised to 15.",2,3)SetFlag("Tutorial.HomeVariableChallenge",15)end end
function PrismInfoVisible(E8o,TdqFo,ykLF0)
if GetFlag("HomeチュートリアルSkip")==1 then return end;if Battle.isCleared(E8o)then return false end;if
Battle.isCleared(TdqFo)then return false end
if Battle.isCleared(ykLF0)then return false end;return true end