local mType = Game.createMonsterType("swamp troll")
local monster = {}

monster.description = "a swamp troll"
monster.experience = 65
monster.outfit = {
	lookType = 76,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 55
monster.maxHealth = 55
monster.race = "blood"
monster.corpse = 6018
monster.speed = 128
monster.manaCost = 320
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = true,
	isBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	isHealthHidden = false,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrr", yell = false},
	{text = "Groar!", yell = false},
	{text = "Me strong! Me ate spinach!", yell = false}
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2667, chance = 90000},
	{id = 2643, chance = 20000},
	{id = 2050, chance = 20000},
	{id = 2580, chance = 20000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 20, attack = 12, condition = {type = CONDITION_POISON, startDamage = 30, interval = 4000}}
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
