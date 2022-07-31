--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Shout.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 08:11:10
    Script Purpose : Can be cast while stifled or stunned
                   : 
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)

    -- Increases Threat to target encounter by 132 - 162 
    if MaxTaunt ~= nil and MinTaunt < MaxTaunt then

        AddHate(Caster, Target, math.random(MinTaunt, MaxTaunt))
    else
        AddHate(Caster, Target, MinTaunt)
    end
end
