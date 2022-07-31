--[[
	Script Name	: SpawnScripts/BeggarsCourt/ScribeInkwell.lua
	Script Purpose	: Scribe Inkwell <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function SaySomethingRandom(NPC, Spawn)
	choice = math.random(1, 4)
	
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/scribe/halfelf_scribe_service_evil_1_hail_gf_8de85b9c.mp3", "Perhaps I could interest you in our necromantic line of spells?  ", "agree", 1871870075, 1766711032, Spawn)
	elseif choice == 2 then
		Say(NPC, "So are you planning to master the art at the academy? We keep all of the required supplies right here!", Spawn)
	elseif choice == 3 then
		Say(NPC, "I've got scrolls here that will make your eyes pop out and your nostrils bleed! What can I get for you?", Spawn)
	elseif choice == 4 then
		Say(NPC, "Curses have been a big seller. Is there anything in particular you're looking to torment?", Spawn)
	end
end