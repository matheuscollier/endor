local mType = Game.createMonsterType("Dwarf Miner")
local monster = {}

monster.description = "um dwarf miner"
monster.experience = 215
monster.outfit = {
	lookType = 160,
	lookHead = 77,
	lookBody = 19,
	lookLegs = 97,
	lookFeet = 97,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 260
monster.maxHealth = 260
monster.race = "blood"
monster.corpse = 2985
monster.speed = 190
monster.manaCost = 680
monster.maxSummons = 0

monster.changeTarget = {
	interval = 0,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	staticAttackChance = 80,
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
	{text = "Invasores!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 80},
	{id = 2388, chance = 3000},
	{id = 2649, chance = 3000},
	{id = 2044, chance = 3000},
	{id = 2459, chance = 530},
	{id = 2787, chance = 20000, maxCount = 6},
	{id = 2150, chance = 530},
	{id = 2147, chance = 300},
	{id = 2149, chance = 650},
	{id = 2145, chance = 530, maxCount = 2},
	{id = 2158, chance = 1500},
	{id = 2553, chance = 3000},
	{id = 2597, chance = 2000},
	{id = 2213, chance = 2100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -145}
}

monster.defenses = {
	defense = 10,
	armor = 10
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
