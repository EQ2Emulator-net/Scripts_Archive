--[[
    Script Name	   : Provoke.lua
    Script Purpose : Taunt script
    Script Author  : John Adams
    Script Date	   : 2008.12.07
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)
    -- Taunt component
    if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
        hateAmount = math.random(MinTaunt, MaxTaunt)
        AddHate(Caster, Target, hateAmount)
        --Interrupt(Target)
    else
        AddHate(Caster, Target, MinTaunt)
        --Interrupt(Target)
    end
end

function tick(Caster, Target, MinTaunt, MaxTaunt)

end

function remove(Caster, Target, MinTaunt, MaxTaunt)

end