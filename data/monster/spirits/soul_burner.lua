local mType = Game.createMonsterType("Soul Burner")
local monster = {}

monster.description = "um Soul Burner"
monster.experience = 18000
monster.outfit = {
	lookType = 243,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "fire"
monster.corpse = 6324
monster.speed = 320
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5
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
	staticAttackChance = 95,
	targetDistance = 3,
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
}

monster.loot = {
	{id = 9933, chance = 5},
	{id = 2112, chance = 300},
	{id = 8877, chance = 65},
	{id = 7894, chance = 170},
	{id = 2392, chance = 320},
	{id = 2421, chance = 15},
	{id = 2539, chance = 120},
	{id = 2432, chance = 250},
	{id = 2187, chance = 360},
	{id = 10553, chance = 9000},
	{id = 2160, chance = 240},
	{id = 2156, chance = 550},
	{id = 2151, chance = 450, maxCount = 3},
	{id = 2147, chance = 850},
	{id = 6529, chance = 25600, maxCount = 12}
}

monster.attacks = {
	{name ="melee", interval = 1750, chance = 100, minDamage = -520, maxDamage = -810},
	{name ="firefield", interval = 3500, chance = 65, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2200, chance = 50, minDamage = -530, maxDamage = -780, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2450, chance = 65, minDamage = -680, maxDamage = -920, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2650, chance = 70, minDamage = -450, maxDamage = -850, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3500, chance = 55, minDamage = -1050, maxDamage = -1390, type = COMBAT_FIREDAMAGE, effect = CONST_ME_FIREWORK_RED, target = false},
	{name ="combat", interval = 2250, chance = 45, minDamage = -150, maxDamage = -300, type = COMBAT_MANADRAIN, range = 7, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 250, maxDamage = 650, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
