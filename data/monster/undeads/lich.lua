local mType = Game.createMonsterType("Lich")
local monster = {}

monster.description = "um lich"
monster.experience = 900
monster.outfit = {
	lookType = 99,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 880
monster.maxHealth = 880
monster.race = "undead"
monster.corpse = 3025
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 8000,
	chance = 7
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

monster.summons = {
	{name = "bonebeast", chance = 20, interval = 6000, max = 4}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Death awaits all!", yell = false},
	{text = "Doomed be the living!", yell = false},
	{text = "Death and Decay!", yell = false},
	{text = "You will endure agony beyond thy death!", yell = false},
	{text = "Come to me my children!", yell = false},
	{text = "Pain sweet pain!", yell = false},
	{text = "Thy living flesh offends me!", yell = false}
}

monster.loot = {
	{id = 2401, chance = 5000},
	{id = 2237, chance = 10000},
	{id = 13291, chance = 30},
	{id = 7893, chance = 250},
	{id = 2148, chance = 80000, maxCount = 60},
	{id = 2175, chance = 3100},
	{id = 2179, chance = 800},
	{id = 2479, chance = 1600},
	{id = 2178, chance = 650},
	{id = 2171, chance = 680},
	{id = 2214, chance = 800},
	{id = 2535, chance = 1050}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -38, maxDamage = -74},
	{name ="combat", interval = 6300, chance = 16, minDamage = -150, maxDamage = -250, type = COMBAT_LIFEDRAIN, range = 1, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 5400, chance = 33, SpeedChange = -600, Duration = 4500},
	{name ="combat", interval = 5850, chance = 15, minDamage = -130, maxDamage = -180, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 4650, chance = 13, minDamage = -200, maxDamage = -400, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -100, maxDamage = -150, range = 3, effect = CONST_ME_HITBYPOISON, target = true}
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
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
