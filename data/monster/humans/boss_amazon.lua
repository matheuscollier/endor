local mType = Game.createMonsterType("Edinancy")
local monster = {}

monster.description = "Edinancy"
monster.experience = 60
monster.outfit = {
	lookType = 137,
	lookHead = 113,
	lookBody = 120,
	lookLegs = 95,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 3065
monster.speed = 160
monster.manaCost = 390
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
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
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 4,
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
	{text = "Yeeee ha!", yell = false},
	{text = "Your head will be mine!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2467, chance = 4000},
	{id = 2385, chance = 5000},
	{id = 2229, chance = 6000, maxCount = 3},
	{id = 2499, chance = 25},
	{id = 2125, chance = 100},
	{id = 2690, chance = 20000, maxCount = 2},
	{id = 2147, chance = 80}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -25, maxDamage = -75},
	{name ="combat", interval = 3500, chance = 99, minDamage = -20, maxDamage = -40, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
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
