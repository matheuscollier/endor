local mType = Game.createMonsterType("Robin Kid")
local monster = {}

monster.description = "Robin Kid"
monster.experience = 1100
monster.outfit = {
	lookType = 116,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3400
monster.maxHealth = 3400
monster.race = "blood"
monster.corpse = 4268
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 10,
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
	{text = "Hugah!", yell = false},
	{text = "Ungh! Ungh!", yell = false},
	{text = "Huaauaauaauaa!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2678, chance = 3000, maxCount = 2},
	{id = 2676, chance = 10000, maxCount = 10},
	{id = 5883, chance = 3000},
	{id = 2463, chance = 520},
	{id = 2200, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -55, maxDamage = -130}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 7000, chance = 40, SpeedChange = 300, Duration = 6000}
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
