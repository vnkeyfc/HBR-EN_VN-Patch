local w0qyLbH=require'xlua.util'
AdvStage_add=function(nsgji,bClTIa)return
CS.AdvStageLuaMethod.AdvStage_add(parent,nsgji,bClTIa)end
AdvStage_changeBgEffect=function(rDzL7SVO,BW0WFP)return
CS.AdvStageLuaMethod.AdvStage_changeBgEffect(parent,rDzL7SVO,BW0WFP)end
AdvStage_clearCharacter=function(X8)
CS.AdvStageLuaMethod.AdvStage_clearCharacter(parent,X8)end
AdvStage_pushCharacter=function(JQT,AtYtR,ND2BCh3,IODBg,YRDu)
local CWRiP=CS.AdvStageLuaMethod.AdvStage_pushCharacter(parent,JQT,AtYtR,ND2BCh3,YRDu)return AdvStage_pushCharacterCommon(CWRiP,AtYtR,IODBg)end
AdvStage_pushCharacterL=function(LB0A,dl,sKPjQkdn,HHH9IlJp,uYz2ryy4)
local zVPRGDnG=CS.AdvStageLuaMethod.AdvStage_pushCharacterL(parent,LB0A,dl,sKPjQkdn,uYz2ryy4)
return AdvStage_pushCharacterCommon(zVPRGDnG,dl,HHH9IlJp)end
AdvStage_pushCharacterCommon=function(IKxw,w0,UgXzI_C)local MLFLplLe=IKxw:GetPosition()
local jwq=IKxw:GetScale()local kw3ei0a=Vec(MLFLplLe.x,MLFLplLe.y)
local EspneS5=IKxw:GetDuration()if UgXzI_C~=nil then UgXzI_C(kw3ei0a,jwq)end
Adv.alpha(w0,1,EspneS5)Adv.moveTo(w0,kw3ei0a,EspneS5)
Adv.scale(w0,jwq,EspneS5)return EspneS5 end
AdvStage_popCharacter=function(LZeg0,OJZ)local nmuj=AdvStage_get(LZeg0)return
CS.AdvStageLuaMethod.AdvStage_popCharacter(parent,LZeg0,OJZ)end;AdvStage_get=function(bP)
return CS.AdvStageLuaMethod.AdvStage_get(parent,bP)end
AdvStage_show=function(b4IqQW)
CS.AdvStageLuaMethod.AdvStage_show(parent,b4IqQW)end
AdvStage_addCameraLine=function(iuGb)
CS.AdvStageLuaMethod.AdvStage_addCameraLine(parent,iuGb)end
AdvStage_setBGAnimationEnable=function(koZU,C)
CS.AdvStageLuaMethod.AdvStage_setBGAnimationEnable(parent,koZU,C)end
AdvStage_setupCharacter=function(nmJGp_,h0v3PIV,Uc,JSkUQL)return
CS.AdvStageLuaMethod.AdvStage_setupCharacter(parent,nmJGp_,h0v3PIV,Uc,JSkUQL)end
AdvStage_layoutCharacter=function(PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)b6SL0yka=b6SL0yka or false;return
CS.AdvStageLuaMethod.AdvStage_layoutCharacter(parent,PTUZ2v,qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO,b6SL0yka)end
AdvStage_findOverlapCharacter=function(hEk,E8o)return
CS.AdvStageLuaMethod.AdvStage_findOverlapCharacter(parent,hEk,E8o)end