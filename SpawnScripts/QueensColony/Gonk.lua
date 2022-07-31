--[[
	Spawn Template
	Script Name	: Gonk.lua
	Script Purpose	: Gonk's spawnscript at the tree house in the Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008.08.29
	Script Notes	: 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
   choice = math.random(1, 2)

   if HasQuest(Spawn, 56) and not QuestStepIsComplete(Spawn, 56, 7) then
      SetStepComplete(Spawn, 56, 7)
   end

   if choice == 1 then
      Say(NPC, "Gonk likes diplomats!")
   else
      Say(NPC, "Gonk not bonk diplomat!")
   end
end