local mType = Game.createMonsterType("Shiversleep")
local monster = {}

monster.description = "Shiversleep"
monster.experience = 1900
monster.outfit = {
	lookType = 592,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4600
monster.maxHealth = 4600
monster.race = "blood"
monster.corpse = 22497
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{text = "Knorrrr!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2152, chance = 33333, maxCount = 10},
	{id = 7590, chance = 3100, maxCount = 4},
	{id = 5880, chance = 2195, maxCount = 2},
	{id = 8473, chance = 2195, maxCount = 2},
	{id = 18435, chance = 366, maxCount = 8},
	{id = 2144, chance = 866},
	{id = 2143, chance = 866},
	{id = 18390, chance = 1766},
	{id = 2477, chance = 444},
	{id = 9980, chance = 1066},
	{id = 2393, chance = 422},
	{id = 11227, chance = 1032},
	{id = 5904, chance = 632},
	{id = 2487, chance = 632},
	{id = 18453, chance = 603},
	{id = 18450, chance = 603}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 90},
	{name ="combat", interval = 1800, chance = 10, minDamage = -300, maxDamage = -685, type = COMBAT_EARTHDAMAGE, length = 7, spread = 3, effect = CONST_ME_STONES, target = false},
	{name ="combat", interval = 2000, chance = 9, minDamage = -250, maxDamage = -590, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_BIGPLANTS, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
