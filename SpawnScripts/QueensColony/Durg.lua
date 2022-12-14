--[[
	Spawn Template
	Script Name	: Durg.lua
	Script Purpose	: Durg's spawnscript at the tree house in the Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008.08.29
	Script Notes	: 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
   choice = math.random(1, 2)

   if HasQuest(Spawn, 56) and not QuestStepIsComplete(Spawn, 56, 6) then
      SetStepComplete(Spawn, 56, 6)
   end

   if choice == 1 then
      Say(NPC, "Durg happy to meet you!")
   else
      Say(NPC, "Must protect diplomat!")
   end
end