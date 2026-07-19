function init()refresh()end
function refresh()
if IsHoliday()then
Activity.TouchEvent("CafeteriaGate","Lua/Story/Common/Activity/MC01/ActivityAtCafeteriaOnHoliday_MC01",[[Spend time at the Cafeteria to raise Silliness.]])else
Activity.TouchEvent("CafeteriaGate","Lua/Story/Common/Activity/MC01/ActivityAtCafeteriaOnWeekday_MC01",[[Spend time at the Cafeteria to raise Silliness.]])end
InitScript("Lua/Story/Common/Activity/Common/ActivityAtArena")
InitScript("Lua/Story/Common/Activity/Common/ActivityAtShop")
TouchEvent("ResearchBuildingGate","Lua/Story/Common/Activity/Common/ActivityAtResearchBuilding")
Activity.TouchEvent("LibraryGate","Lua/Story/Common/Activity/MC01/ActivityAtLibrary_MC01",[[Spend time at the Library to raise Openness.]])
Activity.TouchEvent("GymGate","Lua/Story/Common/Activity/MC01/ActivityAtGym_MC01",[[Train at the Gym to raise Determination.]])
Activity.TouchEvent("NarvySquareGate","Lua/Story/Common/Activity/MC01/ActivityAtNarvySquare_MC01",[[Spend time at Narby Square to raise Kindness.]])
Activity.TouchEvent("StudioGate","Lua/Story/Common/Activity/MC01/ActivityAtStudio_MC01",[[Spend time at the Studio to raise Charisma.]])
if IsHoliday()then
Activity.TouchEvent("MiemieGate","Lua/Story/Common/Activity/MC01/ActivityAtMiemie_MC01",[[Spend time at Miemie Spa to raise Kindness.]])end
if IsHoliday()then
Activity.TouchEvent("Battle9Gate","Lua/Story/Common/Activity/MC01/ActivityAtTheaterBattle9_MC01",[[Watch a movie to raise Eccentricity.]])end
if IsHoliday()then
Activity.TouchEvent("FountainGate","Lua/Story/Common/Activity/MC01/ActivityAtFountain_MC01",[[Spend time at Fountain Square to raise Openness.]])end end