local mType = Game.createMonsterType("Minotaur Amazon")
local monster = {}

monster.description = "a minotaur amazon"
monster.experience = 14500
monster.outfit = {
	lookType = 608,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "blood"
monster.corpse = 23371
monster.speed = 250
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
	targetDistance = 4,
	runHealth = 240,
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
	{text = "I'll protect the herd!", yell = false},
	{text = "Never surrender!", yell = false},
	{text = "You won't hurt us!", yell = false},
	{text = "I will not allow your evil to continue!", yell = false}
}

monster.loot = {
	{id = 23571, chance = 500},
	{id = 2148, chance = 99500, maxCount = 199},
	{id = 2152, chance = 33000, maxCount = 3},
	{id = 5878, chance = 5000},
	{id = 12428, chance = 4700, maxCount = 2},
	{id = 23545, chance = 600},
	{id = 23546, chance = 500},
	{id = 11303, chance = 30},
	{id = 2500, chance = 1800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
	{name ="combat", interval = 2000, chance = 10, minDamage = -50, maxDamage = -305, type = COMBAT_MANADRAIN, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 16, minDamage = -500, maxDamage = -700, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 100, minDamage = -400, maxDamage = -650, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_HUNTINGSPEAR, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 40, minDamage = -500, maxDamage = -750, radius = 4, shootEffect = CONST_ANI_THROWINGKNIFE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="minotaur amazon paralyze", interval = 2000, chance = 15, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 35
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
