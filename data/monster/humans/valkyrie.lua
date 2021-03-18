local mType = Game.createMonsterType("Valkyrie")
local monster = {}

monster.description = "uma valkyrie"
monster.experience = 85
monster.outfit = {
	lookType = 139,
	lookHead = 113,
	lookBody = 38,
	lookLegs = 76,
	lookFeet = 96,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 190
monster.maxHealth = 190
monster.race = "blood"
monster.corpse = 20523
monster.speed = 176
monster.manaCost = 450
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	targetDistance = 1,
	runHealth = 10,
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
	{text = "Stand still!", yell = false},
	{text = "One more head for me!", yell = false},
	{text = "Head off!", yell = false}
}

monster.loot = {
	{id = 2464, chance = 3000},
	{id = 2125, chance = 400},
	{id = 2387, chance = 100},
	{id = 2458, chance = 4000},
	{id = 2200, chance = 50},
	{id = 2463, chance = 150},
	{id = 2499, chance = 25},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2674, chance = 10000, maxCount = 4},
	{id = 2666, chance = 9000, maxCount = 3},
	{id = 2147, chance = 100},
	{id = 2145, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -50},
	{name ="combat", interval = 3250, chance = 99, minDamage = -15, maxDamage = -30, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SPEAR, target = false}
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
