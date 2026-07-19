local w0qyLbH=require'xlua.util'FieldSound={}
FieldSound.requestFieldBGM=function(nsgji,bClTIa,rDzL7SVO,BW0WFP)
if
GetLocalFlag("TimeBoxに初めて入った")==0 and not BW0WFP then
FieldSound.resetResumeBGM()SetLocalFlag("TimeBoxに初めて入った",1)end;bClTIa=bClTIa or 1;rDzL7SVO=rDzL7SVO or 2
CS.LuaMethod.RequestFieldBGM(nsgji,bClTIa,rDzL7SVO)end
FieldSound.setFieldBGM=function(X8)CS.LuaMethod.SetFieldBGM(X8)end
Field.setFreeTimeTediumBGM=function()local JQT=FieldLabel()local AtYtR=nil
if JQT=="School1F"or
JQT=="Dormitory1F"then AtYtR="SB0015"else AtYtR="SB0012"end;FieldSound.setFieldBGM(AtYtR)end
FieldSound.resetResumeBGM=function()CS.LuaMethod.ResetResumeBGM()end