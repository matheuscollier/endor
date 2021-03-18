local mType = Game.createMonsterType("Island troll")
local monster = {}

monster.description = "a island troll"
monster.experience = 20
monster.outfit = {
	lookType = 15,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 5960
monster.speed = 190
monster.manaCost = 290
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = true,
	isBoss = false,
	illusionable = false,
	canPushItems = true,
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
	{text = "Hmmm, turtles", yell = false},
	{text = "HHmmm, dogs", yell = false},
	{text = "Groar", yell = false},
	{text = "Gruntz!", yell = false}
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2389, chance = 33333},
	{id = 2643, chance = 10000},
	{id = 2461, chance = 20000},
	{id = 2120, chance = 23333},
	{id = 2172, chance = 3333},
	{id = 5901, chance = 5000},
	{id = 2512, chance = 6666},
	{id = 2666, chance = 30000, maxCount = 2},
	{id = 2380, chance = 10000},
	{id = 2170, chance = 1428},
	{id = 2448, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 19, attack = 12}
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
