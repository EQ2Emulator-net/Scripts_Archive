--[[
	Script Name	: SpawnScripts/Starcrest/PhilosopherOrrinalanya.lua
	Script Purpose	: Philosopher Orrinalanya 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_callout_f7da3eeb.mp3", "Hmm ... you don't seem the philosophizing type ... good day and farewell.", "", 3739495894, 1743566335, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_multhail4_68bb913c.mp3", "I suppose I should meet him for that debate... it does seem like an interesting topic...", "", 415488076, 395918302, Spawn)
	else
	end

end

