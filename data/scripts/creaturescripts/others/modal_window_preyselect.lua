local modalWindowPreySelect = CreatureEvent("modalWindowPreySelect")
function modalWindowPreySelect.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelect")
	local monsterspreyac = {
			[1]  = {name = "Abyssal Cursed Stone"}, 
			[2]  = {name = "Acid Blob"}, 
			[3]  = {name = "Acolyte of the Cult"}, 
			[4]  = {name = "Adept of the Cult"}, 
			[5]  = {name = "Allukard"}, 
			[6]  = {name = "Amazon"}, 
			[7]  = {name = "Ancient Scarab"}, 
			[8]  = {name = "Assassin"}, 
			[9]  = {name = "Bandit"}, 
			[10] = {name = "Banshee"}, 
			[11] = {name = "Barbarian Bloodwalker"}, 
			[12] = {name = "Barbarian Brutetamer"}, 
			[13] = {name = "Barbarian Headsplitter"}, 
			[14] = {name = "Barbarian Skullhunter"}, 
			[15] = {name = "Barkless Devotee"}, 
			[16] = {name = "Barkless Fanatic"}, 
			[17] = {name = "Beduin Nomad"}, 
			[18] = {name = "Behemoth"}, 
			[19] = {name = "Beholder"}, 
			[20] = {name = "Belzebuth Minion"}, 
			[21] = {name = "Betrayed Wraith"}, 
			[22] = {name = "Black Knight"}, 
			[23] = {name = "Blightwalker"}, 
			[24] = {name = "Blood Beast"}, 
			[25] = {name = "Blood Crab"}, 
			[26] = {name = "Bloodboil"}, 
			[27] = {name = "Boar"}, 
			[28] = {name = "Bonebeast"}, 
			[29] = {name = "Boogy"}, 
			[30] = {name = "Breach Brood"}, 
			[31] = {name = "Bullwark"}, 
			[32] = {name = "Carniphila"}, 
			[33] = {name = "Carrion Worm"}, 
			[34] = {name = "Chakoya Toolshaper"}, 
			[35] = {name = "Chakoya Tribewarden"}, 
			[36] = {name = "Chakoya Windcaller"}, 
			[37] = {name = "Haunted Dragon"}, 
			[38] = {name = "Choking Fear"}, 
			[39] = {name = "Cliff Strider"}, 
			[40] = {name = "Crazed Summer Rearguard"}, 
			[41] = {name = "Crazed Summer Vanguard"}, 
			[42] = {name = "Crazed Winter Rearguard"}, 
			[43] = {name = "Crazed Winter Vanguard"}, 
			[44] = {name = "Crypt Shambler"}, 
			[45] = {name = "Crystal Spider"}, 
			[46] = {name = "Cyclops"}, 
			[47] = {name = "Cyclops Drone"}, 
			[48] = {name = "Cyclops Smith"}, 
			[49] = {name = "Cyclopslave"}
		}
		
	local monsterspreyde = {
			[1]  = {name = "Dark Faun"}, 
			[2]  = {name = "Dark Monk"}, 
			[3]  = {name = "Dark Torturer"}, 
			[4]  = {name = "Dawnfire Asura"}, 
			[5]  = {name = "Death Blob"}, 
			[6]  = {name = "Deepling Brawler"}, 
			[7]  = {name = "Deepling Master"}, 
			[8]  = {name = "Deepling Warrior"}, 
			[9]  = {name = "Defiler"}, 
			[10] = {name = "Demon"}, 
			[11] = {name = "Demon Outcast"}, 
			[12] = {name = "Demon Skeleton"}, 
			[13] = {name = "Destroyer"}, 
			[14] = {name = "Diabolic Imp"}, 
			[15] = {name = "Draco"}, 
			[16] = {name = "Dragon"}, 
			[17] = {name = "Dragon Hatchling"}, 
			[18] = {name = "Dragon Lord"}, 
			[19] = {name = "Dragon Lord Hatchling"}, 
			[20] = {name = "Dragonling"}, 
			[21] = {name = "Draken Abomination"}, 
			[22] = {name = "Draken Elite"}, 
			[23] = {name = "Draken Spellweaver"}, 
			[24] = {name = "Draken Warmaster"}, 
			[25] = {name = "Dread Intruder"}, 
			[26] = {name = "Dwarf"}, 
			[27] = {name = "Dwarf Geomancer"}, 
			[28] = {name = "Dwarf Guard"}, 
			[29] = {name = "Dwarf Miner"}, 
			[30] = {name = "Dwarf Soldier"}, 
			[31] = {name = "Dworc Fleshhunter"}, 
			[32] = {name = "Dworc Venomsniper"}, 
			[33] = {name = "Dworc Voodoomaster"}, 
			[34] = {name = "Earth Elemental"}, 
			[35] = {name = "Elder Beholder"}, 
			[36] = {name = "Elder Wyrm"}, 
			[37] = {name = "Elephant"}, 
			[38] = {name = "Elf"}, 
			[39] = {name = "Elf Arcanist"}, 
			[40] = {name = "Elf Citizen"}, 
			[41] = {name = "Elf Lightmaster"}, 
			[42] = {name = "Elf Ranger"}, 
			[43] = {name = "Elf Scout"}, 
			[44] = {name = "Elf Soldier"}, 
			[45] = {name = "Energy Elemental"}, 
			[46] = {name = "Enfeebled Silencer"}, 
			[47] = {name = "Enlightened of the Cult"}, 
			[48] = {name = "Enyd"}
		}
	
	local monsterspreyfl = {
			[1]  = {name = "Falcon Knight"}, 
			[2]  = {name = "Falcon Paladin"}, 
			[3]  = {name = "Faun"}, 
			[4]  = {name = "Fire Devil"}, 
			[5]  = {name = "Fire Elemental"}, 
			[6]  = {name = "Frazzlemaw"}, 
			[7]  = {name = "Frost Dragon"}, 
			[8]  = {name = "Frost Flower Asura"}, 
			[9]  = {name = "Frost Giant"}, 
			[10] = {name = "Frost Giantess"}, 
			[11] = {name = "Frost Torog"}, 
			[12] = {name = "Fury"}, 
			[13] = {name = "Gargoyle"}, 
			[14] = {name = "Ghastly Dragon"}, 
			[15] = {name = "Ghost"}, 
			[16] = {name = "Ghoul"}, 
			[17] = {name = "Giant Spider"}, 
			[18] = {name = "Glooth Anemone"}, 
			[19] = {name = "Goblin"}, 
			[20] = {name = "Goblin Assassin"}, 
			[21] = {name = "Gravedigger"}, 
			[22] = {name = "Grim Reaper"}, 
			[23] = {name = "Guzzlemaw"}, 
			[24] = {name = "Hand of Cursed Fate"}, 
			[25] = {name = "Haunted Treeling"}, 
			[26] = {name = "Hellfire Fighter"}, 
			[27] = {name = "Hellforger Cyclops"}, 
			[28] = {name = "Hellhound"}, 
			[29] = {name = "Hellspawn"}, 
			[30] = {name = "Hero"}, 
			[31] = {name = "High Elf"}, 
			[32] = {name = "Hunter"}, 
			[33] = {name = "Hydra"}, 
			[34] = {name = "Ice Serpente"},
			[35] = {name = "Ice Witch"}, 
			[36] = {name = "Insectoid Worker"}, 
			[37] = {name = "Ironblight"}, 
			[38] = {name = "Istari Follower"}, 
			[39] = {name = "Juggernaut"}, 
			[40] = {name = "Kongra"}, 
			[41] = {name = "Larva"}, 
			[42] = {name = "Lich"}, 
			[43] = {name = "Lizard Chosen"}, 
			[44] = {name = "Lizard Dragon Priest"}, 
			[45] = {name = "Lizard High Guard"}, 
			[46] = {name = "Lizard Legionnaire"}, 
			[47] = {name = "Lizard Sentinel"}, 
			[48] = {name = "Lizard Snakecharmer"}, 
			[49] = {name = "Lizard Templar"}, 
			[50] = {name = "Lizard Zaogun"}, 
			[51] = {name = "Lost Soul"}
		}
		
	local monsterspreymq = {
			[1]  = {name = "Magma Crawler"}, 
			[2]  = {name = "Mancubus"}, 
			[3]  = {name = "Medusa"}, 
			[4]  = {name = "Mephisto"}, 
			[5]  = {name = "Mercury Blob"}, 
			[6]  = {name = "Merlkin"}, 
			[7]  = {name = "Midnight Asura"}, 
			[8]  = {name = "Minotaur"}, 
			[9]  = {name = "Minotaur Amazon"}, 
			[10] = {name = "Minotaur Archer"}, 
			[11] = {name = "Minotaur Guard"}, 
			[12] = {name = "Minotaur Hunter"}, 
			[13] = {name = "Minotaur Mage"}, 
			[14] = {name = "Mooh'Tah Warrior"}, 
			[15] = {name = "Mummy"}, 
			[16] = {name = "Mutated Bat"}, 
			[17] = {name = "Necromancer"}, 
			[18] = {name = "Nightmare"}, 
			[19] = {name = "Nightstalker"}, 
			[20] = {name = "Nomad"}, 
			[21] = {name = "Novice of the Cult"}, 
			[22] = {name = "Nymph"}, 
			[23] = {name = "Orc"}, 
			[24] = {name = "Orc Berserker"}, 
			[25] = {name = "Orc Leader"}, 
			[26] = {name = "Orc Rider"}, 
			[27] = {name = "Orc Shaman"}, 
			[28] = {name = "Orc Spearman"}, 
			[29] = {name = "Orc Warlord"}, 
			[30] = {name = "Orc Warrior"}, 
			[31] = {name = "Oxyurus"}, 
			[32] = {name = "Phantasm"}, 
			[33] = {name = "Pirate Buccaneer"}, 
			[34] = {name = "Pirate Corsair"}, 
			[35] = {name = "Pirate Cutthroat"}, 
			[36] = {name = "Pirate Ghost"}, 
			[37] = {name = "Pirate Marauder"}, 
			[38] = {name = "Pirate Skeleton"}, 
			[39] = {name = "Pixie"}, 
			[40] = {name = "Plaguesmith"}, 
			[41] = {name = "Poison Spider"}, 
			[42] = {name = "Polar Bear"}, 
			[43] = {name = "Pooka"}, 
			[44] = {name = "Power Chakoya"}, 
			[45] = {name = "Priestess"}, 
			[46] = {name = "Quara Constrictor"}, 
			[47] = {name = "Quara Hydromancer"}, 
			[48] = {name = "Quara Mantassin"}, 
			[49] = {name = "Quara Pincher"}, 
			[50] = {name = "Quara Predator"}
		}
		
	local monsterspreyrz = {
			[1] = {name = "Retching Horror"}, 
			[2] = {name = "Rohirim"}, 
			[3] = {name = "Rotworm"}, 
			[4] = {name = "Rustheap Golem"}, 
			[5] = {name = "Saurons Possessed Beholder"}, 
			[6] = {name = "Scarab"}, 
			[7] = {name = "Serpent Spawn"}, 
			[8] = {name = "Shade of Akama"}, 
			[9] = {name = "Shock Head"}, 
			[10] = {name = "Sibang"}, 
			[11] = {name = "Sight of Surrender"}, 
			[12] = {name = "Silencer"}, 
			[13] = {name = "Skeleton"}, 
			[14] = {name = "Skeleton Elite Warrior"}, 
			[15] = {name = "Skeleton Miner"}, 
			[16] = {name = "Slime"}, 
			[17] = {name = "Slug"}, 
			[18] = {name = "Smuggler"}, 
			[19] = {name = "Solarian"}, 
			[20] = {name = "Soul Burner"}, 
			[21] = {name = "Reality Reaver"}, 
			[22] = {name = "Spectre"}, 
			[23] = {name = "Spider"}, 
			[24] = {name = "Spirit Of Fire"}, 
			[25] = {name = "Stalker"}, 
			[26] = {name = "Stampor"}, 
			[27] = {name = "Stone Devourer"}, 
			[28] = {name = "Stone Golem"}, 
			[29] = {name = "Stone Rhino"}, 
			[30] = {name = "Succubus"}, 
			[31] = {name = "Swampling"}, 
			[32] = {name = "Swan Maiden"}, 
			[33] = {name = "Swarmer"}, 
			[34] = {name = "Tarantula"}, 
			[35] = {name = "Terminator"}, 
			[36] = {name = "Terror Bird"}, 
			[37] = {name = "Thornback Tortoise"}, 
			[38] = {name = "Tiger"}, 
			[39] = {name = "Tortoise"}, 
			[40] = {name = "Troll"}, 
			[41] = {name = "True Dawnfire Asura"}, 
			[42] = {name = "True Frost Flower Asura"}, 
			[43] = {name = "True Midnight Asura"}, 
			[44] = {name = "Twisted Pooka"}, 
			[45] = {name = "Undead Dragon"}, 
			[46] = {name = "Undead Elite Gladiator"}, 
			[47] = {name = "Uruk-hai"}, 
			[48] = {name = "Uruloki"}, 
			[49] = {name = "Valkyrie"}, 
			[50] = {name = "Vampire"}, 
			[51] = {name = "Vampire Bride"}, 
			[52] = {name = "Vampire Viscount"}, 
			[53] = {name = "Wailing Widow"}, 
			[54] = {name = "War Wolf"}, 
			[55] = {name = "Warlock"}, 
			[56] = {name = "Waspoid"}, 
			[57] = {name = "Water Buffalo"}, 
			[58] = {name = "Weakened Frazzlemaw"}, 
			[59] = {name = "Werewolf"}, 
			[60] = {name = "Wild Warrior"}, 
			[61] = {name = "Winter Wolf"}, 
			[62] = {name = "Witch"}, 
			[63] = {name = "Wolf"}, 
			[64] = {name = "Worm Priestess"}, 
			[65] = {name = "Wyrm"}, 
			[66] = {name = "Wyvern"}, 
			[67] = {name = "Yeti"}
		}
	
		
	if modalWindowId == 1021 then
		if choiceId == 1 then
			cid:registerEvent("modalWindowPreySelectAC")

			local title = "Monstros de A a C - Selecione o monstro desejado."
			local message = "Ao clicar em Add, atualizaremos sua Prey com o monstro selecionado."
			
			local window = ModalWindow(1022, title, message)
			
			if buttonId == 100 then
				window:addButton(100, "Add")
			elseif buttonId == 101 then
				window:addButton(101, "Add")
			elseif buttonId == 102 then
				window:addButton(102, "Add")
			end
			window:addButton(103, "Cancel")
			
			for x = 1, #monsterspreyac do
				local a = monsterspreyac[x]
				window:addChoice(x, a.name)
			end
			
			if buttonId == 100 then
				window:setDefaultEnterButton(100)
			elseif buttonId == 101 then
				window:setDefaultEnterButton(101)
			elseif buttonId == 102 then
				window:setDefaultEnterButton(102)
			end
			window:setDefaultEscapeButton(103)
			
			window:sendToPlayer(cid)
		elseif choiceId == 2 then
			cid:registerEvent("modalWindowPreySelectDE")

			local title = "Monstros de D a E - Selecione o monstro desejado."
			local message = "Ao clicar em Add, atualizaremos sua Prey com o monstro selecionado."
			
			local window = ModalWindow(1023, title, message)
			
			if buttonId == 100 then
				window:addButton(100, "Add")
			elseif buttonId == 101 then
				window:addButton(101, "Add")
			elseif buttonId == 102 then
				window:addButton(102, "Add")
			end
			window:addButton(103, "Cancel")
			
			for x = 1, #monsterspreyde do
				local a = monsterspreyde[x]
				window:addChoice(x, a.name)
			end
			
			if buttonId == 100 then
				window:setDefaultEnterButton(100)
			elseif buttonId == 101 then
				window:setDefaultEnterButton(101)
			elseif buttonId == 102 then
				window:setDefaultEnterButton(102)
			end
			window:setDefaultEscapeButton(103)
			
			window:sendToPlayer(cid)
		elseif choiceId == 3 then
			cid:registerEvent("modalWindowPreySelectFL")

			local title = "Monstros de F a L - Selecione o monstro desejado."
			local message = "Ao clicar em Add, atualizaremos sua Prey com o monstro selecionado."
			
			local window = ModalWindow(1024, title, message)
			
			if buttonId == 100 then
				window:addButton(100, "Add")
			elseif buttonId == 101 then
				window:addButton(101, "Add")
			elseif buttonId == 102 then
				window:addButton(102, "Add")
			end
			window:addButton(103, "Cancel")
			
			for x = 1, #monsterspreyfl do
				local a = monsterspreyfl[x]
				window:addChoice(x, a.name)
			end
			
			if buttonId == 100 then
				window:setDefaultEnterButton(100)
			elseif buttonId == 101 then
				window:setDefaultEnterButton(101)
			elseif buttonId == 102 then
				window:setDefaultEnterButton(102)
			end
			window:setDefaultEscapeButton(103)
			
			window:sendToPlayer(cid)
		elseif choiceId == 4 then
			cid:registerEvent("modalWindowPreySelectMQ")

			local title = "Monstros de M a Q - Selecione o monstro desejado."
			local message = "Ao clicar em Add, atualizaremos sua Prey com o monstro selecionado."
			
			local window = ModalWindow(1025, title, message)
			
			if buttonId == 100 then
				window:addButton(100, "Add")
			elseif buttonId == 101 then
				window:addButton(101, "Add")
			elseif buttonId == 102 then
				window:addButton(102, "Add")
			end
			window:addButton(103, "Cancel")
			
			for x = 1, #monsterspreymq do
				local a = monsterspreymq[x]
				window:addChoice(x, a.name)
			end
			
			if buttonId == 100 then
				window:setDefaultEnterButton(100)
			elseif buttonId == 101 then
				window:setDefaultEnterButton(101)
			elseif buttonId == 102 then
				window:setDefaultEnterButton(102)
			end
			window:setDefaultEscapeButton(103)
			
			window:sendToPlayer(cid)
		elseif choiceId == 5 then
			cid:registerEvent("modalWindowPreySelectRZ")

			local title = "Monstros de R a Z - Selecione o monstro desejado."
			local message = "Ao clicar em Add, atualizaremos sua Prey com o monstro selecionado."
			
			local window = ModalWindow(1026, title, message)
			
			if buttonId == 100 then
				window:addButton(100, "Add")
			elseif buttonId == 101 then
				window:addButton(101, "Add")
			elseif buttonId == 102 then
				window:addButton(102, "Add")
			end
			window:addButton(103, "Cancel")
			
			for x = 1, #monsterspreyrz do
				local a = monsterspreyrz[x]
				window:addChoice(x, a.name)
			end
			
			if buttonId == 100 then
				window:setDefaultEnterButton(100)
			elseif buttonId == 101 then
				window:setDefaultEnterButton(101)
			elseif buttonId == 102 then
				window:setDefaultEnterButton(102)
			end
			window:setDefaultEscapeButton(103)
			
			window:sendToPlayer(cid)
		end
	end
	
end
modalWindowPreySelect:register()
