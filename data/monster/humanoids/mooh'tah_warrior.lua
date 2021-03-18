local mType = Game.createMonsterType("Mooh'Tah Warrior")
local monster = {}

monster.description = "a mooh'tah warrior"
monster.experience = 15000
monster.outfit = {
	lookType = 611,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "blood"
monster.corpse = 23368
monster.speed = 300
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
	targetDistance = 1,
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
	{text = "Feel the power of the Mooh'Tah!", yell = false},
	{text = "Ommm!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 120},
	{id = 2152, chance = 40000, maxCount = 3},
	{id = 7589, chance = 700},
	{id = 5878, chance = 2500},
	{id = 2147, chance = 500},
	{id = 2149, chance = 500},
	{id = 2150, chance = 500},
	{id = 9970, chance = 5000},
	{id = 12428, chance = 4700, maxCount = 2},
	{id = 2207, chance = 1100},
	{id = 2515, chance = 1200},
	{id = 2477, chance = 710},
	{id = 5911, chance = 150},
	{id = 2476, chance = 490},
	{id = 7401, chance = 150}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -410, maxDamage = -575},
	{name ="combat", interval = 2000, chance = 14, minDamage = -350, maxDamage = -510, type = COMBAT_ENERGYDAMAGE, length = 4, spread = 3, effect = CONST_ME_YELLOWENERGY, target = false},
	{name ="combat", interval = 2000, chance = 11, minDamage = -490, maxDamage = -685, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -350, maxDamage = -500, type = COMBAT_LIFEDRAIN, effect = CONST_ME_HITAREA, target = false},
	{name ="mooh'tah master skill reducer", interval = 2000, chance = 19, range = 7, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 30, minDamage = 110, maxDamage = 160, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="haste", interval = 2000, chance = 8, speedChange = 220, effect = CONST_ME_MAGIC_RED, target = false, duration = 1000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
