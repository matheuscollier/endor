local mType = Game.createMonsterType("Lizard Chosen")
local monster = {}

monster.description = "um lizard chosen"
monster.experience = 8700
monster.outfit = {
	lookType = 344,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10500
monster.maxHealth = 10500
monster.race = "blood"
monster.corpse = 11285
monster.speed = 325
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 9000,
	chance = 8
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 50,
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
	{text = "Ssssss!", yell = false}
}

monster.loot = {
	{id = 5876, chance = 3000},
	{id = 5881, chance = 3000},
	{id = 11302, chance = 30},
	{id = 11301, chance = 70},
	{id = 2459, chance = 750},
	{id = 7885, chance = 600},
	{id = 11308, chance = 80},
	{id = 7427, chance = 250},
	{id = 7886, chance = 580},
	{id = 2672, chance = 10200, maxCount = 5},
	{id = 2155, chance = 650},
	{id = 2149, chance = 750},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -280, maxDamage = -415},
	{name ="melee", interval = 8000, chance = 80, minDamage = -200, maxDamage = -500},
	{name ="combat", interval = 2300, chance = 40, minDamage = -310, maxDamage = -430, range = 7, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2500, chance = 45, minDamage = -290, maxDamage = -420, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_POFF, target = true},
	{name ="combat", interval = 2800, chance = 50, minDamage = -350, maxDamage = -470, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 60, minDamage = -640, maxDamage = -860, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 85},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
