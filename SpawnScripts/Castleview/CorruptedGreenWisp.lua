--[[
	Script Name	: SpawnScripts/Castleview/CorruptedGreenWisp.lua
	Script Purpose	: CorruptedGreenWisp
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_3 = 67

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_3, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, HIGH_ELF_MENTOR_QUEST_3) and GetQuestStep(Caster, HIGH_ELF_MENTOR_QUEST_3) == 2 and SpellName == "Cleanse" then
		SetStepComplete(Caster, HIGH_ELF_MENTOR_QUEST_3, 2)
		local devious_sunshimmer_sprite = SpawnMob(GetZone(Target), 2360051, false, 710.408, -15.5306, -161.493, 200)
		AddHate(Caster, devious_sunshimmer_sprite, 100)
		Despawn(Target, 180000)
	end
end