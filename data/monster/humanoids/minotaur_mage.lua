local mType = Game.createMonsterType("Minotaur Mage")
local monster = {}

monster.description = "um minotaur mage"
monster.experience = 150
monster.outfit = {
	lookType = 23,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 155
monster.maxHealth = 155
monster.race = "blood"
monster.corpse = 2866
monster.speed = 170
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 4,
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
	{text = "#W Learrn tha secrret uf deathhh!", yell = false},
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = 2465, chance = 4000},
	{id = 2684, chance = 10000, maxCount = 7},
	{id = 2648, chance = 2000},
	{id = 2404, chance = 4000},
	{id = 2817, chance = 70000},
	{id = 2148, chance = 80000, maxCount = 80},
	{id = 2403, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 15000},
	{id = 2050, chance = 30000, maxCount = 2},
	{id = 2189, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 18, attack = 15},
	{name ="combat", interval = 1000, chance = 17, minDamage = -15, maxDamage = -45, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 10, minDamage = -35, maxDamage = -95, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="energyfield", interval = 1000, chance = 12, range = 7, ShootEffect = CONST_ANI_ENERGY, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
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
