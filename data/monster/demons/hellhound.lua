local mType = Game.createMonsterType("Hellhound")
local monster = {}

monster.description = "um hellhound"
monster.experience = 5440
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 294
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 6332
monster.speed = 360
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Waaaaaaaaaaaaah!", yell = false},
	{text = "Carnage!.", yell = false}
}

monster.loot = {
	{id = 2410, chance = 15000, maxCount = 11},
	{id = 2231, chance = 8000},
	{id = 5944, chance = 400},
	{id = 2383, chance = 1000},
	{id = 18425, chance = 3800},
	{id = 2393, chance = 300},
	{id = 6553, chance = 20},
	{id = 2152, chance = 80000, maxCount = 4},
	{id = 6558, chance = 1000},
	{id = 6500, chance = 800},
	{id = 2156, chance = 650},
	{id = 2671, chance = 50000, maxCount = 6},
	{id = 2144, chance = 1000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -320},
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -400, maxDamage = -640, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = -160, maxDamage = -270, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false},
	{name ="combat", interval = 2450, chance = 20, minDamage = -120, maxDamage = -160, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -395, maxDamage = -498, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 3150, chance = 20, minDamage = -100, maxDamage = -150, type = COMBAT_EARTHDAMAGE, range = 6, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 3350, chance = 20, minDamage = -100, maxDamage = -150, type = COMBAT_FIREDAMAGE, range = 6, effect = CONST_ME_FIREAREA, target = false},
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 220, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
