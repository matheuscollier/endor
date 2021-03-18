local raceidslist = TalkAction("/raceids")


function raceidslist.onSay(player, words, param)
	
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	
	print ("lista de raceids validas")
	
	local listademonstros = {
		"Abyssal Cursed Stone", "Acid Blob", "Acolyte of the Cult", "Adept of the Cult", "Allukard", "Amazon", "Ancient Scarab", "Assassin", 
		"Bandit", "Banshee", "Barbarian Bloodwalker", "Barbarian Brutetamer", "Barbarian Headsplitter", "Barbarian Skullhunter", "Barkless Devotee", 
		"Barkless Fanatic", "Beduin Nomad", "Behemoth", "Beholder", "Belzebuth Minion", "Betrayed Wraith", "Black Knight", "Blightwalker", 
		"Blood Beast", "Blood Crab", "Bloodboil", "Boar", "Bonebeast", "Boogy", "Breach Brood", "Carniphila", "Carrion Worm", "Chakoya Toolshaper", 
		"Chakoya Tribewarden", "Chakoya Windcaller", "Haunted Dragon", "Choking Fear", "Cliff Strider", "Crazed Summer Rearguard", "Crazed Summer Vanguard", 
		"Crazed Winter Rearguard", "Crazed Winter Vanguard", "Crypt Shambler", "Crystal Spider", "Cyclops", "Cyclops Drone", "Cyclops Smith", "Cyclopslave", 
		"Dark Faun", "Dark Monk", "Dark Torturer", "Dawnfire Asura", "Death Blob", "Deepling Brawler", "Deepling Master", "Deepling Warrior", "Defiler", 
		"Demon", "Demon Outcast", "Demon Skeleton", "Destroyer", "Diabolic Imp", "Draco", "Dragon", "Dragon Hatchling", "Dragon Lord", "Dragon Lord Hatchling", 
		"Dragonling", "Draken Abomination", "Draken Elite", "Draken Spellweaver", "Draken Warmaster", "Dread Intruder", "Dwarf", "Dwarf Geomancer", "Dwarf Guard", 
		"Dwarf Miner", "Dwarf Soldier", "Dworc Fleshhunter", "Dworc Venomsniper", "Dworc Voodoomaster", "Earth Elemental", "Elder Beholder", "Elder Wyrm", 
		"Elephant", "Elf", "Elf Arcanist", "Elf Citizen", "Elf Lightmaster", "Elf Ranger", "Elf Scout", "Elf Soldier", "Energy Elemental", "Enfeebled Silencer", 
		"Enlightened of the Cult", "Enyd", "Falcon Knight", "Falcon Paladin", "Faun", "Fire Devil", "Fire Elemental", "Frazzlemaw", "Frost Dragon", 
		"Frost Flower Asura", "Frost Giant", "Frost Giantess", "Frost Torog", "Fury", "Gargoyle", "Ghastly Dragon", "Ghost", "Ghoul", "Giant Spider", 
		"Glooth Anemone", "Goblin", "Goblin Assassin", "Gravedigger", "Grim Reaper", "Guzzlemaw", "Hand of Cursed Fate", "Haunted Treeling", "Hellfire Fighter", 
		"Hellforger Cyclops", "Hellhound", "Hellspawn", "Hero", "High Elf", "Hunter", "Hydra", "Ice Serpente",
		"Ice Witch", "Insectoid Worker", "Ironblight", "Istari Follower", "Juggernaut", "Kongra", "Larva", 
		"Lich", "Lizard Chosen", "Lizard Dragon Priest", "Lizard High Guard", "Lizard Legionnaire", "Lizard Sentinel", 
		"Lizard Snakecharmer", "Lizard Templar", "Lizard Zaogun", "Lost Soul", "Magma Crawler", "Mancubus", "Medusa", "Mephisto", 
		"Mercury Blob", "Merlkin", "Midnight Asura", "Minotaur", "Minotaur Amazon", "Minotaur Archer", "Minotaur Guard", 
		"Minotaur Hunter", "Minotaur Mage", "Mooh'Tah Warrior", "Mummy", "Mutated Bat", "Necromancer", "Nightmare", "Nightstalker", 
		"Nomad", "Novice of the Cult", "Nymph", "Orc", "Orc Berserker", "Orc Leader", "Orc Rider", "Orc Shaman", "Orc Spearman", 
		"Orc Warlord", "Orc Warrior", "Oxyurus", "Phantasm", "Pirate Buccaneer", "Pirate Corsair", "Pirate Cutthroat", "Pirate Ghost", 
		"Pirate Marauder", "Pirate Skeleton", "Pixie", "Plaguesmith", "Poison Spider", "Polar Bear", "Pooka", "Power Chakoya", "Priestess", 
		"Quara Constrictor", "Quara Hydromancer", "Quara Mantassin", "Quara Pincher", "Quara Predator", "Retching Horror", "Rohirim", "Rotworm", 
		"Rustheap Golem", "Saurons Possessed Beholder", "Scarab", "Serpent Spawn", "Shade of Akama", "Shock Head", "Sibang", "Sight of Surrender", 
		"Silencer", "Skeleton", "Skeleton Elite Warrior", "Skeleton Miner", "Slime", "Slug", "Smuggler", "Solarian", "Soul Burner", "Reality Reaver", 
		"Spectre", "Spider", "Spirit Of Fire", "Stalker", "Stampor", "Stone Devourer", "Stone Golem", "Stone Rhino", "Succubus", "Swampling", "Swan Maiden", 
		"Swarmer", "Tarantula", "Terminator", "Terror Bird", "Thornback Tortoise", "Tiger", "Tortoise", "Troll", "True Dawnfire Asura", "True Frost Flower Asura", 
		"True Midnight Asura", "Twisted Pooka", "Undead Dragon", "Undead Elite Gladiator", "Uruk-hai", "Uruloki", "Valkyrie", "Vampire", "Vampire Bride", 
		"Vampire Viscount", "Wailing Widow", "War Wolf", "Warlock", "Waspoid", "Water Buffalo", "Weakened Frazzlemaw", "Werewolf", "Wild Warrior", "Winter Wolf", 
		"Witch", "Wolf", "Worm Priestess", "Wyrm", "Wyvern", "Yeti"
	}


	for i = 1, #listademonstros do
		local mType = MonsterType(listademonstros[i])
		if mType then
			local raceid = mType:raceId()
			if raceid > 0 then
				print (raceid)
			end
		end
	end
	
	return false
	
end

raceidslist:separator(" ")
raceidslist:register()
