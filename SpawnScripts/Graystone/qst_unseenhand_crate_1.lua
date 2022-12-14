--[[
	Script Name	: SpawnScripts/Graystone/qst_unseenhand_crate_1.lua
	Script Purpose	: qst_unseenhand_crate_1
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

local BARBARIAN_MENTOR_QUEST_2 = 16
local DWARF_MENTOR_QUEST_3 = 296

function spawn(NPC)
	SetRequiredQuest(NPC, BARBARIAN_MENTOR_QUEST_2, 4)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_3, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, BARBARIAN_MENTOR_QUEST_2) and GetQuestStep(Caster, BARBARIAN_MENTOR_QUEST_2) == 4 and SpellName == "Inspect" then
		AddStepProgress(Caster, BARBARIAN_MENTOR_QUEST_2, 4, 1)
		SendMessage(Caster, "This crate is not from shipment CG4QC.")
		SendPopUpMessage(Caster, "This crate is not from shipment CG4QC.", 255, 255, 255)
		SpawnSet(Target, "show_command_icon", 0)
		AddTimer(Target, 60000, "ResetBarrel")
	elseif HasQuest(Caster, DWARF_MENTOR_QUEST_3) and GetQuestStep(Caster, DWARF_MENTOR_QUEST_3) == 2 and SpellName == "Inspect" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Stop inspecting.")
		StartDialogConversation(conversation, 1, Target, Caster, "A quick search doesn't turn up any packages meant for Mav Boilfist, perhaps you should check some of the other crates and barrels.")
	end
end

function ResetBarrel(NPC)
	SpawnSet(NPC, "show_command_icon", 1)
end