function init()refresh()end
function refresh()
if IsHoliday()then
Activity.TouchEvent("CafeteriaGate","Lua/Story/Common/Activity/MC02/ActivityAtCafeteriaOnHoliday_MC02",[[Spend time at the Cafeteria to raise Silliness.]])else
Activity.TouchEvent("CafeteriaGate","Lua/Story/Common/Activity/MC02/ActivityAtCafeteriaOnWeekday_MC02",[[Spend time at the Cafeteria to raise Silliness.]])end
InitScript("Lua/Story/Common/Activity/Common/ActivityAtArena")
InitScript("Lua/Story/Common/Activity/Common/ActivityAtShop")
TouchEvent("ResearchBuildingGate","Lua/Story/Common/Activity/Common/ActivityAtResearchBuilding")
Activity.TouchEvent("LibraryGate","Lua/Story/Common/Activity/MC02/ActivityAtLibrary_MC02",[[Spend time at the Library to raise Openness.]])
Activity.TouchEvent("GymGate","Lua/Story/Common/Activity/MC02/ActivityAtGym_MC02",[[Train at the Gym to raise Determination.]])
Activity.TouchEvent("NarvySquareGate","Lua/Story/Common/Activity/MC02/ActivityAtNarvySquare_MC02",[[Spend time at Narby Square to raise Kindness.]])
Activity.TouchEvent("StudioGate","Lua/Story/Common/Activity/MC02/ActivityAtStudio_MC02",[[Spend time at the Studio to raise Charisma.]])
if IsHoliday()then
Activity.TouchEvent("MiemieGate","Lua/Story/Common/Activity/MC02/ActivityAtMiemie_MC02",[[Spend time at Miemie Spa to raise Kindness.]])end
if IsHoliday()then
Activity.TouchEvent("Battle9Gate","Lua/Story/Common/Activity/MC02/ActivityAtTheaterBattle9_MC02",[[Watch a movie to raise Eccentricity.]])end
if IsHoliday()then
Activity.TouchEvent("FountainGate","Lua/Story/Common/Activity/MC02/ActivityAtFountain_MC02",[[Spend time at Fountain Square to raise Openness.]])end end