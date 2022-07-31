--[[
	Script Name	: Mug.lua
	Script Purpose	: Brigand Debuff
	Script Author	: Zcoretri
	Script Date	: 17.April.2010
	Script Notes	:   
--]]

function cast(Caster, Target, StatAmt, SkillAmt)
    AddSkillBonus(Target, 609880714, SkillAmt)
    AddSpellBonus(Target, 0, StatAmt)
end


function remove(Caster, Target, StatAmt, SkillAmt)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end