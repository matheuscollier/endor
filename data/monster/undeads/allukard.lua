local mType = Game.createMonsterType("Allukard")
local monster = {}

monster.description = "um allukard"
monster.experience = 18000
monster.outfit = {
	lookType = 312,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "blood"
monster.corpse = 9660
monster.speed = 285
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
	chance = 10
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
	{text = "All I need is your blood.", yell = false},
	{text = "Dead is the new alive.", yell = false},
	{text = "Come, let me kiss you, darling. Oh wait, I meant kill.", yell = false}
}

monster.loot = {
	{id = 2396, chance = 500},
	{id = 6300, chance = 450},
	{id = 2446, chance = 250},
	{id = 2452, chance = 330},
	{id = 2534, chance = 430},
	{id = 2489, chance = 2500},
	{id = 18447, chance = 65},
	{id = 30884, chance = 5},
	{id = 2645, chance = 610},
	{id = 7901, chance = 310},
	{id = 10602, chance = 2000},
	{id = 2145, chance = 4000},
	{id = 2148, chance = 10000, maxCount = 84},
	{id = 2148, chance = 5000, maxCount = 84},
	{id = 2148, chance = 12000, maxCount = 84},
	{id = 6546, chance = 120},
	{id = 2144, chance = 800, maxCount = 4},
	{id = 2796, chance = 5900, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -560, maxDamage = -968},
	{name ="combat", interval = 2920, chance = 33, minDamage = -750, maxDamage = -1200, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2480, chance = 16, minDamage = -450, maxDamage = -560, type = COMBAT_DEATHDAMAGE, range = 4, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 4105, chance = 35, minDamage = -650, maxDamage = -850, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="speed", interval = 5000, chance = 35, SpeedChange = -500, Duration = 4000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 190, maxDamage = 450, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 19},
	{type = COMBAT_EARTHDAMAGE, percent = 52},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 22},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 82}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
