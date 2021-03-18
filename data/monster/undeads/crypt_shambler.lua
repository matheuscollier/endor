local mType = Game.createMonsterType("Crypt Shambler")
local monster = {}

monster.description = "um crypt shambler"
monster.experience = 195
monster.outfit = {
	lookType = 100,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 330
monster.maxHealth = 330
monster.race = "undead"
monster.corpse = 3028
monster.speed = 140
monster.manaCost = 580
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 4
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
	{text = "Uhhhhhhh!", yell = false},
	{text = "Aaaaahhhh!", yell = false},
	{text = "Hoooohhh!", yell = false},
	{text = "Chhhhhhh!", yell = false}
}

monster.loot = {
	{id = 2459, chance = 2000},
	{id = 2377, chance = 500},
	{id = 2541, chance = 500},
	{id = 2450, chance = 1000},
	{id = 5930, chance = 5000, maxCount = 2},
	{id = 5925, chance = 2000},
	{id = 2148, chance = 90000, maxCount = 20},
	{id = 2145, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -65, maxDamage = -140},
	{name ="combat", interval = 2000, chance = 23, minDamage = -25, maxDamage = -65, type = COMBAT_LIFEDRAIN, range = 1, target = false}
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
