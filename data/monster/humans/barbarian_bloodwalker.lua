local mType = Game.createMonsterType("Barbarian Bloodwalker")
local monster = {}

monster.description = "um bloodwalker"
monster.experience = 390
monster.outfit = {
	lookType = 255,
	lookHead = 114,
	lookBody = 132,
	lookLegs = 132,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 720
monster.maxHealth = 720
monster.race = "blood"
monster.corpse = 20335
monster.speed = 250
monster.manaCost = 590
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
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
	{text = "YAAAHEEE!", yell = false},
	{text = "SLAUGHTER!", yell = false},
	{text = "CARNAGE!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2671, chance = 33000},
	{id = 2381, chance = 500},
	{id = 2378, chance = 1500},
	{id = 3962, chance = 20},
	{id = 1987, chance = 100000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -70, maxDamage = -220}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 10000, chance = 35, SpeedChange = 260, Duration = 8000}
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
