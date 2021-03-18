local mType = Game.createMonsterType("Hunter")
local monster = {}

monster.description = "um hunter"
monster.experience = 150
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 20419
monster.speed = 210
monster.manaCost = 530
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
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
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 3,
	runHealth = 15,
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
	{id = 2465, chance = 1000},
	{id = 2456, chance = 6666},
	{id = 2478, chance = 1000},
	{id = 2480, chance = 1000},
	{id = 2456, chance = 50},
	{id = 2201, chance = 160},
	{id = 2544, chance = 10000, maxCount = 15},
	{id = 2148, chance = 75000, maxCount = 20},
	{id = 2546, chance = 7000, maxCount = 8},
	{id = 2147, chance = 350},
	{id = 2675, chance = 5000, maxCount = 4}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, minDamage = -30, maxDamage = -60, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false},
	{name ="combat", interval = 1800, chance = 25, minDamage = -20, maxDamage = -40, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false},
	{name ="combat", interval = 1600, chance = 10, minDamage = -10, maxDamage = -20, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false}
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
