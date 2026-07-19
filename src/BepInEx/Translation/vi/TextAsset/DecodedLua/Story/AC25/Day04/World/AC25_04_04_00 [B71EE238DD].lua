local w0qyLbH="Event"..WorldLabel()function preload()
EventScene("ShoppingStreet","Assets/Lua/Story/AC25/Day04/World/AC25_04_04_00_ShoppingStreet.unity")end
function init()
if
GetLocalFlag("最初")==0 then Field.setFootstepEnabled(false)end;Field.pauseEnvironmentSound()refresh()end
function refresh()Field.setActiveWithTag("Gate",false)
HideFastTravelButton()Expedition.setAutoPlayEnabled(false)
Field.createFollower("RKayamori")EmptyEvent("HOgasawara")EmptyEvent("CSugahara")
EmptyEvent("MTenne")EmptyEvent("SSakuraba")EmptyEvent("BIYamawaki")
EmptyEvent("YBungo")EmptyEvent("RMurohushi")EmptyEvent("MNikaido")
EmptyEvent("ADate")EmptyEvent("AMizuhara")EmptyEvent("IIshii")
EmptyEvent("FMikoto")EmptyEvent("Mob001")EmptyEvent("Mob002")
EmptyEvent("Mob003")EmptyEvent("Mob004")EmptyEvent("Mob005")
EmptyEvent("Mob006")EmptyEvent("Mob007")EmptyEvent("Mob008")
EmptyEvent("Mob009")EmptyEvent("Mob0010")
ReachEventNoLock("RMurohushi",AC25Gayatalk31D_01)ReachEventNoLock("MTenne",AC25Gayatalk31C_01)
ReachEventNoLock("BIYamawaki",AC25Gayatalk31C_02)ReachEventNoLock("CSugahara",AC25Gayatalk30G_04)
Field.returnToWayPoint("Blocker01","FountainPoint",[[There's still someone we haven't talked to.]],"VC_Z_903600163_EAoi","EAoi")local nsgji=GetWorldEventStep(w0qyLbH)
if nsgji==0 then
StartEvent_NextWorldEventStep(w0qyLbH,ShoppingStreetEvent01)elseif nsgji==1 then Sound.playBGM("SB0020")
Sound.playENV("EN_Trafficjam_Town_Loop",0,0)SetPeriodText("Visit the shops from before!")
if
GetLocalFlag("Miemie")==0 then ShowMapDestinationIcon("MiemieGate")
TouchEvent("MiemieGate",EVENT_Miemie)else HideMapDestinationIcon("MiemieGate")end;if GetLocalFlag("Luna")==0 then
ShowMapDestinationIcon("LunaGate")TouchEvent("LunaGate",EVENT_Luna)else
HideMapDestinationIcon("LunaGate")end
if
GetLocalFlag("Battle9")==0 then ShowMapDestinationIcon("Battle9Gate")
TouchEvent("Battle9Gate",EVENT_Battle9)else HideMapDestinationIcon("Battle9Gate")end
if GetLocalFlag("Maguwai")==0 then
ShowMapDestinationIcon("MaguwaiGate")TouchEvent("MaguwaiGate",EVENT_Maguwai)else
HideMapDestinationIcon("MaguwaiGate")end;TouchEvent("MainStreetGate",EVENT_MainStreetGate)end end
function NextStory()IncLocalFlag("EventCount02")
if
GetLocalFlag("EventCount02")>3 then Field.setCameraCompositionEnabled(false)
Sound.stopBGM(1)Wait(1)Exit_World()end end
function ShoppingStreetEvent01()Adv.fadeOut(0)
local bClTIa=Adv.characterAsync("EAoi")local rDzL7SVO=Adv.characterAsync("RKayamori")
Field.prepareEventCharacterV3("EAoi")Field.prepareEventCharacterV3("RKayamori")
Field.prepareEventCharacterV3("YIzumi")Field.prepareEventCharacterV3("TTojo")
Field.prepareEventCharacterV3("TKunimi")Field.prepareEventCharacterV3("KAsakura")
Field.prepareEventCharacterV3("MAikawa")Field.hidePartyCharacters()
Field.showAdvHudWrapper(function()
SetLocalFlag("最初",1)Field.setFootstepEnabled(true)
Sound.playBGM("SB0020")Sound.playENV("EN_Trafficjam_Town_Loop")
Field.moveBy("RKayamori",Vec(0,0,
-5),5,AnimationMode.Auto,1,1)Wait(0.5)
Field.setCameraCompositionExWithListener(Vec(1.510,2.770,6.340),Vec(0.000,200.000,0.000),30.00)Field.waitCameraComposition()
Field.setCameraCompositionExWithListener(Vec(1.510,1.070,6.340),Vec(0.000,200.000,0.000),30.00,6,1,0)Wait(0.5)Adv.fadeIn()
Field.moveBy("EAoi",Vec(0,0,-3),3,AnimationMode.Auto,1,1)Wait(0.1)
Field.moveBy("YIzumi",Vec(0,0,-3),3,AnimationMode.Auto,1,1)Wait(0.2)
Field.moveBy("TTojo",Vec(0,0,-3),3,AnimationMode.Auto,1,1)Wait(0.1)
Field.moveBy("KAsakura",Vec(0,0,-3),3,AnimationMode.Auto,1,1)Wait(0.1)
Field.moveBy("MAikawa",Vec(0,0,-3),3,AnimationMode.Auto,1,1)
Field.moveBy("TKunimi",Vec(0,0,-3),3,AnimationMode.Auto,1,1)Field.waitTaskKey("RKayamori")
Field.turnTo("RKayamori",0,0.6,AnimationMode.Auto,0,0)Wait(1)Layout.showEx({rDzL7SVO,"110201"})
Adv.talkWithFacial(
nil,nil,rDzL7SVO,[[Well, here we are at Flavor Street.]],"VC_AC25_v001_00900_RKayamori")Layout.showEx({bClTIa,"010201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[There's certainly much more foot traffic in the area than before.]],"VC_AC25_v001_00901_EAoi")Layout.showEx({rDzL7SVO,"000201"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[How about we go check out the shops from last time? They might have some valuable input.]],"VC_AC25_v001_00902_RKayamori")Layout.showEx({bClTIa,"000201"})
Adv.talkWithFacial(nil,nil,bClTIa,[[That sounds like a good idea.]],"VC_AC25_v001_00903_EAoi")Layout.showEx()Adv.fadeOut()
Field.hideTagCharacters("event01")Field.remove("RKayamori")Field.remove("EAoi")
Field.remove("YIzumi")Field.remove("TTojo")Field.remove("KAsakura")
Field.remove("MAikawa")Field.remove("TKunimi")
Field.restorePartyCharacters()Field.setPosition("Player",Vec(0,0,0))
Field.turnTo("Player",180,0)Wait(0.5)Field.resetPosition()Wait(0.5)
Field.changeCameraToPlayable(0.5)end)Wait(0.5)Adv.fadeIn()end
function EVENT_MainStreetGate()PlayerLock()
Adv.talkWithIcon("EAoi",[[There's still someone we haven't talked to.]],"VC_Z_903600163_EAoi")Wait(0.3)
local BW0WFP=Field.moveOnRoute("Player","StartPointNext")Field.waitTask(BW0WFP)Field.resetPosition()
Field.cancelAutoMove()PlayerUnLock()end
function EVENT_Miemie()Transition.start()
Field.resetPosition("MiemieGatePoint")Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(2.500,1.500,1.500),Vec(5.000,215.000,0.000),35.00)local X8
Field.showAdvHudWrapper(function()Transition.finish()
X8=Adv.question("Enter Miemie Spa?",[[Yes|No]],0,true)
if X8 ==1 then Adv.fadeOut()else
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(-3,0,-3),3)Wait(2)
Sound.stopAllENV(1)Adv.fadeOut()Field.stopTaskKey("Player")
Field.turnToWait("Player",45,0)end end)
if X8 ==0 then
local JQT=Adv.loadBGAsync("Background/PublicBath/PublicBath")local AtYtR=Adv.characterAsync("EAoi")
local ND2BCh3=Adv.characterAsync("NiOhshima")local IODBg=Adv.characterAsync("MAsami")
Field.startNovel(function()
Sound.playENV("EN_Air_Indoor_Loop")
Layout.createStageFixBg(JQT,Position.BG_CENTER)Layout.showEx({ND2BCh3,"040001"})
Adv.fadeIn()
Adv.actDelayWrapper(ND2BCh3,{{2.4,"000201"}},function()
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Hmm...well, recently we've seen an influx of customers arriving via car, so it would be nice if the roads were improved.]],"VC_AC25_v001_00904_NiOhshima")end,true)Layout.createStageFixBg(JQT,Position.BG_RIGHT)
Layout.showEx({AtYtR,"000201"})
Adv.talkWithFacial(nil,nil,AtYtR,[[I see... I can see how that would need to be addressed to continue bringing in customers.]],"VC_AC25_v001_00905_EAoi")
Layout.createStageFixBg(JQT,Position.BG_CENTER)Layout.showEx({ND2BCh3,"070001"})
Adv.talkWithFacial(nil,nil,ND2BCh3,[[Other than that, there's...]],"VC_AC25_v001_00906_NiOhshima")Adv.faceChange(IODBg,"Cheek","Cheek_On",0)
Layout.showEx({IODBg,"010001"},{ND2BCh3,"070001"},
nil,0.5,true,function()Adv.moveTo(JQT,Position.BG_RIGHT_CENTER,0.5)end)Wait(0.5)Sound.playEx2("AS_serve_glass_02")
Wait(0.5)
Adv.talkWithFacial("A00301",nil,IODBg,[[Niinaaa, get me a driiink!]],"VC_AC25_v001_00907_MAsami")
Adv.talkWithFacial("070101",nil,ND2BCh3,[[I'd like for there to be some kind of legislation that would make it easier to fire lazy workers.]],"VC_AC25_v001_00908_NiOhshima")Layout.createStageFixBg(JQT,Position.BG_RIGHT)
Layout.showEx({AtYtR,"230001"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Haha...]],"VC_AC25_v001_00909_EAoi")Transition.start()Adv.fadeOut()
Adv.faceChange(IODBg,"Cheek","Cheek_Off",0)Sound.stopAllENV(2)Layout.show()Adv.remove(JQT)
Wait(2)SetLocalFlag("Miemie",1)end)NextStory()
Sound.playENV("EN_Trafficjam_Town_Loop")Field.setCameraCompositionEnabled(false)
Adv.fadeIn()Transition.finish()
Field.playerComeIn("MiemieGatePoint",Vec(-3,0,-3))Field.refreshScripts()else
Field.setCameraCompositionEnabled(false)Adv.fadeIn()end end
function EVENT_Luna()Transition.start()Field.startEvent()Field.setCameraHeight(
Field.getCameraHeight()+0.2,0)Field.setCameraDistance(
Field.getCameraDistance()-2,0)
Field.setCameraAngleH(0,0)Field.setCameraAngleV(5,0)local YRDu
Field.showAdvHudWrapper(function()
Transition.finish()Wait(1.5)
YRDu=Adv.question("Enter the boutique?",[[Yes|No]],0,true)
if YRDu==1 then Adv.fadeOut()Field.finishEvent()else
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(3,0,-0.5),3)Wait(1)
Sound.stopAllENV(1)Adv.fadeOut()Field.stopTaskKey("Player")
Field.finishEvent()end end)
if YRDu==0 then
local CWRiP=Adv.loadBGAsync("Background/Boutique/Boutique")local LB0A=Adv.characterAsync("EAoi")
local dl=Adv.characterAsync("MiOhshima")
Field.startNovel(function()Sound.playENV("EN_Air_Indoor_Loop")
Layout.createStageFixBg(CWRiP,Position.BG_CENTER)Layout.showEx({dl,"000303"})Adv.fadeIn()
Adv.actDelay(1.6,dl,"010201",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,dl,[[I don't really have anything in particular I'm concerned about. Thanks to that concert, business is booming again.]],"VC_AC25_v001_00910_MiOhshima")
Layout.createStageFixBg(CWRiP,Position.BG_RIGHT)Layout.showEx({LB0A,"010201"})
Adv.talkWithFacial(nil,nil,LB0A,[[I'm glad we able to help.]],"VC_AC25_v001_00911_EAoi")
Layout.createStageFixBg(CWRiP,Position.BG_CENTER)Layout.showEx({dl,"080201"})
Adv.talkWithFacial(nil,nil,dl,[[Oh, wait. There IS something that's bothering me.]],"VC_AC25_v001_00912_MiOhshima")
Adv.talkWithFacial("000203",nil,dl,[[Lately, the female customers at my shop are all raving about dates they've been on with Hanamura, the Minister of Foreign Affairs.]],"VC_AC25_v001_00913_MiOhshima")
Adv.talkWithFacial(nil,nil,dl,[[This isn't exactly something new, but it feels like that's ALL I've been hearing about recently.]],"VC_AC25_v001_00914_MiOhshima")
Layout.createStageFixBg(CWRiP,Position.BG_RIGHT)Layout.showEx({LB0A,"000201"})
Adv.talkWithFacial(nil,nil,LB0A,[[Oh...I was invited to her room, too...]],"VC_AC25_v001_00915_EAoi")
Layout.createStageFixBg(CWRiP,Position.BG_CENTER)Layout.showEx({dl,"070201"})
Adv.talkWithFacial(nil,nil,dl,[[Seems like she hits on any girl she meets, so watch yourself, okay?]],"VC_AC25_v001_00916_MiOhshima")Transition.start()Adv.fadeOut()
Sound.stopAllENV(2)Layout.show()Adv.remove(CWRiP)Wait(2)
SetLocalFlag("Luna",1)end)NextStory()
Sound.playENV("EN_Trafficjam_Town_Loop")Field.setCameraCompositionEnabled(false)
Field.changeCameraToPlayable(0)Adv.fadeIn()Transition.finish()
Field.playerComeIn("YubaPoint",Vec(3))Field.refreshScripts()else
Field.setCameraCompositionEnabled(false)Field.changeCameraToPlayable(0)Adv.fadeIn()end end
function EVENT_Battle9()Transition.start()
Field.resetPosition("PopotanPoint")Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(-5.200,1.500,-64.500),Vec(4.000,160.000,0.000),30.00)local sKPjQkdn
Field.showAdvHudWrapper(function()Transition.finish()
sKPjQkdn=Adv.question("Enter Battle 9 Theater?",[[Yes|No]],0,true)
if sKPjQkdn==1 then Adv.fadeOut()else
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(3,0,-7.3),4)Wait(1)
Sound.stopAllENV(1)Adv.fadeOut()Field.stopTaskKey("Player")Wait(1.5)end end)
if sKPjQkdn==0 then
local HHH9IlJp=Adv.loadBGAsync("Background/MovieTheater/MovieTheater")local uYz2ryy4=Adv.characterAsync("EAoi")
local zVPRGDnG=Adv.characterAsync("YIzumi")local IKxw=Adv.characterAsync("YoOhshima")
Field.startNovel(function()
Sound.playENV("EN_TheaterWalla_Loop")
Layout.createStageFixBg(HHH9IlJp,Position.BG_RIGHT)Layout.showEx({uYz2ryy4,"010201"})
Adv.fadeIn()
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Wow, it's packed in here.]],"VC_AC25_v001_00917_EAoi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_LEFT)Layout.showEx({IKxw,"280202"})
Adv.talkWithFacial(nil,nil,IKxw,[[Ughhh...someone pass a law that gives me money without having to work...]],"VC_AC25_v001_00918_YoOhshima")
Layout.createStageFixBg(HHH9IlJp,Position.BG_RIGHT)Layout.showEx({uYz2ryy4,"230001"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[U-Um...I think that might be a bit unrealistic...]],"VC_AC25_v001_00919_EAoi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_LEFT)Layout.showEx({IKxw,"280201"})
Adv.talkWithFacial(nil,nil,IKxw,[[This is wayyy too much work. I'm dying...]],"VC_AC25_v001_00920_YoOhshima")
Layout.createStageFixBg(HHH9IlJp,Position.BG_RIGHT_CENTER)Layout.showEx({zVPRGDnG,"130201"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Hey, Aoi. Let's get going to the next place.]],"VC_AC25_v001_00921_YIzumi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_RIGHT)Layout.showEx({uYz2ryy4,"080301"})
Adv.actDelay(1.4,uYz2ryy4,"000201",AdvCharacterMouth.Close)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh, right. Sorry, we have to be going.]],"VC_AC25_v001_00922_EAoi")
Layout.createStageFixBg(HHH9IlJp,Position.BG_LEFT)Layout.showEx({IKxw,"280002"})
Adv.talkWithFacial(nil,nil,IKxw,[[I'm dyinggg...]],"VC_AC25_v001_00923_YoOhshima")Transition.start()Adv.fadeOut()
Sound.stopAllENV(2)Layout.showEx()Adv.remove(HHH9IlJp)Wait(2)
SetLocalFlag("Battle9",1)end)NextStory()
Sound.playENV("EN_Trafficjam_Town_Loop")Field.setCameraCompositionEnabled(false)
Adv.fadeIn()Transition.finish()
Field.playerComeIn("PopotanPoint",Vec(1,0,-1.5))Field.refreshScripts()else
Field.setCameraCompositionEnabled(false)Adv.fadeIn()end end
function EVENT_Maguwai()Transition.start()
Field.resetPosition("MaguwaiGatePoint")Field.resetFollowerPosition()
Field.setCameraCompositionEx(Vec(-4.000,1.500,-29.000),Vec(5.000,135.000,0.000),35.00)local w0
Field.showAdvHudWrapper(function()Transition.finish()Wait(1.5)
w0=Adv.question("Enter Mujina?",[[Yes|No]],0,true)
if w0 ==1 then Adv.fadeOut()else
Field.setFollowerAutoMoveEnabled(true)Field.moveBy("Player",Vec(3,0,-5),3)Wait(1)
Sound.stopAllENV(1)Adv.fadeOut()Field.stopTaskKey("Player")end end)
if w0 ==0 then
local UgXzI_C=Adv.loadBGAsync("Background/GeneralShop/GeneralShop")local MLFLplLe=Adv.characterAsync("RKayamori")
local jwq=Adv.characterAsync("EAoi")local kw3ei0a=Adv.characterAsync("MSatsuki")
local EspneS5=Adv.characterAsync("AKanzaki")
Field.startNovel(function()Sound.playENV("EN_Air_Indoor_Loop")
Layout.createStageFixBg(UgXzI_C,Position.BG_CENTER)
Layout.showEx({jwq,"000301"},{kw3ei0a,"320101"})Adv.fadeIn()
Adv.talkWithFacial(nil,nil,kw3ei0a,[[Well...thanks to your concert, business has stabilized, but that only applies to this one shopping district. Perhaps the government should consider some measures to encourage consumer spending nationally?]],"VC_AC25_v001_00924_MSatsuki")
Adv.talkWithFacial(nil,nil,jwq,[[I see. So, something like developing a new economic strategy with a wider scope?]],"VC_AC25_v001_00925_EAoi")
Layout.createStageFixBg(UgXzI_C,Position.BG_LEFT)
Layout.showEx({MLFLplLe,"110201"},{EspneS5,"070201"})
Adv.talkWithFacial(nil,nil,MLFLplLe,[[Whoa, listen to all the big brain chats happening over there, Adel...]],"VC_AC25_v001_00926_RKayamori")
Adv.talkWithFacial("070201",nil,EspneS5,[[Hmm. If consumer spending increases, that would help maintain healthy economic growth. We need to ensure money doesn't just circulate through the bottom, but flows from the top, too.]],"VC_AC25_v001_00927_AKanzaki")
Adv.talkWithFacial("080301",nil,MLFLplLe,[[Nooo! Don't tell me you're secretly a genius too!!!]],"VC_AC25_v001_00928_RKayamori")Transition.start()Adv.fadeOut()
Sound.stopAllENV(2)Layout.show()Adv.remove(UgXzI_C)Wait(2)
SetLocalFlag("Maguwai",1)end)NextStory()
Sound.playENV("EN_Trafficjam_Town_Loop")Field.setCameraCompositionEnabled(false)
Adv.fadeIn()Transition.finish()
Field.playerComeIn("MaguwaiPoint",Vec(3,0,-0.5))Field.refreshScripts()else
Field.setCameraCompositionEnabled(false)Adv.fadeIn()end end
function AC25Gayatalk31D_01()
if GetLocalFlag("AC25Gayatalk31D_01再生済")==0 then
SetLocalFlag("AC25Gayatalk31D_01再生済",1)
Field.talkByGayaBalloonNoPlayable("RMurohushi",[[Okay, let's do roll call. One!]],nil,nil,nil,nil,"VC_AC25_v001_00929_RMurohushi",true)
Field.talkByGayaBalloonNoPlayable("MNikaido",[[Ga-ga, goo.]],nil,nil,nil,nil,"VC_AC25_v001_00930_MNikaido",true)
Field.talkByGayaBalloonNoPlayable("IIshii",[[Ga-ga!]],nil,nil,nil,nil,"VC_AC25_v001_00931_IIshii",true)
Field.talkByGayaBalloonNoPlayable("AMizuhara",[[Ga-ga, goo.]],nil,nil,nil,nil,"VC_AC25_v001_00932_AMizuhara",true)
Field.talkByGayaBalloonNoPlayable("FMikoto",[[Ga-ga, goo.]],nil,nil,nil,nil,"VC_AC25_v001_00933_FMikoto",true)
Field.talkByGayaBalloonNoPlayable("ADate",[[Goo-goo...]],nil,nil,nil,nil,"VC_AC25_v001_00934_ADate",true)end end
function AC25Gayatalk31C_01()
if GetLocalFlag("AC25Gayatalk31C_01再生済")==0 then
SetLocalFlag("AC25Gayatalk31C_01再生済",1)
Field.talkByGayaBalloonNoPlayable("MTenne",[[THE SMELL! IT'S NOT COMING OUT OF MY ROBES!!!]],nil,nil,nil,nil,"VC_AC25_v001_00935_MTenne",true)
Field.talkByGayaBalloonNoPlayable("SSakuraba",[[The stars ordain that you should buy a new one...]],nil,nil,nil,nil,"VC_AC25_v001_00936_SSakuraba",true)end end
function AC25Gayatalk31C_02()
if GetLocalFlag("AC25Gayatalk31C_02再生済")==0 then
SetLocalFlag("AC25Gayatalk31C_02再生済",1)
Field.talkByGayaBalloonNoPlayable("BIYamawaki",[[You did good during ze exam!\nGet anything you vant, alright?]],nil,nil,nil,nil,"VC_AC25_v001_00937_BIYamawaki",true)
Field.talkByGayaBalloonNoPlayable("YBungo",[[Really, Master?!\nThen I want pancakes, <i>snip</i>!]],nil,nil,nil,nil,"VC_AC25_v001_00938_YBungo",true)end end
function AC25Gayatalk30G_04()
if GetLocalFlag("AC25Gayatalk30G_04再生済")==0 then
SetLocalFlag("AC25Gayatalk30G_04再生済",1)
Field.talkByGayaBalloonNoPlayable("CSugahara",[[1523 Idol Points!\nShe's come so very far!]],nil,nil,nil,nil,"VC_AC25_v001_00939_CSugahara",true)
Field.talkByGayaBalloonNoPlayable("HOgasawara",[[Ah! That feeling when your oshi goes national!!!]],nil,nil,nil,nil,"VC_AC25_v001_00940_HOgasawara",true)end end