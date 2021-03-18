local mType = Game.createMonsterType("Goblin")
local monster = {}

monster.description = "a goblin"
monster.experience = 25
monster.outfit = {
	lookType = 61,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 2940
monster.speed = 120
monster.manaCost = 290
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = true,
	isBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 15,
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
	{text = "Me have him!", yell = false},
	{text = "Zig Zag! Gobo attack!", yell = false},
	{text = "Help! Goblinkiller!", yell = false},
	{text = "Me green, me mean!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 19},
	{id = 2449, chance = 5000},
	{id = 2379, chance = 9000},
	{id = 2667, chance = 15000},
	{id = 2467, chance = 6000},
	{id = 2461, chance = 5000},
	{id = 2235, chance = 7000},
	{id = 2406, chance = 3500},
	{id = 2559, chance = 6000},
	{id = 1294, chance = 30000, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -5, maxDamage = -12},
	{name ="combat", interval = 3000, chance = 33, minDamage = -5, maxDamage = -15, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SMALLSTONE, target = false}
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
