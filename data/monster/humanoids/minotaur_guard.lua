local mType = Game.createMonsterType("Minotaur Guard")
local monster = {}

monster.description = "um minotaur guard"
monster.experience = 160
monster.outfit = {
	lookType = 29,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 185
monster.maxHealth = 185
monster.race = "blood"
monster.corpse = 2876
monster.speed = 190
monster.manaCost = 550
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
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
	{text = "Kirll Karrrl!", yell = false},
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = 2387, chance = 800},
	{id = 2648, chance = 1500},
	{id = 2481, chance = 1800},
	{id = 2483, chance = 1400},
	{id = 5878, chance = 19999, maxCount = 2},
	{id = 2513, chance = 1800},
	{id = 2515, chance = 350},
	{id = 2386, chance = 4000},
	{id = 2383, chance = 900},
	{id = 2666, chance = 70000, maxCount = 3},
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 2580, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 35}
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
