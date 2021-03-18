local mType = Game.createMonsterType("Vampire")
local monster = {}

monster.description = "um vampire"
monster.experience = 290
monster.outfit = {
	lookType = 68,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 450
monster.maxHealth = 450
monster.race = "undead"
monster.corpse = 2956
monster.speed = 220
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
	{text = "BLOOD!", yell = true},
	{text = "Let me kiss your neck.", yell = false},
	{text = "I smell warm blood.", yell = false},
	{text = "I call you, my bats! Come!", yell = false}
}

monster.loot = {
	{id = 2479, chance = 450},
	{id = 2383, chance = 500},
	{id = 5905, chance = 2000},
	{id = 2534, chance = 40},
	{id = 2412, chance = 3110},
	{id = 10602, chance = 1000},
	{id = 2148, chance = 70000, maxCount = 40},
	{id = 2747, chance = 1500},
	{id = 2396, chance = 50},
	{id = 2144, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -75, maxDamage = -125},
	{name ="combat", interval = 3500, chance = 60, minDamage = -55, maxDamage = -120, type = COMBAT_LIFEDRAIN, range = 1, target = false},
	{name ="speed", interval = 5000, chance = 40, SpeedChange = -400, Duration = 4000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="outfit", interval = 4000, chance = 10, effect = CONST_ME_GROUNDSHAKER, target = false, duration = 5000, outfitMonster = "bat"},
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 3000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 15, maxDamage = 25, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 55}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
