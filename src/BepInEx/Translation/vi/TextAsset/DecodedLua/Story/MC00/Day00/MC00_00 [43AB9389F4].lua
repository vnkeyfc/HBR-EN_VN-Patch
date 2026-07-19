ROUTINE()PrepareDay()
if GetFlag("ゲーム開始")==0 and
GetDeviceFlag("CanSkipTutorial")==1 then
if
UI.showMessageDialog("Bỏ qua hướng dẫn?",1)=="ok"then Wait(1)
SetFlag("ゲーム開始",1)SetFlag("Permission.BattleOverdrive",1)
SetFlag("Permission.Menu",1)SetFlag("逢川國見合流済み",1)
SetFlag("Permission.FieldAuto",1)SetFlag("Permission.BattleSpeed",1)
CS.LuaMethod.ResumeTimebox("MC00_00_11_00")end end;SetFlag("ゲーム開始",1)
Timebox("MC00_00_03_00","",function()
Novel("Lua/Story/MC00/Day00/Novel/MC99_99_00_00",true)Novel("Lua/Story/MC00/Day00/Novel/MC00_00_03_00")end,true)
Timebox("MC00_00_04_00","SB0015",function()
Novel("Lua/Story/MC00/Day00/Novel/MC00_00_04_00")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_04_01")
World("Lua/Story/MC00/Day00/World/MC00_00_04_02","School1F","StartAuditoriumPoint")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_04_03")
World("Lua/Story/MC00/Day00/World/MC00_00_04_04","MainStreet","SchoolPoint")end,true)
Timebox("MC00_00_06_00","",function()
World("Lua/Story/MC00/Day00/World/MC00_00_06_00","City","StartPoint")Sound.playBGM("SV0001",1,1)
SetupFixedDeck("YIzumi","RKayamori")SetFlag("Permission.BattleAuto",0)
BattleWithFixedParty("MC00_01_Battle01","Lua/Story/MC00/Day00/Battle/MC00_01_Battle01")
if
GetFlag("ストーリー以外バトルでオート解放")==1 then SetFlag("Permission.BattleAuto",1)end
if
GetFlag("すべてのバトルでオート解放")==1 then SetFlag("Permission.BattleAuto",1)end end,true)
Timebox("MC00_00_09_00","",function()
Novel("Lua/Story/MC00/Day00/Novel/MC00_00_09_00")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_09_01")
World("Lua/Story/MC00/Day00/World/MC00_00_09_02","MainStreet","BridgePointLeft")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_09_06")
World("Lua/Story/MC00/Day00/World/MC00_00_09_07","Dormitory1F","WaterFallPointRight")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_09_08")end)
Timebox("MC00_00_10_00","",function()
Novel("Lua/Story/MC00/Day00/Novel/MC00_00_10_00")end)
Timebox("MC00_00_11_00","",function()SetDeviceFlag("CanSkipTutorial",1)
Adv.addGalleryPhoto("Assets/Contents/Image/Still/MC00/Still_MC00_00_03_00_001.prefab")
Adv.addGalleryPhoto("Assets/Contents/Image/Still/MC00/Still_MC00_00_03_00_002.prefab")
World("Lua/Story/MC00/Day00/World/MC00_00_11_00","MainStreet","ResearchBuildingPoint")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_11_01")
SetFlag("Permission.Gacha",1)if Domain.getLatestChapterLabel()=="MC00"then
World("Lua/Story/MC00/Day00/World/MC00_00_11_02","MainStreet","ResearchBuildingPoint")end
Sound.playBGM("SZ0045",1)Transition.setNightTransition()
Transition.start()Wait(3)end)
Timebox("MC00_00_12_00","",function()
Novel("Lua/Story/MC00/Day00/Novel/MC00_00_12_00")Novel("Lua/Story/MC00/Day00/Novel/MC00_00_12_01")end)SetNextReturnTerminal()Exit()