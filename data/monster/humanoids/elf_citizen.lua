local mType = Game.createMonsterType("Elf Citizen")
local monster = {}

monster.description = "um elf citizen"
monster.experience = 45
monster.outfit = {
	lookType = 159,
	lookHead = 39,
	lookBody = 78,
	lookLegs = 116,
	lookFeet = 38,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 737
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 2,
	Locations = "x."
	}

monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 2945
monster.speed = 170
monster.manaCost = 320
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
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
	{text = "Ulathil beia Thratha!", yell = false},
	{text = "Bahaha aka!", yell = false},
	{text = "You are not welcome here.", yell = false},
	{text = "Flee as long as you can.", yell = false},
	{text = "Death to the defilers!", yell = false}
}

monster.loot = {
	{id = 2484, chance = 5000},
	{id = 5910, chance = 4000},
	{id = 2643, chance = 2000},
	{id = 2511, chance = 2777},
	{id = 2482, chance = 2000},
	{id = 2642, chance = 250},
	{id = 2397, chance = 1000},
	{id = 2456, chance = 3666},
	{id = 2148, chance = 100000, maxCount = 52},
	{id = 2674, chance = 50000, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2200, chance = 100, minDamage = -10, maxDamage = -25}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
