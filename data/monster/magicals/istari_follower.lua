local mType = Game.createMonsterType("Istari Follower")
local monster = {}

monster.description = " um istari follower"
monster.experience = 14500
monster.outfit = {
	lookType = 309,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "blood"
monster.corpse = 20547
monster.speed = 370
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 8000,
	chance = 20
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
	targetDistance = 4,
	runHealth = 1000,
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
	{name = "stone golem", chance = 10, interval = 1000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Muahahahaha!!!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 35000, maxCount = 89},
	{id = 2148, chance = 35000, maxCount = 89},
	{id = 2446, chance = 150},
	{id = 2662, chance = 2000},
	{id = 2656, chance = 500},
	{id = 8879, chance = 15},
	{id = 2436, chance = 800},
	{id = 2163, chance = 3000},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2146, chance = 500},
	{id = 2600, chance = 10000},
	{id = 2123, chance = 15},
	{id = 2167, chance = 750}
}

monster.attacks = {
	{name ="melee", interval = 1650, chance = 100, minDamage = -560, maxDamage = -850},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -300, Duration = 4000},
	{name ="combat", interval = 2750, chance = 50, minDamage = -180, maxDamage = -300, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="firefield", interval = 2230, chance = 33, range = 3, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 1720, chance = 30, minDamage = -450, maxDamage = -600, type = COMBAT_LIFEDRAIN, range = 7, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2320, chance = 30, minDamage = -400, maxDamage = -800, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 1800, chance = 40, minDamage = -270, maxDamage = -600, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2550, chance = 25, minDamage = -540, maxDamage = -900, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 190, maxDamage = 450, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 99},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
