
function Kurukurupa(A,w0qyLbH,nsgji)local bClTIa=0
if A=="MC01_01_06_01"then
SetFlag("くるくるぱーMC01_01_06_01",1)elseif A=="MC01_03_06_01"then
SetFlag("くるくるぱーMC01_03_06_01",1)elseif A=="MC01_03_12_00"then
SetFlag("くるくるぱーMC01_03_12_00",1)elseif A=="MC01_04_06_01"then
SetFlag("くるくるぱーMC01_04_06_01",1)elseif A=="MC01_05_06_01"then
SetFlag("くるくるぱーMC01_05_06_01",1)elseif A=="MC02_10_06_00"then
SetFlag("くるくるぱーMC02_10_06_00",1)end
bClTIa=

GetFlag("くるくるぱーMC01_01_06_01")+
GetFlag("くるくるぱーMC01_03_06_01")+
GetFlag("くるくるぱーMC01_03_12_00")+
GetFlag("くるくるぱーMC01_04_06_01")+GetFlag("くるくるぱーMC01_05_06_01")+GetFlag("くるくるぱーMC02_10_06_00")
if bClTIa==1 or A=="MC01_01_06_01"then
Adv.act(w0qyLbH,"160201",AdvCharacterMouth.Mouth01)if A=="MC02_10_06_00"then
Adv.act(nsgji,"130101",AdvCharacterMouth.Mouth01)else
Adv.act(nsgji,"130101",AdvCharacterMouth.Mouth01)end
Adv.talk(w0qyLbH,[[Please forgive her. She might seem like a dum-dum, but she's got good qualities too...]],"VC_MC01_01_06_01_Novel_00064_RKayamori")
if A=="MC01_03_12_00"then
Adv.talk(nsgji,[[Like I said, don't cover for me. And I'm the one getting angry at you, dum-dum.]],"VC_Z_190300015_YIzumi")elseif
A=="MC01_01_06_01"or A=="MC01_03_06_01"or A=="MC01_04_06_01"then
Adv.act(nsgji,"140101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. And she's talking to you, dum-dum.]],"VC_Z_190300016_YIzumi")end elseif bClTIa==2 or A=="MC01_03_06_01"then
Adv.act(w0qyLbH,"160201",AdvCharacterMouth.Mouth01)
Adv.talk(w0qyLbH,[[Please forgive her. She might seem like a dum-dum, but she's really good at peeling chestnuts...]],"VC_MC01_03_11_00_Novel_00149_RKayamori")
if A=="MC01_03_12_00"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. I'm the one getting angry at you, dum-dum...and I've never even peeled chestnuts, ever.]],"VC_MC01_03_11_00_Novel_00150_YIzumi")elseif A=="MC01_03_06_01"or A=="MC01_04_06_01"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. She's talking to you, dum-dum...and I've never even peeled chestnuts, ever.]],"VC_MC01_04_06_01_Novel_00021_YIzumi")elseif A=="MC01_05_06_01"then
Adv.talk(nsgji,[[Like I said, don't cover for me. And I've never even peeled chestnuts, ever.]],"VC_Z_190300022_YIzumi")elseif A=="MC02_10_06_00"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. You're the one always getting yelled at, dum-dum...and I've never even peeled chestnuts, ever.]],"VC_Kurukurupa_00008_v001_YIzumi")end elseif bClTIa==3 or A=="MC01_03_12_00"then
Adv.act(w0qyLbH,"160201",AdvCharacterMouth.Mouth01)
Adv.talk(w0qyLbH,[[Please forgive her. She might seem like a dum-dum, but she's really good at fishing out every last corn kernel in those canned corn soups that you drink straight out of.]],"VC_MC01_03_11_00_Novel_00147_RKayamori")
if A=="MC01_03_12_00"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. I'm the one getting angry at you, dum-dum...and there's no way anyone can finish all the corn in those soup cans.]],"VC_MC01_03_11_00_Novel_00148_YIzumi")elseif A=="MC01_04_06_01"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. She's talking to you, dum-dum...and there's no way anyone can finish all the corn in those soup cans.]],"VC_MC01_04_06_01_Novel_00018_YIzumi")elseif A=="MC01_05_06_01"then
Adv.act(nsgji,"060101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. And there's no way anyone can finish all the corn in those soup cans.]],"VC_MC01_05_06_01_Novel_00017_YIzumi")elseif A=="MC02_10_06_00"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. You're the one always getting yelled at, dum-dum...and there's no way anyone can finish all the corn in those soup cans.]],"VC_Kurukurupa_00013_v001_YIzumi")end elseif bClTIa==4 or A=="MC01_04_06_01"then
Adv.act(w0qyLbH,"160201",AdvCharacterMouth.Mouth01)
Adv.talk(w0qyLbH,[[Please forgive her. She might seem like a dum-dum, but she's really good at falling asleep in an instant...]],"VC_MC01_04_06_01_Novel_00014_RKayamori")
if A=="MC01_04_06_01"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. She's talking to you, dum-dum...and you're the one who can fall asleep in an instant.]],"VC_MC01_04_06_01_Novel_00015_YIzumi")elseif A=="MC01_05_06_01"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. And you're the one who can fall asleep in an instant.]],"VC_MC01_05_06_01_Novel_00015_YIzumi")elseif A=="MC02_10_06_00"then
Adv.act(nsgji,"2101",AdvCharacterMouth.Mouth01)
Adv.talk(nsgji,[[Like I said, don't cover for me. You're the one always getting yelled at, dum-dum...and you're the one who can fall asleep in an instant.]],"VC_Kurukurupa_00018_v001_YIzumi")end elseif bClTIa==5 or A=="MC01_05_06_01"then Adv.act(w0qyLbH,"0000")
Adv.talk(nsgji,[[Yeah, yeah...and now you're going to be all "please forgive her" and all that. Which, seriously, you don't need to do.]],"VC_Z_190300037_YIzumi")Adv.act(w0qyLbH,"0702")
Adv.actDelay(4.5,w0qyLbH,"0700")
Adv.talk(w0qyLbH,[[Please don't forgive her. Tonight, she's going to commit seppuku for her transgressions...]],"VC_Z_190300038_RKayamori")Adv.actDelay(0,w0qyLbH,"0700")if A=="MC02_10_06_00"then
Adv.act(nsgji,"030101")else Adv.act(nsgji,"030101")end
Adv.talk(nsgji,[[No, I won't?!]],"VC_Z_190300039_YIzumi")elseif bClTIa==6 or A=="MC02_10_06_00"then
Adv.act(w0qyLbH,"160201")Adv.actDelay(5,w0qyLbH,"1702")
Adv.talk(w0qyLbH,[[Please forgive her. She might seem like a dum-dum, but uh...hmm...]],"VC_Kurukurupa_00022_v001_RKayamori")Adv.act(w0qyLbH,"0802")
Adv.actDelay(1.7,w0qyLbH,"1602")
Adv.talk(w0qyLbH,[[I can't find anymore good qualities...even though I had so many before...]],"VC_Kurukurupa_00023_v001_RKayamori")if A=="MC02_10_06_00"then Adv.act(w0qyLbH,"070201")else
Adv.act(w0qyLbH,"070201")end
Adv.talk(w0qyLbH,[[Yup, I've got nothing! I can't cover for her anymore!]],"VC_Kurukurupa_00024_v001_RKayamori")if A=="MC02_10_06_00"then Adv.act(nsgji,"030101")else
Adv.act(nsgji,"030101")end
Adv.talk(nsgji,[[Am I that depthless as a person?!]],"VC_Kurukurupa_00025_v001_YIzumi")if A=="MC02_10_06_00"then Adv.act(w0qyLbH,"1102")else
Adv.act(w0qyLbH,"1102")end
Adv.talk(w0qyLbH,[[Never mind, I've got one now. She's surprisingly good at playing the straight man to my jokes.]],"VC_Kurukurupa_00026_v001_RKayamori")if A=="MC02_10_06_00"then Adv.act(nsgji,"130101")else
Adv.act(nsgji,"130101")end
Adv.talk(nsgji,[[Don't say that... You're making it more difficult for me to put an end to your stupid banter...]],"VC_Kurukurupa_00027_v001_YIzumi")end end