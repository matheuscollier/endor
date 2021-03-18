local mType = Game.createMonsterType("Warlock")
local monster = {}

monster.description = "um warlock"
monster.experience = 5000
monster.outfit = {
	lookType = 130,
	lookHead = 0,
	lookBody = 52,
	lookLegs = 128,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 20527
monster.speed = 230
monster.manaCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 2000,
	chance = 100
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
	targetDistance = 4,
	runHealth = 600,
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
	{text = "Learn the secret of our magic! YOUR death!", yell = false},
	{text = "Even a rat is a better mage than you.", yell = false},
	{text = "We don't like intruders!", yell = false}
}

monster.loot = {
	{id = 2662, chance = 250},
	{id = 2656, chance = 1050},
	{id = 2466, chance = 20},
	{id = 2436, chance = 1500},
	{id = 2163, chance = 3000},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2600, chance = 10000},
	{id = 2123, chance = 15},
	{id = 2197, chance = 450},
	{id = 2167, chance = 950},
	{id = 2689, chance = 80000, maxCount = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -116, maxDamage = -270},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -400, Duration = 4000},
	{name ="combat", interval = 3500, chance = 24, minDamage = -90, maxDamage = -180, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="firefield", interval = 2200, chance = 33, range = 3, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2300, chance = 99, minDamage = -120, maxDamage = -210, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 1800, chance = 45, minDamage = -135, maxDamage = -280, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2550, chance = 25, minDamage = -180, maxDamage = -370, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 35, minDamage = 90, maxDamage = 150, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 6000, chance = 25, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
