function init()refresh()end
function refresh()local A=FieldLabel()
if A=="MainStreet"then
GayaTalkAtMainStreet()elseif A=="FriendStreet"then GayaTalkAtFriendStreet()elseif A=="BackStreet"then
GayaTalkAtBackStreet()elseif A=="School1F"then GayaTalkAtSchool1F()elseif A=="Dormitory1F"then
GayaTalkAtDormitory1F()elseif A=="Grave"then GayaTalkAtGrave()elseif A=="ClockTowerRoof"then
GayaTalkAtClockTowerRoof()end end
function GayaTalkAtMainStreet()EmptyEvent("MTenne_Gaya")
ReachEventNoLock("AKanzaki_Gaya",function()
EmptyEvent("AKanzaki_Gaya")
if IsActive("MTenne_Gaya")then
Field.talkByGayaBalloonJustOnce("AKanzaki_Gaya",[[*sneak sneak*]],nil,nil,nil,nil,"VC_Common_00049_v001_AKanzaki")
Field.talkByGayaBalloonJustOnce("MTenne_Gaya",[[Oh... Will you be my test subject?]],nil,nil,nil,nil,"VC_Common_00043_v001_MTenne")end end)EmptyEvent("RMurohushi_Gaya")
ReachEventNoLock("AMizuhara_Gaya",function()
EmptyEvent("AMizuhara_Gaya")
if IsActive("RMurohushi_Gaya")then
Field.talkByGayaBalloonJustOnce("AMizuhara_Gaya",[[Delicious!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00016_AMizuhara")
Field.talkByGayaBalloonJustOnce("RMurohushi_Gaya",[[Hehehe.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00010_RMurohushi")end end)
ReachEventNoLock("ADate_Gaya",function()EmptyEvent("ADate_Gaya")
Field.talkByGayaBalloonJustOnce("ADate_Gaya",[[I'm trash, I'm scum...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00013_ADate")end)
ReachEventNoLock("NiOhshima_Gaya",function()EmptyEvent("NiOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("NiOhshima_Gaya",[[This spot is picture-perfect!]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00022_NiOhshima")end)
ReachEventNoLock("MiOhshima_Gaya",function()EmptyEvent("MiOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("MiOhshima_Gaya",[[Let's gooo!]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00025_MiOhshima")end)Field.setReactionRange("MiOhshima_Gaya",10)
if
IsExist("MuOhshima_Gaya")then EmptyEvent("MuOhshima_Gaya")
Routine(function()
Field.waitRouteWandererStop("MuOhshima_Gaya")
ReachEventNoLock("MuOhshima_Gaya",function()
Field.talkByGayaBalloonJustOnce("MuOhshima_Gaya",[[Whew!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00034_MuOhshima")EmptyEvent("MuOhshima_Gaya")end)end)end
ReachEventNoLock("MdAngelis_Gaya",function()EmptyEvent("MdAngelis_Gaya")
Field.talkByGayaBalloonJustOnce("MdAngelis_Gaya",[[There's Giapponese people everywhere, no?]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00067_MdAngelis")end)
ReachEventNoLock("VBalakrishnan_Gaya",function()EmptyEvent("VBalakrishnan_Gaya")
Field.talkByGayaBalloonJustOnce("VBalakrishnan_Gaya",[[Kari... I want kari...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00064_VBalakrishnan")end)
ReachEventNoLock("LShanhua_Gaya",function()EmptyEvent("LShanhua_Gaya")
Field.talkByGayaBalloonJustOnce("LShanhua_Gaya",[[I can feel them watching us...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00058_LShanhua")end)
ReachEventNoLock("CSkopovskaya_Gaya",function()EmptyEvent("CSkopovskaya_Gaya")
Field.talkByGayaBalloonJustOnce("CSkopovskaya_Gaya",[[Will you leave me, too...?]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00070_CSkopovskaya")end)EmptyEvent("KMaruyama_Gaya")
EmptyEvent("MYanagi_Gaya")
ReachEventNoLock("MKurosawa_Gaya",function()EmptyEvent("MKurosawa_Gaya")
if
IsActive("KMaruyama_Gaya")and IsActive("MYanagi_Gaya")then
Field.talkByGayaBalloonJustOnce("MKurosawa_Gaya",[[Ready to party, aren't ya?]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00052_MKurosawa")
Field.talkByGayaBalloonJustOnce("MYanagi_Gaya",[[As expected of my lady.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00037_MYanagi")end end)EmptyEvent("CSugahara_Gaya")
ReachEventNoLock("MKiryu_Gaya",function()
EmptyEvent("MKiryu_Gaya")
if IsActive("CSugahara_Gaya")then
Field.talkByGayaBalloonJustOnce("MKiryu_Gaya",[[How tranquil.]],nil,nil,nil,nil,"VC_Common_00062_v001_MKiryu")
Field.talkByGayaBalloonJustOnce("CSugahara_Gaya",[[It's so relaxing...]],nil,nil,nil,nil,"VC_Common_00064_v001_CSugahara")end end)EmptyEvent("YShirakawa_Gaya")
ReachEventNoLock("HOgasawara_Gaya",function()
EmptyEvent("HOgasawara_Gaya")
if IsActive("YShirakawa_Gaya")then
Field.talkByGayaBalloonJustOnce("HOgasawara_Gaya",[[As a master of the blade, allow me to handle it.]],
nil,nil,nil,nil,"VC_Common_00066_v001_HOgasawara")
Field.talkByGayaBalloonJustOnce("YShirakawa_Gaya",[[Yes, I understand.]],nil,nil,nil,nil,"VC_Common_00055_v001_YShirakawa")end end)end
function GayaTalkAtFriendStreet()EmptyEvent("EAoi_Gaya")
ReachEventNoLock("Byakko_Gaya",function()
EmptyEvent("Byakko_Gaya")
if IsActive("EAoi_Gaya")then
Field.talkByGayaBalloonJustOnce("Byakko_Gaya",[[Purrr.]],nil,nil,nil,nil,"VC_MC02_02_06_01_Novel_00197_Byakko")
Field.talkByGayaBalloonJustOnce("EAoi_Gaya",[[There, there.]],nil,nil,nil,nil,"VC_Common_00019_v001_EAoi")end end)EmptyEvent("IMinase_Gaya")
ReachEventNoLock("SMinase_Gaya",function()
EmptyEvent("SMinase_Gaya")
if IsActive("IMinase_Gaya")then
Field.talkByGayaBalloonJustOnce("SMinase_Gaya",[[I'm gonna have to kill 'em, meow.]],nil,nil,nil,nil,"VC_Common_00025_v001_SMinase")
Field.talkByGayaBalloonJustOnce("IMinase_Gaya",[[Yep. Got no choice but to kill them.]],nil,nil,nil,nil,"VC_Common_00022_v001_IMinase")end end)
ReachEventNoLock("YBungo_Gaya",function()EmptyEvent("YBungo_Gaya")
Field.talkByGayaBalloonJustOnce("YBungo_Gaya",[[Master!]],
nil,nil,nil,nil,"VC_Common_00047_v001_YBungo")end)
ReachEventNoLock("MNikaido_Gaya",function()EmptyEvent("MNikaido_Gaya")
Field.talkByGayaBalloonJustOnce("MNikaido_Gaya",[[It looks like a Go board.]],
nil,nil,nil,1,"VC_FieldPlacementVoice_00001_MNikaido")end)EmptyEvent("CMatsuoka_Gaya")
EmptyEvent("INatsume_Gaya")
Routine(function()
if
IsActive("CMatsuoka_Gaya")and IsActive("INatsume_Gaya")then Field.waitRouteWandererStop("CMatsuoka_Gaya")
ReachEventNoLock("CMatsuoka_Gaya",function()
Field.turnToTarget("CMatsuoka_Gaya","INatsume_Gaya",0.3)
Field.talkByGayaBalloonJustOnce("CMatsuoka_Gaya",[[Hey hey!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00046_CMatsuoka")Wait(1)
Field.talkByGayaBalloonJustOnce("INatsume_Gaya",[[Nngh...]],2,nil,nil,nil,"VC_FieldPlacementVoice_00049_INatsume")EmptyEvent("CMatsuoka_Gaya")end)end end)
ReachEventNoLock("YoOhshima_Gaya",function()EmptyEvent("YoOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("YoOhshima_Gaya",[[Ahh,\nmy body's sooo heavy...]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00028_YoOhshima")end)end
function GayaTalkAtBackStreet()
ReachEventNoLock("SKura_Gaya",function()EmptyEvent("SKura_Gaya")
Field.talkByGayaBalloonJustOnce("SKura_Gaya",[[Hah...Every day's so busy.]],
nil,nil,nil,nil,"VC_Common_00071_v001_SKura")end)end
function GayaTalkAtSchool1F()EmptyEvent("MSatsuki_Gaya")
ReachEventNoLock("IrOhshima_Gaya",function()
EmptyEvent("IrOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("IrOhshima_Gaya",[[There we go...]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00031_IrOhshima")end)EmptyEvent("CReaper_Gaya")
ReachEventNoLock("IRedmayne_Gaya",function()
EmptyEvent("IRedmayne_Gaya")
if IsActive("CReaper_Gaya")then
Field.talkByGayaBalloonJustOnce("IRedmayne_Gaya",[[Yes, this is it!]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00061_IRedmayne")
Field.talkByGayaBalloonJustOnce("CReaper_Gaya",[[Okay, let's go with that.]],nil,nil,nil,nil,"VC_FieldPlacementVoice_00055_CReaper")end end)
ReachEventNoLock("MTsukishiro_Gaya",function()EmptyEvent("MTsukishiro_Gaya")
Field.talkByGayaBalloonJustOnce("MTsukishiro_Gaya",[[Hm. How peaceful.]],
nil,nil,nil,nil,"VC_Common_00059_v001_MTsukishiro")end)end
function GayaTalkAtDormitory1F()
ReachEventNoLock("BIYamawaki_Gaya",function()EmptyEvent("BIYamawaki_Gaya")
Field.talkByGayaBalloonJustOnce("BIYamawaki_Gaya",[[Wow, I'm beat...]],
nil,nil,nil,nil,"VC_Common_00038_v001_BIYamawaki")end)Field.setReactionRange("BIYamawaki_Gaya",3)
ReachEventNoLock("SSakuraba_Gaya",function()
EmptyEvent("SSakuraba_Gaya")
Field.talkByGayaBalloonJustOnce("SSakuraba_Gaya",[[Oh my...\nthat's very astute.]],nil,nil,nil,nil,"VC_Common_00041_v001_SSakuraba")end)
ReachEventNoLock("SHanamura_Gaya",function()EmptyEvent("SHanamura_Gaya")
Field.talkByGayaBalloonJustOnce("SHanamura_Gaya",[[What a lovely symphony.]],
nil,nil,nil,nil,"VC_FieldPlacementVoice_00043_SHanamura")end)
ReachEventNoLock("IcOhshima_Gaya",function()EmptyEvent("IcOhshima_Gaya")
Field.talkByGayaBalloonJustOnce("IcOhshima_Gaya",[[Study, study, study...]],
nil,nil,nil,1,"VC_FieldPlacementVoice_00019_IcOhshima")end)end
function GayaTalkAtGrave()
ReachEventNoLock("KHiiragi_Gaya",function()EmptyEvent("KHiiragi_Gaya")
Field.talkByGayaBalloonJustOnce("KHiiragi_Gaya",[[...Phew. I'm calm now.]],
nil,nil,nil,nil,"VC_Common_00032_v001_KHiiragi")end)end
function GayaTalkAtClockTowerRoof()EmptyEvent("IIshii_Gaya")
ReachEventNoLock("FMikoto_Gaya",function()
EmptyEvent("FMikoto_Gaya")
if IsActive("IIshii_Gaya")then
Field.talkByGayaBalloonJustOnce("FMikoto_Gaya",[[Hah. You could die\nif you fell from this height.]],nil,nil,
nil,-1,"VC_FieldPlacementVoice_00007_FMikoto")
Field.talkByGayaBalloonJustOnce("IIshii_Gaya",[[I wonder what colors you see...]],nil,nil,nil,-1,"VC_FieldPlacementVoice_00004_IIshii")end end)end