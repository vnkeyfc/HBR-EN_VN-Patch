Debug={}
_AssertIsVector=function(A)
assert(type(A)=="table"and _Vector_metatable==getmetatable(A),
"引数がVec型になっていません\n"..debug.traceback())end
_AssertIsVectorOrNil=function(w0qyLbH)if w0qyLbH==nil then return end;_AssertIsVector(w0qyLbH)end
_AssertIsFunction=function(nsgji)if type(nsgji)=="function"then return end
assert(false,
"引数が関数になっていません\n"..debug.traceback())end
_AssertIsNotNull=function(bClTIa)
assert(bClTIa~=nil,"引数がnilです\n"..debug.traceback())end
_AssertIsLuaPath=function(rDzL7SVO)
assert(type(rDzL7SVO)=="string","Luaのパスではありません type="..type(rDzL7SVO)..
"\n"..debug.traceback())
assert(CS.LuaMethod.ValidLuaPath(rDzL7SVO),"Luaが"..rDzL7SVO.."にありません\n"..
debug.traceback())end
_AssertIsSixSenseActivityKey=function(BW0WFP)
assert(string.find(BW0WFP,"Activity")~=nil,
"Activity枠のKeyではありません key="..BW0WFP.."\n"..debug.traceback())end
_AssertIsSixSenseNovelKey=function(X8)
assert(string.find(X8,"Novel")~=nil,
"Novel枠のKeyではありません key="..X8 .."\n"..debug.traceback())end
_AssetIsStageNotNull=function(JQT)
assert(JQT~=nil,"ステージが作られていません\n"..debug.traceback())end
_AssertExistsFieldObject=function(AtYtR)
local ND2BCh3=CS.LuaMethod.Field_getObject(parent,AtYtR)
assert(ND2BCh3 ~=nil,AtYtR..
"のフィールドオブジェクトは存在しません\n"..debug.traceback())end
Debug.waitFrame=function(IODBg)
CoroutineYield(CS.LuaMethod.Debug_waitFrame(IODBg))end
Debug.errorPause=function(YRDu)YRDu=YRDu or"Debug_errorPause"
CS.LuaMethod.Debug_errorPause(YRDu)end;DebugPoint=function()
return CoroutineYield(CS.LuaMethod.Trigger())end
Debug.showBattleCutInAll=function(CWRiP)CWRiP=
CWRiP or""return
CoroutineYield(CS.LuaMethod.DebugPlayBattleCutInAll(CWRiP))end
Debug.showFieldMiniCutInAll=function(LB0A)LB0A=LB0A or""return
CoroutineYield(CS.LuaMethod.DebugPlayAllFieldMiniCutIn(LB0A))end
Debug.showFieldEncountCutInAll=function(dl)dl=dl or""return
CoroutineYield(CS.LuaMethod.DebugPlayAllEnCountCutIn(dl))end
Debug.showFieldMiniCutIn=function(sKPjQkdn,HHH9IlJp)sKPjQkdn=sKPjQkdn or""HHH9IlJp=HHH9IlJp or""return
CoroutineYield(CS.LuaMethod.DebugPlayFieldMiniCutIn(sKPjQkdn,HHH9IlJp))end
Debug.showFieldEncountCutIn=function(uYz2ryy4,zVPRGDnG)uYz2ryy4=uYz2ryy4 or""zVPRGDnG=zVPRGDnG or""return
CoroutineYield(CS.LuaMethod.DebugPlayEncountCutIn(uYz2ryy4,zVPRGDnG))end
Debug.showBattleCutIn=function(IKxw,w0)IKxw=IKxw or""w0=w0 or""return
CoroutineYield(CS.LuaMethod.DebugPlayBattleCutIn(IKxw,w0))end
Debug.addTextField=function(UgXzI_C,MLFLplLe,jwq)onlyDecimal=onlyDecimal or false
jwq=jwq or defaultFunc
return CS.LuaMethod.DebugAddInputField(parent,UgXzI_C,MLFLplLe,jwq)end
Debug.addTextFieldDouble=function(kw3ei0a,EspneS5,LZeg0,OJZ)onlyDecimal=onlyDecimal or false
OJZ=OJZ or defaultFunc
return CS.LuaMethod.DebugAddInputFieldDouble(parent,kw3ei0a,EspneS5,LZeg0,OJZ)end
Debug.getInputFieldText=function(nmuj)
return CS.LuaMethod.DebugGetInputFieldText(parent,nmuj)end
Debug.split=function(bP,b4IqQW)if b4IqQW==nil then return{}end;local iuGb={}i=1;for koZU in
string.gmatch(bP,"([^"..b4IqQW.."]+)")do iuGb[i]=koZU;i=i+1 end;return iuGb end
KansyuDoubleCheck=function(C)if not CS.LuaMethod.IsShowKansyuDoubleCheck()then
return end;local nmJGp_=Adv.shield()
Transition.finish()UI.showMessageDialog(C)Transition.start()
Adv.remove(nmJGp_)end;Debug._timerStartAt=-1
Debug.now=function()return os.clock()end
Debug.nowString=function()return os.date("%H:%M:%S")end
Debug.startElapsedTimer=function()if Debug._timerStartAt>=0 then
print("[Debug.ElapsedTimer] 計測中の情報を破棄して新しい計測を開始します")end
local h0v3PIV=Debug.now()Debug._timerStartAt=h0v3PIV
print("[Debug.ElapsedTimer] "..
Debug.nowString().." Timer started.")end
Debug.lapElapsedTimer=function(Uc)if Debug._timerStartAt<0 then
print("[Debug.ElapsedTimer] 計測が開始されていません")return end;Uc=Uc or"lap"
local JSkUQL=Debug.now()local PTUZ2v=JSkUQL-Debug._timerStartAt
local qlZeO3Pr=string.format("%.2f",PTUZ2v)
print("[Debug.ElapsedTimer] "..
Debug.nowString().." ("..qlZeO3Pr.."s) "..Uc)end
Debug.stopElapsedTimer=function()if Debug._timerStartAt<0 then
print("[Debug.ElapsedTimer] 計測が開始されていません")return end
Debug.lapElapsedTimer("Timer stopped.")Debug._timerStartAt=-1 end
Debug.fixedRandomNum=function()local fG9zS=false;local WiXG=0
CS.LuaMethod.DebugRandomNum(function(QgyWztK,Oo6ecUO)fG9zS=QgyWztK;WiXG=Oo6ecUO end)return fG9zS,WiXG end