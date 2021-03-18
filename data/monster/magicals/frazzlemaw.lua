local mType = Game.createMonsterType("Frazzlemaw")
local monster = {}

monster.description = "Frazzlemaw"
monster.experience = 5000
monster.outfit = {
	lookType = 594,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5400
monster.maxHealth = 5400
monster.race = "blood"
monster.corpse = 22567
monster.speed = 250
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
	{text = "Mwaaaahnducate youuuuuu *gurgle*", yell = false},
	{text = "mwaaah!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 4},
	{id = 2219, chance = 9500},
	{id = 2225, chance = 10400},
	{id = 2226, chance = 10000},
	{id = 2229, chance = 12680},
	{id = 2230, chance = 10000},
	{id = 2231, chance = 5500},
	{id = 2377, chance = 3200},
	{id = 2667, chance = 6750, maxCount = 3},
	{id = 2671, chance = 6000, maxCount = 2},
	{id = 5880, chance = 3000},
	{id = 5895, chance = 2000},
	{id = 5925, chance = 5000},
	{id = 5951, chance = 10800},
	{id = 18414, chance = 1500},
	{id = 18417, chance = 2000},
	{id = 18420, chance = 7600},
	{id = 18554, chance = 10000},
	{id = 22396, chance = 450},
	{id = 7407, chance = 30},
	{id = 22532, chance = 1500},
	{id = 22533, chance = 600},
	{id = 2240, chance = 9420}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 90},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -370, maxDamage = -490, radius = 3, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -200, maxDamage = -800, type = COMBAT_PHYSICALDAMAGE, length = 5, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -100, maxDamage = -500, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -600, Duration = 15000},
	{name ="combat", interval = 2000, chance = 10, minDamage = -90, maxDamage = -180, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 15, minDamage = 250, maxDamage = 425, type = COMBAT_HEALING, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
