--[[
	Script Name	: SpawnScripts/Castleview/planter_3.lua
	Script Purpose	: planter_3
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_2 = 61

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_2, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, HIGH_ELF_MENTOR_QUEST_2) and not QuestStepIsComplete(Caster, HIGH_ELF_MENTOR_QUEST_2, 3) and SpellName == "Plant Seeds" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Plant the seeds.", "PlantSeeds")
		StartDialogConversation(conversation, 1, Target, Caster, "This is one of the planters that Vindain spoke of.")
	end
end

function PlantSeeds(NPC, Spawn)
	SetStepComplete(Caster, HIGH_ELF_MENTOR_QUEST_2, 3)
	local GreenWisp = SpawnMob(GetZone(Target), 2360075, false, 760.25, -14.4741, -160.396, 200)
	Despawn(GreenWisp, 300000)
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the planter.")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You place a seed, some soil, and some water into the planter. A fresh green wisp plant begins to grow at a surprising rate.")
end