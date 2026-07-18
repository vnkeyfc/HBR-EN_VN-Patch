function init()refresh()end
function refresh()local A=Domain.getDivingDay()
InitScript("Lua/Story/Common/Activity/MC05B/ActivityAtArena_MC05B")
InitScript("Lua/Story/Common/Activity/MC05B/ActivityAtShop_MC05B")
TouchEvent("ResearchBuildingGate","Lua/Story/Common/Activity/Common/ActivityAtResearchBuilding")end