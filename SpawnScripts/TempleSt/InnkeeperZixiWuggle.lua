--[[
	Script Name	: SpawnScripts/TempleSt/InnkeeperZixiWuggle.lua
	Script Purpose	: Innkeeper Zixi Wuggle <Housing>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper001.mp3", "", "", 1103851370, 3931804596, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there .. GetName(Spawn) .. . what can I help you with?")
	if convo==6 then
		PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper001.mp3", "", "", 1103851370, 3931804596, Spawn)
		AddConversationOption(conversation, "How can I place an item in my house?", "dlg_6_1")
		AddConversationOption(conversation, "What kind of housing is available to me?")
		AddConversationOption(conversation, "What is the marketboard for?")
		AddConversationOption(conversation, "What is my house for?")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello there .. GetName(Spawn) .. . what can I help you with?")
	end

	if convo==9 then
		PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper010.mp3", "", "", 3766072033, 4091369416, Spawn)
		AddConversationOption(conversation, "Yes", "dlg_9_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Hello Ofoapo, I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
	end

	if convo==21 then
		PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper010.mp3", "", "", 3766072033, 4091369416, Spawn)
		AddConversationOption(conversation, "Yes", "dlg_21_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Hello Inin, I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
	end

	if convo==22 then
		PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper010.mp3", "", "", 3766072033, 4091369416, Spawn)
		AddConversationOption(conversation, "Yes", "dlg_22_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Hello Inin, I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
	end

	if convo==23 then
		PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper010.mp3", "", "", 3766072033, 4091369416, Spawn)
		AddConversationOption(conversation, "Yes", "dlg_23_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Hello Inin, I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper002.mp3", "", "", 1510458357, 1527806743, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_5_2")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper003.mp3", "", "", 781980296, 2864514648, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_5_3")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Freeport.  In reward for your services, the Overlord has awarded you a one bedroom house for free at this time.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper004.mp3", "", "", 561495080, 2421955001, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_4")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, the grand city of Freeport has houses ranging from the basic one bedroom model on up to 5 bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper005.mp3", "", "", 4023343048, 1689741584, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_5")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper006.mp3", "", "", 2065712696, 2428275249, Spawn)
	AddConversationOption(conversation, "I can sell things through a broker?", "dlg_5_6")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Selling through your market board works the same way as directly selling through a broker, it just allows you to do it from the comfort of your home.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_7")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes.  For a fee, brokers are willing to post the goods you are willing to sell to other adventurers.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper005.mp3", "", "", 4023343048, 1689741584, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_5_8")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper007.mp3", "", "", 3667807762, 4064213846, Spawn)
	AddConversationOption(conversation, "Anything else?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_5_9")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_5_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper008.mp3", "", "", 2904704444, 1810223557, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_5_10")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, houses have what we call vaults; these are extra storage within your house, the larger your house is, the more storage space available.  By placing items in this house vault and using your marketboard, you can sell these items to other citizens of Freeport without being in your room.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper001.mp3", "", "", 3424255078, 189143503, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_9_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_zixi_wuggle/fprt_hood03/innkeeper001.mp3", "", "", 3424255078, 189143503, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_23_2")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper002.mp3", "", "", 1510458357, 1527806743, Spawn)
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_23_3")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the ‘place’ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper003.mp3", "", "", 781980296, 2864514648, Spawn)
	AddConversationOption(conversation, "Is any other housing available?", "dlg_23_4")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Freeport.  In reward for your services, the Overlord has awarded you a one bedroom house for free at this time.")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper004.mp3", "", "", 561495080, 2421955001, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_23_5")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, the grand city of Freeport has houses ranging from the basic one bedroom model on up to 5 bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
end

function dlg_23_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper005.mp3", "", "", 4023343048, 1689741584, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_23_6")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_23_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper006.mp3", "", "", 2065712696, 2428275249, Spawn)
	AddConversationOption(conversation, "I can sell things through a broker?", "dlg_23_7")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Selling through your market board works the same way as directly selling through a broker, it just allows you to do it from the comfort of your home.")
end

function dlg_23_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_23_8")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes.  For a fee, brokers are willing to post the goods you are willing to sell to other adventurers.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_23_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper005.mp3", "", "", 4023343048, 1689741584, Spawn)
	AddConversationOption(conversation, "How do I sell items using my marketboard?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?", "dlg_23_9")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end

function dlg_23_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper007.mp3", "", "", 3667807762, 4064213846, Spawn)
	AddConversationOption(conversation, "Anything else?")
	AddConversationOption(conversation, "How can I place an item in my house?")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?", "dlg_23_10")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_23_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/fprt_hood03/innkeeper008.mp3", "", "", 2904704444, 1810223557, Spawn)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_23_11")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "That’s enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes, houses have what we call vaults; these are extra storage within your house, the larger your house is, the more storage space available.  By placing items in this house vault and using your marketboard, you can sell these items to other citizens of Freeport without being in your room.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
--]]

