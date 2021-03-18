local mType = Game.createMonsterType("Hydra")
local monster = {}

monster.description = "uma hydra"
monster.experience = 2350
monster.outfit = {
	lookType = 121,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 121
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}	
	
monster.health = 2350
monster.maxHealth = 2350
monster.race = "blood"
monster.corpse = 6048
monster.speed = 250
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "FCHHHHH", yell = false},
	{text = "HISSSS", yell = false}
}

monster.loot = {
	{id = 2666, chance = 20000, maxCount = 4},
	{id = 2671, chance = 15000, maxCount = 4},
	{id = 2148, chance = 80000, maxCount = 200},
	{id = 13508, chance = 80},
	{id = 2498, chance = 750},
	{id = 2475, chance = 600},
	{id = 2536, chance = 350},
	{id = 2195, chance = 600},
	{id = 2214, chance = 500},
	{id = 2146, chance = 500},
	{id = 2197, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -210, maxDamage = -350},
	{name ="speed", interval = 2000, chance = 25, speedChange = -700, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true, duration = 15000},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 30, minDamage = -200, maxDamage = -320, range = 7, radius = 3, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="combat", interval = 1750, chance = 20, minDamage = -230, maxDamage = -390, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 3100, chance = 25, minDamage = -215, maxDamage = -330, length = 8, spread = 3, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 260, maxDamage = 407, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}


mType:register(monster)
