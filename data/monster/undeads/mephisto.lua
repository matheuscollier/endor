local mType = Game.createMonsterType("Mephisto")
local monster = {}

monster.description = "Mephisto"
monster.experience = 23000
monster.outfit = {
	lookType = 287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 23000
monster.maxHealth = 23000
monster.race = "undead"
monster.corpse = 8937
monster.speed = 370
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 6000,
	chance = 30
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "So it shall be written. So it shall be done.", yell = false}
}

monster.loot = {
	{id = 2640, chance = 65},
	{id = 8889, chance = 40},
	{id = 2514, chance = 220},
	{id = 2077, chance = 400},
	{id = 7419, chance = 310},
	{id = 5741, chance = 350},
	{id = 7378, chance = 800},
	{id = 7407, chance = 475},
	{id = 2495, chance = 175},
	{id = 2160, chance = 650},
	{id = 2144, chance = 750, maxCount = 4},
	{id = 2146, chance = 750},
	{id = 6300, chance = 90}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -804, maxDamage = -1160},
	{name ="combat", interval = 2900, chance = 34, minDamage = -480, maxDamage = -620, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 2230, chance = 20, minDamage = -560, maxDamage = -660, type = COMBAT_PHYSICALDAMAGE, range = 14, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 1820, chance = 45, minDamage = -220, maxDamage = -460, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 4110, chance = 35, minDamage = -450, maxDamage = -650, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 6030, chance = 22, minDamage = -1200, maxDamage = -1600, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2400, chance = 35, minDamage = 200, maxDamage = 400, type = COMBAT_HEALING, effect = CONST_ME_FIREWORK_BLUE, target = false},
	{name ="invisible", interval = 15000, chance = 45, effect = CONST_ME_POFF}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 29},
	{type = COMBAT_EARTHDAMAGE, percent = 62},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 32},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 92}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
