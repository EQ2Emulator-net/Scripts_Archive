--[[
	Script Name	: sprint.lua
	Script Purpose	: Sprint spell (example)
	Script Author	: LethalEncounter
	Script Date	: 2008.08.03
	Script Note	: 
--]]

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