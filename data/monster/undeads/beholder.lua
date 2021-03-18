local mType = Game.createMonsterType("Beholder")
local monster = {}

monster.description = "um beholder"
monster.experience = 170
monster.outfit = {
	lookType = 17,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 260
monster.maxHealth = 260
monster.race = "blood"
monster.corpse = 2908
monster.speed = 150
monster.manaCost = 0
monster.maxSummons = 5

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
	{name = "skeleton", chance = 25, interval = 4000, max = 5}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Eye for eye!", yell = false},
	{text = "Here's looking at you!", yell = false},
	{text = "Let me take a look at you!", yell = false},
	{text = "You've got the look!", yell = false}
}

monster.loot = {
	{id = 3972, chance = 200},
	{id = 5898, chance = 2000, maxCount = 2},
	{id = 2518, chance = 200},
	{id = 2377, chance = 1000},
	{id = 2175, chance = 4000},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2394, chance = 1100},
	{id = 2397, chance = 1300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -110},
	{name ="combat", interval = 1500, chance = 8, minDamage = -15, maxDamage = -45, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 1600, chance = 9, minDamage = -25, maxDamage = -45, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 1700, chance = 10, minDamage = -30, maxDamage = -50, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1900, chance = 8, minDamage = -5, maxDamage = -45, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 1300, chance = 6, minDamage = -35, maxDamage = -45, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -5, maxDamage = -25, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
