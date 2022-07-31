--[[
    Script Name     : TauntingBlow.lua
    Script Purpose  : Damage + Taunt script
    Script Author   : Zcoretri
    Script Date     : 2010.01.26
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg, MinTaunt, MaxTaunt)
    -- Damage Component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDmg)
    end
    -- Taunt Component
    --if AttackSuccess(Target) then
        if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
            hateAmount = math.random(MinTaunt, MaxTaunt)
            AddHate(Caster, Target, hateAmount)
        else
            AddHate(Caster, Target, MinTaunt)
        end
    --end
end

function remove(Caster, Target, DDType, MinDDVal, MaxDDVal)

end