local mType = Game.createMonsterType("Guzzlemaw")
local monster = {}

monster.description = "Guzzlemaw"
monster.experience = 9000
monster.outfit = {
	lookType = 584,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 22485
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{text = "Gmmmooooh! *chomp*", yell = false},
	{text = "MWAAAH! *gurgle*", yell = false},
	{text = "*chomp* Mmmoh! *chomp*", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 4},
	{id = 2219, chance = 10700},
	{id = 2225, chance = 10500},
	{id = 2226, chance = 9500},
	{id = 2229, chance = 10400},
	{id = 2230, chance = 9200},
	{id = 2231, chance = 4500},
	{id = 2377, chance = 2700},
	{id = 2667, chance = 7000, maxCount = 3},
	{id = 2671, chance = 10000},
	{id = 5880, chance = 3000},
	{id = 5895, chance = 5000},
	{id = 5925, chance = 5700},
	{id = 5951, chance = 9400},
	{id = 7407, chance = 200},
	{id = 2477, chance = 400},
	{id = 2476, chance = 500},
	{id = 7590, chance = 17000, maxCount = 3},
	{id = 18414, chance = 1500},
	{id = 18417, chance = 2000, maxCount = 2},
	{id = 18420, chance = 7600},
	{id = 18554, chance = 12000},
	{id = 22396, chance = 920},
	{id = 22532, chance = 1500},
	{id = 22533, chance = 600},
	{id = 2240, chance = 10110}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -400, maxDamage = -705},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 30, minDamage = -350, maxDamage = -750, radius = 3, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -670, maxDamage = -890, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -410, maxDamage = -645, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -800, Duration = 15000},
	{name ="combat", interval = 2000, chance = 10, minDamage = -150, maxDamage = -280, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 20, minDamage = 250, maxDamage = 425, type = COMBAT_HEALING, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
