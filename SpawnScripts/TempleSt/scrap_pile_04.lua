local recently_used4

function spawn(NPC)
	--SetRequiredQuest(NPC, 164, 1)
	recently_used4 = false
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 164) and GetQuestStep(Caster, 164) == 1 then
		if recently_used4 == false then
			recently_used4 = true
			SpawnMob(GetZone(Target), 1360071, false, GetX(Target), GetY(Target), GetZ(Target), math.random(0, 360))
			AddTimer(Target, 60000, "TurnBackOn")
		else
			Say(Target, "This filth pile looks temporarily abandoned. Perhaps you should check back later.", Caster)
		end
	end
end

function TurnBackOn(NPC)
	recently_used4 = false
end