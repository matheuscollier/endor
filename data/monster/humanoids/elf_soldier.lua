local mType = Game.createMonsterType("Elf Soldier")
local monster = {}

monster.description = "um elf soldier"
monster.experience = 440
monster.outfit = {
	lookType = 62,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4012
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 2945
monster.speed = 330
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel my wrath!", yell = false},
	{text = "I'll bring balance upon you!", yell = false},
	{text = "Tha'shi Cenath!", yell = false},
	{text = "Vihil Ealuel!", yell = false}
}

monster.loot = {
	{id = 2505, chance = 850},
	{id = 2507, chance = 700},
	{id = 2533, chance = 1200},
	{id = 2407, chance = 450},
	{id = 3969, chance = 1200},
	{id = 12420, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 2669, chance = 2000},
	{id = 2667, chance = 9000, maxCount = 3},
	{id = 2668, chance = 3000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -180},
	{name ="combat", interval = 3200, chance = 15, minDamage = -50, maxDamage = -80, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 5200, chance = 25, minDamage = 40, maxDamage = 75, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
