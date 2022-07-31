--[[
	Script Name	: Armored
	Script Purpose	: Guardian Defensive Stance script
	Script Author	: Zcoretri
	Script Date	: 2010.01.26
	Script Note	: 
--]]

function cast(Caster, Target, SkillAmt, Aggression, Defense, Mitigation, WornArmor, Stats)
    
    AddSkillBonus(Target, 418532101, SkillAmt) -- slashing
    AddSkillBonus(Target, 3421494576, SkillAmt) -- crushing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- piercing
    AddSkillBonus(Target, 723762198, Aggression)
    AddSkillBonus(Target, 609880714, Defense) --Defense
    AddSpellBonus(Target, 2, Stats) --AGI
    AddSpellBonus(Target, 3, Stats) --WIS
    --WornArmor needs implemented
end


function remove(Caster, Target, SkillAmt, Aggression, Defense, Mitigation, WornArmor, Stats)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end