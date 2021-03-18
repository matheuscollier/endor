local mType = Game.createMonsterType("Shade of Akama")
local monster = {}

monster.description = "um shade of akama"
monster.experience = 15000
monster.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "blood"
monster.corpse = 3058
monster.speed = 390
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
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
	targetDistance = 3,
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
	{name = "spectre", chance = 60, interval = 1000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 8889, chance = 60},
	{id = 8865, chance = 1200},
	{id = 7895, chance = 2050},
	{id = 3972, chance = 2650},
	{id = 2123, chance = 50},
	{id = 2173, chance = 600},
	{id = 2152, chance = 30000, maxCount = 3},
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2197, chance = 650},
	{id = 2167, chance = 2000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -120, maxDamage = -200},
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -600, Duration = 4000},
	{name ="combat", interval = 1800, chance = 90, minDamage = -500, maxDamage = -580, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2300, chance = 30, minDamage = -500, maxDamage = -620, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
