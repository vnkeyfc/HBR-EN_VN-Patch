local w0qyLbH="Event"..WorldLabel()
function preload()
EventScene("ShoppingStreet","Assets/Lua/Story/MC02/Day08/World/MC02_08_08_01_ShoppingStreet.unity")
EventScene("Dormitory1F","Assets/Lua/Story/MC02/Day08/World/MC02_08_08_01_Dormitory1F.unity")end;function init()refresh()end
function refresh()
SetPeriodText("Kill some time around town!")Field.setActiveWithTag("Gate",false)
Field.createFollower("Byakko")Field.createFollower("EAoi")
local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then Sound.playBGM("SB0020",1,2)
StartEvent_NextWorldEventStep(w0qyLbH,StartWorld)elseif nsgji==1 then Sound.playBGM("SB0020",1,2)if
GetLocalFlag("gaya_done")==0 then StartEventNoLock(GayaingAoi)end
if
GetLocalFlag("Miemie")==0 then ShowMapDestinationIcon("MiemieGate")
TouchEvent("MiemieGate",VisitMiemie)else HideMapDestinationIcon("MiemieGate")end
if GetLocalFlag("Maguwai")==0 then
ShowMapDestinationIcon("MaguwaiGate")TouchEvent("MaguwaiGate",VisitMaguwai)else
HideMapDestinationIcon("MaguwaiGate")end
if GetLocalFlag("Popotan")==0 then
ShowMapDestinationIcon("PopotanGate")TouchEvent("PopotanGate",VisitPopotan)else
HideMapDestinationIcon("PopotanGate")end
if GetLocalFlag("Battle9")==0 then
ShowMapDestinationIcon("Battle9Gate")TouchEvent("Battle9Gate",VisitBattle9)else
HideMapDestinationIcon("Battle9Gate")end
if GetLocalFlag("LonelyMart")==0 then
ShowMapDestinationIcon("LonelyMartGate")TouchEvent("LonelyMartGate",VisitLonelyMart)else
HideMapDestinationIcon("LonelyMartGate")end elseif nsgji==2 then Sound.playBGM("SB0015")
StartEvent_NextWorldEventStep(w0qyLbH,StartDormitory1F)elseif nsgji==3 then Sound.playBGM("SB0015")
SetPeriodText("Take Aoi to her room!")ShowMapDestinationIcon("31ARoomGate")
StartEventNoLock(GayaTalkEAoiAndByakko)
Field.returnToWayPoint("BlockerLeft","31ARoomPointLeft",[[Uhh...they're not over here.]],"VC_MC02_08_08_01_World_00000_RKayamori")
TouchEvent("31ARoomGate",function()Yield(FinishWorld)Exit_World()end)end end
function StartWorld()Field.playerComeIn("StartPoint",Vec(0,0,3))
Field.startEvent()Field.setTalkCamera("Player")
Adv.kayamoriTalk([[Alright, Aoi, follow me.]],"VC_MC02_08_08_01_World_00001_RKayamori",
nil)Field.finishEvent()end
function GayaingAoi()SetLocalFlag("gaya_done",1)Wait(1)
Field.talkByGayaBalloon("Follower/EAoi",[[Um... Ruka?]],
nil,nil,nil,nil,"VC_MC02_08_08_01_World_00002_EAoi")
Field.talkByGayaBalloon("Follower/EAoi",[[What are we doing here?]],nil,nil,nil,nil,"VC_MC02_08_08_01_World_00003_EAoi")end
function GoToDormitory1F()Wait(1)
if GetLocalFlag("VisitCount")>=4 then
Adv.question("Well, that was fun.",[[Time to head back]])Transition.setOutdoor("","Dormitories")
Transition.start()NextWorldEventStep(w0qyLbH,false)Wait(2)
Exit_FieldAndChange("Dormitory1F","StartPoint")else
local bClTIa=Adv.question("Well, that was fun.",[[Time to head back|Keep exploring]])
if bClTIa==0 then NextWorldEventStep(w0qyLbH,false)
Transition.setOutdoor("","Dormitories")Transition.start()Wait(2)
Exit_FieldAndChange("Dormitory1F","StartPoint")else IncLocalFlag("VisitCount")end end;Field.refreshScripts()end
function VisitMiemie()Field.deleteGayaBalloonAll("Follower/EAoi")
Field.goToMiemie(function()
SetFlag("展望露天風呂を知っている_2章",1)Field.stopTaskKey("Player")
Field.turnToWait("Player",45,0)Wait(1)
local rDzL7SVO=Adv.loadBGAsync("Background/PublicBath/PublicBath")local BW0WFP=Adv.characterAsync("RKayamori")
local X8=Adv.characterAsync("EAoi")local JQT=Adv.characterAsync("Byakko")
Field.startNovel(function()
Transition.start(1)Wait(1.5)
Layout.createStageZoomOut(rDzL7SVO,Position.BG_CENTER)
Layout.show({BW0WFP,"000102"},{X8,"080303"})Transition.finish()Wait(1.5)
Adv.talkWithFacial(nil,nil,BW0WFP,[[Say hello to the open-air hot springs.]],"VC_MC02_08_08_01_World_00004_RKayamori")Adv.act(BW0WFP,"000301")
Adv.talkWithFacial("050103",nil,X8,[[It takes a lot of courage to enter these...]],"VC_MC02_08_08_01_World_00005_EAoi")
Adv.talkWithFacial("110302",nil,BW0WFP,[[I want to go in one with you!]],"VC_MC02_08_08_01_World_00006_RKayamori")
Adv.act(X8,"070002",AdvCharacterMouth.Mouth02)
Adv.talkWithFacial(nil,nil,X8,[[My apologies... I need to think on this.]],"VC_MC02_00506_v001_EAoi")
Adv.talkWithFacial("160301",nil,BW0WFP,[[Oof, my heart.]],"VC_MC02_08_08_01_World_00008_RKayamori")Adv.act(X8,"000202")
Adv.talkWithFacial("110201",nil,BW0WFP,[[Fine. Next time it's you 'n' me, buddy.]],"VC_MC02_08_08_01_World_00009_RKayamori")
Layout.createStageFixBg(rDzL7SVO,Position.BG_LEFT)Layout.show(JQT)
Adv.act(X8,"010301",AdvCharacterMouth.Mouth01,0.4)
Adv.talkWithFacial(nil,nil,JQT,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")Transition.start()Layout.show()
Adv.remove(rDzL7SVO)Wait(2)SetLocalFlag("Miemie",1)end)Field.setCameraCompositionEnabled(false)
Transition.finish()Field.playerComeIn("MiemiePoint",Vec(-3))end)
if GetLocalFlag("Miemie")==1 then GoToDormitory1F()end end
function VisitMaguwai()
Field.goToMaguwai(function()Field.stopTaskKey("Player")Wait(1)
local AtYtR=Adv.loadBGAsync("Background/GeneralShop/GeneralShop")Adv.presetBG(AtYtR,0,0,1.25)
local ND2BCh3=Adv.characterAsync("RKayamori")local IODBg=Adv.characterAsync("EAoi")
local YRDu=Adv.characterAsync("Byakko")
Field.startNovel(function()Transition.start(1)
Layout.createStageZoomOut(AtYtR,Position.BG_CENTER)Wait(1.5)
Layout.show({ND2BCh3,"110101"},{IODBg,"010301"})Transition.finish()Wait(1.5)
Adv.talkWithFacial(nil,nil,ND2BCh3,[[They sure have a lot of trendy goods.]],"VC_MC02_08_08_01_World_00011_RKayamori")Adv.act(ND2BCh3,"110201")
Adv.talkWithFacial("010202",nil,IODBg,[[It's so cute!]],"VC_MC02_08_08_01_World_00012_EAoi")Adv.scale(AtYtR,1.25)
Layout.createStageFixBg(AtYtR,Position.BG_LEFT)Layout.show(YRDu)
Adv.talkWithFacial(nil,nil,YRDu,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")
Layout.createStageFixBg(AtYtR,Position.BG_CENTER)Layout.show(ND2BCh3,IODBg)
Adv.actDelay(1,ND2BCh3,"0003",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("030202",nil,IODBg,[[But I need to focus on training and the operation, not this!]],"VC_MC02_08_08_01_World_00014_EAoi")
Adv.talkWithFacial(nil,nil,YRDu,[[Vrrawr...]],"VC_MC02_02_06_01_Novel_00197_Byakko")Adv.actDelay(2,IODBg,"080102")
Adv.talkWithFacial("110301",nil,ND2BCh3,[[We're girls. I don't think there's anything wrong with us having a little fun every now and then.]],"VC_MC02_08_08_01_World_00016_RKayamori")
Adv.talkWithFacial("080101",nil,IODBg,[[Is that so?]],"VC_MC02_08_08_01_World_00017_EAoi")Adv.actDelay(1,IODBg,"080201")
Adv.talkWithFacial("110202",nil,ND2BCh3,[[Isn't that right, Byakko?]],"VC_MC02_08_08_01_World_00018_RKayamori")
Adv.talkWithFacial(nil,nil,YRDu,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")Transition.start()Layout.show()
Adv.remove(AtYtR)Wait(2)SetLocalFlag("Maguwai",1)end)Field.setCameraCompositionEnabled(false)
Transition.finish()
Field.playerComeIn("MaguwaiPoint",Vec(3,0,-0.5))end)
if GetLocalFlag("Maguwai")==1 then GoToDormitory1F()end end
function VisitPopotan()
Field.goToPopotan(function()Field.stopTaskKey("Player")Wait(1)
local CWRiP=Adv.loadBGAsync("Background/Coffeeshop/Coffeeshop_Noon")local LB0A=Adv.characterAsync("RKayamori")
local dl=Adv.characterAsync("EAoi")local sKPjQkdn=Adv.characterAsync("Byakko")
Field.startNovel(function()
Transition.start(1)Wait(1.5)
Layout.createStageZoomOut(CWRiP,Position.BG_CENTER)
Layout.show({LB0A,"000101"},{dl,"010301"})Transition.finish()
Adv.talkWithFacial(nil,nil,LB0A,[[Looks like a café.]],"VC_MC02_08_08_01_World_00020_RKayamori")Adv.actDelay(1,LB0A,"000301")
Adv.talkWithFacial("010202",nil,dl,[[It's a little small, but the art and decor are really chic.]],"VC_MC02_00507_v001_EAoi")
Adv.talkWithFacial("110201",nil,LB0A,[[I could totally go for a parfait.]],"VC_MC02_08_08_01_World_00022_RKayamori")Adv.scale(CWRiP,1.25)
Layout.createStageFixBg(CWRiP,Position.BG_LEFT)Layout.show(sKPjQkdn)
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")
Layout.createStageFixBg(CWRiP,Position.BG_CENTER)Layout.show(LB0A,dl)
Adv.talkWithFacial(nil,nil,LB0A,[[You too, Byakko?]],"VC_MC02_08_08_01_World_00024_RKayamori")
Adv.talkWithFacial("080101",nil,dl,[[Wow, they even have parfaits?]],"VC_MC02_08_08_01_World_00025_EAoi")
Adv.talkWithFacial("000302",nil,LB0A,[[I've never ordered one, but any café without parfaits is a total rip-off.]],"VC_MC02_08_08_01_World_00026_RKayamori")
Adv.talkWithFacial("010101",nil,dl,[[Diners and other chain restaurants might tend to have them, but cafés are a different story.]],"VC_MC02_08_08_01_World_00027_EAoi")
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")Adv.act(dl,"0102",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial("110201",
nil,LB0A,[[Guess I'll have one next time.]],"VC_MC02_08_08_01_World_00029_RKayamori")Transition.start()Layout.show()
Adv.remove(CWRiP)Wait(2)SetLocalFlag("Popotan",1)end)Field.setCameraCompositionEnabled(false)
Transition.finish()
Field.playerComeIn("PopotanPoint",Vec(-3,0,0.5))end)
if GetLocalFlag("Popotan")==1 then GoToDormitory1F()end end
function VisitBattle9()
Field.goToBattle9(function()Field.stopTaskKey("Player")
local HHH9IlJp=Adv.loadBGAsync("Background/MovieTheater/MovieTheater")Wait(1)Adv.waitAsyncInstanceAll()
Adv.presetBG(HHH9IlJp,0,0,1.25)local uYz2ryy4=Adv.characterAsync("RKayamori")
local zVPRGDnG=Adv.characterAsync("EAoi")local IKxw=Adv.characterAsync("Byakko")
Field.startNovel(function()
Transition.start(1)Wait(1.5)
Layout.createStageZoomOut(HHH9IlJp,Position.BG_LEFT)Layout.show(IKxw)Transition.finish()Wait(1.5)
Adv.talkWithFacial(
nil,nil,IKxw,[[Grawr!]],"VC_GeneralTalk_31B_03_00001_Byakko")
Layout.createStageFixBg(HHH9IlJp,Position.BG_CENTER)
Layout.show({uYz2ryy4,"080201"},{zVPRGDnG,"080201"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh, looks like that poster's caught Byakko's attention.]],"VC_MC02_08_08_01_World_00031_RKayamori")Adv.actDelay(1,zVPRGDnG,"000101")
Adv.talkWithFacial("0003",nil,uYz2ryy4,[[Humanity's in peril. Do we really have time for movies?]],"VC_MC02_Z900100020_RKayamori")
Adv.talkWithFacial("010101",nil,zVPRGDnG,[[In the Gulf War, the government sent portable games as part of their aid package. I guess even soldiers need their downtime.]],"VC_MC02_Z900100021_EAoi")
Adv.talkWithFacial("000301",nil,uYz2ryy4,[[Whoa, I didn't know that.]],"VC_MC02_Z900100022_RKayamori")Transition.start()Layout.show()
Adv.remove(HHH9IlJp)Wait(2)SetLocalFlag("Battle9",1)end)Field.setCameraCompositionEnabled(false)
Transition.finish()
Field.playerComeIn("Battle9Point",Vec(1,0,-1.5))end)
if GetLocalFlag("Battle9")==1 then GoToDormitory1F()end end
function VisitLonelyMart()
Field.goToLonelyMart(function()Field.stopTaskKey("Player")Wait(1)
local w0=Adv.loadBGAsync("Background/ConvenienceStore/ConvenienceStore")local UgXzI_C=Adv.characterAsync("RKayamori")
local MLFLplLe=Adv.characterAsync("EAoi")local jwq=Adv.characterAsync("Byakko")
Field.startNovel(function()
Transition.start(1)Wait(1.5)
Layout.createStageZoomOut(w0,Position.BG_CENTER)Layout.show({UgXzI_C,"000201"},MLFLplLe)
Transition.finish()Wait(1.5)
Adv.talkWithFacial(nil,nil,UgXzI_C,[[It's weird how we have a convenience store in these times.]],"VC_MC02_08_08_01_World_00035_RKayamori")
Adv.talkWithFacial("020101",nil,MLFLplLe,[[The dome dwellers are experiencing hardship, yet we're in the lap of luxury...]],"VC_MC02_08_08_01_World_00036_EAoi")Adv.actDelay(2,MLFLplLe,"000102")
Adv.talkWithFacial("000301",nil,UgXzI_C,[[Well, if we save everyone, we'll have earned it.]],"VC_MC02_08_08_01_World_00037_RKayamori")Layout.createStageFixBg(w0,Position.BG_LEFT)
Layout.show({jwq,"000101"})
Adv.talkWithFacial(nil,nil,jwq,[[Grrar vrraaar.]],"VC_MC02_08_08_01_World_00038_Byakko")Layout.createStageFixBg(w0,Position.BG_CENTER)
Layout.show({UgXzI_C,"080201"},{MLFLplLe,"080202"})Adv.actDelay(1,MLFLplLe,"000101")
Adv.talkWithFacial("1103",nil,UgXzI_C,[[See? Even Byakko agrees!]],"VC_MC02_08_08_01_World_00039_RKayamori")
Adv.talkWithFacial("0900",nil,MLFLplLe,[[Then let's hope we succeed.]],"VC_MC02_08_08_01_World_00040_EAoi")Transition.start()Layout.show()Adv.remove(w0)
Wait(2)SetLocalFlag("LonelyMart",1)end)Field.setCameraCompositionEnabled(false)
Transition.finish()
Field.playerComeIn("LonelyMartPoint",Vec(3,0,-2))end)
if GetLocalFlag("LonelyMart")==1 then GoToDormitory1F()end end
function StartDormitory1F()
Field.playerComeIn("StartPoint",Vec(0,0,-2))
Adv.kayamoriTalk([[Okay, let's go.]],"VC_MC02_08_08_01_World_00041_RKayamori",nil)end
function GayaTalkEAoiAndByakko()
Field.talkByGayaBalloon("Follower/EAoi",[[Let's go...where, exactly?]],nil,nil,nil,nil,"VC_MC02_08_08_01_World_00042_EAoi")
Field.talkByGayaBalloon("Follower/Byakko",[[Vrrr?]],nil,nil,nil,nil,"VC_GeneralTalk_31B_02_00001_Byakko")end;function FinishWorld()
Field.playerGetOut("31ARoomPoint",Vec(0,0,2))end