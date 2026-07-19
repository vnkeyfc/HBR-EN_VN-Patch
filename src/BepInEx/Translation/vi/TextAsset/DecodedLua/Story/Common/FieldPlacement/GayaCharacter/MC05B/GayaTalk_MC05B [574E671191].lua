local nsgji=Domain.getDivingDay()local bClTIa=false
function init()refresh()end
function refresh()local rDzL7SVO=FieldLabel()
if rDzL7SVO=="MainStreet_LateAutumn"then
GayaTalkAtMainStreet()elseif rDzL7SVO=="FriendStreet_LateAutumn"then GayaTalkAtFriendStreet()elseif rDzL7SVO==
"BackStreet_LateAutumn"then GayaTalkAtBackStreet()elseif
rDzL7SVO=="School1F_LateAutumn"then GayaTalkAtSchool1F()elseif rDzL7SVO=="Dormitory1F_LateAutumn"then
GayaTalkAtDormitory1F()elseif rDzL7SVO=="Grave_LateAutumn"then GayaTalkAtGrave()elseif
rDzL7SVO=="ClockTowerRoof_LateAutumn"then GayaTalkAtClockTowerRoof()elseif rDzL7SVO=="ShoppingStreet_LateAutumn"then
GayaTalkAtShoppingStreet()end end
function GayaTalkAtMainStreet()
if nsgji==2 or nsgji==8 or nsgji==9 then
EmptyEvent("IMinase_Gaya")
ReachEventNoLock("CSkopovskaya_Gaya",function()EmptyEvent("CSkopovskaya_Gaya")
if
GetLocalFlag("IMinase_Gaya_MC05B_done")==0 then
SetLocalFlag("IMinase_Gaya_MC05B_done",1)
if IsActive("IMinase_Gaya")then
Field.setLookAtAngle("CSkopovskaya_Gaya",-45,nil,0.8)Wait(0.5)
Field.talkByGayaBalloonJustOnce("CSkopovskaya_Gaya",[[You are very strong.]],nil,"Normal",nil,nil,"VC_Common_v009_00036_CSkopovskaya")
Field.talkByGayaBalloonJustOnce("IMinase_Gaya",[[Nope, not true. I just don't wanna lose anyone ever again.]],nil,"Normal",nil,nil,"VC_Common_v009_00000_IMinase")
Field.setLookAtAngle("CSkopovskaya_Gaya",nil,nil,0.8)end end end)end
if nsgji~=7 and nsgji~=8 and nsgji~=9 then
EmptyEvent("KHiiragi_Gaya")
ReachEventNoLock("MKiryu_Gaya",function()EmptyEvent("MKiryu_Gaya")
if
GetLocalFlag("KHiiragi_Gaya_MC05B_done")==0 then
SetLocalFlag("KHiiragi_Gaya_MC05B_done",1)
if IsActive("KHiiragi_Gaya")then
Field.setLookAtTarget("MKiryu_Gaya","KHiiragi_Gaya")
Field.talkByGayaBalloonJustOnce("MKiryu_Gaya",[[Hiiragi, I would love for you to head the\nAssociation for the Preservation of Traditional Japanese Culture's\nghost stories department.]],
nil,"Normal",nil,nil,"VC_Common_v009_00010_MKiryu")
Field.talkByGayaBalloonJustOnce("KHiiragi_Gaya",[[My specialty is exorcism, so if anything,\nI think I'm destroying your culture...]],nil,"Normal",nil,nil,"VC_Common_v009_00002_KHiiragi")end end end)end
if nsgji==1 or nsgji==2 or nsgji==3 then
EmptyEvent("YShirakawa_Gaya")
ReachEventNoLock("NiOhshima_Gaya",function()EmptyEvent("YShirakawa_Gaya")
if
GetLocalFlag("YShirakawa_Gaya_MC05B_done")==0 then
SetLocalFlag("YShirakawa_Gaya_MC05B_done",1)
if IsActive("NiOhshima_Gaya")then
Field.talkByGayaBalloonJustOnce("NiOhshima_Gaya",[[Your skin is always perfect, Shirakawa.\nWould you mind sharing your routine with me?]],
nil,"Normal",nil,nil,"VC_Common_v009_00020_NiOhshima")
Field.talkByGayaBalloonJustOnce("YShirakawa_Gaya",[[My...routine? All I do is scrub with water...]],nil,"Normal",nil,nil,"VC_Common_v009_00008_YShirakawa")end end end)end
if nsgji==6 or nsgji==10 then
ReachEventNoLock("CSugahara_Gaya",function()
EmptyEvent("CSugahara_Gaya")Field.setLookAtAngle("CSugahara_Gaya",nil,2,0.5)
Field.talkByGayaBalloonJustOnce("CSugahara_Gaya",[[Seems it's almost that time of the year\nfor a lolita closet review.]],
nil,"Normal",nil,nil,"VC_Common_v009_00011_CSugahara")Field.disableLookAt("CSugahara_Gaya",0.5)end)end
if nsgji==6 or nsgji==7 then
ReachEventNoLock("MNikaido_Gaya",function()
EmptyEvent("MNikaido_Gaya")
Field.talkByGayaBalloonJustOnce("MNikaido_Gaya",[[I wonder what Mikoto and Ishii\nare talking about? I'm dying to know...]],nil,"Normal",nil,nil,"VC_Common_v009_00013_MNikaido")end)end
if nsgji==6 or nsgji==7 or nsgji==8 then
EmptyEvent("IIshii_Gaya")
ReachEventNoLock("FMikoto_Gaya",function()EmptyEvent("FMikoto_Gaya")
if
GetLocalFlag("IIshii_Gaya_MC05B_done")==0 then
SetLocalFlag("IIshii_Gaya_MC05B_done",1)
if IsActive("IIshii_Gaya")then
Field.setLookAtTarget("IIshii_Gaya","FMikoto_Gaya")
Field.talkByGayaBalloonJustOnce("IIshii_Gaya",[[Fubukicchi, you've been, like,\nhanging out with Akaricchi lots lately, yeah?]],nil,"Normal",nil,nil,"VC_Common_v009_00014_IIshii")
Field.talkByGayaBalloonJustOnce("FMikoto_Gaya",[[Date's so pessimistic.\nI think she'd be a natural fit for depressive black metal.\nYeah, no doubt about it.]],
nil,"Normal",nil,nil,"VC_Common_v009_00015_FMikoto")end end end)end
if nsgji==1 or nsgji==2 or nsgji==3 then
ReachEventNoLock("IcOhshima_Gaya",function()
EmptyEvent("IcOhshima_Gaya")Field.setLookAtAngle("IcOhshima_Gaya",nil,3,1)
Field.talkByGayaBalloonJustOnce("IcOhshima_Gaya",[[Kagawa...the land of udon...\nHow I miss the days we all made udon\nby stepping on the dough together.]],
nil,"Normal",nil,nil,"VC_Common_v009_00019_IcOhshima")Field.setLookAtAngle("IcOhshima_Gaya",nil,nil,0.8)end)end
if
nsgji==1 or nsgji==2 or nsgji==3 or nsgji==7 then
ReachEventNoLock("MiOhshima_Gaya",function()EmptyEvent("MiOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("MiOhshima_Gaya",[[Hungry? Give Mino Eats a spin!]],
nil,nil,nil,nil,"VC_Common_v009_00021_MiOhshima")end)Field.setReactionRange("MiOhshima_Gaya",10)end
if nsgji==1 or nsgji==3 or nsgji==10 then
EmptyEvent("CMatsuoka_Gaya")
ReachEventNoLock("MuOhshima_Gaya",function()EmptyEvent("MuOhshima_Gaya")
if
GetLocalFlag("CMatsuoka_Gaya_MC05B_done")==0 then
SetLocalFlag("CMatsuoka_Gaya_MC05B_done",1)
if IsActive("CMatsuoka_Gaya")then
Field.setLookAtTarget("CMatsuoka_Gaya","MuOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("CMatsuoka_Gaya",[[There was this time I messed up the amount of explosives,\nand I got blasted way further than I anticipated.\nThat really caught me by surprise.]],
nil,"Normal",nil,nil,"VC_Common_v009_00028_CMatsuoka")
Field.changeAnimation("MuOhshima_Gaya","FieldUnique04",1,0.5)
Field.talkByGayaBalloonJustOnce("MuOhshima_Gaya",[[That's amazing... Haa... Aaah...\nI-I want to be blown up like that too.]],nil,"Normal",nil,nil,"VC_Common_v009_00024_MuOhshima")
Field.changeAnimation("MuOhshima_Gaya","FieldIdle",1,1)end end end)end
if
nsgji==1 or nsgji==2 or nsgji==8 or nsgji==9 then
ReachEventNoLock("MdAngelis_Gaya",function()EmptyEvent("MdAngelis_Gaya")
Field.talkByGayaBalloonJustOnce("MdAngelis_Gaya",[[Tch, if you need something from me, form a line.\nI will kill you.]],
nil,"Normal",nil,nil,"VC_Common_v009_00035_MdAngelis")end)
if IsActive("MdAngelis_Gaya")then EmptyEvent("MdAngelisMob1_Gaya")
EmptyEvent("MdAngelisMob2_Gaya")EmptyEvent("MdAngelisMob4_Gaya")
EmptyEvent("MdAngelisMob5_Gaya")EmptyEvent("MdAngelisMob8_Gaya")end end
if
nsgji==1 or nsgji==3 or nsgji==8 or nsgji==10 then
ReachEventNoLock("MKurosawa_Gaya",function()EmptyEvent("MKurosawa_Gaya")
Field.talkByGayaBalloonJustOnce("MKurosawa_Gaya",[[Our battlefield's a much bigger place den before.\nI fer sure want a kick-ass bike dat'll\ntake me where dey need me at a moment's notice.]],
nil,"Normal",nil,nil,"VC_Common_v009_00030_MKurosawa")end)Field.setReactionRange("MKurosawa_Gaya",10)end end
function GayaTalkAtFriendStreet()
if
nsgji==1 or nsgji==3 or nsgji==8 or nsgji==10 then EmptyEvent("INatsume_Gaya")
ReachEventNoLock("SMinase_Gaya",function()
EmptyEvent("SMinase_Gaya")
if GetLocalFlag("INatsume_Gaya_MC05B_done")==0 then
SetLocalFlag("INatsume_Gaya_MC05B_done",1)
if IsActive("INatsume_Gaya")then
Field.setLookAtTarget("INatsume_Gaya","SMinase_Gaya",0.6)Wait(0.5)
Field.setLookAtTarget("SMinase_Gaya","INatsume_Gaya",0.6)
Field.talkByGayaBalloonJustOnce("INatsume_Gaya",[[Has your swordsmanship changed?]],nil,"Normal",nil,nil,"VC_Common_v009_00029_INatsume")
Field.talkByGayaBalloonJustOnce("SMinase_Gaya",[[Have to evolve if you want to survive, meow.]],nil,"Normal",nil,nil,"VC_Common_v009_00001_SMinase")end end end)end
if nsgji==9 or nsgji==10 then
ReachEventNoLock("SSakuraba_Gaya",function()
EmptyEvent("SSakuraba_Gaya")
Field.talkByGayaBalloonJustOnce("SSakuraba_Gaya",[[The stars seem to be in disarray.\nI pray that all will be well.]],nil,"Normal",nil,nil,"VC_Common_v009_00004_SSakuraba")end)end
if nsgji==9 or nsgji==10 then
ReachEventNoLock("AKanzaki_Gaya",function()
EmptyEvent("AKanzaki_Gaya")
Field.talkByGayaBalloonJustOnce("AKanzaki_Gaya",[[Everyone's pushing themselves too hard...\nThat means I need to work harder!]],nil,"Normal",nil,nil,"VC_Common_v009_00007_AKanzaki")end)end
if nsgji==8 then
ReachEventNoLock("ADate_Gaya",function()EmptyEvent("ADate_Gaya")
Routine(function()Field.setLookAtAngle("ADate_Gaya",
nil,0,0.3)Wait(1)Field.setLookAtAngle("ADate_Gaya",45,
nil,0.8)Wait(1)Field.setLookAtAngle("ADate_Gaya",
-45,nil,0.8)Wait(1)Field.setLookAtAngle("ADate_Gaya",45,
nil,0.8)Wait(1)Field.setLookAtAngle("ADate_Gaya",
nil,nil,0.8)end)
Field.talkByGayaBalloonJustOnce("ADate_Gaya",[[Achoo...\nM-Maybe someone somewhere is saying\na stink bug like me should just disappear already?]],nil,"Normal",
nil,nil,"VC_Common_v009_00017_ADate")end)end
if nsgji==8 then
ReachEventNoLock("AMizuhara_Gaya",function()EmptyEvent("AMizuhara_Gaya")
Field.talkByGayaBalloonJustOnce("AMizuhara_Gaya",[[I'm going to strip Misato of all her scales and get her butt-naked!]],
nil,"Normal",nil,nil,"VC_Common_v009_00018_AMizuhara")end)end
if
nsgji==1 or nsgji==2 or nsgji==3 or nsgji==7 then EmptyEvent("YoOhshima_Gaya")
ReachEventNoLock("IrOhshima_Gaya",function()
EmptyEvent("YoOhshima_Gaya")
if GetLocalFlag("YoOhshima_Gaya_MC05B_done")==0 then
SetLocalFlag("YoOhshima_Gaya_MC05B_done",1)
if IsActive("IrOhshima_Gaya")then
Field.talkByGayaBalloonJustOnce("YoOhshima_Gaya",[[Isuzu, you're reeeally something.\nYou're always helping us\nfrom the shadows... Zzz...]],
nil,"Normal",nil,nil,"VC_Common_v009_00022_YoOhshima")
Field.talkByGayaBalloonJustOnce("IrOhshima_Gaya",[[I-It's not like I've really done—\nWait, you fell asleep?!]],nil,"Normal",nil,nil,"VC_Common_v009_00023_IrOhshima")end end end)end end
function GayaTalkAtSchool1F()
if nsgji==9 or nsgji==10 then
ReachEventNoLock("MTenne_Gaya",function()
EmptyEvent("MTenne_Gaya")
Field.talkByGayaBalloonJustOnce("MTenne_Gaya",[[You aren't leaving us...\nI won't allow it.]],nil,"Normal",nil,nil,"VC_Common_v009_00005_MTenne")end)end
if nsgji==1 or nsgji==3 or nsgji==10 then
ReachEventNoLock("SHanamura_Gaya",function()
EmptyEvent("SHanamura_Gaya")
Field.changeAnimation("SHanamura_Gaya","FieldIdleTension",1,0.5)
Field.talkByGayaBalloonJustOnce("SHanamura_Gaya",[[I look forward to the beautiful melodies\nmy straitlaced songbird will unveil.]],nil,"Normal",nil,nil,"VC_Common_v009_00027_SHanamura")
Field.changeAnimation("SHanamura_Gaya","FieldIdle",1,0.5)end)end
if nsgji==1 or nsgji==8 or nsgji==9 then
EmptyEvent("CReaper_Gaya")
ReachEventNoLock("VBalakrishnan_Gaya",function()EmptyEvent("CReaper_Gaya")
if
GetLocalFlag("CReaper_Gaya_MC05B_done")==0 then
SetLocalFlag("CReaper_Gaya_MC05B_done",1)
if IsActive("VBalakrishnan_Gaya")then
Field.talkByGayaBalloonJustOnce("VBalakrishnan_Gaya",[[We should fill your next movie\nwith dramatic song and dance routines.\nYou need one hundred backup dancers.]],
nil,"Normal",nil,nil,"VC_Common_v009_00034_VBalakrishnan")
Field.talkByGayaBalloonJustOnce("CReaper_Gaya",[[Great idea! They'll make for da poifect shorts\nan' go viral for sure!]],nil,"Normal",nil,nil,"VC_Common_v009_00031_CReaper")end end end)end
if nsgji==1 or nsgji==2 then
ReachEventNoLock("LShanhua_Gaya",function()
EmptyEvent("LShanhua_Gaya")
Field.changeAnimation("LShanhua_Gaya","FieldIdleTension",1,0.5)
Field.talkByGayaBalloonJustOnce("LShanhua_Gaya",[[I have heard that Shikoku is full of mountains.\nPerhaps I would do well to review the Battle of Mount Qi.]],
nil,"Normal",nil,nil,"VC_Common_v009_00032_LShanhua")
Field.changeAnimation("LShanhua_Gaya","FieldIdle",1,0.5)end)end end
function GayaTalkAtBackStreet()
if nsgji~=6 or nsgji~=7 or nsgji~=8 then
EmptyEvent("Byakko_Gaya")
ReachEventNoLock("MTsukishiro_Gaya",function()EmptyEvent("MTsukishiro_Gaya")
if
GetLocalFlag("Byakko_Gaya_MC05B_done")==0 then
SetLocalFlag("Byakko_Gaya_MC05B_done",1)
if IsActive("Byakko_Gaya")then
Field.talkByGayaBalloonJustOnce("MTsukishiro_Gaya",[[31-A appears to be even livelier than before... I wonder why.\nThat said, it certainly soothes my loneliness.]],
nil,"Normal",nil,nil,"VC_Common_v009_00009_MTsukishiro")
Field.talkByGayaBalloonJustOnce("Byakko_Gaya",[[Vrrrar.]],nil,"Normal",nil,nil,"VC_Quest_00061_v007_Byakko")end end end)end end
function GayaTalkAtDormitory1F()
if nsgji==9 or nsgji==10 then
ReachEventNoLock("YBungo_Gaya",function()
EmptyEvent("YBungo_Gaya")
Field.talkByGayaBalloonJustOnce("YBungo_Gaya",[[I will guard this place\nwhile the Great Yamawaki is away, <i>snip</i>!]],nil,"Normal",nil,nil,"VC_Common_v009_00006_YBungo")end)end
if nsgji==1 or nsgji==10 then EmptyEvent("HOgasawara_Gaya")
ReachEventNoLock("KMaruyama_Gaya",function()
EmptyEvent("KMaruyama_Gaya")
if GetLocalFlag("HOgasawara_Gaya_MC05B_done")==0 then
SetLocalFlag("HOgasawara_Gaya_MC05B_done",1)
if IsActive("HOgasawara_Gaya")then
Field.setLookAtTarget("KMaruyama_Gaya","HOgasawara_Gaya")
Field.talkByGayaBalloonJustOnce("HOgasawara_Gaya",[[Don't you think we can perhaps ask\nKayamori and her band to\nmentor us in music?]],nil,"Normal",nil,
nil,"VC_Common_v009_00012_HOgasawara")
Field.talkByGayaBalloonJustOnce("KMaruyama_Gaya",[[Yanagi can do anything.\nWe should ask her instead!]],nil,"Normal",nil,-1,"VC_Common_v009_00026_KMaruyama")end;bClTIa=true end end)end
if nsgji==1 or nsgji==3 or nsgji==10 then
ReachEventNoLock("MYanagi_Gaya",function()
if bClTIa then
EmptyEvent("MYanagi_Gaya")
if IsActive("HOgasawara_Gaya")then
Field.talkByGayaBalloonJustOnce("MYanagi_Gaya",[[It would appear that one's preparations have not been for naught.]],
nil,"Normal",nil,nil,"VC_Common_v009_00025_MYanagi")end end end)end
if
nsgji==1 or nsgji==2 or nsgji==8 or nsgji==9 then
ReachEventNoLock("IRedmayne_Gaya",function()EmptyEvent("IRedmayne_Gaya")
Routine(function()Wait(2)Field.setLookAtAngle("IRedmayne_Gaya",
nil,2,0.5)Wait(2)Field.setLookAtAngle("IRedmayne_Gaya",30,
-0.5,0.8)Wait(0.8)Field.setLookAtAngle("IRedmayne_Gaya",
-30,-0.5,0.8)Wait(0.8)Field.setLookAtAngle("IRedmayne_Gaya",30,
-0.5,0.8)Wait(0.8)Field.setLookAtAngle("IRedmayne_Gaya",
nil,-0.5,0.8)Wait(0.8)Field.setLookAtAngle("IRedmayne_Gaya",
nil,nil,0.8)end)
Field.talkByGayaBalloonJustOnce("IRedmayne_Gaya",[[The Seraph Squadron Murder Mystery in the Mists...\ndoes not belong in the Case Files of Irene Redmayne.]],
nil,"Normal",nil,1,"VC_Common_v009_00033_IRedmayne")end)end end
function GayaTalkAtGrave()
if nsgji==6 or nsgji==7 or nsgji==8 then
ReachEventNoLock("RMurohushi_Gaya",function()
EmptyEvent("RMurohushi_Gaya")
Field.talkByGayaBalloonJustOnce("RMurohushi_Gaya",[[When I get back today,\nmaybe I'll have everyone spoil me a little for a change.]],nil,"Normal",nil,
nil,"VC_Common_v009_00016_RMurohushi")end)end end;function GayaTalkAtClockTowerRoof()end;function GayaTalkAtShoppingStreet()end