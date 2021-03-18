local mType = Game.createMonsterType("Choking Fear")
local monster = {}

monster.description = "Choking Fear"
monster.experience = 11000
monster.outfit = {
	lookType = 586,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7500
monster.maxHealth = 7500
monster.race = "undead"
monster.corpse = 22493
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
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
	{text = "Ah, sweet air... don't you miss it?", yell = false},
	{text = "Murr tat muuza!", yell = false},
	{text = "kchh", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 5},
	{id = 2167, chance = 3000},
	{id = 2168, chance = 4200},
	{id = 2214, chance = 3000},
	{id = 5914, chance = 3500},
	{id = 7590, chance = 20000, maxCount = 3},
	{id = 7886, chance = 720},
	{id = 18417, chance = 2000, maxCount = 2},
	{id = 18418, chance = 10000, maxCount = 3},
	{id = 22396, chance = 620},
	{id = 22536, chance = 14180},
	{id = 22540, chance = 14180},
	{id = 2474, chance = 600},
	{id = 2123, chance = 70},
	{id = 2495, chance = 300},
	{id = 2515, chance = 1540}
}

monster.attacks = {
	{name ="melee", interval = 1680, chance = 100, minDamage = -400, maxDamage = -780},
	{name ="combat", interval = 2000, chance = 10, minDamage = -700, maxDamage = -900, length = 5, spread = 3, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -640, maxDamage = -920, range = 5, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -500, maxDamage = -950, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -800, Duration = 15000},
	{name ="combat", interval = 2000, chance = 10, minDamage = -350, maxDamage = -495, type = COMBAT_MANADRAIN, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -250, maxDamage = -500, type = COMBAT_DEATHDAMAGE, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 10, minDamage = 80, maxDamage = 150, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
