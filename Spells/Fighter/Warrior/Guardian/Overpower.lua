--[[
        Script Name     : Overpower.lua
        Script Purpose  : Direct Damage script
        Script Author   : John Adams
        Script Date     : 2010.01.14
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

        if MaxDmg ~= nil and MinDmg < MaxDmg then
                dmgAmount = math.random(MinDmg, MaxDmg)
                SpellDamage(Target, DDType, dmgAmount)
        else
                SpellDamage(Target, DDType, MinDmg)
        end

end

function remove(Caster, Target, DDType, MinDmg, MaxDmg)

end

