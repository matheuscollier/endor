local mType = Game.createMonsterType("Bonebeast")
local monster = {}

monster.description = "um bonebeast"
monster.experience = 580
monster.outfit = {
	lookType = 101,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 515
monster.maxHealth = 515
monster.race = "undead"
monster.corpse = 3031
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	{text = "Cccchhhhhhhhh!", yell = false},
	{text = "Knooorrrrr!", yell = false}
}

monster.loot = {
	{id = 2231, chance = 10000},
	{id = 2541, chance = 1200},
	{id = 2450, chance = 1666},
	{id = 2449, chance = 1200},
	{id = 5925, chance = 12000},
	{id = 2148, chance = 80000, maxCount = 90},
	{id = 2463, chance = 700}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -80, maxDamage = -160, condition = {type = CONDITION_POISON, startDamage = 40, interval = 3000}},
	{name ="combat", interval = 2700, chance = 99, minDamage = -50, maxDamage = -90, range = 6, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2350, chance = 15, minDamage = -30, maxDamage = -80, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 1850, chance = 13, minDamage = -60, maxDamage = -90, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
