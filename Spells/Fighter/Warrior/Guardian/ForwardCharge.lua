--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/ForwardCharge.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 06:11:46
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target, Stats, Defense, SkillAmt)

    -- Increases STR of caster by 11.9
    AddSpellBonus(Target, 0, Stats)

    -- Increases Slashing, Piercing and Crushing of caster by 2.4
    AddSkillBonus(Target, 418532101, SkillAmt) -- Slashing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing
    AddSkillBonus(Target, 3421494576, SkillAmt) -- Crushing

    -- Decreases Defense of caster by 1.8
    AddSkillBonus(Target, 609880714, Defense) -- Defense

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
