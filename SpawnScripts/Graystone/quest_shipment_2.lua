--[[
	Script Name	: SpawnScripts/Graystone/quest_shipment_2.lua
	Script Purpose	: quest_shipment_2
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

local BARBARIAN_MENTOR_QUEST_3 = 65

function spawn(NPC)
	SetRequiredQuest(NPC, BARBARIAN_MENTOR_QUEST_3, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	-- Location Buoys
	if HasQuest(Caster, BARBARIAN_MENTOR_QUEST_3) and not QuestStepIsComplete(Caster, BARBARIAN_MENTOR_QUEST_3, 2) and HasItem(Caster, 7755) then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Attach the location buoy to the create.", "AttachBuoy")
		AddConversationOption(conversation, "Put the buoys away.")
		StartDialogConversation(conversation, 1, Target, Caster, "The location buoys are ready to be attached to the crates, you just need to get close enough to attach them properly.")
	end
end

function AttachBuoy(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the buoys away.")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You fashion a buoy to the crate and let the flotation device float freely to the surface. The shipping coordinate and his men should now be able to locate this crate.")
		
	SetStepComplete(Spawn, BARBARIAN_MENTOR_QUEST_3, 2)
	local Buoy = SpawnMob(GetZone(NPC), 2350097, false, 973.62, -27.23, -157.60)
	Despawn(Buoy, 120000)
end