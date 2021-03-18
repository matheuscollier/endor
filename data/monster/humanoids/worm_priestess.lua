local mType = Game.createMonsterType("Worm Priestess")
local monster = {}

monster.description = "a worm priestess"
monster.experience = 15000
monster.outfit = {
	lookType = 613,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11500
monster.maxHealth = 11500
monster.race = "blood"
monster.corpse = 23470
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 40
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = false,
	isBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 5,
	runHealth = 0,
	isHealthHidden = false,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "An enemy of the worm shall become his food!", yell = false},
	{text = "The great worm will swallow you!", yell = false},
	{text = "From the earthy depths he comes and brings freedom!", yell = false}
}

monster.loot = {
	{id = 23573, chance = 800},
	{id = 23541, chance = 60},
	{id = 2148, chance = 82000, maxCount = 47},
	{id = 7590, chance = 1200},
	{id = 7730, chance = 200},
	{id = 2655, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
	{name ="combat", interval = 2000, chance = 15, minDamage = -400, maxDamage = -700, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 35, minDamage = -200, maxDamage = -450, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SMALLSTONE, target = false},
	{name ="combat", interval = 2400, chance = 28, minDamage = -400, maxDamage = -700, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 3300, chance = 20, minDamage = -350, maxDamage = -700, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -350, Duration = 8000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 15, minDamage = 80, maxDamage = 145, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 205, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
