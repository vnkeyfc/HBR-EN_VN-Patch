
_private_talkAllIn=function(A,w0qyLbH,nsgji,bClTIa,rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu,CWRiP)AdvStage_show(AdvStage_get(A))local LB0A;if
w0qyLbH~=nil then LB0A=w0qyLbH else LB0A=A end
JQT=JQT or AdvCharacterMouth.Close;AtYtR=AtYtR or false;ND2BCh3=ND2BCh3 or false
IODBg=IODBg or false;YRDu=YRDu or nil;CWRiP=CWRiP or false
if not AtYtR then if CWRiP then
Adv.AddBackLogParseTag(LB0A,nsgji,bClTIa,A,IODBg,ND2BCh3,YRDu)else
Adv.AddBackLog(LB0A,nsgji,bClTIa,A,IODBg,ND2BCh3,YRDu)end end
displayName=CS.LuaMethod.GetCharacterDisplayName(parent,LB0A)if displayName==LB0A then LB0A=nil end
AdvStage_show(AdvStage_get(LB0A))
local dl=_private_ADD_LOG_MESSAGE(displayName,nsgji,"Left",nil,bClTIa,X8,ND2BCh3,CWRiP)local sKPjQkdn=nil;if A~=nil then
sKPjQkdn=Adv.characterVoice(A,nsgji,bClTIa,TalkVoiceType.Talk,BW0WFP,JQT)else
sKPjQkdn=Sound.playVoice(bClTIa,TalkVoiceType.Talk)end;if
sKPjQkdn~=nil then
CS.LuaMethod.SetMessageVoice(parent,dl,sKPjQkdn)end
if rDzL7SVO~=nil then rDzL7SVO(dl)end
if A~=nil and BW0WFP==false then Adv.stopLipSync(A)end;return dl end
_private_ADD_LOG_MESSAGE=function(HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C,MLFLplLe,jwq)local IKxw=IKxw or false;UgXzI_C=UgXzI_C or false
local jwq=jwq or false
if CS.LuaMethod.GetAdvUIType()=="AC25Idol"then
key=_ShowMessageInternal(HHH9IlJp,uYz2ryy4,"AC25Idol","#182754",16,0,
-340,1736,320,250,20,70,10,false,zVPRGDnG,"Center","Center",true,false,IKxw,false,UgXzI_C,"","None",MLFLplLe,0,false,w0,false)else
key=_ShowMessageInternal(HHH9IlJp,uYz2ryy4,"Alpha","#FFFFFF",16,0,-1696,3000,3000,880,20,688,39,false,zVPRGDnG,"Center","Center",true,false,IKxw,false,UgXzI_C,"","None",MLFLplLe,0,false,w0,jwq)end;return key end
_private_ADD_LOG_MESSAGE_AND_SET_MESSAGE_VOICE=function(kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW)
local iuGb=_private_ADD_LOG_MESSAGE(kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW)if nmuj~=nil then _AssertIsNotNull(iuGb)
CS.LuaMethod.SetMessageVoice(parent,iuGb,Sound.playVoice(nmuj,TalkVoiceType.Talk))end;return iuGb end
_private_ADD_MESSAGE_AND_WAIT=function(koZU,C,nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)local WiXG="None"local QgyWztK=0;PTUZ2v=PTUZ2v or 0
qlZeO3Pr=qlZeO3Pr or false
key=_private_ADD_MESSAGE(h0v3PIV,Uc,QgyWztK,C,nmJGp_,WiXG,koZU,JSkUQL)if qlZeO3Pr then WaitVoiceEnd(JSkUQL,PTUZ2v,fG9zS)else
WaitTapVoiceEnd(JSkUQL,PTUZ2v,fG9zS)end;Adv.remove(key)
return key end
_private_ADD_MESSAGE=function(Oo6ecUO,b6SL0yka,hEk,E8o,TdqFo,ykLF0,cilhu,eVfN,LBIJ)cilhu=cilhu or""E8o=E8o or""TdqFo=TdqFo or"Talk"ykLF0=ykLF0 or
"None"hEk=hEk or 0;Oo6ecUO=Oo6ecUO or 0
b6SL0yka=b6SL0yka or 0;LBIJ=LBIJ or false
local CSSp=_ShowMessageInternal(cilhu,E8o,TdqFo,"#000000",hEk,Oo6ecUO,b6SL0yka,0,0,0,0,0,0,true,ykLF0,"Center","Center",true,false,false,false,LBIJ,"","None",false,0,false,eVfN,false)if eVfN~=nil then _AssertIsNotNull(CSSp)
CS.LuaMethod.SetMessageVoice(parent,CSSp,Sound.playVoice(eVfN,TalkVoiceType.Bubble))end;return CSSp end
_private_ADD_MESSAGE_REVELATION=function(CBZIwYHI,x1vCS0,Herp,TNczSeT,Sb,_OwI,GBDhi2D)Herp=Herp or""CBZIwYHI=CBZIwYHI or 0
x1vCS0=x1vCS0 or 0;Sb=Sb or false;local XDYs=100;local JyOmN=108
if _OwI==nil or GBDhi2D==nil then
local N_Pk=Debug.split(Herp,'\n')local G_v887o0=#N_Pk;local oiM7BRAl=0
for s4,EF in pairs(N_Pk)do local wYFDyw8=string.len(EF)/3;if
oiM7BRAl<wYFDyw8 then oiM7BRAl=wYFDyw8 end end
if oiM7BRAl<=BubbleRevelationLineLimit.Small then
_OwI=BubbleRevelationWidth.Small elseif oiM7BRAl<=BubbleRevelationLineLimit.Medium then
_OwI=BubbleRevelationWidth.Medium else _OwI=BubbleRevelationWidth.Large end
if G_v887o0 ==1 then GBDhi2D=BubbleRevelationHeight.Line01
JyOmN=BubbleRevelationPaddingY.Line01 elseif G_v887o0 ==2 then GBDhi2D=BubbleRevelationHeight.Line02
JyOmN=BubbleRevelationPaddingY.Line02 else GBDhi2D=BubbleRevelationHeight.Line03
JyOmN=BubbleRevelationPaddingY.Line03 end end
local Gu2sqpyD=_ShowMessageInternal("",Herp,"Revelation","#FFFFFF",0,CBZIwYHI,x1vCS0,_OwI,GBDhi2D,XDYs,JyOmN,0,0,true,"None","Center","Center",true,false,false,true,Sb,"","None",false,40,false,TNczSeT,false)if TNczSeT~=nil then _AssertIsNotNull(Gu2sqpyD)
CS.LuaMethod.SetMessageVoice(parent,Gu2sqpyD,Sound.playVoice(TNczSeT,TalkVoiceType.Bubble))end
return Gu2sqpyD end
IsValidBuildVersion=function(JyI)return CS.LuaMethod.IsValidBuildVersion(JyI)end
_ShowMessageInternal=function(hncZR4my,KqeVtj,LD,Q,QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_,o,RMqe,c6H01I5a,CuoodPvK,e1iM,bN32Fa,Ub,fQEH,_om,kEI4,DSsD0,jRQUk,M,p_I,ka,OAvmrJ,i)
return
CS.LuaMethod.AddOneShotMessage(parent,hncZR4my,KqeVtj,LD,Q,QKTF34q3,z,UD61M,Kmr_vDN,VJw9J2c,Q5oEQY,eVzQHT,bdl6box_,o,RMqe,c6H01I5a,CuoodPvK,e1iM,bN32Fa,Ub,fQEH,_om,kEI4,DSsD0,jRQUk,M,p_I,ka,OAvmrJ,i)end