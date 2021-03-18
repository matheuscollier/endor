local mType = Game.createMonsterType("Elite Chosen")
local monster = {}

monster.description = "um elite chosen"
monster.experience = 0
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
monster.race = "undead"
monster.corpse = 0
monster.speed = 325
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 9000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
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
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -420, maxDamage = -600},
	{name ="melee", interval = 8000, chance = 80, minDamage = -700, maxDamage = -900},
	{name ="combat", interval = 2300, chance = 40, minDamage = -250, maxDamage = -350, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2500, chance = 45, minDamage = -250, maxDamage = -320, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_POFF, target = true},
	{name ="combat", interval = 2800, chance = 50, minDamage = -200, maxDamage = -280, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, target = false},
		{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 60, minDamage = -640, maxDamage = -860, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
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
