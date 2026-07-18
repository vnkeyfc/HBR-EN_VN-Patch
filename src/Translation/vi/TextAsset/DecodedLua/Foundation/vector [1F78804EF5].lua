_Vector={}_Vector.x=0;_Vector.y=0;_Vector.z=0
_Vector_metatable={__index=_Vector,__add=function(A,w0qyLbH)
return Vec(A.x+w0qyLbH.x,
A.y+w0qyLbH.y,A.z+w0qyLbH.z)end,__sub=function(nsgji,bClTIa)return Vec(nsgji.x-bClTIa.x,nsgji.y-bClTIa.y,
nsgji.z-bClTIa.z)end,__unm=function(rDzL7SVO)
return Vec(
-rDzL7SVO.x,-rDzL7SVO.y,-rDzL7SVO.z)end,__mul=function(BW0WFP,X8)
if type(BW0WFP)=="number"then return Vec(BW0WFP*X8.x,
BW0WFP*X8.y,BW0WFP*X8.z)elseif type(X8)==
"number"then
return Vec(BW0WFP.x*X8,BW0WFP.y*X8,BW0WFP.z*X8)else
return Vec(BW0WFP.x*X8.x,BW0WFP.y*X8.y,BW0WFP.z*X8.z)end end,__div=function(JQT,AtYtR)
if
type(JQT)=="number"then
return Vec(JQT/AtYtR.x,JQT/AtYtR.y,JQT/AtYtR.z)elseif type(AtYtR)=="number"then return
Vec(JQT.x/AtYtR,JQT.y/AtYtR,JQT.z/AtYtR)else return
Vec(JQT.x/AtYtR.x,JQT.y/AtYtR.y,JQT.z/AtYtR.z)end end,__concat=function(ND2BCh3,IODBg)
if
type(ND2BCh3)=="table"then return
string.format("{%g, %g, %g}",ND2BCh3.x,ND2BCh3.y,ND2BCh3.z)..IODBg elseif
type(IODBg)=="table"then return ND2BCh3 ..
string.format("{%g, %g, %g}",IODBg.x,IODBg.y,IODBg.z)else return

string.format("{%g, %g, %g}",ND2BCh3.x,ND2BCh3.y,ND2BCh3.z)..string.format("{%g, %g, %g}",IODBg.x,IODBg.y,IODBg.z)end end,__tostring=function(YRDu)if
type(YRDu)=="table"then
return string.format("{%g, %g, %g}",YRDu.x,YRDu.y,YRDu.z)else return YRDu end end}
Vec=function(CWRiP,LB0A,dl)dl=dl or 0;local sKPjQkdn={}sKPjQkdn.x=CWRiP;sKPjQkdn.y=LB0A
sKPjQkdn.z=dl;setmetatable(sKPjQkdn,_Vector_metatable)return sKPjQkdn end
VecLength=function(HHH9IlJp)return
math.sqrt((HHH9IlJp.x*HHH9IlJp.x)+
(HHH9IlJp.y*HHH9IlJp.y)+ (HHH9IlJp.z*HHH9IlJp.z))end
Vec_tests=function()local uYz2ryy4=Vec(400,10)local zVPRGDnG=Vec(-2,0)
Log("test="..uYz2ryy4)Log("test_test="..zVPRGDnG)
local IKxw=uYz2ryy4*-1.0;Log("test*-1="..IKxw)local w0=-1.0*uYz2ryy4
Log("-1*test="..w0)local UgXzI_C=zVPRGDnG*uYz2ryy4
Log("test_test*test="..UgXzI_C)local uYz2ryy4=Vec(400,10)local zVPRGDnG=Vec(2,0)
Log("test="..uYz2ryy4)Log("test_test="..zVPRGDnG)local IKxw=uYz2ryy4/2.0;Log(
"test/2="..IKxw)local w0=400/uYz2ryy4
Log("400/test="..w0)local UgXzI_C=zVPRGDnG/uYz2ryy4
Log("test_test/test="..UgXzI_C)end