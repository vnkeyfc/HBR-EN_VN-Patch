local w0qyLbH=require'xlua.util'
Adv.actEnum=function(nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT)if
(bClTIa or rDzL7SVO or BW0WFP or X8)then
CS.LuaMethod.StopFaceChangeRoutine(parent,nsgji)end;JQT=JQT or 0.3;if(bClTIa)then
Adv.faceChange(nsgji,"Face",bClTIa,JQT)end;if(rDzL7SVO)then
Adv.faceChange(nsgji,"Eyes",rDzL7SVO,JQT)end;if(BW0WFP)then
Adv.faceChange(nsgji,"Mouth",BW0WFP,JQT)end;if(X8)then
Adv.faceChange(nsgji,"Pose",X8,JQT)end end
Adv.actEnum0=function(AtYtR,ND2BCh3,IODBg,YRDu,CWRiP)Adv.actEnum(AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,0)end
Adv.actEnumDelay=function(LB0A,dl,sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw)IKxw=IKxw or 0;if(sKPjQkdn)then
Adv.faceChangeDelay(LB0A,dl,"Face",sKPjQkdn,IKxw)end;if(HHH9IlJp)then
Adv.faceChangeDelay(LB0A,dl,"Eyes",HHH9IlJp,IKxw)end;if(uYz2ryy4)then
Adv.faceChangeDelay(LB0A,dl,"Mouth",uYz2ryy4,IKxw)end;if(zVPRGDnG)then
Adv.faceChangeDelay(LB0A,dl,"Pose",zVPRGDnG,IKxw)end end
Adv.actInternal=function(w0,UgXzI_C,MLFLplLe,jwq)if(UgXzI_C or MLFLplLe)then
CS.LuaMethod.StopFaceChangeRoutine(parent,w0)end;if
(type(MLFLplLe)=="number")then if(jwq)then jwq=MLFLplLe end end
jwq=jwq or 0.3;if(UgXzI_C)then
CS.LuaMethod.ChangeFaceFromCode(parent,w0,UgXzI_C,MLFLplLe,jwq)end end
Adv.act=function(kw3ei0a,EspneS5,LZeg0,OJZ)LZeg0=LZeg0 or AdvCharacterMouth.Mouth01
Adv.actInternal(kw3ei0a,EspneS5,LZeg0,OJZ)end
Adv.actPreMouthClose=function(nmuj,bP)
Adv.actInternal(nmuj,bP,AdvCharacterMouth.Close,0)end
Adv.actKeep=function(b4IqQW,iuGb,koZU,C)Adv.actInternal(b4IqQW,iuGb,koZU,C)end
Adv.actDelay=function(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v)JSkUQL=JSkUQL or AdvCharacterMouth.Close
Adv.actDelayInternal(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v)end
Adv.actKeepDelay=function(qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO)
Adv.actDelayInternal(qlZeO3Pr,fG9zS,WiXG,QgyWztK,Oo6ecUO)end
Adv.actDelayInternal=function(b6SL0yka,hEk,E8o,TdqFo,ykLF0)TdqFo=TdqFo or AdvCharacterMouth.Close
if
b6SL0yka==0 then Adv.act(hEk,E8o,TdqFo,ykLF0)return end;if(type(TdqFo)=="number")then
if(ykLF0)then ykLF0=TdqFo;TdqFo=nil end end;ykLF0=ykLF0 or 0.3;if(E8o)then
CS.LuaMethod.ChangeFaceFromCodeDelay(parent,hEk,E8o,TdqFo,b6SL0yka,ykLF0)end end
Adv.faceChange=function(cilhu,eVfN,LBIJ,CSSp)CSSp=CSSp or 0.3;_AssertIsNotNull(cilhu)
_AssertIsNotNull(LBIJ)
return CS.LuaMethod.ChangeFace(parent,cilhu,eVfN,LBIJ,CSSp)end
Adv.faceChangeDelay=function(CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb)Sb=Sb or 0.3;_AssertIsNotNull(x1vCS0)
_AssertIsNotNull(TNczSeT)
return CS.LuaMethod.ChangeFaceDelay(parent,x1vCS0,Herp,TNczSeT,CBZIwYHI,Sb)end
Adv.faceChangePreset=function(_OwI,GBDhi2D,XDYs)_AssertIsNotNull(_OwI)
_AssertIsNotNull(GBDhi2D)
return CS.LuaMethod.ChangeFacePreset(parent,_OwI,GBDhi2D,XDYs)end
Adv.playLipSync=function(JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl)G_v887o0=G_v887o0 or false;N_Pk=N_Pk or 1.0
CS.LuaMethod.PlayLipSync(parent,JyOmN,
nil,Gu2sqpyD,TalkVoiceType.NormalGaya,N_Pk,G_v887o0,oiM7BRAl)end
Adv.playVoice=function(s4,EF,wYFDyw8,JyI,hncZR4my,KqeVtj)hncZR4my=hncZR4my or false;JyI=JyI or 1.0;return
CS.LuaMethod.PlayLipSync(parent,s4,EF,1.0,wYFDyw8,JyI,hncZR4my,KqeVtj)end
Adv.stopLipSync=function(LD)CS.LuaMethod.StopLipSync(parent,LD)end
Adv.setBlinkEnabled=function(Q,QKTF34q3)
CS.LuaMethod.SetBlinkEnabled(parent,Q,QKTF34q3)end
Adv.setBlinkEnabledV2=function(z,UD61M)
CS.LuaMethod.SetBlinkEnabledV2(parent,z,UD61M)end