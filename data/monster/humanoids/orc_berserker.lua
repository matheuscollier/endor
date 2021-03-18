local mType = Game.createMonsterType("Orc Berserker")
local monster = {}

monster.description = "um orc berserker"
monster.experience = 195
monster.outfit = {
	lookType = 8,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 210
monster.maxHealth = 210
monster.race = "blood"
monster.corpse = 2864
monster.speed = 250
monster.manaCost = 590
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10
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
	{text = "KRAK ORRRRRRK!", yell = true}
}

monster.loot = {
	{id = 11113, chance = 2000},
	{id = 2148, chance = 55000, maxCount = 25},
	{id = 2378, chance = 1000},
	{id = 2464, chance = 1000},
	{id = 2458, chance = 2000},
	{id = 2381, chance = 500},
	{id = 2044, chance = 8000},
	{id = 2428, chance = 1500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -120}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 4000, chance = 25, SpeedChange = 250, Duration = 6000}
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
