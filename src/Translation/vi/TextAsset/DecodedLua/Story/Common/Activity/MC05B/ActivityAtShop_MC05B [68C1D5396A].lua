local nsgji=Domain.getDivingChapter()
local bClTIa=Domain.getDivingDay()function init()refresh()end
function refresh()
TouchEvent("ShopGate",TriggerShopMC05B)if GetFlag("IsHomeToShop")==1 then
StartEvent(GotoShopFromHomeMC05B)end end;TriggerShopMC05B=function()GotoShopMC05B()end
GotoShopMC05B=function()
Field.moveBy("Player",Vec(0,0,2),2)Field.setFollowerAutoMoveEnabled(true)
Transition.start()Field.stopTaskKey("Player")
if
GetFlag("ショップに行きます")==0 then
Field.setByWaypointPosition("Player","ShopLowerPoint",Vec(0,0,0))Field.moveOnRoute("Player","ShopUpperPoint")
Field.setupEnterFormation("ShopUpperPoint")Wait(0.5)Transition.finish()Wait(1.5)
Transition.start()Field.stopTaskKey("Player")Field.finishEvent(0)end;Wait(1)DisplayShopMessageMC05B()
if
GetFlag("ショップに行きます")==0 then Field.startEvent(nil,false)
Field.resetPosition("ShopUpperPoint")Field.setupEnterFormation("ShopCrossPoint")
Field.moveCameraTargetWait("Player",0)Field.moveOnRoute("Player","ShopCrossPoint")
Field.moveOnRoute("Camera","ShopCrossPoint")Wait(1)Transition.finish()Wait(1.5)
Transition.start()Field.stopTaskKey("Player")
Field.stopTaskKey("Camera")Field.finishEvent(0)
SetFlag("ショップに行きます",1)end;Wait(1)Transition.finish()ExitShopMC05B()end
GotoShopFromHomeMC05B=function()Transition.start(0.01)Wait(1)
DisplayShopMessageMC05B()if GetFlag("ショップに行きます")==0 then
Field.stopTaskKey("Player")Field.stopTaskKey("Camera")
SetFlag("ショップに行きます",1)end
ExitShopMC05B()end
ExitShopMC05B=function()if GetFlag("IsHomeToShop")==1 then ReturnTerminal()
Transition.finish()else Transition.finish()
Field.playerComeIn("ShopPoint",Vec(0,0,1))end end
function DisplayShopMessageMC05B()
if nsgji=="MC05B"and bClTIa==1 then
DisplayShopTemplateMC05B("Shop.Normal701","MSatsuki",nil,1,[[Spend every last GP like there's no tomorrow!]],"VC_Common_v009_00501_MSatsuki","010202",
nil,[[Hope you get what you paid for! ♪ Keep raking in more GP to spend here! ♪]],"VC_Z_900400091_MSatsuki","000201")elseif nsgji=="MC05B"and(bClTIa==2 or bClTIa==3)then
DisplayShopTemplateMC05B("Shop.Normal701","MSatsuki",
nil,0,[[Spend every last GP like there's no tomorrow!]],"VC_Common_v009_00501_MSatsuki","010202",nil,[[Hope you get what you paid for! ♪ Keep raking in more GP to spend here! ♪]],"VC_Z_900400091_MSatsuki","000201")elseif nsgji=="MC05B"and bClTIa>=6 and bClTIa<=8 then
DisplayShopTemplateMC05B("Shop.Normal702",
nil,true,2,[[Welcome!]],"VC_Z_905700197_mob",nil,nil,[[Thank you very much!]],"VC_Z_905700200_mob",nil)elseif nsgji=="MC05B"and bClTIa>=9 then
DisplayShopTemplateMC05B("Shop.Normal701","MSatsuki",nil,0,[[Don't slack off on your preparations for emergency situations. ♪]],"VC_Common_v009_00556_MSatsuki","010202",
nil,[[Hope you get what you paid for! ♪ Keep raking in more GP to spend here! ♪]],"VC_Z_900400091_MSatsuki","000201")else DisplayShopTemplateMC05B("Shop.Normal101")end end
function DisplayShopTemplateMC05B(rDzL7SVO,BW0WFP,X8,JQT,AtYtR,ND2BCh3,IODBg,YRDu,CWRiP,LB0A,dl)local sKPjQkdn=nil;if GetFlag("IsHomeToShop")==0 then
sKPjQkdn=Sound.pushBGM("SB0020",1,1)end
local rDzL7SVO=rDzL7SVO or"item_group_M001"local HHH9IlJp;local uYz2ryy4
if not X8 then HHH9IlJp=BW0WFP or"MSatsuki"
uYz2ryy4=Adv.characterAsync(HHH9IlJp)else if BW0WFP~=nil then uYz2ryy4=Adv.mobCharacterAsync(BW0WFP)else
uYz2ryy4=Adv.characterAsync("RKayamori")end end;JQT=JQT or 0
local AtYtR=AtYtR or[[Welcome! With our products, you get what you pay for, guaranteed! ♪]]local ND2BCh3=ND2BCh3 or"VC_Z_900400088_MSatsuki"
local IODBg=IODBg or"260001"local zVPRGDnG
if JQT==0 then
zVPRGDnG=YRDu or[[Everything here is highly recommended! ♪]]elseif JQT==1 then zVPRGDnG=YRDu or[[New items in stock! ♪]]end
local CWRiP=CWRiP or[[Hope you get what you paid for! ♪\nKeep raking in more GP to spend here! ♪]]local LB0A=LB0A or"VC_Z_900400091_MSatsuki"local dl=dl or"000201"
local IKxw=Adv.loadBGAsync("Background/FriendStreetShop/FriendStreetShop")
Field.startNovel(function()
if JQT==0 then Layout.createStage(IKxw)
Layout.show({uYz2ryy4,IODBg})Transition.finish()
Adv.talk(uYz2ryy4,AtYtR,ND2BCh3)Layout.show()elseif JQT==1 then
AtYtR=[[Welcome! There are new items in stock. ♪]]ND2BCh3="VC_Z_900400089_MSatsuki"Layout.createStage(IKxw)
Layout.show({uYz2ryy4,IODBg})Transition.finish()
Adv.talk(uYz2ryy4,AtYtR,ND2BCh3)Layout.show()elseif JQT==2 then
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show()Transition.finish()local w0;local UgXzI_C=false
local MLFLplLe=0
for jwq=6,bClTIa do
w0="MC05B_Day0"..jwq.."_ショップ店員会話聞いた"MLFLplLe=GetFlag(w0)if MLFLplLe==1 then UgXzI_C=true;break end end
if not UgXzI_C then
w0="MC05B_Day0"..bClTIa.."_ショップ店員会話聞いた"SetFlag(w0,1)
Adv.talkAllIn(nil,"Staff Member",AtYtR,ND2BCh3)
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.showEx({uYz2ryy4,"080201"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Huh? You're not Merry!]],"VC_Z_905700227_RKayamori")
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show()
Adv.talkAllIn(nil,"Staff Member",[[Miss Satsuki is unavailable, so I will be running the store in her stead for the time being.]],"VC_Z_905700198_mob")
if nsgji=="MC05B"and bClTIa==6 then
Adv.actDelayWrapper(uYz2ryy4,{{0,"040002"},{3.2,"000202"}},function()
Adv.talkWithFacial(
nil,nil,uYz2ryy4,[[Now that you mention it, I haven't seen Wakkie and her squad. I guess they're on a field mission?]],"VC_Z_905700228_RKayamori")end)elseif nsgji=="MC05B"and(bClTIa==7 or bClTIa==8)then
Layout.createStageFixBg(IKxw,Position.BG_RIGHT)Layout.showEx({uYz2ryy4,"020002"})
Adv.talkWithFacial(nil,nil,uYz2ryy4,[[Oh right... Wakkie is...]],"VC_Z_905700229_RKayamori")end
Layout.createStageFixBg(IKxw,Position.BG_CENTER)Layout.show()
Adv.talkAllIn(nil,"Staff Member",[[The prices and items remain unchanged, so please pay us a visit at any time.]],"VC_Z_905700199_mob")else Adv.talkAllIn(nil,"Staff Member",AtYtR,ND2BCh3)end;Layout.show()end;UI.shop(rDzL7SVO,zVPRGDnG)if JQT~=2 then
Layout.show({uYz2ryy4,dl})Adv.talk(uYz2ryy4,CWRiP,LB0A)else Layout.show()
Adv.talkAllIn(nil,"Staff Member",CWRiP,LB0A)end
Transition.start()Layout.show()Adv.hide(IKxw,0)end)
if GetFlag("IsHomeToShop")==0 then Sound.popBGM(sKPjQkdn,1,1)end end