local mType = Game.createMonsterType("Orc Spearman")
local monster = {}

monster.description = "um orc spearman"
monster.experience = 38
monster.outfit = {
	lookType = 50,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 105
monster.maxHealth = 105
monster.race = "blood"
monster.corpse = 2920
monster.speed = 176
monster.manaCost = 310
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 3,
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
	{text = "Ugaar!", yell = false}
}

monster.loot = {
	{id = 11113, chance = 2000},
	{id = 2148, chance = 80000, maxCount = 10},
	{id = 2666, chance = 80000, maxCount = 3},
	{id = 2468, chance = 6000},
	{id = 2220, chance = 5000},
	{id = 2420, chance = 4000},
	{id = 2389, chance = 30000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1, maxDamage = -15},
	{name ="combat", interval = 3150, chance = 99, minDamage = -10, maxDamage = -25, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_SPEAR, target = true}
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
