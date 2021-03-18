local mType = Game.createMonsterType("Skeleton")
local monster = {}

monster.description = "um skeleton"
monster.experience = 35
monster.outfit = {
	lookType = 33,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50
monster.maxHealth = 50
monster.race = "undead"
monster.corpse = 2843
monster.speed = 154
monster.manaCost = 300
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
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
}

monster.loot = {
	{id = 2480, chance = 1400},
	{id = 2473, chance = 1900},
	{id = 2398, chance = 1800},
	{id = 2511, chance = 1700},
	{id = 2229, chance = 2000},
	{id = 2230, chance = 1600},
	{id = 2231, chance = 900},
	{id = 2544, chance = 50000, maxCount = 10},
	{id = 2148, chance = 90000, maxCount = 15},
	{id = 2050, chance = 2100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -3, maxDamage = -6},
	{name ="combat", interval = 3500, chance = 15, minDamage = -7, maxDamage = -13, type = COMBAT_LIFEDRAIN, range = 1, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
