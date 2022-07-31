--[[
	This is the EQ2 Spell 'Sprint' written in LUA.
	These functions are shared, so don't save any character data in them.
	If you have any questions be sure to read the readme.txt file located in this directory
--]]

--main process function
function cast(Caster, Target, PowerCost, SpeedValue)
	power_left = GetPower(Caster)
	total_power = GetMaxPower(Caster)
	if (total_power * PowerCost) < power_left then
		speed = GetSpeed(Caster)
		if speed < SpeedValue then
			SetSpeed(Caster, SpeedValue)
		end
		new_power =  GetPower(Caster) - (total_power * PowerCost)
		if new_power > 0 and HasMoved(Caster) == true then
			SetPower(Caster, new_power)
		elseif new_power <= 0 then
			SetSpeed(Caster, 0)
		end
	else
		SetSpeed(Caster, 0)
	end
	return
end

function tick(Caster, Target, PowerCost, SpeedValue)
	cast(Caster, Target, PowerCost, SpeedValue)
end

function remove(Caster, Target)
	SetSpeed(Caster, 0)
end