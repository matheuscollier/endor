local mType = Game.createMonsterType("Barbarian Headsplitter")
local monster = {}

monster.description = "um headsplitter"
monster.experience = 190
monster.outfit = {
	lookType = 253,
	lookHead = 115,
	lookBody = 105,
	lookLegs = 119,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 340
monster.maxHealth = 340
monster.race = "blood"
monster.corpse = 20343
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 70,
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
	{text = "I will regain my honor with your blood!", yell = false},
	{text = "Surrender is not option!", yell = false},
	{text = "Its you or me!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2111, chance = 10000, maxCount = 6},
	{id = 2473, chance = 2000},
	{id = 7457, chance = 400},
	{id = 2460, chance = 1000},
	{id = 2403, chance = 2500},
	{id = 5913, chance = 5000},
	{id = 7461, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -50, maxDamage = -150},
	{name ="combat", interval = 2500, chance = 99, minDamage = -20, maxDamage = -70, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_INFERNALBOLT, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
