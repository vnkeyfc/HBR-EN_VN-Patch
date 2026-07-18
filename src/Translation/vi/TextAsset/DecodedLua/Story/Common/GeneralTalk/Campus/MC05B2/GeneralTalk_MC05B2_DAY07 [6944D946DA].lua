function init()refresh()end
function refresh()
TouchEventGeneralTalk("YIzumi",TalkToYIzumi)EmptyEvent("TTojo")
ReachEventNoLock("Blocker_Move",TalkToKaren)
if GetLocalFlag("move_Karen")==0 then EmptyEvent("Karen")
EmptyEvent("MAikawa")else EmptyEvent("Karen_1")EmptyEvent("MAikawa_1")end;TouchEventGeneralTalk("SMinase",TalkToSMinase)
EmptyEvent("TKunimi")EmptyEvent("Byakko")
TouchEventGeneralTalk("IMinase",TalkToIMinase)TouchEventGeneralTalk("KHiiragi",TalkToKHiiragi)
TouchEventGeneralTalk("AMizuhara",TalkToAMizuhara)TouchEventGeneralTalk("KMaruyama",TalkToKMaruyama)
EmptyEvent("MYanagi")TouchEventGeneralTalk("CMatsuoka",TalkToCMatsuoka)
EmptyEvent("MKurosawa")TouchEventGeneralTalk("SHanamura",TalkToSHanamura)
TouchEventGeneralTalk("YShirakawa",TalkToYShirakawa)
TouchEventGeneralTalk("MTsukishiro",TalkToMTsukishiro)TouchEventGeneralTalk("MKiryu",TalkToMKiryu)
TouchEventGeneralTalk("CSugahara",TalkToCSugahara)
TouchEventGeneralTalk("HOgasawara",TalkToHOgasawara)end
function TalkToYIzumi()EmptyEvent("YIzumi")
local A=Adv.characterAsync("YIzumi")local w0qyLbH=Adv.characterAsync("TTojo")
Field.startTalkEx("YIzumi",FaceToFaceMode.None,FaceToFaceMode.None,function()Field.setLookAtAngle("YIzumi",40,
nil,0.6)
Layout.showEx({w0qyLbH,"270201"},{A,"000103"})Field.setLookAtAngle("TTojo",-40,nil,0.6)
Adv.actDelayWrapper(w0qyLbH,{{0,"270201"},{0.6,"270301"}},function()
Adv.talkWithFacial(
nil,nil,A,[[It's great having you be awakened and helpful, but is staying like that not going to cause problems?]],"VC_Common_v009_00519_YIzumi")end)
Adv.actDelayWrapper(w0qyLbH,{{0,"270004"},{2,"270301"}},function()
Adv.talkWithFacial(nil,nil,w0qyLbH,[[That's a very valid worry, yes, but I need to figure something out before things go KA-BOOM.]],"VC_Common_v009_00520_TTojo")end)Field.disableLookAt("TTojo",0.6)Layout.showEx()
Field.disableLookAt("YIzumi",0.6)end)end
function TalkToKaren()
if GetLocalFlag("move_Karen")==0 then
if
GetLocalFlag("stop_Karen")==0 then Field.waitAsyncInstanceV2("MAikawa")
Field.waitAsyncInstanceV2("Karen")
local nsgji=Routine(function()Field.changeAnimation("Karen","FieldRun",1,0)Field.moveTo("Karen",Vec(53.230,
-6.100,32.870),3)
Field.waitTaskKey("Karen")SetLocalFlag("stop_Karen",1)
Field.turnToTarget("Karen","MAikawa",0.3)Wait(0.3)
Field.changeAnimation("Karen","FieldIdle",1,0.3)Field.changeAnimation("MAikawa","FieldIdle",1,0.5)
Wait(0.3)Field.turnToTarget("MAikawa","Karen",0.5)end)Wait(1.5)
Field.talkByGayaBalloonJustOnce("Karen",[[Teach me your psychic ways!\nI will evolve from psycho killer\nto psycho kicker!]],
nil,"Normal",nil,nil,"VC_Common_v009_00521_Karen")StopRoutine(nsgji)
Field.talkByGayaBalloonJustOnce("MAikawa",[[What, ya gonna go lose yer mind\non a soccer field?!]],
nil,"Normal",nil,nil,"VC_Common_v009_00522_MAikawa")else end else Field.waitAsyncInstanceV2("MAikawa_1")
Field.waitAsyncInstanceV2("Karen_1")end;SetLocalFlag("move_Karen",1)end
function TalkToSMinase()EmptyEvent("SMinase")
local bClTIa=Adv.characterAsync("TKunimi")local rDzL7SVO=Adv.characterAsync("SMinase")
local BW0WFP=Adv.characterAsync("Byakko")
Field.startTalkEx("SMinase",FaceToFaceMode.None,FaceToFaceMode.None,function()
Field.setLookAtTarget("SMinase","TKunimi",0.6)
Layout.showEx({bClTIa,"000201"},{rDzL7SVO,"090102"})
Adv.actDelayWrapper(bClTIa,{{0,"000201"},{0.6,"000301"},{2,"250301"}},function()
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[Go on, open up Byakko's mouth and stick your head in, meow. You'll understand her better, meow.]],"VC_Common_v009_00524_SMinase")end)
Adv.talkWithFacial("250302",nil,bClTIa,[[I prefer to keep my head on my shoulders!]],"VC_Common_v009_00523_TKunimi")Layout.showEx()
Layout.showEx({BW0WFP,"000201"})
Adv.talkWithFacial(nil,nil,BW0WFP,[[Vrrar!!!]],"VC_MC02_02_06_01_Novel_00058_Byakko")Layout.showEx()
Layout.showEx({bClTIa,"250202"},{rDzL7SVO,"090102"})Adv.shake(bClTIa,0.5,0.1)
Adv.talkWithFacial(nil,nil,bClTIa,[[GIYAAAAAAHHH!!!]],"VC_Z_905800300_Tkunimi")Adv.stopShake(bClTIa)Layout.showEx()
Field.disableLookAt("SMinase",0.8)end)end
function TalkToIMinase()EmptyEvent("IMinase")
local X8=Adv.characterAsync("IMinase")
Field.startTalkEx("IMinase",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({X8,"030201"})
Adv.talkWithFacial(nil,nil,X8,[[Wouldn't "Duel" have been fine? Why call it "Duelo"? Is it some kind of trademark issue? In this day and age?]],"VC_Common_v009_00515_IMinase")end)end
function TalkToKHiiragi()EmptyEvent("KHiiragi")
local JQT=Adv.characterAsync("KHiiragi")
Field.startTalkEx("KHiiragi",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({JQT,"010202"})
Adv.talkWithFacial(nil,nil,JQT,[[Ichigo and Higuchi are always at each other's throats, but in a playful sort of way.]],"VC_Common_v009_00526_KHiiragi")end)end
function TalkToAMizuhara()EmptyEvent("AMizuhara")
local AtYtR=Adv.characterAsync("AMizuhara")
Field.startTalkEx("AMizuhara",FaceToFaceMode.Auto,FaceToFaceMode.Auto,function()
Layout.showEx({AtYtR,"010001"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Aye, Misato-chin is so, sooo strong.]],"VC_Common_v009_00517_AMizuhara")Layout.showEx()
Field.returnToDefaultStance("AMizuhara",0.8)end)end
function TalkToKMaruyama()EmptyEvent("KMaruyama")
local ND2BCh3=Adv.characterAsync("KMaruyama")local IODBg=Adv.characterAsync("MYanagi")
Field.startTalkEx("KMaruyama",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({ND2BCh3,"070203"})Field.setLookAtTarget("MYanagi","Player",0.6)
Adv.talkWithFacial(
nil,nil,ND2BCh3,[[We're worried about Yamawaki too...but right now, the meteoroids are a more pressing issue. We must save our strength.]],"VC_Common_v009_00533_KMaruyama")Layout.showEx()
Layout.showEx({IODBg,"070201"})
Adv.actDelayWrapper(IODBg,{{0,"070201"},{6.2,"070003"}},function()
Adv.talkWithFacial(nil,nil,IODBg,[[31-C and 31-X are currently out searching for her. Let us have faith.]],"VC_Common_v009_00534_MYanagi")end)Layout.showEx()
Field.disableLookAt("MYanagi",0.8)end)end
function TalkToCMatsuoka()EmptyEvent("CMatsuoka")
local YRDu=Adv.characterAsync("CMatsuoka")local CWRiP=Adv.characterAsync("MKurosawa")
Field.startTalkEx("CMatsuoka",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({YRDu,"010201"})Field.setLookAtTarget("MKurosawa","Player",0.6)
Adv.actDelayWrapper(YRDu,{{0,"010201"},{2.2,"010202"}},function()
Adv.talkWithFacial(
nil,nil,YRDu,[[They're running a special on superhero movies. Want to watch it with us, Kayamori?]],"VC_Common_v009_00531_CMatsuoka")end)Layout.showEx()
Layout.showEx({CWRiP,"000201"})
Adv.actDelayWrapper(CWRiP,{{0,"000201"},{2,"010002"}},function()
Adv.talkWithFacial(nil,nil,CWRiP,[[Love me some superhero flicks. Always get me fired up, don'tcha know!]],"VC_Common_v009_00532_MKurosawa")end)Layout.showEx()
Field.disableLookAt("MKurosawa",0.8)end)end
function TalkToSHanamura()EmptyEvent("SHanamura")
local LB0A=Adv.characterAsync("SHanamura")
Field.changeAnimation("SHanamura","FieldIdle",1,0.5)
Field.startTalkEx("SHanamura",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({LB0A,"010001"})
Adv.actDelayWrapper(LB0A,{{0,"010002"},{3,"010201"}},function()
Adv.talkWithFacial(nil,nil,LB0A,[[Oh, how I've longed to see you, Ruka. Why don't we relocate somewhere private, and you can strum a few notes for me?]],"VC_Common_v009_00535_SHanamura")end)end)end
function TalkToYShirakawa()EmptyEvent("YShirakawa")
local dl=Adv.characterAsync("YShirakawa")
Field.startTalkEx("YShirakawa",FaceToFaceMode.Auto,FaceToFaceMode.Auto,function()
Layout.showEx({dl,"000201"})
Adv.actDelayWrapper(dl,{{0,"000203"},{2.4,"000201"}},function()
Adv.talkWithFacial(nil,nil,dl,[[So you've heard of the matter with Yamawaki. The commander kept it quiet so as not to alarm you.]],"VC_Common_v009_00527_YShirakawa")end)end)end
function TalkToMTsukishiro()EmptyEvent("MTsukishiro")
local sKPjQkdn=Adv.characterAsync("MTsukishiro")
Field.startTalkEx("MTsukishiro",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({sKPjQkdn,"000201"})
Adv.actDelayWrapper(sKPjQkdn,{{0,"000201"},{2,"090001"}},function()
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Let me know if you ever need a pick-me-up. Coffee, tonjiru, you name it, I prepare it.]],"VC_Common_v009_00528_MTsukishiro")end)end)end
function TalkToMKiryu()EmptyEvent("MKiryu")
local HHH9IlJp=Adv.characterAsync("MKiryu")
Field.startTalkEx("MKiryu",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({HHH9IlJp,"000201"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[It is a great relief to see you unharmed, Kayamori. That goes for your companions as well, of course.]],"VC_Common_v009_00530_MKiryu")end)end
function TalkToCSugahara()EmptyEvent("CSugahara")
local uYz2ryy4=Adv.characterAsync("CSugahara")
Field.startTalkEx("CSugahara",FaceToFaceMode.Auto,FaceToFaceMode.Auto,function()
Layout.showEx({uYz2ryy4,"070201"})
Adv.actDelayWrapper(uYz2ryy4,{{0,"070201"},{3.9,"090001"},{5.3,"090201"}},function()
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[Things are so much louder...ahem, livelier, now that you're back. I don't hate it.]],"VC_Common_v009_00529_CSugahara")end)Field.returnToDefaultStance("CSugahara",0.5)end)end
function TalkToHOgasawara()EmptyEvent("HOgasawara")
local zVPRGDnG=Adv.characterAsync("HOgasawara")
Field.startTalkEx("HOgasawara",FaceToFaceMode.Face,FaceToFaceMode.Auto,function()
Layout.showEx({zVPRGDnG,"090201"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[I shall try to modify my game piece so that she wields a sword...]],"VC_Common_v009_00516_HOgasawara")end)end