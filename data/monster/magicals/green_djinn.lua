local mType = Game.createMonsterType("Green Djinn")
local monster = {}

monster.description = "um green djinn"
monster.experience = 190
monster.outfit = {
	lookType = 51,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 330
monster.maxHealth = 330
monster.race = "blood"
monster.corpse = 2989
monster.speed = 220
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 95,
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
	{text = "I grant you a deathwish!", yell = false},
	{text = "Muhahahaha!", yell = false},
	{text = "I wish you a merry trip to hell!", yell = false},
	{text = "Tell me your last wish!", yell = false},
	{text = "Good wishes are for fairytales", yell = false}
}

monster.loot = {
	{id = 2442, chance = 10000},
	{id = 2696, chance = 10000},
	{id = 2747, chance = 10000},
	{id = 2062, chance = 500},
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 5910, chance = 700},
	{id = 2149, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -130},
	{name ="combat", interval = 1000, chance = 50, minDamage = -45, maxDamage = -75, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2200, chance = 50, minDamage = -30, maxDamage = -80, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, target = false},
	{name ="drunk", interval = 3100, chance = 15, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitMonster = "rat"},
	{name ="djinn electrify", interval = 2000, chance = 15, range = 5, target = false},
	{name ="djinn cancel invisibility", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
