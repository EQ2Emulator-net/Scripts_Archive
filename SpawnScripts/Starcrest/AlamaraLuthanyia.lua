--[[
	Script Name	: SpawnScripts/Starcrest/AlamaraLuthanyia.lua
	Script Purpose	: Alamara Luthanyia 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

		PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_000.mp3", "", "", 1291419177, 3404820479, Spawn)
	AddConversationOption(conversation, "What is Arcanic Combat?", "dlg_5_1")
	AddConversationOption(conversation, "I'm sorry, I didn't mean to disturb you.")
	StartConversation(conversation, NPC, Spawn, "Mediating in the villages is so difficult.  I shall be an elder by the time I'm ready to begin my tutelage in the Arcanic Combat.")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_000.mp3", "", "", 1291419177, 3404820479, Spawn)
		AddConversationOption(conversation, "What is Arcanic Combat?", "dlg_6_1")
		AddConversationOption(conversation, "I'm sorry, I didn't mean to disturb you.")
		StartConversation(conversation, NPC, Spawn, "Mediating in the villages is so difficult.  I shall be an elder by the time I'm ready to begin my tutelage in the Arcanic Combat.")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_001.mp3", "", "", 206047356, 1936934552, Spawn)
	AddConversationOption(conversation, "What is the Ashen Order?", "dlg_6_2")
	AddConversationOption(conversation, "Are only monks capable of using Arcanic Combat?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "As my concentration is disrupted, I will give you the answers you seek.  Arcanic Combat is the use of magic in the combative arts. It is an age-old discipline passed down from the Ashen Order to the peoples of Freeport and Qeynos.  The monastery in the Elddar Grove is the primary keeper of this discipline.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_008.mp3", "", "", 297219597, 1060767230, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_3")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "All modern combative disciplines are forms of Arcanic Combat.  The Ashen Order was remarkable in the adaptation of this art.  This art form allows the combatant to tap into arcane forces in order to strengthen their feats.  The usage of Arcanic Combat is no great mystery, nor is it a rarity in this modern world.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?")
	AddConversationOption(conversation, "Where did they go?", "dlg_6_4")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who uses Arcane Combat now?", "dlg_6_5")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_008.mp3", "", "", 297219597, 1060767230, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_6")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "All modern combative disciplines are forms of Arcanic Combat.  The Ashen Order was remarkable in the adaptation of this art.  This art form allows the combatant to tap into arcane forces in order to strengthen their feats.  The usage of Arcanic Combat is no great mystery, nor is it a rarity in this modern world.")
end

function dlg_6_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?")
	AddConversationOption(conversation, "Where did they go?", "dlg_6_7")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who uses Arcane Combat now?", "dlg_6_8")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_008.mp3", "", "", 297219597, 1060767230, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_9")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "All modern combative disciplines are forms of Arcanic Combat.  The Ashen Order was remarkable in the adaptation of this art.  This art form allows the combatant to tap into arcane forces in order to strengthen their feats.  The usage of Arcanic Combat is no great mystery, nor is it a rarity in this modern world.")
end

function dlg_6_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?")
	AddConversationOption(conversation, "Where did they go?", "dlg_6_10")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who uses Arcane Combat now?", "dlg_6_11")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_008.mp3", "", "", 297219597, 1060767230, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_12")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "All modern combative disciplines are forms of Arcanic Combat.  The Ashen Order was remarkable in the adaptation of this art.  This art form allows the combatant to tap into arcane forces in order to strengthen their feats.  The usage of Arcanic Combat is no great mystery, nor is it a rarity in this modern world.")
end

function dlg_6_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?", "dlg_6_13")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_14")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

function dlg_6_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?", "dlg_6_15")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_003.mp3", "", "", 1108677104, 3869422611, Spawn)
	AddConversationOption(conversation, "Why did they return?", "dlg_6_16")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "Where did they get the knowledge?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The corruption of the city and imbalance of the world had disrupted their neutral and passive ways.  They retreated into perfect solitude.  Two centuries passed before they returned with the knowledge of Arcanic Combat.")
end

function dlg_6_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_004.mp3", "", "", 3794261316, 2216875555, Spawn)
	AddConversationOption(conversation, "Why did they choose to help?  Why not stay in solitude?", "dlg_6_17")
	AddConversationOption(conversation, "How did the Ashen Order help defeat the Rallosian Empire?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "They returned to aid the people of Freeport and Qeynos in the war against the Rallosian Empire.  If it had not been for them, the entire world would have fallen to the ruin of war.")
end

function dlg_6_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_005.mp3", "", "", 1650733242, 4263904828, Spawn)
	AddConversationOption(conversation, "Where is the Ashen Order now?", "dlg_6_18")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "I do not presume to know their motives, but I believe that their dedication to neutrality and balance spurred them to this decision.  They realized the irreversible devastation that would have occured, had the Rallosian armies been victorious.")
