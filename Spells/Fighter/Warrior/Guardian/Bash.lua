--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Bash.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 01:11:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 6 - 10 crushing damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DDType, MinDmg)
    end

end

function remove(Caster, Target)
    --Apply Knockdown
    CastSpell(Target, 5001, 1)
end