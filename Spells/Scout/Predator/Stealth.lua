--[[
	Script Name	: stealth.lua
	Script Purpose	: Generic Stealth spells (with params)
	Script Author	: John Adams
	Script Date	: 2008.12.05
	Script Notes	: Using most common BOOL params -
			: Stealth to caster: 0, target 1
			: Suspend movement: 1 = true
			: See invis/stealth: 1 = true
--]]

function cast(Caster, Target, StealthType, DispelSpeed, SeeStealth)

	if StealthType == 1 then
		-- CastStealth(Target)
	else
		-- CastSteatlh(Caster)
	end

	if DispelSpeed == 1 then
		-- newSpeed = whatever the players normal speed is without buffs
		-- ModifySpeed(Caster, newSpeed)
	end

	if SeeStealth == 1 then
		-- buff player with see invis/stealth buff
	end

end

function remove(Caster, Target)

	-- return players enhanced speed

end
