ROUTINE()Adv.shield()
SetFlag("2章特殊討伐任務に出かける",0)local YRDu=Domain.getDivingChapter()
local CWRiP=Domain.getDivingDay()
local LB0A=Adv.loadBG("Background/Cafeteria/Cafeteria_Front_Evening","BG")
local dl=Adv.loadBG("Background/31ARoom/31ARoom_Evening","BG")
local sKPjQkdn=Adv.loadBG("Background/CommanderRoom/CommanderRoom_Evening","BG")local HHH9IlJp=Adv.character("RKayamori")
local uYz2ryy4=Adv.character("YIzumi")local zVPRGDnG=Adv.character("MAikawa")
local IKxw=Adv.character("TKunimi")local w0=Adv.character("STezuka")
local UgXzI_C=


GetFlag("有明エリア1のMAP開放率100%_2章Day11")+GetFlag("有明エリア1のMAP開放率100%_2章Day12")+GetFlag("有明エリア1のMAP開放率100%_2章Day13")+GetFlag("有明エリア1のMAP開放率100%_2章Day14")
function Monologue()Sound.playBGM("SB0017",1,0)
Layout.createStageZoomIn(LB0A,Position.BG_CENTER)Layout.show({HHH9IlJp,"040002"})
Adv.novelInit()
Adv.talkWithFacialInMonolog(nil,nil,HHH9IlJp,[[(I guess they haven't found the Medusa yet.)]],"VC_Z_900600115_RKayamori")
Adv.talkWithFacialInMonolog(nil,nil,HHH9IlJp,[[(We were told to stay put until we get the order, but what should I do?)]],"VC_Z_900600116_RKayamori")local MLFLplLe=Adv.question([[]],[[Head out|Stay put]])
if
MLFLplLe==0 then SetFlag("2章特殊討伐任務に出かける",1)
Sound.stopBGM()Transition.setFlyGo(TimeFrame.Evening)
Transition.start()else
Adv.talkWithFacialInMonolog(nil,nil,HHH9IlJp,[[(Nah, let's just stay put for today.)]],"VC_Z_900600117_RKayamori")SetFlag("2章特殊討伐任務に出かける",0)
Sound.stopBGM(1)end end
function Info()Sound.playBGM("SB0017",1,0)
Layout.createStagePan(LB0A,Position.BG_CENTER)
Layout.show({HHH9IlJp,"0003"},{uYz2ryy4,"0001"})Adv.novelInit()
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hey, are we going on patrol today?]],"VC_MC02_00168_v001_YIzumi")local jwq=Adv.question([[]],[[Yes|Nah]])
if jwq==0 then
Adv.talkWithFacial("0703",nil,HHH9IlJp,[[Yup. Let's get ready to head out.]],"VC_MC02_00169_v001_RKayamori")
Adv.talkWithFacial("0001",nil,uYz2ryy4,[[Got it.]],"VC_MC02_00170_v001_YIzumi")SetFlag("2章特殊討伐任務に出かける",1)
Sound.stopBGM()Transition.setFlyGo(TimeFrame.Evening)
Transition.start()else Adv.actDelay(1.8,HHH9IlJp,"110302")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Nah, not today. Let's go grab dinner.]],"VC_MC02_00171_v001_RKayamori")Adv.act(HHH9IlJp,"110302")
Adv.talkWithFacial("130103",nil,uYz2ryy4,[[You sure? Well, whatever.]],"VC_MC02_00172_v001_YIzumi")SetFlag("2章特殊討伐任務に出かける",0)
Sound.stopBGM(1)end end
function Alert()Sound.playBGM("SB0017",1,0)
Layout.createStagePan(LB0A,Position.BG_CENTER)
Layout.show({HHH9IlJp,"0003"},{uYz2ryy4,"0001"})Adv.novelInit()
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Hey, are we going on patrol today?]],"VC_MC02_00168_v001_YIzumi")local kw3ei0a=Adv.question([[]],[[Yes|Nah]])
if kw3ei0a==0 then
Adv.talkWithFacial("0703",nil,HHH9IlJp,[[Yup. Let's get ready to head out.]],"VC_MC02_00169_v001_RKayamori")
Adv.talkWithFacial("0001",nil,uYz2ryy4,[[Got it.]],"VC_MC02_00170_v001_YIzumi")SetFlag("2章特殊討伐任務に出かける",1)
Sound.stopBGM()Transition.setFlyGo(TimeFrame.Evening)
Transition.start()else Adv.actDelay(1.8,HHH9IlJp,"110302")
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Nah, not today. Let's go grab dinner.]],"VC_MC02_00171_v001_RKayamori")Adv.act(HHH9IlJp,"110302")
Adv.talkWithFacial("040103",nil,uYz2ryy4,[[Shouldn't we start thinking about heading out? We only have today left.]],"VC_MC02_00177_v001_YIzumi")local kw3ei0a=Adv.question([[]],[[Head out|Stay put]])
if
kw3ei0a==0 then
Adv.talkWithFacial("070301",nil,HHH9IlJp,[[Yeah, you're right. Let's go.]],"VC_MC02_00178_v001_RKayamori")
Adv.talkWithFacial("0001",nil,uYz2ryy4,[[Got it.]],"VC_MC02_00179_v001_YIzumi")SetFlag("2章特殊討伐任務に出かける",1)
Sound.stopBGM()Transition.setFlyGo(TimeFrame.Evening)
Transition.start()else
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Nah, I think we're still good.]],"VC_MC02_00180_v001_RKayamori")
Adv.talkWithFacial("0601",nil,uYz2ryy4,[[Don't say I didn't warn you...]],"VC_MC02_00181_v001_YIzumi")SetFlag("2章特殊討伐任務に出かける",0)end end end
if YRDu=="MC02"and CWRiP==12 then
if UgXzI_C==0 then Info()else Monologue()end elseif YRDu=="MC02"and CWRiP==13 then
if UgXzI_C==0 then Info()else Monologue()end elseif YRDu=="MC02"and CWRiP==14 then
if UgXzI_C==0 then Alert()else Monologue()end elseif YRDu=="MC02"and CWRiP==15 then
Sound.playBGM(AdvBGM.Danger1,1,0)Layout.createStageFixBg(dl,Position.BG_CENTER)
Layout.show()Adv.novelInit()
Adv.actDelay(0.5,HHH9IlJp,"0802",AdvCharacterMouth.Close)
Adv.actDelay(0.5,uYz2ryy4,"2102",AdvCharacterMouth.Close)
Adv.bubble_SPEAKER("NNanase",[[31-A, prepare for deployment and head to the commander's office immediately.]],nil,"VC_MC02_00182_v001_NNanase")
Layout.show({HHH9IlJp,"0003"},{uYz2ryy4,"0001"})
Adv.talkWithFacial("110302",nil,HHH9IlJp,[[Ohh, I've got all the good feelings about this.]],"VC_MC02_00183_v001_RKayamori")Adv.act(uYz2ryy4,"2101")
Adv.actDelay(5.6,uYz2ryy4,"210003")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[What's with you and that positivity? It's kind of amazing, in a way. At this point, I'm even kind of starting to respect your unwavering positive-mindedness in the middle of all this chaos in the world.]],"VC_MC02_00184_v001_YIzumi",
nil,nil,AdvCharacterMouth.Close)Layout.createStagePan(dl,Position.BG_LEFT)
Adv.act(IKxw,"1802",AdvCharacterMouth.Close)Layout.show({zVPRGDnG,"0702"},IKxw)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Don't know what that's all about, but should we be headin' out quick?]],"VC_MC02_00185_v001_MAikawa")Layout.createStageFixBg(dl,Position.BG_CENTER)
Layout.show({HHH9IlJp,"000201"},{uYz2ryy4,"030201"})
Adv.showEffectRoutine("Adventure/LineWork/LineWork","ForegroundEffect",nil,0.8,350,positionY)
Adv.actDelay(2.5,uYz2ryy4,"0300",AdvCharacterMouth.Mouth03)
Adv.actDelay(3.7,uYz2ryy4,"0302",AdvCharacterMouth.Mouth03)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[You're absolutely right. Why am I spending a whole minute monologuing about how I respect her stupidly positive outlook? Wait... This is pretty long too.]],"VC_MC02_00186_v001_YIzumi")
Adv.actDelay(0,uYz2ryy4,"0302",AdvCharacterMouth.Close)
Layout.createStageZoomIn(dl,Position.BG_LEFT,0.3)Layout.show({IKxw,"070202"})
Adv.talkWithFacial(nil,nil,IKxw,[[C'mon, let's just go!]],"VC_MC02_00187_v001_TKunimi")Transition.setOutdoor("","Commander's Office")
Transition.start()Wait(2)
Layout.createStageZoomOut(sKPjQkdn,Position.BG_CENTER)Layout.show({w0,"0702"})Transition.finish()
Adv.talkWithFacial(
nil,nil,w0,[[Is everyone here?]],"VC_MC02_00188_v001_STezuka")
Layout.createStageFixBg(sKPjQkdn,Position.BG_LEFT)Layout.show({HHH9IlJp,"0002"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Yeah, ma'am.]],"VC_MC02_00189_v001_RKayamori")
Layout.createStageFixBg(sKPjQkdn,Position.BG_CENTER)Layout.show(w0)
Adv.talkWithFacial(nil,nil,w0,[[One of the squads out on patrol found the Medusa.]],"VC_MC02_00190_v001_STezuka")
Layout.createStageZoomIn(sKPjQkdn,Position.BG_LEFT)Layout.show({HHH9IlJp,"160002"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Oh, darn. They got to it first.]],"VC_MC02_00191_v001_RKayamori")
Adv.talkWithFacial("0802",nil,w0,[[What are you saying? It's thanks to your previous efforts that they were able to narrow down the search area.]],"VC_MC02_00192_v001_STezuka")
Layout.createStageFixBg(sKPjQkdn,Position.BG_LEFT)Layout.show({HHH9IlJp,"1502"})
Adv.talkWithFacial("1502",nil,HHH9IlJp,[[I was just thinking we just got further away from a promotion. You know, with our own personal rooms and bathrooms.]],"VC_MC02_00193_v001_RKayamori")
Adv.talkWithFacial("000002",nil,w0,[[There are no personal rooms for Seraph Squadron members.]],"VC_MC02_00194_v001_STezuka")
Adv.talkWithFacial("070201",nil,w0,[[31-A, you will now head out to the designated point in the Ariake Area to defeat the Medusa.]],"VC_MC02_00195_v001_STezuka")
Layout.createStageFixBg(sKPjQkdn,Position.BG_LEFT)Layout.show({HHH9IlJp,"170201"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Whaaat.]],"VC_MC02_00196_v001_RKayamori")
Layout.show({HHH9IlJp,"0003"},{uYz2ryy4,"130103"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Just say "understood," dum-dum.]],"VC_MC02_00197_v001_YIzumi")
Adv.talkWithFacial("0702",nil,HHH9IlJp,[[Understood!]],"VC_MC02_00198_v001_RKayamori")Sound.stopBGM()
Transition.setFlyGo(TimeFrame.Evening)Transition.start()else end;Exit_Novel()