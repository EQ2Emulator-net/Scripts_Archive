--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Ruin.lua
    Script Author  : John Adams
    Script Date    : 2013.12.08 02:12:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt, DoTType, DoTMinVal, DoTMaxVal)

    -- Inflicts 23 - 39 slashing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases Piercing of target by 1.5
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)

    -- Decreases Slashing and Crushing of target by 1.5
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

end

function tick(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt, DoTType, DoTMinVal, DoTMaxVal)

    -- Inflicts 10 - 12 slashing damage on target every 5 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTType, DoTMinVal)
    end

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

