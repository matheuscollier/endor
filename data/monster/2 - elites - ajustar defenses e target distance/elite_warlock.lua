local mType = Game.createMonsterType("Elite Warlock")
local monster = {}

monster.description = "um elite warlock"
monster.experience = 0
monster.outfit = {
	lookType = 130,
	lookHead = 0,
	lookBody = 52,
	lookLegs = 128,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9600
monster.maxHealth = 9600
monster.race = "undead"
monster.corpse = 0
monster.speed = 230
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 2000,
	chance = 100
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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

monster.summons = {
	{name = "stone golem", chance = 10, interval = 1000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -200},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -400, Duration = 4000},
	{name ="combat", interval = 3500, chance = 24, minDamage = -90, maxDamage = -150, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="firefield", interval = 2200, chance = 33, range = 3, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2300, chance = 99, minDamage = -80, maxDamage = -160, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 1800, chance = 45, minDamage = -90, maxDamage = -200, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2550, chance = 25, minDamage = -180, maxDamage = -300, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 20, minDamage = 90, maxDamage = 150, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 5000, chance = 25, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
