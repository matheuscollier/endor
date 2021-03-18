local mType = Game.createMonsterType("Dragon")
local monster = {}

monster.description = "um dragon"
monster.experience = 700
monster.outfit = {
	lookType = 34,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 34
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1500,
	FirstUnlock = 10,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 5973
monster.speed = 220
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
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
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
	{text = "GROOAAARRR", yell = true},
	{text = "FCHHHHH", yell = true}
}

monster.loot = {
	{id = 2672, chance = 10000, maxCount = 2},
	{id = 5920, chance = 3000},
	{id = 10020, chance = 1000},
	{id = 5877, chance = 5000},
	{id = 2434, chance = 1200},
	{id = 2509, chance = 1600},
	{id = 2647, chance = 650},
	{id = 2387, chance = 800},
	{id = 2397, chance = 3200},
	{id = 2546, chance = 10000, maxCount = 10},
	{id = 2516, chance = 450},
	{id = 2413, chance = 3600},
	{id = 2409, chance = 800},
	{id = 2148, chance = 90000, maxCount = 50},
	{id = 2145, chance = 2000},
	{id = 2177, chance = 100},
	{id = 2492, chance = 2},
	{id = 2469, chance = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -120},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -140, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -170, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 40, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
