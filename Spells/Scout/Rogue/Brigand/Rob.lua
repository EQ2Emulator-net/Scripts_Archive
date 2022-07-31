--[[
	Script Name	: Rob.lua
	Script Purpose	: Brigand Stealth attack + Debuff
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	: 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, StatAmt)
    -- Add check for Caster is using sneaking ability
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
    --AddSpellBonus(Target, 0, StatAmt)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, StatAmt)
    RemoveSpellBonus(Target)
end
