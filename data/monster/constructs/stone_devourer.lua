local mType = Game.createMonsterType("Stone Devourer")
local monster = {}

monster.description = "stone devourer"
monster.experience = 12000
monster.outfit = {
	lookType = 486,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 879
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "x."
	}
	
monster.health = 9000
monster.maxHealth = 9000
monster.race = "undead"
monster.corpse = 18375
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Rumble!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 99900, maxCount = 200},
	{id = 18419, chance = 2500, maxCount = 5},
	{id = 18421, chance = 2500, maxCount = 5},
	{id = 12658, chance = 600},
	{id = 12659, chance = 2000},
	{id = 2496, chance = 90},
	{id = 2536, chance = 220},
	{id = 8880, chance = 120},
	{id = 2444, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 170},
	{name ="combat", interval = 2000, chance = 30, minDamage = -200, maxDamage = -300, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 5000, chance = 5, minDamage = -200, maxDamage = -350, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -260, length = 5, spread = 3, effect = CONST_ME_STONES, target = false}																																										  
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="combat", interval = 1000, chance = 10, minDamage = 100, maxDamage = 250, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 99},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
