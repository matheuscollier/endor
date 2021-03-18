local mType = Game.createMonsterType("Banshee")
local monster = {}

monster.description = "um banshee"
monster.experience = 900
monster.outfit = {
	lookType = 78,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1000
monster.maxHealth = 1000
monster.race = "undead"
monster.corpse = 2998
monster.speed = 250
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 3
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 150,
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
	{text = "Are you ready to rock?", yell = false},
	{text = "That's what I call easy listening!", yell = false},
	{text = "Let the music play!", yell = false},
	{text = "I will mourn your death!", yell = false},
	{text = "IIIIEEEeeeeeehhhHHHHH!", yell = true},
	{text = "Dance for me your dance of death!", yell = false},
	{text = "Feel my gentle kiss of death.", yell = false}
}

monster.loot = {
	{id = 2657, chance = 1000},
	{id = 2654, chance = 4000},
	{id = 11337, chance = 300},
	{id = 2170, chance = 900},
	{id = 2656, chance = 130},
	{id = 2158, chance = 500},
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 2168, chance = 150},
	{id = 2144, chance = 1000},
	{id = 2197, chance = 100},
	{id = 2143, chance = 1000},
	{id = 2655, chance = 10},
	{id = 6087, chance = 4000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -200, condition = {type = CONDITION_POISON, startDamage = -15, interval = 3000}},
	{name ="speed", interval = 5000, chance = 10, SpeedChange = -500, Duration = 4000},
	{name ="combat", interval = 1700, chance = 34, minDamage = -120, maxDamage = -200, type = COMBAT_LIFEDRAIN, effect = CONST_ME_SOUND_RED, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2100, chance = 25, minDamage = 113, maxDamage = 187, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
