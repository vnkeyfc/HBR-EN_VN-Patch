local w0qyLbH="Quest_Lv2_YIzumi"function init()Log("Called Quest_Lv2_YIzumi")
refresh()end
function refresh()Log("refresh入り")
if
Quest.stateUnreceivable(w0qyLbH)then if Quest.isHasAnyActive()then return end
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,function()
UI.unreceivableMessageDialog(w0qyLbH)end)end;if Quest.stateReceivable(w0qyLbH)then
Quest.TouchEvent("YIzumi_Quest",w0qyLbH,Receive)end;if Quest.stateStep(w0qyLbH,1)then
StartEvent(Step1)end
if Quest.stateStep(w0qyLbH,2)then
SetPeriodText("Talk to the members of 31-A.")
TouchQuestEvent("YIzumi_Quest",w0qyLbH,Step2_YIzumi)
Quest.TouchEvent("KAsakura_Quest",w0qyLbH,Step2_KAsakura)
Quest.TouchEvent("TTojo_Quest",w0qyLbH,Step2_TTojo)
Quest.TouchEvent("TKunimi_Quest",w0qyLbH,Step2_TKunimi)
Quest.TouchEvent("MAikawa_Quest",w0qyLbH,Step2_MAikawa)end
if Quest.stateStep(w0qyLbH,3)then
if Quest.getQuestBlanch(w0qyLbH)==1 then
SetFlag("和泉交流Lv2_誰と話したか",1)elseif Quest.getQuestBlanch(w0qyLbH)==2 then
SetFlag("和泉交流Lv2_誰と話したか",2)elseif Quest.getQuestBlanch(w0qyLbH)==3 then
SetFlag("和泉交流Lv2_誰と話したか",3)elseif Quest.getQuestBlanch(w0qyLbH)==4 then
SetFlag("和泉交流Lv2_誰と話したか",4)end
if
GetLocalFlag("和泉交流Lv2_step2で和泉と話した")==0 then
SetFlag("和泉交流Lv2_step2で和泉と話した",0)else
SetFlag("和泉交流Lv2_step2で和泉と話した",1)end;StartEvent(Step3)end
if Quest.stateStep(w0qyLbH,4)then StartEvent(Exit_Clear)end
if Quest.stateCleard(w0qyLbH)then StartEvent(Exit_World)end
if Quest.stateBathStep(w0qyLbH)then StartEvent(BathEvent)end end
function Exit_Clear()Quest.clear(w0qyLbH)Quest.refreshState()end
function Receive()local nsgji=Field.getPosition("Player")
local bClTIa=Adv.characterAsync("YIzumi")local rDzL7SVO=Adv.characterAsync("RKayamori")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({rDzL7SVO,"110301"},{bClTIa,"000101"})
Adv.talkWithFacial(nil,nil,rDzL7SVO,[[Hey sweet thang, wassup?]],"VC_Quest_Lv2_YIzumi_Quest_00000_RKayamori")
Adv.talkWithFacial("130103",nil,bClTIa,[[Are you hitting on me?]],"VC_Quest_Lv2_YIzumi_Quest_00001_YIzumi")
Adv.talkWithFacial("110301",nil,rDzL7SVO,[[I just wanted to have another private chat, so I came lookin' for ya.]],"VC_Quest_Lv2_YIzumi_Quest_00002_RKayamori")
Adv.talkWithFacial("130003",nil,bClTIa,[[I'm working.]],"VC_Quest_Lv2_YIzumi_Quest_00003_YIzumi")
Adv.talkWithFacial("110002",nil,rDzL7SVO,[[Then how 'bout I buy you another light meal?]],"VC_Quest_Lv2_YIzumi_Quest_00004_RKayamori")local BW0WFP=Quest.receive(w0qyLbH)
if BW0WFP==QuestWindow.Receive then
Transition.start()return function()Quest.refreshState()end else
Transition.start()return
function()Field.cancelQuest("YIzumi_Quest",nsgji)end end end)end
function Step1()Adv.fadeOut(0)local X8=Adv.characterAsync("YIzumi")
local JQT=Adv.characterAsync("RKayamori")Field.prepareEventCharacter("YIzumi_Quest")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Adv.fadeIn(0.5)Transition.finish()
Layout.show({JQT,"110301"},{X8,"130003"})
Adv.talkWithFacial("110301",nil,JQT,[[What would you like?]],"VC_Quest_Lv2_YIzumi_Quest_00005_RKayamori")
Adv.talkWithFacial("130003",nil,X8,[[Anything's fine.]],"VC_Quest_Lv2_YIzumi_Quest_00006_YIzumi")end)Transition.start()Layout.show()
Field.changeCameraToPlayable()Wait(1)Transition.finish()
Field.playerComeIn("SchoolPoint",Vec(2))
Field.showAdvHudWrapper(function()
Adv.kayamoriTalk([[What counts as a light meal?]],"VC_Quest_Lv2_YIzumi_Quest_00007_RKayamori",nil)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function Step2_YIzumi()
SetLocalFlag("和泉交流Lv2_step2で和泉と話した",1)local AtYtR=Adv.characterAsync("YIzumi")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({AtYtR,"130201"})
Adv.talkWithFacial(nil,nil,AtYtR,[[Anything's fine.]],"VC_Quest_Lv2_YIzumi_Quest_00006_YIzumi")end)end
function Step2_KAsakura()local ND2BCh3=Adv.characterAsync("KAsakura")
local IODBg=Adv.characterAsync("RKayamori")
Field.startTalk("KAsakura_Quest",FaceToFaceMode.Auto,function()
if
GetFlag("和泉交流Lv1_誰と話したか")==1 then
Layout.show({IODBg,"110301"},{ND2BCh3,"000101"})
Adv.talkWithFacial(nil,nil,IODBg,[[Give me a new idea for a light meal.]],"VC_Quest_Lv2_YIzumi_Quest_00009_RKayamori")
Adv.talkWithFacial("010102",nil,ND2BCh3,[[Hamburger. It can be a main course or a snack, second only to pizza.]],"VC_Quest_Lv2_YIzumi_Quest_00010_KAsakura")else
Layout.show({IODBg,"000301"},{ND2BCh3,"000101"})
Adv.talkWithFacial(nil,nil,IODBg,[[What do you think when you hear "a light meal"?]],"VC_Quest_Lv2_YIzumi_Quest_00011_RKayamori")
Adv.talkWithFacial("000102",nil,ND2BCh3,[[Pizza. It's the most versatile food. Main course, side dish, snack, whatever! Pizza can do it all.]],"VC_Quest_Lv2_YIzumi_Quest_00012_KAsakura")end;Transition.start()end)
Exit_FieldAndChange("MainStreet","SchoolPoint",nil,function()Quest.setQuestBlanch(w0qyLbH,1)
Quest.clearStep(w0qyLbH)end)end
function Step2_TTojo()local YRDu=Adv.characterAsync("TTojo")
local CWRiP=Adv.characterAsync("RKayamori")
Field.startTalk("TTojo_Quest",FaceToFaceMode.Auto,function()
if
GetFlag("和泉交流Lv1_誰と話したか")==2 then
Layout.show({CWRiP,"110301"},{YRDu,"010101"})
Adv.faceChange(YRDu,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talkWithFacial(nil,nil,CWRiP,[[Give me a new idea for a light meal.]],"VC_Quest_Lv2_YIzumi_Quest_00009_RKayamori")
Adv.talkWithFacial("010101",nil,YRDu,[[Like a pierogi or something?]],"VC_Quest_Lv2_YIzumi_Quest_00014_TTojo")else
Layout.show({CWRiP,"000301"},{YRDu,"010101"})
Adv.faceChange(YRDu,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talkWithFacial(nil,nil,CWRiP,[[What do you think when you hear "a light meal"?]],"VC_Quest_Lv2_YIzumi_Quest_00011_RKayamori")
Adv.talkWithFacial("110101",nil,YRDu,[[Like a kebab sandwich or something?]],"VC_Quest_Lv2_YIzumi_Quest_00016_TTojo")end;Transition.start()end)
Exit_FieldAndChange("MainStreet","SchoolPoint",nil,function()Quest.setQuestBlanch(w0qyLbH,2)
Quest.clearStep(w0qyLbH)end)end
function Step2_TKunimi()local LB0A=Adv.characterAsync("TKunimi")
local dl=Adv.characterAsync("RKayamori")
Field.startTalk("TKunimi_Quest",FaceToFaceMode.Auto,function()
if
GetFlag("和泉交流Lv1_誰と話したか")==3 then
Layout.show({dl,"110301"},{LB0A,"000101"})
Adv.talkWithFacial(nil,nil,dl,[[Give me a new idea for a light meal.]],"VC_Quest_Lv2_YIzumi_Quest_00009_RKayamori")
Adv.talkWithFacial("110102",nil,LB0A,[[Those curry packets that are delicious even without heating them up!!!]],"VC_Quest_Lv2_YIzumi_Quest_00018_TKunimi")else
Layout.show({dl,"000301"},{LB0A,"000101"})
Adv.talkWithFacial(nil,nil,dl,[[What do you think when you hear "a light meal"?]],"VC_Quest_Lv2_YIzumi_Quest_00011_RKayamori")
Adv.talkWithFacial("070102",nil,LB0A,[[It's gotta be crackers!]],"VC_Quest_Lv2_YIzumi_Quest_00020_TKunimi")end;Transition.start()end)
Exit_FieldAndChange("MainStreet","SchoolPoint",nil,function()Quest.setQuestBlanch(w0qyLbH,3)
Quest.clearStep(w0qyLbH)end)end
function Step2_MAikawa()local sKPjQkdn=Adv.characterAsync("MAikawa")
local HHH9IlJp=Adv.characterAsync("RKayamori")
Field.startTalk("MAikawa_Quest",FaceToFaceMode.Auto,function()
if
GetFlag("和泉交流Lv1_誰と話したか")==4 then
Layout.show({HHH9IlJp,"110301"},{sKPjQkdn,"000101"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[Give me a new idea for a light meal.]],"VC_Quest_Lv2_YIzumi_Quest_00009_RKayamori")
Adv.act(sKPjQkdn,"090001",AdvCharacterMouth.Mouth01)
Adv.actDelay(2.30,sKPjQkdn,"100101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,sKPjQkdn,[[Yeah, a'ight, sure. How 'bout some soba rice?]],"VC_Quest_Lv2_YIzumi_Quest_00022_MAikawa")
Adv.act(sKPjQkdn,"100101",AdvCharacterMouth.Mouth01)else
Layout.show({HHH9IlJp,"000301"},{sKPjQkdn,"000101"})
Adv.talkWithFacial(nil,nil,HHH9IlJp,[[What do you think when you hear "a light meal"?]],"VC_Quest_Lv2_YIzumi_Quest_00011_RKayamori")
Adv.talkWithFacial("010101",nil,sKPjQkdn,[[You gotta go with takosen, takoyaki between two rice crackers!]],"VC_Quest_Lv1_YIzumi_Quest_00018_MAikawa")end;Transition.start()end)
Exit_FieldAndChange("MainStreet","SchoolPoint",nil,function()Quest.setQuestBlanch(w0qyLbH,4)
Quest.clearStep(w0qyLbH)end)end
function Step3()Adv.fadeOut(0)
local uYz2ryy4=Adv.characterAsync("RKayamori")local zVPRGDnG=Adv.characterAsync("YIzumi")local IKxw=
Field.getPosition("YIzumi_Quest")+Vec(-2.5,0,-0.9)
local w0=Field.getWaypointPosition("ArenaPointLeftLeft")Field.initPlayerPosition(IKxw)
Field.prepareEventCharacter("YIzumi_Quest")Field.moveBy("Player",Vec(2),1.5)
Field.setActiveWithTag("Gaya",false)Transition.finish()Field.waitTaskKey("Player")
Field.startTalk("YIzumi_Quest",FaceToFaceMode.Auto,function()
Layout.show({uYz2ryy4,"110301"},{zVPRGDnG,"130101"})Adv.fadeIn(0.5)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[I'm back!]],"VC_Quest_Lv2_YIzumi_Quest_00025_RKayamori")
if Quest.getQuestBlanch(w0qyLbH)==1 then
if
GetFlag("和泉交流Lv1_誰と話したか")==1 then
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[That's way more than a double patty... Ah well, I guess it's fine.]],"VC_Quest_Lv2_YIzumi_Quest_00026_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)Layout.show({zVPRGDnG,"040101"})
Adv.talkWithFacial(
nil,nil,zVPRGDnG,[[This meaty taste is oddly delicious. How am I supposed to focus like this?]],"VC_Quest_Lv2_YIzumi_Quest_00027_YIzumi")else
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Why a large? Ah well, I guess it's fine.]],"VC_Quest_Lv1_YIzumi_Quest_00020_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)
Layout.show({uYz2ryy4,"000301"},{zVPRGDnG,"060101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[It's so hot and dripping with cheese. How am I supposed to focus like this?]],"VC_Quest_Lv1_YIzumi_Quest_00021_YIzumi")end elseif Quest.getQuestBlanch(w0qyLbH)==2 then
if
GetFlag("和泉交流Lv1_誰と話したか")==2 then
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[You always manage to find the strangest food.]],"VC_Quest_Lv2_YIzumi_Quest_00030_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)Layout.show({zVPRGDnG,"210201"})
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Just like last time, it's insanely tasty. What kind of gourmand are you hooked up with?]],"VC_Quest_Lv2_YIzumi_Quest_00031_YIzumi")else
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Well, this is a unique choice, but I guess I'll take it.]],"VC_Quest_Lv1_YIzumi_Quest_00022_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)
Layout.show({uYz2ryy4,"110301"},{zVPRGDnG,"040101"})
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth01,0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[This is almost too tasty.]],"VC_Quest_Lv1_YIzumi_Quest_00023_YIzumi")end elseif Quest.getQuestBlanch(w0qyLbH)==3 then
if
GetFlag("和泉交流Lv1_誰と話したか")==3 then
Adv.talkWithFacial(nil,nil,zVPRGDnG,[["Delicious while cold"? This has to be an emergency ration.]],"VC_Quest_Lv2_YIzumi_Quest_00034_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)Layout.show({zVPRGDnG,"060201"})
Adv.talkWithFacial(
nil,nil,zVPRGDnG,[[And there's no rice either so it's just a soup. It's not bad, but it's so miserable.]],"VC_Quest_Lv2_YIzumi_Quest_00035_YIzumi")else
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Is this an emergency ration? Well, I guess I'll take it.]],"VC_Quest_Lv1_YIzumi_Quest_00024_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)
Layout.show({uYz2ryy4,"000301"},{zVPRGDnG,"060101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[This is WAY too dry to eat without water. I can't even swallow!]],"VC_Quest_Lv1_YIzumi_Quest_00025_YIzumi")end elseif Quest.getQuestBlanch(w0qyLbH)==4 then
if
GetFlag("和泉交流Lv1_誰と話したか")==4 then
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[What is this?]],"VC_Quest_Lv2_YIzumi_Quest_00038_YIzumi")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[It's called "soba rice" apparently. Some fried noodles with rice.]],"VC_Quest_Lv2_YIzumi_Quest_00039_RKayamori")
Adv.talkWithFacial("060101",nil,zVPRGDnG,[[Never heard of it. Well, I'll take it.]],"VC_Quest_Lv2_YIzumi_Quest_00040_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)Layout.show({zVPRGDnG,"030201"})
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[What the heck is this?! It's crazy good! You keep stunning with me with these snacks! I can't focus on my work like this!]],"VC_Quest_Lv2_YIzumi_Quest_00041_YIzumi",
nil,nil,AdvCharacterMouth.Mouth03)else
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[What is this?]],"VC_Quest_Lv1_YIzumi_Quest_00026_YIzumi")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[It's apparently called a "takosen."]],"VC_Quest_Lv1_YIzumi_Quest_00027_RKayamori")
Adv.talkWithFacial("060101",nil,zVPRGDnG,[[Never heard of it. Well, I'll take it.]],"VC_Quest_Lv1_YIzumi_Quest_00028_YIzumi")Layout.show()
Field.disableLookAt("YIzumi_Quest",0.5)
Field.setCameraFov(Field.getCameraFov()*0.8,2)Field.moveCameraTarget("YIzumi_Quest",2)Wait(2.5)
Field.setLookAtTarget("YIzumi_Quest","Player",0.3)Wait(0.3)
Layout.show({uYz2ryy4,"110301"},{zVPRGDnG,"030101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[What the?! It's crazy good! I can't stop eating!]],"VC_Quest_Lv1_YIzumi_Quest_00029_YIzumi")
Adv.talkWithFacial("030102",nil,zVPRGDnG,[[Amazing! I was so focused on eating I started slacking off on my work!]],"VC_Quest_Lv1_YIzumi_Quest_00030_YIzumi")end end;Adv.fadeOut(1.2)Layout.show()
Sound.playBGM("SB0022",0,0)Field.setActive("Player",false)
EmptyEvent("RKayamori_YIzumi_Quest")Wait(1)
Field.setCameraFov(Field.getCameraFov()*1,0)
Field.setCameraComposition(Vec(85.96,-0.30,71.35),Vec(0,-28.475,-2.278))Field.disableLookAt("YIzumi_Quest")Wait(0.5)
Adv.fadeIn(1.2)Wait(1.5)
Field.setLookAtTarget("RKayamori_YIzumi_Quest","YIzumi_Quest")Wait(0.5)Layout.show({uYz2ryy4,"110301"})
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[So, what are you up to?]],"VC_Quest_Lv2_YIzumi_Quest_00047_RKayamori")Layout.show()
Field.setLookAtTarget("YIzumi_Quest","RKayamori_YIzumi_Quest",0.5)Wait(0.5)
Layout.show({uYz2ryy4,"110301"},{zVPRGDnG,"000101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[I'm working on the A.I.]],"VC_Quest_Lv2_YIzumi_Quest_00048_YIzumi")
Adv.talkWithFacial("090301",nil,uYz2ryy4,[[ASS?! Is ASS here?!]],"VC_Quest_Lv2_YIzumi_Quest_00049_RKayamori")Sound.play("SY_Signal_Begin")
Adv.miniCutIn("Dencho","01",[[Aye!]],"VC_Quest_Lv2_YIzumi_Quest_00050_KETSU")
Adv.talkWithFacial("060001",nil,zVPRGDnG,[[Ugh, it's still responding to that name.]],"VC_Quest_Lv2_YIzumi_Quest_00051_YIzumi")
Adv.talkWithFacial("110001",nil,uYz2ryy4,[[That's okay. Any name is gonna seem a little strange at first.]],"VC_Quest_Lv2_YIzumi_Quest_00052_RKayamori")
Adv.act(zVPRGDnG,"060101",AdvCharacterMouth.Mouth01)
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth03,0)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Yeah, but I have to keep calling it ASS now.]],"VC_Quest_Lv2_YIzumi_Quest_00053_YIzumi")
Adv.act(uYz2ryy4,"110301",AdvCharacterMouth.Mouth01)
Adv.miniCutIn("Dencho","01",[[How can I help you?]],"VC_Quest_Lv2_YIzumi_Quest_00054_KETSU")
Adv.talkWithFacial("210203",nil,zVPRGDnG,[[Whoa, it responded.]],"VC_Quest_Lv2_YIzumi_Quest_00055_YIzumi")
Adv.talkWithFacial("110301",nil,uYz2ryy4,[[ASS, how tall is Tokyo Tower?]],"VC_Quest_Lv2_YIzumi_Quest_00056_RKayamori")
Adv.miniCutIn("Dencho","01",[[It once stood at 332.6 meters, but it is now destroyed.]],"VC_Quest_Lv2_YIzumi_Quest_00057_KETSU")
Adv.talkWithFacial("130101",nil,zVPRGDnG,[[Why'd you have to remind us of how bad things are?]],"VC_Quest_Lv2_YIzumi_Quest_00058_YIzumi")
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[ASS, how tall is the Eiffel Tower?]],"VC_Quest_Lv2_YIzumi_Quest_00059_RKayamori")
Adv.miniCutIn("Dencho","01",[[According to the last record, it was 324 meters tall, but it is now destroyed.]],"VC_Quest_Lv2_YIzumi_Quest_00060_KETSU")
Adv.talkWithFacial("130101",nil,zVPRGDnG,[[Hey, quit making ASS spit such depressing facts.]],"VC_Quest_Lv2_YIzumi_Quest_00061_YIzumi")
Adv.talkWithFacial("110001",nil,uYz2ryy4,[[Oh? Look at you, already treating it like your own child. Be sure to cherish it.]],"VC_Quest_Lv2_YIzumi_Quest_00062_RKayamori")
Adv.talkWithFacial("060101",nil,zVPRGDnG,[[It's not my child. It's military equipment. It's still full of unknowns and kinda creepy.]],"VC_Quest_Lv2_YIzumi_Quest_00063_YIzumi")
Adv.talkWithFacial("160301",nil,uYz2ryy4,[[That's awful. You think it's "creepy"?]],"VC_Quest_Lv2_YIzumi_Quest_00064_RKayamori")Layout.show()
Layout.show({zVPRGDnG,"080203"},nil,nil,nil,nil,function()
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth03,0)Wait(0.3)end)Sound.playBGM("SB0042",1,2)
Adv.miniCutIn("Dencho","01",[[That's right.]],"VC_Quest_Lv2_YIzumi_Quest_00065_KETSU")
Adv.miniCutIn("Dencho","01",[[I may be a piece of military equipment, but the one who programmed my personality and my emotions was you, Yuki Izumi.]],"VC_Quest_Lv2_YIzumi_Quest_00066_KETSU")
Adv.act(zVPRGDnG,"000001",AdvCharacterMouth.Mouth01)
Adv.miniCutIn("Dencho","01",[[I exist here because of you. Thank you for creating me.]],"VC_Quest_Lv2_YIzumi_Quest_00067_KETSU")
Adv.talkWithFacial("080201",nil,zVPRGDnG,[[ASS...]],"VC_Quest_Lv2_YIzumi_Quest_00068_YIzumi")Wait(1.2)Layout.show()Sound.playBGM("SB0033",0,0)
Layout.show({uYz2ryy4,"000101"},{zVPRGDnG,"030101"})
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Hold on, that name totally ruins the mood!]],"VC_Quest_Lv2_YIzumi_Quest_00069_YIzumi",nil,nil,AdvCharacterMouth.Mouth03)
Adv.faceChange(zVPRGDnG,"Mouth",AdvCharacterMouth.Mouth01,0)Adv.shake(uYz2ryy4,0.5,0.1)
Adv.talkWithFacial("A00102",nil,uYz2ryy4,[[D-Don't be silly.]],"VC_Quest_Lv2_YIzumi_Quest_00070_RKayamori")
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[Even you're laughing about it!]],"VC_Quest_Lv2_YIzumi_Quest_00071_YIzumi")
Adv.act(uYz2ryy4,"A00301",AdvCharacterMouth.Mouth01)
Adv.actDelay(1.50,uYz2ryy4,"A00101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[No I'm not. Anyways, I have to go.]],"VC_Quest_Lv2_YIzumi_Quest_00072_RKayamori")
Adv.act(uYz2ryy4,"A00101",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,zVPRGDnG,[[You're just running away because you can't hold it in, aren't you?!]],"VC_Quest_Lv2_YIzumi_Quest_00073_YIzumi")Field.disableLookAt("RKayamori_YIzumi_Quest",0.4)
Layout.show()
Field.setCameraFov(Field.getCameraFov()*1.35,0.3)
Field.changeAnimation("RKayamori_YIzumi_Quest","FieldIdle",nil,0.4)Wait(0.4)
Field.setLookAtPosition("RKayamori_YIzumi_Quest",w0,0.2)Wait(0.2)
Adv.act(uYz2ryy4,"110302",AdvCharacterMouth.Mouth01)
Adv.actDelay(3.05,uYz2ryy4,"070301",AdvCharacterMouth.Mouth01)
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[I hope you raise little ASS to be a good A.I. Righto, I'll see ya around. Bye!!!]],"VC_Quest_Lv2_YIzumi_Quest_00074_RKayamori")
Adv.act(uYz2ryy4,"070301",AdvCharacterMouth.Mouth01)Field.disableLookAt("RKayamori_YIzumi_Quest",0.2)
Layout.show()
Field.moveToAct("RKayamori_YIzumi_Quest",Field.getPosition("RKayamori_YIzumi_Quest")+Vec(-6),1,"FieldRun")Wait(0.5)
Field.turnToTarget("YIzumi_Quest","RKayamori_YIzumi_Quest",0.3)
Field.startCameraImpact(0.240,0.240,0.240,0.720,0.500)Adv.shake(zVPRGDnG,0.5,0.1)
Adv.shake(uYz2ryy4,0.5,0.1)
Routine(function()
local UgXzI_C=Adv.showEffect("Adventure/LineWork/LineWork","ForegroundEffect")Wait(0.8)Adv.remove(UgXzI_C)end)
Adv.playCutIn("YIzumi","Default","Anger","AAAHHH!!! DON'T YOU RUN AWAY AGAIN!!!","VC_Quest_Lv2_YIzumi_Quest_00075_YIzumi",1.5,0,nil)Adv.fadeOutWithShield(0.5)end)Quest.clearStep(w0qyLbH)Quest.refreshState()end
function BathEvent()
local MLFLplLe=Bath.startBathTimeEvent("YIzumi",BathInviteMode.Active,function(jwq,kw3ei0a)
Adv.talkWithFacial(nil,nil,jwq,[[(Maybe I should ask Yukkie to come for a soak.)]],"VC_Quest_00873_v004_RKayamori")
local EspneS5=Bath.BathQuestion("YIzumi",[[Invite her?]],[[Invite|Maybe not]],BathInviteMode.Active,function()
Adv.talkWithFacial(nil,nil,jwq,[[Hey Yukkie, wanna hit the bath together?]],"VC_Quest_00878_v004_RKayamori")
Adv.talkWithFacial(nil,nil,kw3ei0a,[[I was just thinking of inviting you.]],"VC_Quest_00879_v004_YIzumi")
Adv.talkWithFacial(nil,nil,jwq,[[Yay! Let's go!]],"VC_Quest_00880_v004_RKayamori")end,function()
Adv.talkWithFacial(
nil,nil,jwq,[[(Nah, I'll bathe alone today.)]],"VC_Quest_Lv1_IIshii_Quest_00076_RKayamori")end)return EspneS5 end)
if MLFLplLe==0 then
Bath.startBathTimeNovel("YIzumi",nil,"Wash",function(LZeg0,OJZ,nmuj,bP)
Sound.play("AS_Echo_Bathsplashes")Wait(1)
Adv.talkWithFacial(nil,nil,LZeg0,[[Hey Yukkie, wash my hair.]],"VC_Quest_Lv2_YIzumi_Quest_00079_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[Why? You're not a child, do it yourself.]],"VC_Quest_Lv2_YIzumi_Quest_00080_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[I don't wanna! I want you to do it, Yukkie!]],"VC_Quest_Lv2_YIzumi_Quest_00081_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[Well, I don't wanna either. I've never washed someone else's hair before.]],"VC_Quest_Lv2_YIzumi_Quest_00082_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[In that case, Yukkie, I wanna be your first.]],"VC_Quest_Lv2_YIzumi_Quest_00083_RKayamori")Sound.play("AS_Echo_Bathsplashes")Wait(1)
Adv.talkWithFacial(nil,nil,OJZ,[[Ew, don't say it like that!]],"VC_Quest_Lv2_YIzumi_Quest_00084_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[Huh? Yukkie, you're all red.]],"VC_Quest_Lv2_YIzumi_Quest_00085_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[I-I-I'm just hot is all! Quit staring!]],"VC_Quest_Lv2_YIzumi_Quest_00086_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[But it would be a real shame.]],"VC_Quest_Lv2_YIzumi_Quest_00087_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[What would?]],"VC_Quest_Lv2_YIzumi_Quest_00088_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[If you don't wash my hair, then I might never wash it again.]],"VC_Quest_Lv2_YIzumi_Quest_00089_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[Really? What kind of threat is that?]],"VC_Quest_Lv2_YIzumi_Quest_00090_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[If you do it, I'll wash your body in return, Yukkie.]],"VC_Quest_Lv2_YIzumi_Quest_00091_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[Why am I washing your hair and you're washing my body?]],"VC_Quest_Lv2_YIzumi_Quest_00092_YIzumi")
Adv.talkWithFacial(nil,nil,LZeg0,[[You have an incredible body, so I was hoping I could touch it legally.]],"VC_Quest_Lv2_YIzumi_Quest_00093_RKayamori")
Adv.talkWithFacial(nil,nil,OJZ,[[I'm never coming in here with you again!!!]],"VC_Quest_Lv2_YIzumi_Quest_00094_YIzumi")Sound.play("AS_Open_slidedoor")end)end;Exit_World()end