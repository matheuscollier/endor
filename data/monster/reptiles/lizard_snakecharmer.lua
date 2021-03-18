local mType = Game.createMonsterType("Lizard Snakecharmer")
local monster = {}

monster.description = "um lizard snakecharmer"
monster.experience = 200
monster.outfit = {
	lookType = 115,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 4262
monster.speed = 184
monster.manaCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 2,
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

monster.summons = {
	{name = "cobra", chance = 25, interval = 1000, max = 6}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Shhhhhhhh.", yell = false},
	{text = "I ssssmell warm blood!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 3971, chance = 600},
	{id = 5876, chance = 2500},
	{id = 3983, chance = 2000},
	{id = 3975, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 28, attack = 18},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 20, minDamage = -140, maxDamage = -200, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1000, chance = 17, minDamage = -50, maxDamage = -100, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 34, minDamage = 50, maxDamage = 100, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
