local mType = Game.createMonsterType("Orc Warrior")
local monster = {}

monster.description = "um orc warrior"
monster.experience = 50
monster.outfit = {
	lookType = 7,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 125
monster.maxHealth = 125
monster.race = "blood"
monster.corpse = 2862
monster.speed = 190
monster.manaCost = 360
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
	{text = "Alk!", yell = false},
	{text = "Trak grrr brik.", yell = false}
}

monster.loot = {
	{id = 11113, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 25},
	{id = 2666, chance = 40000, maxCount = 2},
	{id = 2512, chance = 7000},
	{id = 2530, chance = 3000},
	{id = 2385, chance = 5500},
	{id = 2411, chance = 200},
	{id = 2464, chance = 4000},
	{id = 2420, chance = 3000},
	{id = 2007, chance = 3000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -60}
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
