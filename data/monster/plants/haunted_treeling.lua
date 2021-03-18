local mType = Game.createMonsterType("Haunted Treeling")
local monster = {}

monster.description = ""
monster.experience = 450
monster.outfit = {
	lookType = 310,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 550
monster.maxHealth = 550
monster.race = "undead"
monster.corpse = 9867
monster.speed = 270
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 0,
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
}

monster.loot = {
	{id = 2787, chance = 30000, maxCount = 3},
	{id = 5015, chance = 5000},
	{id = 4860, chance = 50000},
	{id = 2790, chance = 5000},
	{id = 2148, chance = 10000, maxCount = 100},
	{id = 2788, chance = 10000},
	{id = 2146, chance = 500},
	{id = 2515, chance = 100},
	{id = 2486, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -80, maxDamage = -180},
	{name ="combat", interval = 3100, chance = 28, minDamage = -50, maxDamage = -80, type = COMBAT_MANADRAIN, range = 2, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 7000, chance = 33, SpeedChange = -700, Duration = 6000},
	{name ="combat", interval = 2400, chance = 24, minDamage = -20, maxDamage = -80, type = COMBAT_PHYSICALDAMAGE, range = 1, effect = CONST_ME_STONES, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
