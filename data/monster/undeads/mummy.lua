local mType = Game.createMonsterType("Mummy")
local monster = {}

monster.description = "uma mummy"
monster.experience = 150
monster.outfit = {
	lookType = 65,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 240
monster.maxHealth = 240
monster.race = "undead"
monster.corpse = 2949
monster.speed = 150
monster.manaCost = 510
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	canPushCreatures = false,
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
	{text = "I will ssswallow your sssoul!", yell = false},
	{text = "Ahkahra exura belil mort!", yell = false},
	{text = "Yohag Sssetham!", yell = false},
	{text = "I will tassste life again!", yell = false},
	{text = "Mort ulhegh dakh visss.", yell = false},
	{text = "Flesssh to dussst!", yell = false}
}

monster.loot = {
	{id = 2411, chance = 50},
	{id = 2541, chance = 600},
	{id = 2529, chance = 60},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2161, chance = 600},
	{id = 2162, chance = 1200},
	{id = 12422, chance = 2000},
	{id = 2134, chance = 900},
	{id = 5914, chance = 500},
	{id = 2144, chance = 1000},
	{id = 2124, chance = 130},
	{id = 2172, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -80, condition = {type = CONDITION_POISON, startDamage = 50, interval = 2000}},
	{name ="combat", interval = 2500, chance = 30, minDamage = -30, maxDamage = -60, type = COMBAT_LIFEDRAIN, range = 1, target = false},
	{name ="speed", interval = 2800, chance = 30, SpeedChange = -800, Duration = 10000}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
