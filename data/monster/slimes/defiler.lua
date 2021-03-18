local mType = Game.createMonsterType("Defiler")
local monster = {}

monster.description = "um defiler"
monster.experience = 2500
monster.outfit = {
	lookType = 238,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3650
monster.maxHealth = 3650
monster.race = "venom"
monster.corpse = 6532
monster.speed = 150
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
	{id = 2132, chance = 3500},
	{id = 2170, chance = 2000},
	{id = 2181, chance = 1800},
	{id = 2188, chance = 1700},
	{id = 2411, chance = 1500},
	{id = 2229, chance = 25000},
	{id = 2501, chance = 250},
	{id = 2148, chance = 20000, maxCount = 100},
	{id = 2149, chance = 800},
	{id = 2168, chance = 1000},
	{id = 2155, chance = 2000},
	{id = 2545, chance = 12000, maxCount = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -240},
	{name ="poisonfield", interval = 3500, chance = 70, minDamage = -70, maxDamage = -100, effect = CONST_ME_POISONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -400, maxDamage = -640, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 1900, chance = 90, minDamage = -90, maxDamage = -200, range = 6, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 45},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 55},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
