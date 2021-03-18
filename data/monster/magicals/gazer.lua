local mType = Game.createMonsterType("Gazer")
local monster = {}

monster.description = "a gazer"
monster.experience = 90
monster.outfit = {
	lookType = 109,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 120
monster.maxHealth = 120
monster.race = "blood"
monster.corpse = 3049
monster.speed = 140
monster.manaCost = 0
monster.maxSummons = 0

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mommy!?", yell = false},
	{text = "Buuuuhaaaahhaaaaa!", yell = false},
	{text = "Me need mana!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 6},
	{id = 2148, chance = 80000, maxCount = 8},
	{id = 2148, chance = 70000, maxCount = 5},
	{id = 2512, chance = 3000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 25, attack = 9},
	{name ="combat", interval = 2500, chance = 22, minDamage = -25, maxDamage = -35, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2300, chance = 25, minDamage = -5, maxDamage = -15, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 5000, chance = 20, SpeedChange = 200, Duration = 4000}
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
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
