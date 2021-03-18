local mType = Game.createMonsterType("Merlkin")
local monster = {}

monster.description = "um merlkin"
monster.experience = 135
monster.outfit = {
	lookType = 117,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 230
monster.maxHealth = 230
monster.race = "blood"
monster.corpse = 4271
monster.speed = 155
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
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
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 2,
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
	{text = "Ugh! Ugh! Ugh!", yell = false},
	{text = "Holy banana!", yell = false},
	{text = "Chakka! Chakka!", yell = false}
}

monster.loot = {
	{id = 5883, chance = 4000},
	{id = 3966, chance = 100},
	{id = 2158, chance = 500},
	{id = 2150, chance = 500},
	{id = 2148, chance = 100000, maxCount = 55},
	{id = 2676, chance = 10000, maxCount = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -40},
	{name ="combat", interval = 1800, chance = 9, minDamage = -15, maxDamage = -30, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 3200, chance = 99, minDamage = -10, maxDamage = -30, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="poisonfield", interval = 2300, chance = 20, range = 7, ShootEffect = CONST_ANI_ENERGY, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 10, minDamage = 10, maxDamage = 25, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
