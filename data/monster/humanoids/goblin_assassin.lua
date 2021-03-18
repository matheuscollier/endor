local mType = Game.createMonsterType("Goblin Assassin")
local monster = {}

monster.description = "a goblin assassin"
monster.experience = 52
monster.outfit = {
	lookType = 296,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 75
monster.maxHealth = 75
monster.race = "blood"
monster.corpse = 6002
monster.speed = 220
monster.manaCost = 360
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
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
	staticAttackChance = 90,
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
	{text = "Goblin Powahhh!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 9},
	{id = 2667, chance = 20000},
	{id = 2235, chance = 600},
	{id = 2461, chance = 700},
	{id = 2230, chance = 1000},
	{id = 1294, chance = 20000, maxCount = 3},
	{id = 2449, chance = 760},
	{id = 2406, chance = 800},
	{id = 2559, chance = 700},
	{id = 2379, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15},
	{name ="drunk", interval = 5000, chance = 15, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1000, chance = 9, minDamage = -15, maxDamage = -25, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="invisible", interval = 7500, chance = 10, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
