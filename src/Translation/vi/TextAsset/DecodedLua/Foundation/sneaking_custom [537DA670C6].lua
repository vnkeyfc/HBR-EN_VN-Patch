local w0qyLbH=require'xlua.util'
function SetupSneakingClone(nsgji)if not IsExist(nsgji)then
Field.createClone("Player",nsgji)end
Field.setupEventCharacter(nsgji)Field.setActive(nsgji,false)end
Sneaking.CoverAction_OneThird=function(bClTIa,rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu)SetupSneakingClone("SneakingClone")
Wait(0.01)if AtYtR==nil then AtYtR=-20 end;if ND2BCh3 ==nil then ND2BCh3="L"end;if
ND2BCh3 =="L"then SetLocalFlag("画面左へ進む",1)else
SetLocalFlag("画面左へ進む",0)end;local CWRiP
if YRDu==nil then if
ND2BCh3 =="L"then CWRiP=20 else CWRiP=-20 end else CWRiP=YRDu end;local LB0A=Field.getPosition("Player")
Field.setPosition("WalkSmoke02",LB0A)
Field.turnToPosition("Player",X8,0.2,AnimationMode.None)Field.changeAnimation("Player","FieldUnique04")
Routine(function()
Wait(0.1166667)Sound.playEx("AS_MYanagi_FeildUnique04")
Sound.playEx("VC_AC20_Sneaking_Myanagi_02")end)Wait(0.1)
Field.kickEffectTrigger("WalkSmoke02","Normal")Wait(0.2)Field.setActive("Player",false)Wait(0.01)
Field.setPosition("SneakingClone",X8)Field.rotateTo("SneakingClone",JQT)
Field.setActive("SneakingClone",true)Field.setPosition("ActionSmoke",X8)
local dl=math.random(0,2)
if dl==0 then
Field.changeAnimationImm("SneakingClone","FieldUnique05",1,0)
Routine(function()Wait(0.1333333)
Sound.playEx("AS_MYanagi_FeildUnique05")end)elseif dl==1 then
Field.changeAnimationImm("SneakingClone","FieldUnique06",1,0)
Routine(function()Wait(0.1166667)
Sound.playEx("AS_MYanagi_FeildUnique06")end)else
Field.changeAnimationImm("SneakingClone","FieldUnique07",1,0)
Routine(function()Wait(0.1333333)
Sound.playEx("AS_MYanagi_FeildUnique07")end)end
Routine(function()Wait(0.85)
Field.kickEffectTrigger("ActionSmoke","ActionSmoke")end)
Field.setCameraCompositionExWithListener(bClTIa,rDzL7SVO+Vec(AtYtR,CWRiP,0),BW0WFP,0)Field.waitTaskKey("CameraComposition")
Field.setCameraCompositionExWithListener(bClTIa,rDzL7SVO,BW0WFP,1.5,0,0)Field.changeAnimation("Player","FieldUnique05")if IODBg==
nil then Field.rotateTo("Player",JQT,0)else
Field.rotateTo("Player",IODBg,0)end
Field.waitTaskKey("SneakingClone")end
Sneaking.CoverAction_TwoThird=function(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,IKxw)SetupSneakingClone("SneakingClone")
local w0=Field.getPosition("SneakingClone")Field.setPosition("Player",w0)
Field.setActive("Player",true)Field.setActive("SneakingClone",false)
Field.setCameraCompositionExWithListener(sKPjQkdn,HHH9IlJp,uYz2ryy4,zVPRGDnG,0,0)
if IKxw=="L"then
Field.changeAnimationImm("Player","FieldUnique08",1,0)
Routine(function()Wait(0.1333333)
Sound.playEx("AS_MYanagi_FeildUnique08")end)else
Field.changeAnimationImm("Player","FieldUnique09",1,0)
Routine(function()Wait(0.06666667)
Sound.playEx("AS_MYanagi_FeildUnique08_09")end)end;Field.waitTaskKey("Player")
if IKxw=="L"then
Field.changeAnimation("Player","FieldUnique12")else Field.changeAnimation("Player","FieldUnique13")end end
Sneaking.CoverAction_HideEx=function(UgXzI_C,MLFLplLe,jwq,kw3ei0a,EspneS5,LZeg0,OJZ,nmuj,bP,b4IqQW,iuGb,koZU)SetupSneakingClone("SneakingCloneHide")if
koZU==nil then koZU=LZeg0 end
Field.setPosition("SneakingCloneHide",OJZ)
local C=Field.turnToPosition("SneakingCloneHide",kw3ei0a,0)Field.waitTask(C)
Field.changeAnimationImm("Player","FieldIdle")Field.setActive("Player",false)
Field.setActive("SneakingCloneHide",true)
Field.changeAnimation("SneakingCloneHide","FieldIdle",1.0,0)
Field.setCameraCompositionExWithListener(nmuj,bP,b4IqQW,0)
local nmJGp_=Field.moveTo("SneakingCloneHide",kw3ei0a,iuGb,AnimationMode.Run)
local h0v3PIV=Sound.playEx("AS_Run_Concrete_Leathershoes_Loop")Wait(0.1)Field.setPosition("Player",kw3ei0a)
Field.rotateTo("Player",koZU,0)Wait(iuGb-0.4)
if EspneS5 =="L"then
SetLocalFlag("画面左へ進む",1)Field.setActive("SneakingCloneHide",false)
Field.setCameraCompositionExWithListener(UgXzI_C,MLFLplLe,jwq,0)Field.setActive("Player",true)
Field.changeAnimationImm("Player","FieldUnique10",1,0)
Routine(function()Wait(0.06666667)
Sound.playEx("VC_AC20_Sneaking_Myanagi_02")Wait(0.1)
Sound.playEx("AS_MYanagi_FeildUnique10_11")end)Wait(0.1)Sound.stop(h0v3PIV)
Field.stopTask(nmJGp_)Wait(0.7)
Field.changeAnimation("Player","FieldUnique12")else SetLocalFlag("画面左へ進む",0)
Field.setActive("SneakingCloneHide",false)
Field.setCameraCompositionExWithListener(UgXzI_C,MLFLplLe,jwq,0)Field.setActive("Player",true)
Field.changeAnimationImm("Player","FieldUnique11",1,0)
Routine(function()Wait(0.06666667)
Sound.playEx("VC_AC20_Sneaking_Myanagi_02")Wait(0.1)
Sound.playEx("AS_MYanagi_FeildUnique10_11")end)Wait(0.1)Sound.stop(h0v3PIV)
Field.stopTask(nmJGp_)Wait(0.7)
Field.changeAnimation("Player","FieldUnique13")end end
Sneaking.CancerBeam=function(Uc,JSkUQL,PTUZ2v,qlZeO3Pr,fG9zS)
Sound.playEx("AS _DiamondEyeballGiant_GameOver")
if Uc==nil then Uc=Vec(-302.000,5.000,-23.300)end;if JSkUQL==nil then JSkUQL=Vec(-23,0,0)end
if PTUZ2v==nil then PTUZ2v=18 end
if qlZeO3Pr==nil then qlZeO3Pr=Vec(-302,12.2,-11.7)end;if fG9zS==nil then fG9zS=Vec(0,180,0)end
Field.crossFade(0.5)
Field.setPosition("DiamondEyeballGiantAttackAll02",Vec(-302,19,17.1))
Field.setPosition("DiamondEyeballGiantDefault_Field",qlZeO3Pr)
Field.rotateTo("DiamondEyeballGiantDefault_Field",fG9zS,0)local WiXG=FieldLabel()
if WiXG=="CaveSneak_B8"then
Field.setActive("Muzzle01",false)Field.setActive("Muzzle02",false)
Field.setActive("Muzzle03",false)Field.setActive("Muzzle04",false)
Field.setActive("Muzzle05",false)Field.setActive("Muzzle06",false)else
Field.setActive("SearchLightController",false)end
Field.setCameraCompositionExWithListener(Uc,JSkUQL,PTUZ2v+12,0)Field.waitTaskKey("CameraComposition")
Field.setCameraCompositionExWithListener(Uc,JSkUQL,PTUZ2v,2,1,0)
Field.changeAnimation("DiamondEyeballGiantDefault_Field","BattleAttackAll02Cut01",1,0)
Field.waitTaskKey("DiamondEyeballGiantDefault_Field")Wait(0.5)
Field.setCameraCompositionExWithListener(Uc,JSkUQL-Vec(13,0,0),PTUZ2v+15,0.3,0,0)
Field.kickEffectTrigger("DiamondEyeballGiantAttackAll02","Ball")
Field.changeAnimation("DiamondEyeballGiantDefault_Field","BattleAttackAll02Cut02",1,0)
Field.waitTaskKey("DiamondEyeballGiantDefault_Field")
Field.setCameraCompositionExWithListener(Uc,JSkUQL+Vec(0,0,0),PTUZ2v+15,0.8,0,0)Adv.whiteOut(0.5)
Field.changeAnimation("DiamondEyeballGiantDefault_Field","BattleAttackAll02Cut03",1,0)
Field.waitTaskKey("DiamondEyeballGiantDefault_Field")
Field.changeAnimation("DiamondEyeballGiantDefault_Field","BattleAttackAll02Cut04",1,0)Wait(1)end
Sneaking.GameOver=function(QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o)
Field.stopTaskKey("DiamondEyeballGiantDefault_Field")Adv.hideMiniCutIn()
Sneaking.CancerBeam(QgyWztK,Oo6ecUO,b6SL0yka,hEk,E8o)Field.setPostEffectBrightness(-1,0)
Field.setCameraCompositionExWithListener(Vec(999,999,999),Vec(
-88,0,0),10)local TdqFo=Sound.pushBGM("",1,1)
Sound.playEx("VP_Z_902900306_KMaruyama")WaitVoiceEnd("VP_Z_902900306_KMaruyama")
Adv.whiteIn(1,true)Sound.playBGM("SZ0047",1,1)UI.GameOver(false)
return TdqFo end
Sneaking.restart=function(ykLF0,cilhu,eVfN,LBIJ,CSSp,CBZIwYHI)if CBZIwYHI==nil then CBZIwYHI=1 end
Field.setPosition("Player",ykLF0)Field.resetPosition("StartPoint")
Field.rotateTo("Player",cilhu)
Field.setPosition("DiamondEyeballGiantDefault_Field",eVfN)
Field.rotateTo("DiamondEyeballGiantDefault_Field",LBIJ,0)
SetLocalFlag("ループモードタスク番号",CSSp)
SetLocalFlag("ループモードタスク番号Ｂ",CBZIwYHI)SetLocalFlag("見つかった",0)
Field.changeAnimation("DiamondEyeballGiantDefault_Field","FieldUnique01",1,0)end
Sneaking.AC20MiniCutIn=function(x1vCS0,Herp,TNczSeT,Sb,_OwI,GBDhi2D,XDYs,JyOmN,Gu2sqpyD,N_Pk,G_v887o0,oiM7BRAl)
Adv.showMiniCutIn(x1vCS0,Herp,TNczSeT,Sb,_OwI,GBDhi2D,XDYs,nil,true)WaitVoiceEnd(Sb,JyOmN,N_Pk)Wait(0.5)
Adv.hideMiniCutIn()end