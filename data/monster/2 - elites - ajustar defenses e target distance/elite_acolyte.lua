local mType = Game.createMonsterType("Elite Acolyte")
local monster = {}

monster.description = "um elite acolyte"
monster.experience = 0
monster.outfit = {
	lookType = 194,
	lookHead = 114,
	lookBody = 121,
	lookLegs = 121,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "undead"
monster.corpse = 0
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Crypt Shambler", chance = 10, interval = 4500}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -145, maxDamage = -230, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
	{name ="combat", interval = 1500, chance = 28, minDamage = -115, maxDamage = -190, range = 6, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1300, chance = 25, minDamage = -30, maxDamage = -40, range = 6, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1450, chance = 18, minDamage = -25, maxDamage = -35, range = 6, type = COMBAT_ENERGYDAMAGE, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
