--[[
	Script Name	: DivineStrike.lua
	Script Purpose	: Templar Direct Damage spell with Undead bonud damage
	Script Author	: Zcoretri
	Script Date	: 2010.2.14
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)

    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
        SpellDamage(Target, DmgType, dmgAmount)
        --[[
        if Target == "Undead" then
            dmgAmount = math.random(MinDmg, MaxDmg)
            SpellDamage(Target, DmgType, dmgAmount)
        end
        --]]
    end
end