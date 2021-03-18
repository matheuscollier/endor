local mType = Game.createMonsterType("Blood Beast")
local monster = {}

monster.description = "a blood beast"
monster.experience = 14000
monster.outfit = {
	lookType = 602,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "venom"
monster.corpse = 23351
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 70
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
	{text = "Rawrrr!", yell = false},
	{text = "*grlb*", yell = false},
	{text = "Roarr!", yell = false}
}

monster.loot = {
	{id = 23535, chance = 40},
	{id = 2536, chance = 250},
	{id = 2475, chance = 300},
	{id = 2152, chance = 30000, maxCount = 3},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2167, chance = 1000},
	{id = 10557, chance = 3000},
	{id = 23566, chance = 800},
	{id = 23517, chance = 1000},
	{id = 23565, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 120, attack = 100, condition = {type = CONDITION_POISON, startDamage = 260, interval = 4000}},
	{name ="combat", interval = 2000, chance = 80, minDamage = -550, maxDamage = -650, range = 5, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_POISONAREA, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 60, minDamage = -640, maxDamage = -920, range = 5, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="speed", interval = 2000, chance = 8, SpeedChange = 314, Duration = 6000},
	{name ="combat", interval = 2000, chance = 7, minDamage = 80, maxDamage = 120, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
