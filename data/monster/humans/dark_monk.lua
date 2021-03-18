local mType = Game.createMonsterType("Dark Monk")
local monster = {}

monster.description = "um dark monk"
monster.experience = 145
monster.outfit = {
	lookType = 57,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 190
monster.maxHealth = 190
monster.race = "blood"
monster.corpse = 20371
monster.speed = 230
monster.manaCost = 480
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
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
	{text = "This is where your path will end!", yell = false},
	{text = "Your end has come.", yell = false},
	{text = "You are no match for us!", yell = false}
}

monster.loot = {
	{id = 12448, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 35},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 300},
	{id = 2401, chance = 600},
	{id = 1949, chance = 1000},
	{id = 2044, chance = 3000},
	{id = 2689, chance = 20000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -70},
	{name ="combat", interval = 3200, chance = 35, minDamage = -25, maxDamage = -49, type = COMBAT_LIFEDRAIN, range = 1, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2800, chance = 20, minDamage = 25, maxDamage = 49, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 5000, chance = 10, SpeedChange = 400, Duration = 4000}
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
