local mType = Game.createMonsterType("Gargoyle")
local monster = {}

monster.description = "a gargoyle"
monster.experience = 150
monster.outfit = {
	lookType = 95,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 250
monster.maxHealth = 250
monster.race = "undead"
monster.corpse = 3022
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 30,
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
	{text = "Harrrr Harrrr!", yell = false},
	{text = "Stone sweet stone.", yell = false},
	{text = "Feel my claws, softskin.", yell = false},
	{text = "Chhhhhrrrrk!", yell = false},
	{text = "There is a stone in your shoe!", yell = false}
}

monster.loot = {
	{id = 2513, chance = 1500},
	{id = 2209, chance = 100},
	{id = 2489, chance = 200},
	{id = 2148, chance = 70000, maxCount = 10},
	{id = 2148, chance = 40000, maxCount = 20},
	{id = 2394, chance = 1000},
	{id = 1294, chance = 10000, maxCount = 10},
	{id = 2457, chance = 200},
	{id = 2448, chance = 8000},
	{id = 2129, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -100}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1700, chance = 10, minDamage = 5, maxDamage = 15, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
