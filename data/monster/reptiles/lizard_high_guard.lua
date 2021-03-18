local mType = Game.createMonsterType("Lizard High Guard")
local monster = {}

monster.description = "um lizard high guard"
monster.experience = 6100
monster.outfit = {
	lookType = 337,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7100
monster.maxHealth = 7100
monster.race = "blood"
monster.corpse = 11269
monster.speed = 340
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
	{text = "Ssssss!", yell = false}
}

monster.loot = {
	{id = 5876, chance = 3000},
	{id = 5881, chance = 3000},
	{id = 2506, chance = 160},
	{id = 7885, chance = 380},
	{id = 2492, chance = 150},
	{id = 8880, chance = 700},
	{id = 2477, chance = 320},
	{id = 2645, chance = 180},
	{id = 2672, chance = 10200, maxCount = 5},
	{id = 2149, chance = 700},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65},
	{id = 2148, chance = 35000, maxCount = 65}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -304, maxDamage = -488},
	{name ="combat", interval = 2300, chance = 30, minDamage = -150, maxDamage = -200, range = 7, type = COMBAT_PHYSICALDAMAGE, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2500, chance = 30, minDamage = -200, maxDamage = -250, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_POFF, target = true},
	{name ="combat", interval = 2800, chance = 35, minDamage = -220, maxDamage = -260, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -400, maxDamage = -640, range = 1, effect = CONST_ME_GREEN_RINGS, target = true}
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
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
