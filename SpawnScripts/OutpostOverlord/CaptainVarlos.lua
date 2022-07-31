--[[
	Spawn Template
	Script Name: CaptainVarlosEvil.lua
	Script Purpose: Leave the Outpost of the Overlord
	Script Author: John Adams
	Script Date: 2008.08.29
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_027.mp3", "", "", 2285948102, 2994720481, Spawn)
	AddConversationOption(conversation, "Yes.  Take me to Freeport.", "AreYouSure")
	AddConversationOption(conversation, "Who are you?", "WhoAreYou")
	AddConversationOption(conversation, "No, I'd like to explore more.")
	StartConversation(conversation, NPC, Spawn, "So, ya' ready ta go ashore matey?")
end

function WhoAreYou(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_003.mp3", "", "", 2565389482, 560555759, Spawn)
	AddConversationOption(conversation, "I think I'm ready to leave now.", "AreYouSure")
	AddConversationOption(conversation, "I'd like to explore more.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I am Captain Draik Varlos, and this 'ere fine ship is the Far Journey.  I can give ya' a ride to Freeport when yer ready to leave the island.")
end

function AreYouSure(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "", "", 1155995604, 1406357895, Spawn)
	AddConversationOption(conversation, "I'm ready for the challenges ahead.  Take me to Freeport.", "AreYouSure2")
	AddConversationOption(conversation, "On second thought, maybe I should wait a bit.")
	StartConversation(conversation, NPC, Spawn, "Ya' best be sure ta' explore the whole island, ya' hear!  Norrath can be a dangerous place ya' know?")
end

function AreYouSure2(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", "", "", 3880459741, 170861362, Spawn)
	AddConversationOption(conversation, "Thanks for the ride!", "AreYouSure3")
	AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
	StartConversation(conversation, NPC, Spawn, "Yar! That's what we be needin'.  Ok then, off to Freeport!")
end

function AreYouSure3(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", "", "", 1009737776, 2173458794, Spawn)

	AddConversationOption(conversation, "To Freeport!", "LeaveIsland")
	AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
	StartConversation(conversation, NPC, Spawn, "Don't ya' mind, we get paid ta' do that.")
end

function LeaveIsland(NPC, Spawn)
  Race = GetRace(Spawn)

  -- Ogre / Troll
  if Race == 12 or Race == 14 then
    ZoneRef = GetZone("BigBend")
    Zone(ZoneRef,Spawn)

  -- Erudite / Kerra
  elseif Race == 3 or Race == 11 then
    ZoneRef = GetZone("Stonestair")
    Zone(ZoneRef,Spawn)

  -- Gnome / Ratonga
  elseif Race == 5 or Race == 13 then
    ZoneRef = GetZone("TempleSt")
    Zone(ZoneRef,Spawn)

  -- Half Elf / Human
  elseif Race == 6 or Race == 9 then
    ZoneRef = GetZone("BeggarsCourt")
    Zone(ZoneRef,Spawn)

  -- Dark Elf
  elseif Race == 1 then
    ZoneRef = GetZone("Longshadow")
    Zone(ZoneRef,Spawn)

  -- Barbarian / Iksar
  elseif Race == 0 or Race == 10 then
    ZoneRef = GetZone("Scaleyard")
    Zone(ZoneRef,Spawn)

  -- Asarai
  elseif Race == 17 then
    ZoneRef = GetZone("Neriak")
    Zone(ZoneRef,Spawn)

  -- Sarnak
  elseif Race == 18 then
    ZoneRef = GetZone("TimorousDeep")
    Zone(ZoneRef,Spawn)

  -- Unknown
  else
    Say(Spawn, "Sorry, I cannot deal with someone of your race. Try visiting the boat on the other island!")
    ZoneRef = GetZone("QueensColony")
    Zone(ZoneRef,Spawn)
  end
end
