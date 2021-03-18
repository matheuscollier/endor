local mType = Game.createMonsterType("Beduin Nomad")
local monster = {}

monster.description = "um beduin nomad"
monster.experience = 90
monster.outfit = {
	lookType = 146,
	lookHead = 78,
	lookBody = 20,
	lookLegs = 22,
	lookFeet = 2,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 160
monster.maxHealth = 160
monster.race = "blood"
monster.corpse = 20463
monster.speed = 195
monster.manaCost = 420
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
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
	{text = "Suas riquezas serao minhas!", yell = false},
	{text = "Somos os verdadeiros filhos do deserto!", yell = false},
	{text = "Vou deixar seus restos para os abutres!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2465, chance = 2000},
	{id = 2461, chance = 3000},
	{id = 2649, chance = 4000},
	{id = 2478, chance = 3333},
	{id = 2456, chance = 2000},
	{id = 2544, chance = 20000, maxCount = 10},
	{id = 2546, chance = 10000, maxCount = 5},
	{id = 2147, chance = 300},
	{id = 2690, chance = 15000, maxCount = 3},
	{id = 2201, chance = 700}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -100},
	{name ="combat", interval = 3700, chance = 99, minDamage = -15, maxDamage = -30, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false}
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
