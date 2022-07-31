--[[
	Script Name	: Tenacity.lua
	Script Purpose	: Inquisitor Tenacity spell line
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, HealthAmt, SkillAmt)
    AddSpellBonus(Target, 500, HealthAmt)
    AddSpellBonus(Target, 623, SkillAmt)  -- Damage Per Second
end

function remove(Caster, Target, HealthAmt, SkillAmt)
    RemoveSpellBonus(Target)
end