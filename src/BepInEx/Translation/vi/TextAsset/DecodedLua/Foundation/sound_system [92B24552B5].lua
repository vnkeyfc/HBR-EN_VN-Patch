local w0qyLbH=require'xlua.util'Sound={}Sound.Category={}
Sound.Category.BGM="BGM"Sound.Category.SE="SE"Sound.Category.SYSTEM="SYSTEM"
Sound.Category.VOICE="VOICE"Sound.Category.ENV="ENV"
Sound.playBattleBGM=function(nsgji,bClTIa,rDzL7SVO)
CS.LuaMethod.SetBattleVolumeType(parent)Sound.playBGM(nsgji,bClTIa,rDzL7SVO,1,true)return nsgji end
Sound.stopBattleBGM=function(BW0WFP)
CS.LuaMethod.SetNormalVolumeType(parent)Sound.playBGM("",BW0WFP,0,1,true)end
Sound.pushBattleBGM=function(X8,JQT,AtYtR)
CS.LuaMethod.SetBattleVolumeType(parent)Sound.pushBGM(X8,JQT,AtYtR,1)return X8 end
Sound.popBattleBGM=function(ND2BCh3,IODBg)
CS.LuaMethod.SetNormalVolumeType(parent)Sound.popBattleBGM(ND2BCh3,IODBg,1)end
Sound.stopBattleBGMLayer=function(YRDu,CWRiP)
CS.LuaMethod.SetNormalVolumeType(parent)Sound.stopBGMLayer(YRDu,CWRiP,1)end
Sound.playBGM=function(LB0A,dl,sKPjQkdn,HHH9IlJp,uYz2ryy4)dl=dl or 0.5;sKPjQkdn=sKPjQkdn or dl
HHH9IlJp=HHH9IlJp or 0;uYz2ryy4=uYz2ryy4 or false
CS.LuaMethod.PlayBgm(parent,LB0A,dl,sKPjQkdn,HHH9IlJp,uYz2ryy4)return LB0A end
Sound.playEmptyBGM=function(zVPRGDnG,IKxw)Sound.playBGM("",zVPRGDnG,0,IKxw)end
Sound.stopBGM=function(w0,UgXzI_C)Sound.playBGM(null,w0,0,UgXzI_C)end
Sound.pushBGM=function(MLFLplLe,jwq,kw3ei0a,EspneS5)jwq=jwq or 0.5;kw3ei0a=kw3ei0a or jwq
EspneS5=EspneS5 or 0
return CS.LuaMethod.PushBgm(parent,MLFLplLe,jwq,kw3ei0a,EspneS5)end
Sound.popBGM=function(LZeg0,OJZ,nmuj,bP)OJZ=OJZ or 0.5;nmuj=nmuj or OJZ;bP=bP or 0
CS.LuaMethod.PopBgm(parent,LZeg0,OJZ,nmuj,bP)end
Sound.stopBGMLayer=function(b4IqQW,iuGb,koZU)b4IqQW=b4IqQW or 0.5;iuGb=iuGb or b4IqQW;koZU=koZU or 0
CS.LuaMethod.StopBgmLayer(b4IqQW,iuGb,koZU)end
Sound.play=function(C,nmJGp_,h0v3PIV)nmJGp_=nmJGp_ or 1;h0v3PIV=h0v3PIV or false
CS.LuaMethod.PlaySound(parent,C,C,nmJGp_,h0v3PIV)return C end
Sound.playEx=function(Uc,JSkUQL,PTUZ2v)JSkUQL=JSkUQL or 1;PTUZ2v=PTUZ2v or false;return
CS.LuaMethod.PlaySound(parent,Uc,Uc,JSkUQL,PTUZ2v)end
Sound.playEx2=function(qlZeO3Pr,fG9zS,WiXG)fG9zS=fG9zS or 1;if WiXG==nil then WiXG=true end;return
CS.LuaMethod.PlaySound(parent,qlZeO3Pr,qlZeO3Pr,fG9zS,WiXG)end
Sound.stop=function(QgyWztK)CS.LuaMethod.StopSound(parent,QgyWztK)end
Sound.pause=function(Oo6ecUO)CS.LuaMethod.PauseSound(parent,Oo6ecUO)end;Sound.resume=function(b6SL0yka)
CS.LuaMethod.ResumeSound(parent,b6SL0yka)end
Sound.volume=function(hEk,E8o,TdqFo)
CS.LuaMethod.SetVolume(parent,hEk,E8o,TdqFo)end
Sound.categoryVolume=function(ykLF0,cilhu,eVfN)
CS.LuaMethod.SetCategoryVolume(parent,ykLF0,cilhu,eVfN)end
Sound.stopCategory=function(LBIJ,CSSp)CSSp=CSSp or 0.5
CS.LuaMethod.StopCategory(LBIJ,CSSp)end
Sound.attachGeneralAisacToCategory=function(CBZIwYHI,x1vCS0)
CS.LuaMethod.AttachGeneralAisacToCategory(CBZIwYHI,x1vCS0)end
Sound.detachGeneralAisacFromCategory=function(Herp,TNczSeT,Sb)Sb=Sb or 0.03
CS.LuaMethod.DetachGeneralAisacFromCategory(Herp,TNczSeT,Sb)end
Sound.setCategoryAisacControl=function(_OwI,GBDhi2D,XDYs,JyOmN)JyOmN=JyOmN or 0.03
CS.LuaMethod.SetCategoryAisacControl(_OwI,GBDhi2D,XDYs,JyOmN)end
Sound.attachSoundFxAisacToCategory=function(Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4,EF,wYFDyw8,JyI)G_v887o0=G_v887o0 or 1.0
oiM7BRAl=oiM7BRAl or 0.03;if s4 ==nil then s4=true end;if EF==nil then EF=true end;if wYFDyw8 ==nil then
wYFDyw8=true end;if JyI==nil then JyI=true end
CS.LuaMethod.AttachSoundFxAisacToCategory(Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl,s4,EF,wYFDyw8,JyI)end
Sound.detachSoundFxAisacFromCategory=function(hncZR4my,KqeVtj,LD,Q,QKTF34q3,z)LD=LD or 0.03;if Q==nil then Q=true end;if QKTF34q3 ==nil then
QKTF34q3=true end;if z==nil then z=true end
CS.LuaMethod.DetachSoundFxAisacFromCategory(hncZR4my,KqeVtj,LD,Q,QKTF34q3,z)end
Sound.startSoundFx=function(UD61M,Kmr_vDN,VJw9J2c,Q5oEQY)Kmr_vDN=Kmr_vDN or 1.0;VJw9J2c=VJw9J2c or 0.03;if
Q5oEQY==nil then Q5oEQY=true end
if UD61M==SoundFxType.Recollection then
Sound.attachSoundFxAisacToCategory("VOICE","GlobalAisac_SoundFx_Recollection",Kmr_vDN,VJw9J2c,true,true,true,Q5oEQY)elseif UD61M==SoundFxType.Bathroom then
Sound.attachSoundFxAisacToCategory("VOICE","GlobalAisac_SoundFx_Bathroom",Kmr_vDN,VJw9J2c,true,true,true,Q5oEQY)elseif UD61M==SoundFxType.Speaker then
Sound.attachSoundFxAisacToCategory("VOICE","GlobalAisac_SoundFx_Speaker",Kmr_vDN,VJw9J2c,true,false,true,Q5oEQY)elseif UD61M==SoundFxType.Radio then
Sound.attachSoundFxAisacToCategory("VOICE","GlobalAisac_SoundFx_Radio",Kmr_vDN,VJw9J2c,true,true,true,Q5oEQY)end end
Sound.stopSoundFx=function(eVzQHT,bdl6box_,o)bdl6box_=bdl6box_ or 0.03;if o==nil then o=true end
if eVzQHT==
SoundFxType.Recollection then
Sound.detachSoundFxAisacFromCategory("VOICE","GlobalAisac_SoundFx_Recollection",bdl6box_,true,true,o)elseif eVzQHT==SoundFxType.Bathroom then
Sound.detachSoundFxAisacFromCategory("VOICE","GlobalAisac_SoundFx_Bathroom",bdl6box_,true,true,o)elseif eVzQHT==SoundFxType.Speaker then
Sound.detachSoundFxAisacFromCategory("VOICE","GlobalAisac_SoundFx_Speaker",bdl6box_,true,true,o)elseif eVzQHT==SoundFxType.Radio then
Sound.detachSoundFxAisacFromCategory("VOICE","GlobalAisac_SoundFx_Radio",bdl6box_,true,true,o)end end
Sound.activeBgmKey=function()return CS.LuaMethod.GetActiveBgmKey()end;Sound.activeBgmLayerIndex=function()
return CS.LuaMethod.GetActiveBgmLayerIndex()end
Sound.setSelectorLabelToActiveBgm=function(RMqe,c6H01I5a)return
CS.LuaMethod.SetSelectorLabelToActiveBgmPlayer(RMqe,c6H01I5a)end
Sound.playENV=function(CuoodPvK,e1iM)e1iM=e1iM or 0.5
return CS.LuaMethod.PlayEnv(parent,CuoodPvK,e1iM)end
Sound.playEnvV2=function(bN32Fa,Ub,fQEH)Ub=Ub or 0.5;fQEH=fQEH or true;return
CS.LuaMethod.PlayEnvNoReset(parent,bN32Fa,Ub,fQEH)end
Sound.stopENV=function(_om,kEI4)kEI4=kEI4 or 0.5
CS.LuaMethod.StopEnv(_om,kEI4)return _om end
Sound.stopAllENV=function(DSsD0)DSsD0=DSsD0 or 0.5
CS.LuaMethod.StopAllEnv(DSsD0)end
Sound.stopAllEnvV2=function(jRQUk)jRQUk=jRQUk or 0.5
CS.LuaMethod.StopAllEnv(jRQUk)CS.LuaMethod.StopCategory("ENV",jRQUk)end
Sound.isPlayingENV=function(M)return CS.LuaMethod.IsPlayingEnv(M)end
Sound.playVoice=function(p_I,ka,OAvmrJ)OAvmrJ=OAvmrJ or 1;return
CS.LuaMethod.PlayVoice(parent,p_I,ka,OAvmrJ)end
Sound.getCurrentTalkVoiceKey=function()
return CS.LuaMethod.GetCurrentTalkVoiceKey(parent)end;Sound.stopVoiceByType=function(i)
return CS.LuaMethod.StopVoiceByType(parent,i)end
Sound.stopAllVoices=function()
Sound.stopVoiceByType(TalkVoiceType.Talk)
Sound.stopVoiceByType(TalkVoiceType.FollowerGaya)
Sound.stopVoiceByType(TalkVoiceType.NormalGaya)end
Sound.triggerControlCue=function(BBJcTiAS)
return CS.LuaMethod.TriggerControlCue(BBJcTiAS)end
Sound.returnFieldBGM=function(m7jWgGw,cq)m7jWgGw=m7jWgGw or 1;cq=cq or 2
CS.LuaMethod.ReturnFieldBGM(m7jWgGw,cq)end
Sound.reverbCave=function(Mk3)Mk3=Mk3 or ReverbValue.Cave
CS.LuaMethod.SetReverb(parent,Mk3)end
Sound.factorReverbCave=function(jUhLQEm,Ed4qx)Ed4qx=Ed4qx or ReverbValue.Cave
CS.LuaMethod.AddFactorReverb(parent,jUhLQEm,Ed4qx)end
Sound.factorReverbMonolog=function(ZrR2o,_g)_g=_g or ReverbValue.Monolog
CS.LuaMethod.AddFactorReverbMonolog(parent,ZrR2o,_g)end
Sound.removeFactorReverb=function(_NgROQrI)
CS.LuaMethod.RemoveFactorReverb(parent,_NgROQrI)end
Sound.reverbMonolog=function(_E8uiG0)_E8uiG0=_E8uiG0 or ReverbValue.Monolog
CS.LuaMethod.SetReverbMonolog(parent,_E8uiG0)end
Sound.startBattleAdvDucking=function()return
CS.LuaMethod.StartDucking(parent,debug.traceback())end
Sound.endBattleAdvDucking=function(SK)CS.LuaMethod.EndDucking(parent,SK)end;Sound.setResumeBGM=function(J7K570R)
CS.LuaMethod.SetResumeBgm(parent,J7K570R)end
Sound.setBlockIndex=function(fDGKa,Q)
_AssertIsNotNull(Q)
CS.LuaMethod.SetSoundBlockIndex(parent,fDGKa,Q)end
Sound.setMutableBgm=function()CS.LuaMethod.ResetResumeBGM()end
Sound.waitSoundEnd=function(ZukFflVc)
CoroutineYield(CS.LuaMethod.WaitSoundEnd(parent,ZukFflVc))end