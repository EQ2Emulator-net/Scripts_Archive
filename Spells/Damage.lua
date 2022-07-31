--[[
	This is the EQ2Emu generic spell damage script written in LUA.
	These functions are shared, so don't save any character data in them.
	If you have any questions be sure to read the readme.txt file located in this directory
--]]

--main process function
function cast(Caster, Target, DamageType, Damage)
	-- syntax for SpellDamage is Target, DamageType, and Damage
	SpellDamage(Target, DamageType, Damage)
end

function remove(Caster, Target)
end