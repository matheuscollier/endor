local mType = Game.createMonsterType("Uruk-hai")
local monster = {}

monster.description = "um Uruk-hai"
monster.experience = 110
monster.outfit = {
	lookType = 7,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 185
monster.maxHealth = 185
monster.race = "blood"
monster.corpse = 2862
monster.speed = 180
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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 15,
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
	{text = "Grrrr", yell = false},
	{text = "Groar", yell = false},
	{text = "Gruntz!", yell = false},
	{text = "Hmmm, bugs.", yell = false},
	{text = "Hmmm, dogs.", yell = false}
}

monster.loot = {
	{id = 2529, chance = 3000},
	{id = 2513, chance = 1000},
	{id = 2419, chance = 1900},
	{id = 2385, chance = 2100},
	{id = 2387, chance = 50},
	{id = 2489, chance = 250},
	{id = 2490, chance = 245},
	{id = 2148, chance = 70000, maxCount = 25},
	{id = 2007, chance = 6000},
	{id = 2009, chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -60},
	{name ="combat", interval = 3150, chance = 99, minDamage = -20, maxDamage = -40, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_BOLT, target = false}
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
