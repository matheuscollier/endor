local mType = Game.createMonsterType("Orc Leader")
local monster = {}

monster.description = "um orc leader"
monster.experience = 270
monster.outfit = {
	lookType = 59,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 450
monster.maxHealth = 450
monster.race = "blood"
monster.corpse = 2938
monster.speed = 230
monster.manaCost = 640
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	isSummonable = true,
	isAttackable = true,
	isHostile = true,
	isConvinceable = true,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
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
	{text = "Ulderek Futgyr Human!", yell = false}
}

monster.loot = {
	{id = 11113, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2410, chance = 30000, maxCount = 3},
	{id = 2419, chance = 5000},
	{id = 2510, chance = 4000},
	{id = 2667, chance = 20000},
	{id = 2647, chance = 400},
	{id = 2413, chance = 900},
	{id = 2475, chance = 120},
	{id = 2666, chance = 33333, maxCount = 2},
	{id = 2207, chance = 900},
	{id = 2379, chance = 4000},
	{id = 2652, chance = 100},
	{id = 2478, chance = 1300},
	{id = 2463, chance = 650}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -65, maxDamage = -130},
	{name ="combat", interval = 2750, chance = 99, minDamage = -30, maxDamage = -90, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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
