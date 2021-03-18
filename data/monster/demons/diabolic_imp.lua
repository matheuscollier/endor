local mType = Game.createMonsterType("Diabolic Imp")
local monster = {}

monster.description = "um diabolic imp"
monster.experience = 2900
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 288
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 1950
monster.maxHealth = 1950
monster.race = "fire"
monster.corpse = 6364
monster.speed = 310
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	targetDistance = 4,
	runHealth = 400,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Muahaha!", yell = false},
	{text = "He he he!", yell = false}
}

monster.loot = {
	{id = 2165, chance = 500},
	{id = 2465, chance = 6577},
	{id = 7900, chance = 150},
	{id = 2148, chance = 25000, maxCount = 79},
	{id = 2148, chance = 25000, maxCount = 79},
	{id = 2148, chance = 25000, maxCount = 79},
	{id = 2148, chance = 25000, maxCount = 79},
	{id = 2548, chance = 20000},
	{id = 2185, chance = 833},
	{id = 6500, chance = 2450},
	{id = 2147, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -160, maxDamage = -320},
	{name ="combat", interval = 2000, chance = 33, minDamage = -100, maxDamage = -200, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -430, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
	{name ="diabolic imp skill reducer", interval = 2000, chance = 5, range = 5, target = false}																				 
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 650, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 800, effect = CONST_ME_MAGIC_RED, target = false, duration = 2000},
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_TELEPORT}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
