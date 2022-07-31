--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local HALFELF_MENTOR_QUEST_4 = 187

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Uh, maybe you shouldn't talk to me. I'm new at this.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Alright, this is why I joined the militia!", "", 1689589577, 4560189, Spawn)
	end
end

function death(NPC, Spawn)
	Rom1 = GetSpawn(Spawn, 1370069)
	if Rom1 ~= nil and not IsAlive(Rom1) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_4, 1)
		Thaen = GetSpawn(Spawn, 1370068)
		Despawn(Thaen, 30000)
	end
end