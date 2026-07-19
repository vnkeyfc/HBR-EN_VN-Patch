function init()refresh()end
function refresh()local A=FieldLabel()
if A=="MainStreet"then
GayaTalkAtMainStreet()elseif A=="FriendStreet"then GayaTalkAtFriendStreet()elseif A=="BackStreet"then
GayaTalkAtBackStreet()elseif A=="School1F"then GayaTalkAtSchool1F()elseif A=="Dormitory1F"then
GayaTalkAtDormitory1F()elseif A=="Grave"then GayaTalkAtGrave()elseif A=="ClockTowerRoof"then
GayaTalkAtClockTowerRoof()end end
function GayaTalkAtMainStreet()
ReachEventNoLock("AKanzaki_Gaya",function()EmptyEvent("AKanzaki_Gaya")
Field.talkByGayaBalloonJustOnce("AKanzaki_Gaya",[[Sugoi!]],
nil,nil,nil,nil,"VC_Common_00048_v001_AKanzaki")end)
ReachEventNoLock("SSakuraba_Gaya",function()EmptyEvent("SSakuraba_Gaya")
Field.talkByGayaBalloonJustOnce("SSakuraba_Gaya",[[I feel the stars are guiding us.]],
nil,nil,nil,nil,"VC_Common_00040_v001_SSakuraba")end)
ReachEventNoLock("NiOhshima_Gaya",function()EmptyEvent("NiOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("NiOhshima_Gaya",[[The allowable calorie intake is...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00021_NiOhshima")end)
ReachEventNoLock("YoOhshima_Gaya",function()EmptyEvent("YoOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("YoOhshima_Gaya",[[Zzz... Zzz...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00027_YoOhshima")end)
ReachEventNoLock("MiOhshima_Gaya",function()EmptyEvent("MiOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("MiOhshima_Gaya",[[Outta the way! Comin' through!]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00024_MiOhshima")end)Field.setReactionRange("MiOhshima_Gaya",10)
ReachEventNoLock("IRedmayne_Gaya",function()
EmptyEvent("IRedmayne_Gaya")
Field.talkByGayaBalloonJustOnce("IRedmayne_Gaya",[[Never overlook even the smallest of clue!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00060_IRedmayne")end)
ReachEventNoLock("CSkopovskaya_Gaya",function()EmptyEvent("CSkopovskaya_Gaya")
Field.talkByGayaBalloonJustOnce("CSkopovskaya_Gaya",[[Alone, again...it is inevitable.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00069_CSkopovskaya")end)EmptyEvent("KMaruyama_Gaya")
EmptyEvent("MYanagi_Gaya")
ReachEventNoLock("MKurosawa_Gaya",function()EmptyEvent("MKurosawa_Gaya")
if
IsActive("KMaruyama_Gaya")and IsActive("MYanagi_Gaya")then
Field.talkByGayaBalloonJustOnce("MKurosawa_Gaya",[[Let's get this over with then.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00051_MKurosawa")
Field.talkByGayaBalloonJustOnce("KMaruyama_Gaya",[[Do you get it, Yanagi?]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00040_KMaruyama")
Field.talkByGayaBalloonJustOnce("MYanagi_Gaya",[[Understood, my lady.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00036_MYanagi")end end)
ReachEventNoLock("CMatsuoka_Gaya",function()EmptyEvent("CMatsuoka_Gaya")
Field.talkByGayaBalloonJustOnce("CMatsuoka_Gaya",[[Ha, ha, ha!]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00045_CMatsuoka")end)EmptyEvent("MKiryu_Gaya")
ReachEventNoLock("CSugahara_Gaya",function()
EmptyEvent("CSugahara_Gaya")
if IsActive("MKiryu_Gaya")then
Field.talkByGayaBalloonJustOnce("CSugahara_Gaya",[[Will you hear me out?]],nil,nil,nil,nil,"VC_Common_00063_v001_CSugahara")
Field.talkByGayaBalloonJustOnce("MKiryu_Gaya",[[Certainly.]],nil,nil,nil,nil,"VC_Common_00060_v001_MKiryu")end end)EmptyEvent("SKura_Gaya")
EmptyEvent("MTsukishiro_Gaya")
ReachEventNoLock("YShirakawa_Gaya",function()EmptyEvent("YShirakawa_Gaya")
if
IsActive("SKura_Gaya")and IsActive("MTsukishiro_Gaya")then
Field.talkByGayaBalloonJustOnce("YShirakawa_Gaya",[[Everyone, listen up.]],
nil,nil,nil,nil,"VC_Common_00054_v001_YShirakawa")
Field.talkByGayaBalloonJustOnce("MTsukishiro_Gaya",[[Yup.]],nil,nil,nil,nil,"VC_Common_00057_v001_MTsukishiro")
Field.talkByGayaBalloonJustOnce("SKura_Gaya",[[Hm, now this is troublesome.]],nil,nil,nil,nil,"VC_Common_00070_v001_SKura")end end)
ReachEventNoLock("HOgasawara_Gaya",function()EmptyEvent("HOgasawara_Gaya")
Field.talkByGayaBalloonJustOnce("HOgasawara_Gaya",[[Phew!]],
nil,nil,nil,nil,"VC_Common_00068_v001_HOgasawara")end)end
function GayaTalkAtFriendStreet()EmptyEvent("EAoi_Gaya")
ReachEventNoLock("Byakko_Gaya",function()
EmptyEvent("Byakko_Gaya")
if IsActive("EAoi_Gaya")then
Field.talkByGayaBalloonJustOnce("Byakko_Gaya",[[Grrar.]],nil,nil,nil,nil,"VC_ActivityAtLibrary_00007_Byakko")
Field.talkByGayaBalloonJustOnce("EAoi_Gaya",[[What is it?]],nil,nil,nil,nil,"VC_Common_00018_v001_EAoi")end end)EmptyEvent("IMinase_Gaya")
ReachEventNoLock("SMinase_Gaya",function()
EmptyEvent("SMinase_Gaya")
if IsActive("IMinase_Gaya")then
Field.talkByGayaBalloonJustOnce("SMinase_Gaya",[[Just dispose of it, meow.]],nil,nil,nil,nil,"VC_Common_00024_v001_SMinase")
Field.setLookAtTarget("IMinase_Gaya","SMinase_Gaya")
Field.talkByGayaBalloonJustOnce("IMinase_Gaya",[[She may be my sister, but she's terrifying.]],nil,nil,nil,nil,"VC_Common_00021_v001_IMinase")end end)
ReachEventNoLock("MNikaido_Gaya",function()EmptyEvent("MNikaido_Gaya")
Field.talkByGayaBalloonJustOnce("MNikaido_Gaya",[[It looks like a Go stone.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00000_MNikaido")end)
ReachEventNoLock("IIshii_Gaya",function()EmptyEvent("IIshii_Gaya")
Field.talkByGayaBalloonJustOnce("IIshii_Gaya",[[I'm going to go draw some Narbies.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00005_IIshii")end)EmptyEvent("RMurohushi_Gaya")
ReachEventNoLock("ADate_Gaya",function()
EmptyEvent("ADate_Gaya")
if IsActive("RMurohushi_Gaya")then
Field.talkByGayaBalloonJustOnce("ADate_Gaya",[[Someone like me couldn't...]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00012_ADate")
Field.talkByGayaBalloonJustOnce("RMurohushi_Gaya",[[Oh my, oh my.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00009_RMurohushi")end end)
ReachEventNoLock("INatsume_Gaya",function()EmptyEvent("INatsume_Gaya")
Field.talkByGayaBalloonJustOnce("INatsume_Gaya",[[...Hm!]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00048_INatsume")end)
ReachEventNoLock("MuOhshima_Gaya",function()EmptyEvent("MuOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("MuOhshima_Gaya",[[Hah...hah...hah...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00033_MuOhshima")end)end
function GayaTalkAtBackStreet()EmptyEvent("AMizuhara_Gaya")
ReachEventNoLock("FMikoto_Gaya",function()
EmptyEvent("FMikoto_Gaya")
if IsActive("AMizuhara_Gaya")then
Field.talkByGayaBalloonJustOnce("FMikoto_Gaya",[[Feelin' bad.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00006_FMikoto")
Field.talkByGayaBalloonJustOnce("AMizuhara_Gaya",[[Aye!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00015_AMizuhara")end end)end
function GayaTalkAtSchool1F()EmptyEvent("MSatsuki_Gaya")
ReachEventNoLock("MTenne_Gaya",function()
EmptyEvent("MTenne_Gaya")
Field.talkByGayaBalloonJustOnce("MTenne_Gaya",[[Hm. So that's what it is.]],nil,nil,nil,nil,"VC_Common_00042_v001_MTenne")end)
ReachEventNoLock("IcOhshima_Gaya",function()EmptyEvent("IcOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("IcOhshima_Gaya",[[I wonder if the library is open?]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00018_IcOhshima")end)
ReachEventNoLock("IrOhshima_Gaya",function()EmptyEvent("IrOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("IrOhshima_Gaya",[[Darn, this is tough.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00030_IrOhshima")end)end
function GayaTalkAtDormitory1F()EmptyEvent("BIYamawaki_Gaya")
ReachEventNoLock("YBungo_Gaya",function()
EmptyEvent("YBungo_Gaya")
if IsActive("BIYamawaki_Gaya")then
Field.talkByGayaBalloonJustOnce("YBungo_Gaya",[[I want to try it, <i>snip</i>!]],nil,"Anger",nil,nil,"VC_Common_00045_v001_YBungo")
Field.talkByGayaBalloonJustOnce("BIYamawaki_Gaya",[[Come on...just leave it there already.]],nil,nil,nil,nil,"VC_Common_00036_v001_BIYamawaki")end end)EmptyEvent("CReaper_Gaya")
EmptyEvent("MdAngelis_Gaya")
ReachEventNoLock("VBalakrishnan_Gaya",function()EmptyEvent("VBalakrishnan_Gaya")
if
IsActive("CReaper_Gaya")and IsActive("MdAngelis_Gaya")then
Field.talkByGayaBalloonJustOnce("VBalakrishnan_Gaya",[[The above theory will\nlead us to the answer.]],
nil,nil,nil,1,"VC_FieldPlacementVoice_00063_VBalakrishnan")
Field.talkByGayaBalloonJustOnce("CReaper_Gaya",[[That's right!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00054_CReaper")
Field.talkByGayaBalloonJustOnce("MdAngelis_Gaya",[[Make up your mind.\nOr I <i>will</i> kill you.]],nil,nil,nil,1,"VC_FieldPlacementVoice_00066_MdAngelis")end end)
ReachEventNoLock("LShanhua_Gaya",function()EmptyEvent("LShanhua_Gaya")
Field.talkByGayaBalloonJustOnce("LShanhua_Gaya",[[My strategies are unbeatable.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00059_LShanhua")end)end
function GayaTalkAtGrave()
ReachEventNoLock("KHiiragi_Gaya",function()EmptyEvent("KHiiragi_Gaya")
Field.talkByGayaBalloonJustOnce("KHiiragi_Gaya",[[...Thank goodness.]],
nil,nil,nil,nil,"VC_Common_00030_v001_KHiiragi")end)end
function GayaTalkAtClockTowerRoof()
ReachEventNoLock("SHanamura_Gaya",function()EmptyEvent("SHanamura_Gaya")
Field.talkByGayaBalloonJustOnce("SHanamura_Gaya",[[What do you say,\nmy little songbird?]],
nil,nil,nil,-1,"VC_FieldPlacementVoice_00042_SHanamura")end)end