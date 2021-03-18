local mType = Game.createMonsterType("Minotaur Archer")
local monster = {}

monster.description = "um minotaur archer"
monster.experience = 65
monster.outfit = {
	lookType = 24,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 2871
monster.speed = 160
monster.manaCost = 390
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 4,
	runHealth = 10,
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
	{text = "Ruan Wihmpy!", yell = false},
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = 2483, chance = 700},
	{id = 2481, chance = 1050},
	{id = 5878, chance = 19999},
	{id = 2455, chance = 2000},
	{id = 2465, chance = 1700},
	{id = 2648, chance = 2000},
	{id = 2458, chance = 3000},
	{id = 2666, chance = 50000, maxCount = 3},
	{id = 2543, chance = 70000, maxCount = 12},
	{id = 2148, chance = 100000, maxCount = 65}
}

monster.attacks = {
	{name ="combat", interval = 3250, chance = 100, minDamage = -20, maxDamage = -60, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_BOLT, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
