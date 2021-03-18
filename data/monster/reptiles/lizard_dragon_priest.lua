local mType = Game.createMonsterType("Lizard Dragon Priest")
local monster = {}

monster.description = "um lizard dragon priest"
monster.experience = 5350
monster.outfit = {
	lookType = 339,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 11277
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	targetDistance = 2,
	runHealth = 550,
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
	{id = 2498, chance = 450},
	{id = 8882, chance = 180},
	{id = 2469, chance = 200},
	{id = 7887, chance = 180},
	{id = 2181, chance = 380},
	{id = 2518, chance = 450},
	{id = 3982, chance = 300},
	{id = 2672, chance = 10200, maxCount = 5},
	{id = 2168, chance = 500},
	{id = 2149, chance = 450},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -224, maxDamage = -360},
	{name ="combat", interval = 2300, chance = 25, minDamage = -180, maxDamage = -220, type = COMBAT_EARTHDAMAGE, range = 5, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2600, chance = 35, minDamage = -160, maxDamage = -210, type = COMBAT_FIREDAMAGE, range = 6, ShootEffect = CONST_ANI_REDSTAR, effect = CONST_ME_FIREATTACK, target = true},
	{name ="combat", interval = 3150, chance = 45, minDamage = -100, maxDamage = -150, type = COMBAT_EARTHDAMAGE, range = 6, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -400, maxDamage = -640, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 85},
	{type = COMBAT_FIREDAMAGE, percent = 75},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
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
