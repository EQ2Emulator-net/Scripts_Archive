--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/CalltoArms.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 08:11:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)

    -- Increases Slashing, Ranged, Crushing and Piercing of group members (AE) by 1.9
    AddSkillBonus(Target, 418532101, SkillAmt)  -- Slashing
    AddSkillBonus(Target, 1756482397, SkillAmt) -- Ranged
    AddSkillBonus(Target, 3421494576, SkillAmt) -- Crushing
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing

end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end