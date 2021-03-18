local mType = Game.createMonsterType("Minotaur")
local monster = {}

monster.description = "um minotaur"
monster.experience = 50
monster.outfit = {
	lookType = 25,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 2830
monster.speed = 168
monster.manaCost = 330
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
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
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = 2464, chance = 3000},
	{id = 2468, chance = 2000},
	{id = 2395, chance = 100},
	{id = 5878, chance = 19999},
	{id = 2458, chance = 2500},
	{id = 2460, chance = 1000},
	{id = 2510, chance = 4000},
	{id = 2398, chance = 5000},
	{id = 2148, chance = 20000, maxCount = 40},
	{id = 2554, chance = 1000},
	{id = 2666, chance = 10000, maxCount = 2},
	{id = 2172, chance = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -7, maxDamage = -18}
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
