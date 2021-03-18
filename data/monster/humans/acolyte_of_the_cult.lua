local mType = Game.createMonsterType("Acolyte of the Cult")
local monster = {}

monster.description = "um acolyte of the cult"
monster.experience = 300
monster.outfit = {
	lookType = 194,
	lookHead = 114,
	lookBody = 121,
	lookLegs = 121,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 390
monster.maxHealth = 390
monster.race = "blood"
monster.corpse = 20319
monster.speed = 190
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 2000,
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
	staticAttackChance = 50,
	targetDistance = 5,
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

monster.summons = {
	{name = "Crypt Shambler", chance = 50, interval = 4500}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 40},
	{id = 6087, chance = 120},
	{id = 2662, chance = 160},
	{id = 13940, chance = 300},
	{id = 10556, chance = 1500},
	{id = 12448, chance = 1800},
	{id = 2146, chance = 200},
	{id = 2167, chance = 800},
	{id = 2169, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -30, maxDamage = -100},
	{name ="combat", interval = 1250, chance = 28, minDamage = -45, maxDamage = -60, type = COMBAT_HOLYDAMAGE, range = 6, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 1300, chance = 25, minDamage = -30, maxDamage = -40, range = 6, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
	{name ="combat", interval = 1450, chance = 18, minDamage = -15, maxDamage = -15, range = 6, type = COMBAT_ENERGYDAMAGE, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
