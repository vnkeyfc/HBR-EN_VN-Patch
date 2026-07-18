function GetArenaReward()Field.acquireArenaBonus()end
function NNanaseMessageAboutArena()
local A=Domain.getDivingChapter()local w0qyLbH=Domain.getDivingDay()local nsgji=Field.hasArenaBattleBonus()or
Field.hasArenaBonus()
if
A=="MC01"and w0qyLbH==1 and nsgji then
LinneEvent("NNanase",[[Would you like to train at the arena?]],NNanaseMessageOnMC01Day01,nil,"Arena",true)elseif A=="MC01"and w0qyLbH==2 and nsgji then
LinneEvent("NNanase",[[Lv. 2 training battles have been added to the arena.]],NNanaseMessageOnMC01Day02,
nil,"Arena")elseif A=="MC01"and w0qyLbH==3 and nsgji then
LinneEvent("NNanase",[[Lv. 3 training battles have been added to the arena.]],NNanaseMessageOnMC01Day03,
nil,"Arena")elseif A=="MC01"and w0qyLbH==4 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC01Day04,
nil,"Arena")elseif A=="MC01"and w0qyLbH==5 and nsgji then local bClTIa=
GetFlag("アリーナ_バトル指南開放フラグ")==0
SetFlag("アリーナ_バトル指南開放フラグ",1)
LinneEvent("NNanase",[[You can now undergo Battle Familiarization in the arena.]],NNanaseMessageOnMC01Day05,nil,"Arena",bClTIa)elseif A=="MC01"and w0qyLbH==7 and nsgji then
LinneEvent("NNanase",[[Lv. 4 training battles have been added to the arena.]],NNanaseMessageOnMC01Day07,
nil,"Arena")elseif A=="MC01"and w0qyLbH==9 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC01Day09,
nil,"Arena")elseif A=="MC01"and w0qyLbH==10 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC01Day10,
nil,"Arena")elseif A=="MC02"and w0qyLbH==3 and nsgji then local rDzL7SVO=
GetFlag("アリーナ_訓練場開放フラグ")==0
SetFlag("アリーナ_訓練場開放フラグ",1)
LinneEvent("NNanase",[[Free Practice has been added to the arena.]],NNanaseMessageOnMC02Day03,nil,"Arena",rDzL7SVO)elseif A=="MC02"and w0qyLbH==7 and nsgji then
LinneEvent("NNanase",[[Lv. 2 training battles have been added to the arena.]],NNanaseMessageOnMC02Day07,
nil,"Arena")elseif A=="MC02"and w0qyLbH==12 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC02Day12,
nil,"Arena")elseif A=="MC02"and w0qyLbH==18 and nsgji then
LinneEvent("NNanase",[[Lv. 3 training battles have been added to the arena.]],NNanaseMessageOnMC02Day18,
nil,"Arena")elseif A=="MC02"and w0qyLbH==21 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC02Day21,
nil,"Arena")elseif
A=="MC02"and w0qyLbH==23 and
GetFlag("アリーナ_チャレンジ演習開放フラグ")==0 then
SetFlag("アリーナ_チャレンジ演習開放フラグ",1)
LinneEvent("NNanase",[[Proving Ground Challenges have been added to the arena.]],NNanaseMessageOnMC02Day23,nil,"Arena",true)elseif
A=="MC02"and w0qyLbH==23 and
GetFlag("アリーナ_チャレンジ演習開放フラグ")==1 and nsgji then
LinneEvent("NNanase",[[Proving Ground Challenges have been added to the arena.]],NNanaseMessageOnMC02Day23,
nil,"Arena")elseif A=="MC03"and w0qyLbH==5 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC03Day05,
nil,"Arena")elseif A=="MC03"and w0qyLbH==7 and nsgji then local BW0WFP=
GetFlag("アリーナ_バトル指南後半追加フラグ")==0
SetFlag("アリーナ_バトル指南後半追加フラグ",1)
LinneEvent("NNanase",[[Training battles have been added.]],NNanaseMessageOnMC03Day07,nil,"Arena",BW0WFP)elseif A=="MC03"and w0qyLbH==9 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC03Day09,
nil,"Arena")elseif A=="MC03"and w0qyLbH==15 and nsgji then
LinneEvent("NNanase",[[Lv. 3 training battles have been added to the arena.]],NNanaseMessageOnMC03Day15,
nil,"Arena")elseif A=="MC03"and w0qyLbH==17 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC03Day17,
nil,"Arena")elseif A=="MC04"and w0qyLbH==2 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC04Day02,
nil,"Arena")elseif A=="MC04"and w0qyLbH==5 and nsgji then
LinneEvent("NNanase",[[Lv. 2 training battles have been added to the arena.]],NNanaseMessageOnMC04Day05,
nil,"Arena")elseif A=="MC04"and w0qyLbH==7 and nsgji then
local X8=
GetFlag("アリーナ_チャレンジ演習追加1回目フラグ")==0
SetFlag("アリーナ_チャレンジ演習追加1回目フラグ",1)
LinneEvent("NNanase",[[New Proving Ground Challenges have been added to the arena.]],NNanaseMessageOnMC04Day07,nil,"Arena",X8)elseif A=="MC04"and w0qyLbH==11 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC04Day11,
nil,"Arena")elseif A=="MC04B"and w0qyLbH==-1 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC04BDay00,
nil,"Arena")elseif A=="MC04B"and w0qyLbH==7 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC04BDay07,
nil,"Arena")elseif A=="MC04B"and w0qyLbH==8 and nsgji then
local JQT=
GetFlag("アリーナ_チャレンジ演習追加2回目フラグ")==0
SetFlag("アリーナ_チャレンジ演習追加2回目フラグ",1)
LinneEvent("NNanase",[[New Proving Ground Challenges have been added to the arena.]],NNanaseMessageOnMC04BDay08,nil,"Arena",JQT)elseif A=="MC04B"and w0qyLbH==13 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC04BDay13,
nil,"Arena")elseif A=="MC05A"and w0qyLbH==2 and nsgji then
LinneEvent("NNanase",[[Would you like to assist us today?]],NNanaseMessageOnMC05ADay02,
nil,"Arena")end end
function NNanaseLinneEnd(AtYtR,ND2BCh3)if ND2BCh3 ==null then
ND2BCh3=[[As a reward, you will receive items that raise your XP.]]end;if Field.hasArenaBonus()then
Linne.Wait(AtYtR,0.5)Linne.Inputing(AtYtR)Linne.Wait(AtYtR,1.5)
Linne.Receive(AtYtR,ND2BCh3)end;Wait(2.0)
local IODBg=Adv.question([[Take a look?]],[[Yes|No]],0,true)
if IODBg==0 then RemoveLinneEvent("NNanase",IODBg)
UI.closeLinne()Transition.setOutdoor("","In Front of Arena")
local YRDu=Domain.getCurrentStorySeasonType()local CWRiP
if YRDu==StorySeasonType.AutumnSummer then CWRiP="_Autumn"else CWRiP=""end
Exit_FieldAndChangeFast("MainStreet"..CWRiP,"ArenaPoint")elseif IODBg==1 then RemoveLinneEvent("NNanase",IODBg)end end
function NNanaseMessageOnMC01Day01(LB0A)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(LB0A)Linne.Wait(LB0A,1.5)
Linne.Receive(LB0A,[[You can also use the arena during your free time.]])
if Field.hasArenaBonus()then Linne.Wait(LB0A,0.5)
Linne.Inputing(LB0A)Linne.Wait(LB0A,1.5)
Linne.Receive(LB0A,[[Each day you visit, you will receive items that raise your XP.]])end;WaitTap()RemoveLinneEvent("NNanase")end
function NNanaseMessageOnMC01Day02(dl)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(dl)Linne.Wait(dl,1.5)
Linne.Receive(dl,[[Training at the arena is also an easy way to earn GP.]])
NNanaseLinneEnd(dl,[[Here is your allotment of XP-increasing items for today.]])end
function NNanaseMessageOnMC01Day03(sKPjQkdn)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(sKPjQkdn)Linne.Wait(sKPjQkdn,1.5)
Linne.Receive(sKPjQkdn,[[Lv. 3 training battles reward you with resources for upgrading Memorias of specific types.]])
NNanaseLinneEnd(sKPjQkdn,[[Here is your allotment of XP-increasing items for today.]])end
function NNanaseMessageOnMC01Day04(HHH9IlJp)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(HHH9IlJp)Linne.Wait(HHH9IlJp,1.5)
Linne.Receive(HHH9IlJp,[[Today, we are conducting calibration tests in the arena.]])Linne.Wait(HHH9IlJp,0.5)Linne.Inputing(HHH9IlJp)
Linne.Wait(HHH9IlJp,1.5)
Linne.Receive(HHH9IlJp,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(HHH9IlJp)end
function NNanaseMessageOnMC01Day05(uYz2ryy4)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(uYz2ryy4)Linne.Wait(uYz2ryy4,1.5)
Linne.Receive(uYz2ryy4,[[You can undergo training to learn the intricacies of battle.]])Linne.Wait(uYz2ryy4,0.5)Linne.Inputing(uYz2ryy4)
Linne.Wait(uYz2ryy4,1.5)
Linne.Receive(uYz2ryy4,[[Clearing this training for the first time will earn you a reward.]])
NNanaseLinneEnd(uYz2ryy4,[[In addition, you will receive items that raise your experience today.]])end
function NNanaseMessageOnMC01Day07(zVPRGDnG)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(zVPRGDnG)Linne.Wait(zVPRGDnG,1.5)
Linne.Receive(zVPRGDnG,[[Lv. 4 training battles reward you with more type-specific Memoria-upgrading resources.]])NNanaseLinneEnd(zVPRGDnG)end
function NNanaseMessageOnMC01Day09(IKxw)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(IKxw)Linne.Wait(IKxw,1.5)
Linne.Receive(IKxw,[[Today, we are conducting calibration tests in the arena.]])Linne.Wait(IKxw,0.5)Linne.Inputing(IKxw)
Linne.Wait(IKxw,1.5)
Linne.Receive(IKxw,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Wait(IKxw,0.5)Linne.Inputing(IKxw)
Linne.Wait(IKxw,1.5)
Linne.Receive(IKxw,[[It is important that you earn GP to purchase better equipment.]])NNanaseLinneEnd(IKxw)end
function NNanaseMessageOnMC01Day10(w0)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(w0)Linne.Wait(w0,1.5)
Linne.Receive(w0,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(w0,0.5)Linne.Inputing(w0)
Linne.Wait(w0,1.5)
Linne.Receive(w0,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Wait(w0,0.5)Linne.Inputing(w0)
Linne.Wait(w0,1.5)
Linne.Receive(w0,[[We have also added Lv. 5 training battles. If you think you're up to the challenge, please feel free to try them out.]])NNanaseLinneEnd(w0)end
function NNanaseMessageOnMC02Day03(UgXzI_C)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(UgXzI_C)Linne.Wait(UgXzI_C,1.5)
Linne.Receive(UgXzI_C,[[You can freely adjust this training to practice combat.]])Linne.Wait(UgXzI_C,0.5)Linne.Inputing(UgXzI_C)
Linne.Wait(UgXzI_C,1.5)
Linne.Receive(UgXzI_C,[[I recommend reviewing your squad composition before you start.]])Linne.Wait(UgXzI_C,0.5)Linne.Inputing(UgXzI_C)
Linne.Wait(UgXzI_C,1.5)
Linne.Receive(UgXzI_C,[[Also, the arena's training exercises have been renewed.]])
NNanaseLinneEnd(UgXzI_C,[[Here is your allotment of XP-increasing items for today.]])end
function NNanaseMessageOnMC02Day07(MLFLplLe)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(MLFLplLe)Linne.Wait(MLFLplLe,1.5)
Linne.Receive(MLFLplLe,[[Training regularly in the arena will help you all down the line.]])NNanaseLinneEnd(MLFLplLe)end
function NNanaseMessageOnMC02Day12(jwq)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(jwq)Linne.Wait(jwq,1.5)
Linne.Receive(jwq,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(jwq,0.5)Linne.Inputing(jwq)
Linne.Wait(jwq,1.5)
Linne.Receive(jwq,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(jwq)end
function NNanaseMessageOnMC02Day18(kw3ei0a)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(kw3ei0a)Linne.Wait(kw3ei0a,1.5)
Linne.Receive(kw3ei0a,[[Arena training is also important for gathering resources that improve your squad units.]])NNanaseLinneEnd(kw3ei0a)end
function NNanaseMessageOnMC02Day21(EspneS5)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(EspneS5)Linne.Wait(EspneS5,1.5)
Linne.Receive(EspneS5,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(EspneS5,0.5)Linne.Inputing(EspneS5)
Linne.Wait(EspneS5,1.5)
Linne.Receive(EspneS5,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(EspneS5)end
function NNanaseMessageOnMC02Day23(LZeg0)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(LZeg0)Linne.Wait(LZeg0,1.5)
Linne.Receive(LZeg0,[[You can undergo training modeled after special scenarios.]])Linne.Wait(LZeg0,0.5)Linne.Inputing(LZeg0)
Linne.Wait(LZeg0,1.5)
Linne.Receive(LZeg0,[[It will surely help you increase the breadth of your strategy.]])Linne.Wait(LZeg0,0.5)Linne.Inputing(LZeg0)
Linne.Wait(LZeg0,1.5)
Linne.Receive(LZeg0,[[Clearing this training for the first time will earn you a reward.]])Linne.Wait(LZeg0,0.5)
NNanaseLinneEnd(LZeg0,[[In addition, you will receive items that raise your experience today.]])end
function NNanaseMessageOnMC03Day05(OJZ)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(OJZ)Linne.Wait(OJZ,1.5)
Linne.Receive(OJZ,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(OJZ,0.5)Linne.Inputing(OJZ)
Linne.Wait(OJZ,1.5)
Linne.Receive(OJZ,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(OJZ)end
function NNanaseMessageOnMC03Day07(nmuj)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(nmuj)Linne.Wait(nmuj,1.5)
Linne.Receive(nmuj,[[Lv. 2 training battles have been added to the arena.]])Linne.Wait(nmuj,0.5)Linne.Inputing(nmuj)
Linne.Wait(nmuj,1.5)
Linne.Receive(nmuj,[[We've also added new exercises to Battle Familiarization.]])Linne.Wait(nmuj,0.5)Linne.Inputing(nmuj)
Linne.Wait(nmuj,1.5)
Linne.Receive(nmuj,[[You can undergo advanced training to learn the intricacies of battle.]])Linne.Wait(nmuj,0.5)Linne.Inputing(nmuj)
Linne.Wait(nmuj,1.5)
Linne.Receive(nmuj,[[Please make good use of the arena in order to prepare for even greater challenges.]])
NNanaseLinneEnd(nmuj,[[In addition, you will receive items that raise your experience today.]])end
function NNanaseMessageOnMC03Day09(bP)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(bP)Linne.Wait(bP,1.5)
Linne.Receive(bP,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(bP,0.5)Linne.Inputing(bP)
Linne.Wait(bP,1.5)
Linne.Receive(bP,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(bP)end
function NNanaseMessageOnMC03Day15(b4IqQW)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(b4IqQW)Linne.Wait(b4IqQW,1.5)
Linne.Receive(b4IqQW,[[If you are able to handle the current training regimes, then it is a sure sign that you have grown strong enough to proceed further with your main missions.]])NNanaseLinneEnd(b4IqQW)end
function NNanaseMessageOnMC03Day17(iuGb)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Quest_00664_v004_RKayamori",
nil)return end
Linne.Inputing(iuGb)Linne.Wait(iuGb,1.5)
Linne.Receive(iuGb,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(iuGb,0.5)Linne.Inputing(iuGb)
Linne.Wait(iuGb,1.5)
Linne.Receive(iuGb,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(iuGb)end
function NNanaseMessageOnMC04Day02(koZU)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(koZU)Linne.Wait(koZU,1.5)
Linne.Receive(koZU,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(koZU,0.5)Linne.Inputing(koZU)
Linne.Wait(koZU,1.5)
Linne.Receive(koZU,[[If you complete the specified battles, you shall receive additional GP as a reward.]])NNanaseLinneEnd(koZU)end
function NNanaseMessageOnMC04Day05(C)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(C)Linne.Wait(C,1.5)
Linne.Receive(C,[[Even with a lot of frontline experience under your belt, training in the arena should still be of great help to you.]])NNanaseLinneEnd(C)end
function NNanaseMessageOnMC04Day07(nmJGp_)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(nmJGp_)Linne.Wait(nmJGp_,1.5)
Linne.Receive(nmJGp_,[[We've added exercises modeled after more difficult scenarios to test how you've refined your squad composition.]])Linne.Wait(nmJGp_,0.5)Linne.Inputing(nmJGp_)
Linne.Wait(nmJGp_,1.5)
Linne.Receive(nmJGp_,[[It will surely help you increase the breadth of your strategy.]])Linne.Wait(nmJGp_,0.5)Linne.Inputing(nmJGp_)
Linne.Wait(nmJGp_,1.5)
Linne.Receive(nmJGp_,[[Please make good use of the arena in order to prepare for the challenges ahead.]])
NNanaseLinneEnd(nmJGp_,[[In addition, you will receive items that raise your experience today.]])end
function NNanaseMessageOnMC04Day11(h0v3PIV)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(h0v3PIV)Linne.Wait(h0v3PIV,1.5)
Linne.Receive(h0v3PIV,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(h0v3PIV,0.5)Linne.Inputing(h0v3PIV)
Linne.Wait(h0v3PIV,1.5)
Linne.Receive(h0v3PIV,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Inputing(h0v3PIV)Linne.Wait(h0v3PIV,1.5)
Linne.Receive(h0v3PIV,[[We've also added Lv. 3 training battles. If you think you're up to the challenge, please feel free to try them out.]])NNanaseLinneEnd(h0v3PIV)end
function NNanaseMessageOnMC04BDay00(Uc)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(Uc)Linne.Wait(Uc,1.5)
Linne.Receive(Uc,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(Uc,0.5)Linne.Inputing(Uc)
Linne.Wait(Uc,1.5)
Linne.Receive(Uc,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Inputing(Uc)Linne.Wait(Uc,1.5)
Linne.Receive(Uc,[[Also, the training regimes have been renewed.]])NNanaseLinneEnd(Uc)end
function NNanaseMessageOnMC04BDay07(JSkUQL)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(JSkUQL)Linne.Wait(JSkUQL,1.5)
Linne.Receive(JSkUQL,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(JSkUQL,0.5)Linne.Inputing(JSkUQL)
Linne.Wait(JSkUQL,1.5)
Linne.Receive(JSkUQL,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Inputing(JSkUQL)Linne.Wait(JSkUQL,1.5)
Linne.Receive(JSkUQL,[[We've also added Lv. 2 training battles. If you think you're up to the challenge, please feel free to try them out.]])NNanaseLinneEnd(JSkUQL)end
function NNanaseMessageOnMC04BDay08(PTUZ2v)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(PTUZ2v)Linne.Wait(PTUZ2v,1.5)
Linne.Receive(PTUZ2v,[[We've added exercises modeled after more difficult scenarios to test how you've refined your squad composition.]])Linne.Wait(PTUZ2v,0.5)Linne.Inputing(PTUZ2v)
Linne.Wait(PTUZ2v,1.5)
Linne.Receive(PTUZ2v,[[It will surely help you increase the breadth of your strategy.]])Linne.Wait(PTUZ2v,0.5)Linne.Inputing(PTUZ2v)
Linne.Wait(PTUZ2v,1.5)
Linne.Receive(PTUZ2v,[[Please make good use of the arena in order to prepare for the challenges ahead.]])
NNanaseLinneEnd(PTUZ2v,[[In addition, you will receive items that raise your experience today.]])end
function NNanaseMessageOnMC04BDay13(qlZeO3Pr)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(qlZeO3Pr)Linne.Wait(qlZeO3Pr,1.5)
Linne.Receive(qlZeO3Pr,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(qlZeO3Pr,0.5)Linne.Inputing(qlZeO3Pr)
Linne.Wait(qlZeO3Pr,1.5)
Linne.Receive(qlZeO3Pr,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Inputing(qlZeO3Pr)Linne.Wait(qlZeO3Pr,1.5)
Linne.Receive(qlZeO3Pr,[[We've also added Lv. 3 training battles. If you think you're up to the challenge, please feel free to try them out.]])NNanaseLinneEnd(qlZeO3Pr)end
function NNanaseMessageOnMC05ADay02(fG9zS)if(Quest.isHasAnyActive())then Wait(1)
Adv.kayamoriTalk([[Kinda busy now. I'll read it later.]],"VC_Z_901100052_RKayamori",
nil)return end
Linne.Inputing(fG9zS)Linne.Wait(fG9zS,1.5)
Linne.Receive(fG9zS,[[We are conducting calibration tests in the arena today as well.]])Linne.Wait(fG9zS,0.5)Linne.Inputing(fG9zS)
Linne.Wait(fG9zS,1.5)
Linne.Receive(fG9zS,[[If you complete the specified battles, you shall receive additional GP as a reward.]])Linne.Inputing(fG9zS)Linne.Wait(fG9zS,1.5)
Linne.Receive(fG9zS,[[We've also added Lv. 4 training battles. If you think you're up to the challenge, please feel free to try them out.]])NNanaseLinneEnd(fG9zS)end