--[[
	Script Name	: Backstab.lua
	Script Purpose	: Brigaand positional attack
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)

    -- Add check for Caster being behind Target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
end

function tick(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)
    SpellDamage(Target, DoTDmgType, DoTDmg)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)

end