local mType = Game.createMonsterType("Monk")
local monster = {}

monster.description = "um monk"
monster.experience = 200
monster.outfit = {
	lookType = 57,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 240
monster.maxHealth = 240
monster.race = "blood"
monster.corpse = 20371
monster.speed = 240
monster.manaCost = 600
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
	illusionable = true,
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
	{text = "I will punish the sinners!", yell = false},
	{text = "A prayer to the almighty one.", yell = false},
	{text = "Repent Heretic!", yell = true}
}

monster.loot = {
	{id = 12448, chance = 1500},
	{id = 2193, chance = 100},
	{id = 1987, chance = 13000},
	{id = 2689, chance = 20000},
	{id = 2015, chance = 9000},
	{id = 2148, chance = 15000, maxCount = 50},
	{id = 2467, chance = 5500},
	{id = 2177, chance = 1000},
	{id = 2044, chance = 10000},
	{id = 2166, chance = 100},
	{id = 2642, chance = 8000},
	{id = 1949, chance = 20000},
	{id = 2401, chance = 11000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 55, attack = 42}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2500, chance = 20, minDamage = 30, maxDamage = 60, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 6000, chance = 10, SpeedChange = 400, Duration = 5000}
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
