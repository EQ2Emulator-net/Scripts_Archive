--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function respawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

c = CreateConversation()
AddConversationOption(c, "Yes", "yes1")
AddConversationOption(c, "No")
StartConversation(c, NPC, Spawn, "Yes or no?")

end

function yes1(NPC, Spawn)
Say(NPC, "YES!", Spawn)
end
