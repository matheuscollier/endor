local mType = Game.createMonsterType("Elite Dragon Priest")
local monster = {}

monster.description = "um elite dragon priest"
monster.experience = 0
monster.outfit = {
	lookType = 339,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4500
monster.maxHealth = 4500
monster.race = "undead"
monster.corpse = 0
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	{name ="melee", interval = 1900, chance = 100, minDamage = -224, maxDamage = -360},
	{name ="combat", interval = 2300, chance = 25, minDamage = -180, maxDamage = -280, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2600, chance = 35, minDamage = -160, maxDamage = -230, type = COMBAT_FIREDAMAGE, range = 6, ShootEffect = CONST_ANI_REDSTAR, effect = CONST_ME_FIREATTACK, target = true},
	{name ="combat", interval = 3150, chance = 45, minDamage = -100, maxDamage = -150, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -400, maxDamage = -640, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_PHYSICALDAMAGE, percent = 85},
	{type = COMBAT_FIREDAMAGE, percent = 75},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
