local mType = Game.createMonsterType("Earth Elemental")
local monster = {}

monster.description = "um earth elemental"
monster.experience = 1000
monster.outfit = {
	lookType = 285,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "undead"
monster.corpse = 8933
monster.speed = 230
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
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 1,
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
	{id = 2148, chance = 20000, maxCount = 85},
	{id = 7885, chance = 300},
	{id = 7884, chance = 250},
	{id = 1294, chance = 9000, maxCount = 5},
	{id = 2796, chance = 2500, maxCount = 5},
	{id = 7732, chance = 2500, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -380},
	{name ="combat", interval = 3100, chance = 99, minDamage = -90, maxDamage = -160, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = true},
	{name ="combat", interval = 2150, chance = 30, minDamage = -50, maxDamage = -90, type = COMBAT_EARTHDAMAGE, length = 5, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="speed", interval = 5000, chance = 20, SpeedChange = -450, Duration = 4000}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
