local w0qyLbH=require'xlua.util'
Adv.actDelayWrapper=function(nsgji,bClTIa,rDzL7SVO,BW0WFP)local X8;local JQT={}local AtYtR={}local ND2BCh3
if
type(bClTIa[1])=="table"then X8=#bClTIa;for IODBg=1,X8 do JQT[IODBg]=bClTIa[IODBg][1]
AtYtR[IODBg]=bClTIa[IODBg][2]Adv.actDelay(JQT[IODBg],nsgji,AtYtR[IODBg])
ND2BCh3=IODBg end else
JQT[1]=bClTIa[1]AtYtR[1]=bClTIa[2]
Adv.actDelay(JQT[1],nsgji,AtYtR[1])ND2BCh3=1 end;if rDzL7SVO~=nil then rDzL7SVO()end;if not BW0WFP then
Adv.act(nsgji,AtYtR[ND2BCh3],AdvCharacterMouth.Close)end end