local nsgji=Domain.getDivingChapter()
local bClTIa=Domain.getDivingDay()function init()refresh()end
function refresh()
TouchEvent("ShopGate",TriggerShop)if GetFlag("IsHomeToShop")==1 then
StartEvent(GotoShopFromHome)end end;TriggerShop=function()GotoShop()end
GotoShop=function()
Field.moveBy("Player",Vec(0,0,2),2)Field.setFollowerAutoMoveEnabled(true)
Transition.start()Field.stopTaskKey("Player")
if
GetFlag("ショップに行きます")==0 then
Field.setByWaypointPosition("Player","ShopLowerPoint",Vec(0,0,0))Field.moveOnRoute("Player","ShopUpperPoint")
Field.setupEnterFormation("ShopUpperPoint")Wait(0.5)Transition.finish()Wait(1.5)
Transition.start()Field.stopTaskKey("Player")Field.finishEvent(0)end;Wait(1)DisplayShopMessage()
if
GetFlag("ショップに行きます")==0 then Field.startEvent(nil,false)
Field.resetPosition("ShopUpperPoint")Field.setupEnterFormation("ShopCrossPoint")
Field.moveCameraTargetWait("Player",0)Field.moveOnRoute("Player","ShopCrossPoint")
Field.moveOnRoute("Camera","ShopCrossPoint")Wait(1)Transition.finish()Wait(1.5)
Transition.start()Field.stopTaskKey("Player")
Field.stopTaskKey("Camera")Field.finishEvent(0)
SetFlag("ショップに行きます",1)end;Wait(1)Transition.finish()ExitShop()end
GotoShopFromHome=function()Transition.start(0.01)Wait(1)
DisplayShopMessage()if GetFlag("ショップに行きます")==0 then
Field.stopTaskKey("Player")Field.stopTaskKey("Camera")
SetFlag("ショップに行きます",1)end
ExitShop()end
ExitShop=function()if GetFlag("IsHomeToShop")==1 then ReturnTerminal()
Transition.finish()else Transition.finish()
Field.playerComeIn("ShopPoint",Vec(0,0,1))end end
function DisplayShopMessage()
if nsgji=="MC05A"and bClTIa>2 then
DisplayShopTemplate("Shop.Normal601")elseif nsgji=="MC05A"and bClTIa==2 then
DisplayShopTemplate("Shop.Normal601",0,"New items in stock! ♪")elseif nsgji=="MC04B"and bClTIa>-1 then
DisplayShopTemplate("Shop.Normal501")elseif nsgji=="MC04B"and bClTIa==-1 then
DisplayShopTemplate("Shop.Normal501",0,"New items in stock! ♪")elseif nsgji=="MC04"and bClTIa>5 then
DisplayShopTemplate("Shop.Normal402")elseif nsgji=="MC04"and bClTIa==5 then
DisplayShopTemplate("Shop.Normal402",0,"New items in stock! ♪")elseif nsgji=="MC04"and bClTIa>1 then
DisplayShopTemplate("Shop.Normal401")elseif nsgji=="MC04"and bClTIa==1 then
DisplayShopTemplate("Shop.Normal401",0,"New items in stock! ♪")elseif nsgji=="MC03"and bClTIa>19 then
DisplayShopTemplate("Shop.Normal303")elseif nsgji=="MC03"and bClTIa==19 then
DisplayShopTemplate("Shop.Normal303",1)elseif nsgji=="MC03"and bClTIa>10 then
DisplayShopTemplate("Shop.Normal302")elseif nsgji=="MC03"and bClTIa==10 then
DisplayShopTemplate("Shop.Normal302",1)elseif nsgji=="MC03"and bClTIa>3 then
DisplayShopTemplate("Shop.Normal301")elseif nsgji=="MC03"and bClTIa==3 then
DisplayShopTemplate("Shop.Normal301",1,"New items in stock! ♪")elseif nsgji=="MC02"and bClTIa>23 then
DisplayShopTemplate("Shop.Normal204")elseif nsgji=="MC02"and bClTIa==23 then
DisplayShopTemplate("Shop.Normal204",1,"New items in stock! ♪")elseif nsgji=="MC02"and bClTIa>18 then
DisplayShopTemplate("Shop.Normal203")elseif nsgji=="MC02"and bClTIa==18 then
DisplayShopTemplate("Shop.Normal203",1,"New items in stock! ♪")elseif nsgji=="MC02"and bClTIa>11 then
DisplayShopTemplate("Shop.Normal202")elseif nsgji=="MC02"and bClTIa==11 then
DisplayShopTemplate("Shop.Normal202",1,"New items in stock! ♪")elseif nsgji=="MC02"and bClTIa>2 then
DisplayShopTemplate("Shop.Normal201")elseif nsgji=="MC02"and bClTIa==2 then
DisplayShopTemplate("Shop.Normal201",1,"New items in stock! ♪")elseif nsgji=="MC02"then DisplayShopTemplate("Shop.Normal103")elseif
nsgji=="MC01"and bClTIa>7 then DisplayShopTemplate("Shop.Normal103")elseif
nsgji=="MC01"and bClTIa==7 then
DisplayShopTemplate("Shop.Normal103",1,"New items in stock! ♪")elseif nsgji=="MC01"and bClTIa==5 then
DisplayShopTemplate("Shop.Normal102")elseif nsgji=="MC01"and bClTIa==4 then
DisplayShopTemplate("Shop.Normal102",1,"New items in stock! ♪")elseif nsgji=="AC02"and bClTIa==3 then
DisplayShopTemplate("Shop.Normal204")elseif nsgji=="AC03"and bClTIa==3 then
DisplayShopTemplate("Shop.Normal204")else DisplayShopTemplate("Shop.Normal101")end end
function DisplayShopTemplate(rDzL7SVO,BW0WFP,X8)local JQT=nil;if GetFlag("IsHomeToShop")==0 then
JQT=Sound.pushBGM("SB0020",1,1)end
local rDzL7SVO=rDzL7SVO or"item_group_M001"
local X8=X8 or[[Everything here is highly recommended! ♪]]
local AtYtR=goodbyeMessage or[[Hope you get what you paid for! ♪ Keep raking in more GP to spend here! ♪]]
local ND2BCh3=character or Adv.characterAsync("MSatsuki")
local IODBg=Adv.loadBGAsync("Background/FriendStreetShop/FriendStreetShop")BW0WFP=BW0WFP or 0
Field.startNovel(function()local YRDu=nil;local CWRiP=nil
if BW0WFP==0 then
if nsgji=="MC04"then
if
bClTIa>=1 and bClTIa<=3 then
YRDu=[[There's no point in letting those GP sit around. ♪]]CWRiP="VC_Common_00007_v004_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"2600"})elseif
bClTIa>=4 and bClTIa<=6 then YRDu=[[Get yourselves fully geared up! ♪]]
CWRiP="VC_Common_00020_v004_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa==7 then YRDu=[[You sure that's enough armor? ♪]]
CWRiP="VC_Common_00033_v004_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa>=8 and bClTIa<=10 then
YRDu=[[When you get what you pay for with everything here, that's a seal of confidence. ♪]]CWRiP="VC_Common_00046_v004_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"010202"})elseif bClTIa==11 then
YRDu=[[Never forget to be prepared! ♪]]CWRiP="VC_Common_00059_v004_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})end elseif nsgji=="MC04B"then
if bClTIa>=-1 and bClTIa<=2 then
YRDu=[[I hope you brought a crapload of GP! ♪]]CWRiP="VC_Common_00106_v006_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"2600"})elseif
bClTIa>=7 and bClTIa<=8 then YRDu=[[Buy everything you need to not die on your next mission! ♪]]
CWRiP="VC_Common_00123_v006_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa>=9 and bClTIa<=10 then
YRDu=[[This is your one-stop shop for everything you need! ♪]]CWRiP="VC_Common_00136_v006_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})elseif
bClTIa>=11 and bClTIa<=12 then YRDu=[[An ounce of prevention is worth a pound of cure! ♪]]
CWRiP="VC_Common_00153_v006_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa==13 then
YRDu=[[Today's the day! Make sure to keep your loins well-girded! ♪]]CWRiP="VC_Common_00154_v006_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"010202"})end elseif nsgji=="MC05A"then
if bClTIa>=2 and bClTIa<=4 then
YRDu=[[Let your GP flow today! ♪]]CWRiP="VC_Common_00098_v008_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})elseif
bClTIa>=5 and bClTIa<=7 then YRDu=[[Be prepared to shop till you drop! ♪]]
CWRiP="VC_Common_00123_v008_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa==8 then YRDu=[[We're open all hours! ♪]]
CWRiP="VC_Common_00136_v008_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa>=9 and bClTIa<=11 then YRDu=[[Spend like there is no tomorrow! ♪]]
CWRiP="VC_Common_00154_v008_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})elseif bClTIa==12 then YRDu=[[Get yourselves fully geared up! ♪]]
CWRiP="VC_Common_00168_v008_MSatsuki"Layout.createStage(IODBg)
Layout.show({ND2BCh3,"260002"})end elseif nsgji=="MC05C"then
if bClTIa>=1 and bClTIa<=3 then
YRDu=[[The store loves a high roller! ♪]]CWRiP="VC_Common_v014_00082_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})elseif
bClTIa>=4 and bClTIa<=5 then YRDu=[[Spend your GP like water! ♪]]CWRiP="VC_Common_v014_00104_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})elseif bClTIa==6 then
YRDu=[[The art is not in hording money, but in spending it! ♪]]CWRiP="VC_Common_v014_00124_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})elseif bClTIa==8 then
YRDu=[[You can't take your money with you to the afterlife! ♪]]CWRiP="VC_Common_v014_00140_MSatsuki"
Layout.createStage(IODBg)Layout.show({ND2BCh3,"260002"})end else YRDu=[[Welcome! With our products, you get what you pay for! ♪]]
CWRiP="VC_Z_900400088_MSatsuki"Layout.createStage(IODBg)Layout.show(ND2BCh3)end else YRDu=[[Welcome! There are new items in stock. ♪]]
CWRiP="VC_Z_900400089_MSatsuki"Layout.createStage(IODBg)Layout.show(ND2BCh3)end;Transition.finish()Adv.talk(ND2BCh3,YRDu,CWRiP)
Layout.show()UI.shop(rDzL7SVO,X8)
Layout.show({ND2BCh3,"000201"})Adv.talk(ND2BCh3,AtYtR,"VC_Z_900400091_MSatsuki")
Transition.start()Layout.show()Adv.hide(IODBg,0)end)
if GetFlag("IsHomeToShop")==0 then Sound.popBGM(JQT,1,1)end end