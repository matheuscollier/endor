local mType = Game.createMonsterType("Orc Shaman")
local monster = {}

monster.description = "um orc shaman"
monster.experience = 110
monster.outfit = {
	lookType = 6,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 115
monster.maxHealth = 115
monster.race = "blood"
monster.corpse = 2860
monster.speed = 140
monster.manaCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = true,
	isBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
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

monster.summons = {
	{name = "Snake", chance = 30, interval = 5000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grak brrretz gulu.", yell = false},
	{text = "Huumans stinkk!", yell = false}
}

monster.loot = {
	{id = 12408, chance = 1500},
	{id = 11113, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2401, chance = 2222},
	{id = 2458, chance = 2222},
	{id = 2158, chance = 500},
	{id = 2817, chance = 5000},
	{id = 2190, chance = 1538}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -60},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_FIREDAMAGE, minDamage = -5, maxDamage = -43, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 3000, chance = 100, minDamage = -10, maxDamage = -50, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4000, chance = 40, minDamage = 10, maxDamage = 20, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
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
