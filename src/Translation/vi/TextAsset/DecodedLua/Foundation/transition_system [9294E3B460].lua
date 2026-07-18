local w0qyLbH=require'xlua.util'Transition={}
Transition.setTime=function(nsgji,bClTIa,rDzL7SVO)
CS.LuaMethod.SetTimeTransition(nsgji,bClTIa,rDzL7SVO)end
Transition.setOutdoor=function(BW0WFP,X8)
CS.LuaMethod.SetOutdoorTransition(parent,BW0WFP,X8)end
Transition.setBlack=function()CS.LuaMethod.SetBlackTransition()end
Transition.setWhite=function()CS.LuaMethod.SetWhiteTransition()end
Transition.setFlyGo=function(JQT,AtYtR,ND2BCh3,IODBg)if JQT==nil then JQT=TimeFrame.Default end
CS.LuaMethod.SetFlyGoTransition(JQT,AtYtR,ND2BCh3,IODBg)end
Transition.setFlyReturn=function(YRDu,CWRiP,LB0A,dl)if YRDu==nil then YRDu=TimeFrame.Default end
CS.LuaMethod.SetFlyReturnTransition(YRDu,CWRiP,LB0A,dl)end
Transition.setFlyGoEx=function(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw,w0,UgXzI_C)if IKxw==nil or IKxw==false then
Sound.playBGM(nil,1,0,0,UgXzI_C)end;if w0 ==nil or w0 ==false then
Sound.stopAllENV(1)end
Transition.setFlyGo(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG)end
Transition.setFlyReturnEx=function(MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj)if LZeg0 ==nil or LZeg0 ==false then
Sound.playBGM(nil,1,0,0,nmuj)end;if OJZ==nil or OJZ==false then
Sound.stopAllENV(1)end
Transition.setFlyReturn(MLFLplLe,jwq,kw3ei0a,EspneS5)end
Transition.setGoTransition=function(bP,b4IqQW,iuGb,koZU,C)
if b4IqQW==nil then b4IqQW=TimeFrame.Default end
CS.LuaMethod.SetGoTransition(bP,b4IqQW,iuGb,koZU,C)end
Transition.setReturnTransition=function(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v)
if h0v3PIV==nil then h0v3PIV=TimeFrame.Default end
CS.LuaMethod.SetReturnTransition(nmJGp_,h0v3PIV,Uc,JSkUQL,PTUZ2v)end
Transition.setSymbolEncountTransition=function(qlZeO3Pr)
CS.LuaMethod.SetSymbolEncountTransition(qlZeO3Pr)end
Transition.setBathTransition=function()CS.LuaMethod.SetBathTransition()end;Transition.setNarvyTransition=function()
CS.LuaMethod.SetGenericTransition("Narvy")end;Transition.setNightTransition=function()
CS.LuaMethod.SetGenericTransition("Night")end
Transition.setArenaTransition=function()
Sound.play("SY_Arena_Dive")CS.LuaMethod.SetGenericTransition("Arena")end
Transition.setGhostSymbolEncountTransition=function(fG9zS)
CS.LuaMethod.SetGhostSymbolEncountTransition(fG9zS)end
Transition.start=function(WiXG)WiXG=WiXG or 1;return
CoroutineYield(CS.LuaMethod.StartTransition(WiXG))end
Transition.wait=function()return
CoroutineYield(CS.LuaMethod.WaitTransition())end
Transition.finish=function(QgyWztK,Oo6ecUO)Oo6ecUO=Oo6ecUO or 0.5;return
CoroutineYield(CS.LuaMethod.EndTransition(parent,QgyWztK,Oo6ecUO))end
Transition.finishV2=function(b6SL0yka)b6SL0yka=b6SL0yka or 0.5;return
CoroutineYield(CS.LuaMethod.EndTransition(parent,nil,b6SL0yka))end
Transition.setBikeGo=function(hEk,E8o,TdqFo,ykLF0,cilhu,eVfN)E8o=E8o or false;eVfN=eVfN or""if hEk==nil then
hEk=TimeFrame.Default end;if TdqFo==nil then TdqFo=true end
Field.setExAnimationBikeTackle(TdqFo)
CS.LuaMethod.SetBikeReturnTransition(hEk,E8o,ykLF0,cilhu,eVfN)end
Transition.setBikeReturn=function(LBIJ,CSSp,CBZIwYHI,x1vCS0,Herp,TNczSeT)CSSp=CSSp or false;TNczSeT=TNczSeT or""if LBIJ==nil then
LBIJ=TimeFrame.Default end;if CBZIwYHI==nil then CBZIwYHI=true end
Field.setExAnimationBikeTackle(CBZIwYHI)
CS.LuaMethod.SetBikeGoTransition(LBIJ,CSSp,x1vCS0,Herp,TNczSeT)end
Transition.setDayTransition=function(Sb)CS.LuaMethod.SetDayTransition(Sb)end
Transition.setOutdoorForAikawa=function(_OwI,GBDhi2D)
CS.LuaMethod.SetAikawaTransition(parent,_OwI,GBDhi2D)end
Transition.setRecollectionStoryTransition=function(XDYs,JyOmN)XDYs=XDYs or 0.0;JyOmN=JyOmN or false
CS.LuaMethod.SetRecollectionStoryTransition(XDYs,JyOmN)end
Transition.setFlyGoV2=function(Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl)
if Gu2sqpyD==nil then Gu2sqpyD=TimeFrame.Default end
CS.LuaMethod.SetFlyGoTransition(Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,true)end
Transition.setFlyReturnV2=function(s4,EF,wYFDyw8,JyI)if s4 ==nil then s4=TimeFrame.Default end
CS.LuaMethod.SetFlyReturnTransition(s4,EF,wYFDyw8,JyI,true)end
Transition.setDMVGo=function(hncZR4my,KqeVtj,LD,Q)Q=Q or""
if hncZR4my==nil then hncZR4my=TimeFrame.Default end
CS.LuaMethod.SetDMVGoTransition(hncZR4my,KqeVtj,LD,Q)end
Transition.setDMVReturn=function(QKTF34q3,z,UD61M,Kmr_vDN)Kmr_vDN=Kmr_vDN or""if QKTF34q3 ==nil then
QKTF34q3=TimeFrame.Default end
CS.LuaMethod.SetDMVReturnTransition(QKTF34q3,false,z,UD61M,Kmr_vDN)end
Transition.setTruckGo=function(VJw9J2c,Q5oEQY,eVzQHT,bdl6box_)bdl6box_=bdl6box_ or""if VJw9J2c==nil then
VJw9J2c=TimeFrame.Default end
CS.LuaMethod.SetTruckGoTransition(VJw9J2c,Q5oEQY,eVzQHT,bdl6box_)end
Transition.setTruckReturn=function(o,RMqe,c6H01I5a,CuoodPvK)CuoodPvK=CuoodPvK or""
if o==nil then o=TimeFrame.Default end
CS.LuaMethod.SetTruckReturnTransition(o,false,RMqe,c6H01I5a,CuoodPvK)end
Transition.setBook=function(e1iM,bN32Fa,Ub)
CS.LuaMethod.SetBookTransition(parent,e1iM,bN32Fa,Ub)end