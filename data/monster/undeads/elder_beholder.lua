local mType = Game.createMonsterType("Elder Beholder")
local monster = {}

monster.description = "um elder beholder"
monster.experience = 280
monster.outfit = {
	lookType = 108,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 3052
monster.speed = 170
monster.manaCost = 0
monster.maxSummons = 12

monster.changeTarget = {
	interval = 2000,
	chance = 50
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
	staticAttackChance = 95,
	targetDistance = 4,
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

monster.summons = {
	{name = "gazer", chance = 13, interval = 1000, max = 6},
	{name = "crypt shambler", chance = 12, interval = 1000, max = 6}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let me take a look at you!", yell = false},
	{text = "Inferior creatures, bow before my power!", yell = false}
}

monster.loot = {
	{id = 3972, chance = 50},
	{id = 2148, chance = 80000, maxCount = 25},
	{id = 5898, chance = 5000, maxCount = 3},
	{id = 2423, chance = 500},
	{id = 2394, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 45, attack = 16},
	{name ="combat", interval = 1000, chance = 8, minDamage = -45, maxDamage = -75, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 1000, chance = 7, minDamage = -60, maxDamage = -80, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 1000, chance = 9, minDamage = -70, maxDamage = -90, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1000, chance = 8, minDamage = -30, maxDamage = -70, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 1000, chance = 6, minDamage = -75, maxDamage = -85, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 1000, chance = 6, minDamage = -75, maxDamage = -85, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 1000, chance = 6, minDamage = -20, maxDamage = -40, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 1000, chance = 10, SpeedChange = -450, Duration = 20000}
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
