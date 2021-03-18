local mType = Game.createMonsterType("Ice Serpente")
local monster = {}

monster.description = "uma ice serpente"
monster.experience = 17500
monster.outfit = {
	lookType = 275,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 8307
monster.speed = 510
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	canPushCreatures = false,
	staticAttackChance = 50,
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
	{text = "Chrr.", yell = false}
}

monster.loot = {
	{id = 2145, chance = 500},
	{id = 24170, chance = 500},
	{id = 7902, chance = 390},
	{id = 8887, chance = 200},
	{id = 8878, chance = 1250},
	{id = 7730, chance = 150},
	{id = 7892, chance = 500},
	{id = 11117, chance = 250},
	{id = 7893, chance = 1200},
	{id = 2396, chance = 400},
	{id = 2445, chance = 3150},
	{id = 2542, chance = 75},
	{id = 2148, chance = 50000, maxCount = 98},
	{id = 2148, chance = 45000, maxCount = 98},
	{id = 2146, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -470, maxDamage = -560},
	{name ="speed", interval = 5400, chance = 35, SpeedChange = -450, Duration = 4000},
	{name ="combat", interval = 3250, chance = 60, minDamage = -100, maxDamage = -200, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="combat", interval = 2100, chance = 40, minDamage = -420, maxDamage = -730, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2950, chance = 50, minDamage = -520, maxDamage = -680, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE, target = true},
	{name ="combat", interval = 2800, chance = 65, minDamage = -200, maxDamage = -300, type = COMBAT_ICEDAMAGE, length = 8, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 190, maxDamage = 350, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 45},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
