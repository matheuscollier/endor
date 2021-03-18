local mType = Game.createMonsterType("Sandstone Scorpion")
local monster = {}

monster.description = "a sandstone scorpion"
monster.experience = 680
monster.outfit = {
	lookType = 398,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 900
monster.maxHealth = 900
monster.race = "undead"
monster.corpse = 13501
monster.speed = 180
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	canPushCreatures = true,
	staticAttackChance = 90,
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
}

monster.loot = {
	{id = 2478, chance = 9000},
	{id = 2152, chance = 23000, maxCount = 2},
	{id = 2148, chance = 23000, maxCount = 93},
	{id = 2439, chance = 3600},
	{id = 2457, chance = 2200},
	{id = 2149, chance = 600},
	{id = 2529, chance = 900},
	{id = 13535, chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 80, attack = 40, condition = {type = CONDITION_POISON, startDamage = 160, interval = 4000}},
	{name ="combat", interval = 3000, chance = 15, minDamage = -85, maxDamage = -205, type = COMBAT_PHYSICALDAMAGE, range = 7, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="speed", interval = 2000, chance = 17, SpeedChange = -250, Duration = 10000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 2000, chance = 10, SpeedChange = 450, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
