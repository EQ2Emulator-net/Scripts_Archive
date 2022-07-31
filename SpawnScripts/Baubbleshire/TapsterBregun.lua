--[[
	Script Name	: SpawnScripts/Baubbleshire/TapsterBregun.lua
	Script Purpose	: Tapster Bregun <Bartender>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1, 5)
	if choice == 1 then
		GenericHail(NPC, Spawn)
		PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_bregun_first_1ee27a85.mp3", "Greetings, traveler. Is there something I can get ya today?", "hello", 3137139088, 2537693501, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_multhail2_ccbdd67e.mp3", "Welcome to the Deepmug Tavern!  I'm Bregun. Talk to me if you wanna lift a pint!  Now, what are ya drinkin'?", "", 2461588719, 573667497, Spawn)
	elseif choice == 4 then
		GenericHail(NPC, Spawn)
		PlayFlavor(NPC, "", "What can I get for ya?", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		GenericHail(NPC, Spawn)
		PlayFlavor(NPC, "", "I bet you have some stories, eh? Adventuring must be an exciting life!", "", 0, 0, Spawn)
	end
end