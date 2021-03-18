local mType = Game.createMonsterType("Belzebuth Minion")
local monster = {}

monster.description = "um belzebuth minion"
monster.experience = 14500
monster.outfit = {
	lookType = 79,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12000
monster.maxHealth = 12000
monster.race = "venom"
monster.corpse = 6021
monster.speed = 330
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 8000,
	chance = 25
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

monster.summons = {
	{name = "ancient scarab", chance = 15, interval = 6000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2148, chance = 35000, maxCount = 89},
	{id = 2148, chance = 35000, maxCount = 75},
	{id = 7886, chance = 450},
	{id = 8880, chance = 35},
	{id = 2540, chance = 700},
	{id = 2440, chance = 200},
	{id = 2474, chance = 20},
	{id = 2150, chance = 700},
	{id = 2149, chance = 200},
	{id = 2135, chance = 400},
	{id = 2159, chance = 1000, maxCount = 4},
	{id = 2142, chance = 350}
}

monster.attacks = {
	{name ="melee", interval = 1750, chance = 100, minDamage = -392, maxDamage = -632},
	{name ="speed", interval = 7000, chance = 35, SpeedChange = -500, Duration = 6000},
	{name ="combat", interval = 4100, chance = 30, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, target = true, condition = {type = CONDITION_POISON, totalDamage = 800, interval = 4000}},
	{name ="combat", interval = 2720, chance = 36, minDamage = -350, maxDamage = -550, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2460, chance = 30, minDamage = -400, maxDamage = -780, length = 8, spread = 3, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
