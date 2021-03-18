local mType = Game.createMonsterType("Carniphila")
local monster = {}

monster.description = "uma carniphila"
monster.experience = 150
monster.outfit = {
	lookType = 120,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 255
monster.maxHealth = 255
monster.race = "venom"
monster.corpse = 4280
monster.speed = 110
monster.manaCost = 490
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
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
	{id = 5920, chance = 6000, maxCount = 3},
	{id = 5015, chance = 5000},
	{id = 2545, chance = 800, maxCount = 15},
	{id = 2285, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -35, maxDamage = -100, condition = {type = CONDITION_POISON, startDamage = 30, interval = 4000}},
	{name ="combat", interval = 1000, chance = 25, minDamage = -60, maxDamage = -90, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="speed", interval = 1000, chance = 34, SpeedChange = -540, Duration = 30000},
	{name ="combat", interval = 1000, chance = 12, minDamage = -40, maxDamage = -130, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
