--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 56)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   
   if HasCompletedQuest(Spawn, 4) then
      GrexxPromises(NPC, Spawn, 0)
   elseif HasQuest(Spawn, 4) then
      if GetQuestStep(Spawn, 4) == 4 then
         GrexxPromises(NPC, Spawn, 1)
      elseif GetQuestStep(Spawn, 4) >= 4 and GetQuestStep(Spawn, 4) <= 8 then
         GrexxPromises(NPC, Spawn, 0)
      elseif GetQuestStep(Spawn, 4) == 9 then
         GrexxPromises(NPC, Spawn, 2)
      end
   else
      GrexxPromises(NPC, Spawn, 0)
   end
end

function GrexxPromises(NPC, Spawn, Choice)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasCompletedQuest(Spawn, 55) then
      if HasCompletedQuest(Spawn, 56) then
      elseif HasQuest(Spawn, 56) then
         AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
      else
         AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
      end
   elseif HasQuest(Spawn, 55) then
      if GetQuestStep(Spawn, 55) == 7 then
         AddConversationOption(conversation, "I bring you a gift from the people of Qeynos.", "GiftFromQeynos")
      end
   end

   if Choice == 1 then
      AddConversationOption(conversation, "The Forest Keeper sent me to ...", "ForestKeeperSentMe")
   elseif Choice == 2 then
      AddConversationOption(conversation, "I've gotten the items you've asked for.", "GotYourItemsBitch")
   end

   AddConversationOption(conversation, "I'll bet they are.")
   StartConversation(conversation, NPC, Spawn, "Grexx promises us and his promise is kept!")
end

function ForestKeeperSentMe(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "But what...", "ButWhat")
   StartConversation(conversation, NPC, Spawn, "Forest Keeper, big tree! Yes, yes, waiting for you. Big tree, big promise! Water is needed, yes! Three waters, fallen from the skies and the roots from deep beneath! Fetch the waters! Gather the roots!")
end

function ButWhat(NPC, Spawn)
   SetStepComplete(Spawn, 4, 4)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Well. Okay.")
   StartConversation(conversation, NPC, Spawn, "Nothing more to say! Big tree sends you to me to help! Big tree keeps promise! Bring waters and roots first, then sayings I will sooth! Must bring to me, or nothing more will I say!")
end

function GotYourItemsBitch(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "The Forest Keeper said you'd know how to stop the corruption of the colony.", "ForestKeeperSaid")
   StartConversation(conversation, NPC, Spawn, "Yes! Yes! Freshest waters! Tasty roots! Now will I tell you what you want to know. What you want to know?")
end

function ForestKeeperSaid(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Then what was all that stuff for?", "StuffFor")
   StartConversation(conversation, NPC, Spawn, "Me? No! Grexx knows all, no sayings need to sooth on that! Ha! Why tree tell you such a joke? Ha! Evil things creeping up on poor gobbies, long time now! Big tree is wrong, nothing new to know about that. Happy you came to help us, though!")
end

function StuffFor(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "You mean you're going to make a brew out of them?", "MakeBrew")
   StartConversation(conversation, NPC, Spawn, "Ah, tasty roots! Mash them up, grind them up and soak in the waters. After the moons are new again, ready to drink, it is! Helps to forget, helps to remember. Tasty Roots!")
end

function MakeBrew(NPC, Spawn)
   SetStepComplete(Spawn, 4, 9)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "I don't think it's very even.")
   StartConversation(conversation, NPC, Spawn, "Yes, yes! Tasty brew! If you knew there was no sooth to be said, would you have got tasty roots and fresh waters for us? No! So now we have them and now you will know as much as Sapswills! Even trade! Even trade! Share with you, we will, too!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function GiftFromQeynos(NPC, Spawn)
	if HasQuest(Spawn, 55) and HasItem(Spawn, 1601) then
		-- remove a Diplomatic Gift
		SetStepComplete(Spawn, 55, 7)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, 56) and not HasCompletedQuest(Spawn, 56) and HasCompletedQuest(Spawn, 55) then
		AddConversationOption(conversation, "I's a small token of friendship. A diplomatic gesture.", "TokenOfFriendship")
	end
	
	AddConversationOption(conversation, "It's my pleasure to meet you.")
	StartConversation(conversation, NPC, Spawn, "Hello! Hello! I knew you would be coming! I knew! And bringing a present...we loves presents!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function TokenOfFriendship(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll pay my respect to your...er people.", "OfferQuest1")
	AddConversationOption(conversation, "I need to run.")
	StartConversation(conversation, NPC, Spawn, "Friends for life, we are now! Is our tradition to greet everyone we meet. Go meet the Sapswills! Is the diplomatic way! Hail them all! We like friends! Meet the Sapswills, then meet High Chiefain Grexx! He likes friends too! To long life and happy friendships!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, 56)
end

