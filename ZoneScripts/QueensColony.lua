--[[
	Script Name	: ZoneScripts/QueensColony.lua
	Script Purpose	: Location Pop-ups
	Script Author	: John Adams
	Script Date	: 2009.05.07
	Script Notes	: 
--]]

function init_zone_script(Zone)
end

function enter_location(Zone, Player, GridID)
	if GridID == 771354606 then
		SendPopUpMessage(Player, "Sunset Meadow", 255, 255, 0)
	end
end
