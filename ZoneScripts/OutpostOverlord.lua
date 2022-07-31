--[[
	Script Name	: ZoneScripts/QueensColony.lua
	Script Purpose	: Location Pop-ups
	Script Author	: John Adams
	Script Date	: 2010.02.20
	Script Notes	: Problem - We cannot use SetLocationProximityFunction at grid changes, or everytime a player
			: passes that location (in or out), they get a popup for the place they are leaving, as well
			: as the place they are entering :(
			: We need a way to combine leaving one grid with entering another at a specific x,y,z!
--]]

function init_zone_script(Zone)

	-- Outpost
	SetLocationProximityFunction(Zone, -10.77, -2.75, 161.4, 10, "SythorsSpire")
	SetLocationProximityFunction(Zone, 30, -5.74, 134, 20, "CombatClearing")
	SetLocationProximityFunction(Zone, -10, -3, 111, 20, "WhizratchetsBank")
	SetLocationProximityFunction(Zone, -30, -3, 122, 10, "GresharsForge")
	SetLocationProximityFunction(Zone, -87, -10, -2, 40, "SandstalkerBay", "OutpostOverlord_Y")

	-- Wilderwood
	SetLocationProximityFunction(Zone, 107.2, 1.5, 110, 20, "RockyDig")
	SetLocationProximityFunction(Zone, 128.6, 1.5, 34, 10, "Nook")

	-- Fisher Falls
	-- SetLocationProximityFunction(Zone, -68, 5, -156, 25, "AdriumsTreeHouse", "FisherFalls")

	-- Cliffdiver Canyon
	SetLocationProximityFunction(Zone, 260, -1, -70, 20, "WildbearVale")
	SetLocationProximityFunction(Zone, 145, 5, -158, 150, "ValleyOfDiscipline")

	-- Valley of Discipline
	SetLocationProximityFunction(Zone, 148, 5.5, -153, 20, "FalconerHill", "ValleyOfDiscipline")

end


function enter_location(Zone, Player, GridID)

	if GridID == 924281492 then
		-- OutpostOverlord_Y(Zone, Player)
	elseif GridID == 771354606 then
		-- SeasideGlade(Zone, Player)
	elseif GridID == 3146737430 then
		-- Wilderwood(Zone, Player)
	elseif GridID == 1246288135 then
		-- CliffdiverCanyon(Zone, Player)
	elseif GridID == -1638919358 then
		-- FisherFalls(Zone, Player)
	else
		--SendPopUpMessage(Player, "Location for Grid ID " .. GridID .. " not set!", 255, 0, 0)
		--Say(Player, "Location for Grid ID " .. GridID .. " not set!")
	end

end


function AdriumsTreeHouse(Zone, Player)
	SendPopUpMessage(Player, "Adrium's Tree House", 255, 255, 0)
end

function CliffdiverCanyon(Zone, Player)
	SendPopUpMessage(Player, "Cliffdiver Canyon", 255, 255, 0)
end

function CombatClearing(Zone, Player)
	SendPopUpMessage(Player, "Combat Clearing", 255, 255, 0)
end

function FalconerHill(Zone, Player)
	SendPopUpMessage(Player, "Falconer Hill", 255, 255, 0)
end

function FisherFalls(Zone, Player)
	SendPopUpMessage(Player, "Fisher Falls", 255, 255, 0)
end

function GresharsForge(Zone, Player)
	SendPopUpMessage(Player, "Greshar's Forge", 255, 255, 0)
end

function Nook(Zone, Player)
	SendPopUpMessage(Player, "The Nook", 255, 255, 0)
end

function OutpostOverlord_Y(Zone, Player)
	SendPopUpMessage(Player, "Outpost of the Overlord", 255, 255, 0)
end

function OutpostOverlord_W(Zone, Player)
	SendPopUpMessage(Player, "Outpost of the Overlord", 255, 255, 255)
end

function RockyDig(Zone, Player)
	SendPopUpMessage(Player, "Rocky Dig", 255, 255, 0)
end

function SandstalkerBay(Zone, Player)
	SendPopUpMessage(Player, "Sandstalker Bay", 255, 255, 0)
end

function SeasideGlade(Zone, Player)
	SendPopUpMessage(Player, "Seaside Glade", 255, 255, 0)
end

function SythorsSpire(Zone, Player)
	SendPopUpMessage(Player, "Sythor's Spire", 255, 255, 0)
end

function ValleyOfDiscipline(Zone, Player)
	SendPopUpMessage(Player, "The Valley of Discipline", 255, 255, 0)
end

function WhizratchetsBank(Zone, Player)
	SendPopUpMessage(Player, "Whizratchet's Bank", 255, 255, 0)
end

function WildbearVale(Zone, Player)
	SendPopUpMessage(Player, "Wildbear Vale", 255, 255, 0)
end

function Wilderwood(Zone, Player)
	SendPopUpMessage(Player, "The Wilderwood", 255, 255, 0)
end

