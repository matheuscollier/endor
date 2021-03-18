local mType = Game.createMonsterType("Barbarian Skullhunter")
local monster = {}

monster.description = "um skullhunter"
monster.experience = 170
monster.outfit = {
	lookType = 254,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 77,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 270
monster.maxHealth = 270
monster.race = "blood"
monster.corpse = 20347
monster.speed = 240
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 5
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
	canPushCreatures = false,
	staticAttackChance = 70,
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
	{text = "You will become my trophy.", yell = false},
	{text = "Fight harder, coward.", yell = false},
	{text = "Show that you are a worthy opponent.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 30},
	{id = 2403, chance = 5000},
	{id = 2460, chance = 3000},
	{id = 2168, chance = 333},
	{id = 7462, chance = 300},
	{id = 2430, chance = 20}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -40, maxDamage = -120}
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
