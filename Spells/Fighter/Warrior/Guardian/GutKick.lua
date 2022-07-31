--[[
	Script Name	: Spells/Fighter/Warrior/Guardian/GutKick.lua
	Script Purpose	: Generic damage + stun script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)
    -- DD component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
        -- Interrupt(Target)
    else
	SpellDamage(Target, DDType, MinDmg)
        -- Interrupt(Target)
    end
end

function remove(Caster, Target, DDType, MinDmg, MaxDmg)

end