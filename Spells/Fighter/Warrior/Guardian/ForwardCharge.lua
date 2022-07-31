--[[
	Script Name	: Spells/Fighter/Warrior/Guardian/ForwardCharge.lua
	Script Author	: Zcoretri
	Script Date	: 2010.01.31
	Script Notes	: Fighter Offensive Stance script
--]]

function cast(Caster, Target, Defense, SkillAmt, Stats)
    AddSkillBonus(Target, 418532101, SkillAmt) -- Slashing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing
    AddSkillBonus(Target, 3421494576, SkillAmt) -- Crushing
    AddSkillBonus(Target, 609880714, Defense) -- Defense
    --AddSpellBonus(Target, 0, Stats) -- STR needs to fixed to allow 0
end

function tick(Caster, Target, Type, Min, Max)

end

function remove(Caster, Target, Type, Min, Max)
    RemoveSkillBonus(Target)
    --RemoveSpellBonus(Target)
end

