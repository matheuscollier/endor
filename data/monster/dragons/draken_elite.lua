local mType = Game.createMonsterType("Draken Elite")
local monster = {}

monster.description = "a draken elite"
monster.experience = 7900
monster.outfit = {
	lookType = 362,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 672
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 6900
monster.maxHealth = 6900
monster.race = "blood"
monster.corpse = 12609
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{text = "For ze emperor!", yell = false},
	{text = "You will die zhouzandz deazhz!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 40625, maxCount = 100},
	{id = 2148, chance = 40625, maxCount = 100},
	{id = 12617, chance = 22300},
	{id = 2666, chance = 30175},
	{id = 2152, chance = 28275, maxCount = 8},
	{id = 2145, chance = 1800, maxCount = 4},
	{id = 12615, chance = 9250},
	{id = 12616, chance = 7000},
	{id = 12614, chance = 700},
	{id = 12646, chance = 120},
	{id = 12645, chance = 80},
	{id = 12607, chance = 50},
	{id = 11304, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -336, maxDamage = -430},
	{name ="combat", interval = 2000, chance = 20, minDamage = -300, maxDamage = -450, type = COMBAT_FIREDAMAGE, length = 4, spread = 3, ShootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 40, minDamage = -300, maxDamage = -420, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POFF, target = false},
	{name ="soulfire", interval = 2000, chance = 10, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -400, maxDamage = -500, range = 7, shootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 510, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
