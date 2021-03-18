local mType = Game.createMonsterType("Bandit")
local monster = {}

monster.description = "um bandit"
monster.experience = 65
monster.outfit = {
	lookType = 129,
	lookHead = 58,
	lookBody = 40,
	lookLegs = 24,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 245
monster.maxHealth = 245
monster.race = "blood"
monster.corpse = 20332
monster.speed = 160
monster.manaCost = 450
monster.maxSummons = 0

monster.changeTarget = {
	interval = 6000,
	chance = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 25,
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
	{text = "Your money or your life!", yell = false},
	{text = "Hand me your purse!", yell = false}
}

monster.loot = {
	{id = 2391, chance = 30},
	{id = 2465, chance = 650},
	{id = 2511, chance = 2500},
	{id = 2478, chance = 400},
	{id = 2460, chance = 3000},
	{id = 2148, chance = 80000, maxCount = 25}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -40}
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
