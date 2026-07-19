function init()refresh()end
function refresh()
local A=Domain.getCurrentStorySeasonType()local w0qyLbH;local nsgji
if A==StorySeasonType.AutumnSummer then w0qyLbH="_Autumn"
nsgji="_AutumnSummer"elseif A==StorySeasonType.LateAutumn then w0qyLbH="_LateAutumn"nsgji="_LateAutumn"else
w0qyLbH=""nsgji=""end
Field.setActiveAt("MainStreet"..w0qyLbH,"FriendStreetLeftGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"FriendStreetRightGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"DormitoryGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"SchoolGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"ResearchBuildingGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"HeliportGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"GraveGate",true)
Field.setActiveAt("MainStreet"..w0qyLbH,"ClockTowerGate",true)if IsHoliday()then
Field.setActiveAt("MainStreet"..w0qyLbH,"ShoppingStreetGate",true)end
Field.setActiveAt("FriendStreet"..w0qyLbH,"MainStreetLeftGate",true)
Field.setActiveAt("FriendStreet"..w0qyLbH,"MainStreetRightGate",true)
Field.setActiveAt("FriendStreet"..w0qyLbH,"ShopGate",true)
Field.setActiveAt("FriendStreet"..w0qyLbH,"BackStreetGate",true)
Field.setActiveAt("BackStreet"..nsgji,"FriendStreetGate",true)
Field.setActiveAt("ShoppingStreet"..nsgji,"MainStreetGate",true)
Field.setActiveAt("School1F"..nsgji,"MainStreetGate",true)
Field.setActiveAt("Dormitory1F"..nsgji,"MainStreetGate",true)
Field.setActiveAt("Dormitory1F"..nsgji,"31ARoomGate",true)if
Game.isStory()and Domain.getLatestMainStoryOrder()>=105 then
Field.setActiveAt("Dormitory1F"..nsgji,"RooftopGate",true)end
Field.setActiveAt(
"Grave"..nsgji,"MainStreetGate",true)
Field.setActiveAt("ClockTowerRoof"..nsgji,"MainStreetGate",true)
if
Game.isStory()and Domain.getLatestMainStoryOrder()>=105 then
if nsgji==""or nsgji=="_Autumn"then
Field.setActiveAt("RoofTop","Dormitory1FGate",true)else
Field.setActiveAt("RoofTop"..nsgji,"Dormitory1FGate",true)end end end