end

function dlg_6_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_006.mp3", "", "", 1578722475, 504331045, Spawn)
	AddConversationOption(conversation, "Where do they go?", "dlg_6_19")
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "When the Rallosian armies were defeated, the Ashen Order returned to their solitude.  We are not certain where they have retreated. Most people respect the privacy of the Order and leave them in peace. Should the Ashen Order wish to return to the affairs of the world, they shall.")
end

function dlg_6_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?", "dlg_6_20")
	AddConversationOption(conversation, "Who uses Arcane Combat now?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?", "dlg_6_21")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_22")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

function dlg_6_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?", "dlg_6_23")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_003.mp3", "", "", 1108677104, 3869422611, Spawn)
	AddConversationOption(conversation, "Why did they return?", "dlg_6_24")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "Where did they get the knowledge?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The corruption of the city and imbalance of the world had disrupted their neutral and passive ways.  They retreated into perfect solitude.  Two centuries passed before they returned with the knowledge of Arcanic Combat.")
end

function dlg_6_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who uses Arcane Combat now?", "dlg_6_25")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?", "dlg_6_26")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_27")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

function dlg_6_27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?", "dlg_6_28")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", "", "", 603803740, 3959452753, Spawn)
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?")
	AddConversationOption(conversation, "Who uses Arcane Combat now?", "dlg_6_29")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
end

function dlg_6_29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?", "dlg_6_30")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_31")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

function dlg_6_31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?", "dlg_6_32")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_003.mp3", "", "", 1108677104, 3869422611, Spawn)
	AddConversationOption(conversation, "Why did they return?", "dlg_6_33")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "Where did they get the knowledge?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The corruption of the city and imbalance of the world had disrupted their neutral and passive ways.  They retreated into perfect solitude.  Two centuries passed before they returned with the knowledge of Arcanic Combat.")
end

function dlg_6_33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_35")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

function dlg_6_35(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", "", "", 2181166309, 4221362425, Spawn)
	AddConversationOption(conversation, "Why did they leave Freeport?", "dlg_6_36")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
end

function dlg_6_36(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_003.mp3", "", "", 1108677104, 3869422611, Spawn)
	AddConversationOption(conversation, "Why did they return?", "dlg_6_37")
	AddConversationOption(conversation, "Where did they go?")
	AddConversationOption(conversation, "Where did they get the knowledge?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "The corruption of the city and imbalance of the world had disrupted their neutral and passive ways.  They retreated into perfect solitude.  Two centuries passed before they returned with the knowledge of Arcanic Combat.")
end

function dlg_6_37(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_004.mp3", "", "", 3794261316, 2216875555, Spawn)
	AddConversationOption(conversation, "Why did they choose to help?  Why not stay in solitude?", "dlg_6_38")
	AddConversationOption(conversation, "How did the Ashen Order help defeat the Rallosian Empire?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "They returned to aid the people of Freeport and Qeynos in the war against the Rallosian Empire.  If it had not been for them, the entire world would have fallen to the ruin of war.")
end

function dlg_6_38(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_011.mp3", "", "", 953226564, 2054374424, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?")
	AddConversationOption(conversation, "Where did they get the knowledge of Arcanic Combat?", "dlg_6_39")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "Although the Ashen Order did not directly involve themselves in the conflicts of war, they presented the still free people of the world the Arcanic Arts.  Through training and usage of the Arcanic Arts, the overwhelmed forces of Qeynos and Freeport were able to stand strong against the Rallosian armies.")
end

function dlg_6_39(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", "", "", 1242445871, 3305867622, Spawn)
	AddConversationOption(conversation, "Do you think it wise to use arts then?")
	AddConversationOption(conversation, "I'll leave you to your meditations now.", "dlg_6_40")
	StartConversation(conversation, NPC, Spawn, "The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
end

function dlg_6_40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", "", "", 1966446226, 2358274907, Spawn)
	AddConversationOption(conversation, "Who are the Ashen Order?", "dlg_6_41")
	AddConversationOption(conversation, "I'll leave you to your meditations now.")
	StartConversation(conversation, NPC, Spawn, "If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
end

