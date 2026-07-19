local w0qyLbH=require'xlua.util'Game={}Game.isTerminal=function()return
CS.LuaMethod.GameIsTerminal()end;Game.isHome=function()return
CS.LuaMethod.GameIsHome()end;Game.isGarden=function()return
CS.LuaMethod.GameIsGarden()end;Game.isStory=function()return
CS.LuaMethod.GameIsStory()end
Game.isMainStory=function()return
CS.LuaMethod.GameIsMainStory()end
Game.isEventStory=function()return CS.LuaMethod.GameIsEventStory()end
Game.isLatestDay=function()return CS.LuaMethod.GameIsLatestDay()end
Game.isPastDay=function()return CS.LuaMethod.GameIsPastDay()end
Game.isLatestTimebox=function()return CS.LuaMethod.GameIsLatestTimebox()end
Game.modeStatusDebugLog=function()local nsgji="==現在のゲームの状態==\n"
nsgji=nsgji.."ターミナル："..
tostring(Game.isTerminal()).."\n"nsgji=nsgji..
"　ホーム："..tostring(Game.isHome()).."\n"
nsgji=nsgji.."　ガーデン："..
tostring(Game.isGarden()).."\n"nsgji=nsgji..
"ストーリー："..tostring(Game.isStory()).."\n"nsgji=nsgji..

"　メイン："..tostring(Game.isMainStory()).."\n"nsgji=nsgji..

"　イベント："..tostring(Game.isEventStory()).."\n"nsgji=nsgji..

"　　最新："..tostring(Game.isLatestDay()).."\n"nsgji=nsgji..

"　　過去："..tostring(Game.isPastDay()).."\n"
Log(nsgji)end