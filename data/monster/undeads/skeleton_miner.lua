local mType = Game.createMonsterType("Skeleton Miner")
local monster = {}

monster.description = "um skeleton miner"
monster.experience = 185
monster.outfit = {
	lookType = 232,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 270
monster.maxHealth = 270
monster.race = "undead"
monster.corpse = 6310
monster.speed = 188
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 6000,
	chance = 7
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
	{text = "So ul ahderr cy!", yell = false}
}

monster.loot = {
	{id = 2483, chance = 3000},
	{id = 2197, chance = 50},
	{id = 2436, chance = 40},
	{id = 2044, chance = 10000},
	{id = 2536, chance = 40},
	{id = 2150, chance = 230},
	{id = 2147, chance = 230},
	{id = 2149, chance = 250},
	{id = 2145, chance = 230, maxCount = 2},
	{id = 2553, chance = 3000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -100},
	{name ="combat", interval = 4100, chance = 50, minDamage = -30, maxDamage = -60, type = COMBAT_LIFEDRAIN, length = 6, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
