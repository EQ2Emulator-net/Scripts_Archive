--[[
	Script Name	: SpawnScripts/WillowWood/acrate.lua
	Script Purpose	: a crate
	Script Author	: Scatman
	Script Date	: 2009.09.20
	Script Notes	: 
--]]

local HALF_ELF_MENTOR_QUEST_1 = 23

function spawn(NPC)
	SetRequiredQuest(NPC, HALF_ELF_MENTOR_QUEST_1, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
	if HasQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) and GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) == 2 then
		local spawn_id = GetSpawnID(NPC)
		conversation = CreateConversation()
		AddConversationOption(conversation, "Close box.")
		
		-- Contents: Raisins and Dried Apricots
		if spawn_id == 2370080 then
			StartDialogConversation(conversation, 1, NPC, Spawn, "This box is filled with bottles.")
		
		-- Contents: Carving Wood
		elseif spawn_id == 2370083 then
			StartDialogConversation(conversation, 1, NPC, Spawn, "This box is filled with clay figures.")
		
		-- Contents: Herbs
		elseif spawn_id == 2370079 then
			StartDialogConversation(conversation, 1, NPC, Spawn, "This box is filled with herbs inside.")
		
		-- Contents: Bottles
		elseif spawn_id == 2370081 then
			StartDialogConversation(conversation, 1, NPC, Spawn, "This box has carving wood inside.")
		
		-- Contents: Clay Figures
		elseif spawn_id == 2370082 then
			StartDialogConversation(conversation, 1, NPC, Spawn, "This box has raisins & dried apricots inside.")
		end
	end
end