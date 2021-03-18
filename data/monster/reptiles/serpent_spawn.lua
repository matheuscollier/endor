local mType = Game.createMonsterType("Serpent Spawn")
local monster = {}

monster.description = "uma serpent spawn"
monster.experience = 3500
monster.outfit = {
	lookType = 220,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3900
monster.maxHealth = 3900
monster.race = "venom"
monster.corpse = 4323
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5
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
	runHealth = 200,
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
	{text = "Ssssolus for the one", yell = false},
	{text = "HISSSS", yell = true},
	{text = "Tsssse one will risssse again", yell = false},
	{text = "I bring you deathhhh, mortalssss", yell = false}
}

monster.loot = {
	{id = 2182, chance = 1533},
	{id = 3982, chance = 850},
	{id = 1976, chance = 900},
	{id = 2497, chance = 1200},
	{id = 8882, chance = 600},
	{id = 2409, chance = 1000},
	{id = 10611, chance = 2000},
	{id = 7379, chance = 450},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2796, chance = 18000},
	{id = 2149, chance = 350},
	{id = 7366, chance = 600, maxCount = 3},
	{id = 2167, chance = 1250},
	{id = 2168, chance = 900},
	{id = 2536, chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -162, maxDamage = -316},
	{name ="combat", interval = 2200, chance = 33, type = COMBAT_EARTHDAMAGE, minDamage = -80, maxDamage = -160, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="speed", interval = 1900, chance = 20, SpeedChange = -700, Duration = 12000},
	{name ="combat", interval = 400, chance = 25, minDamage = -275, maxDamage = -415, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 3000, chance = 17, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -250, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2500, chance = 10, minDamage = 250, maxDamage = 500, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 6100, chance = 15, SpeedChange = 320, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
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
