local mType = Game.createMonsterType("Earth Elemental")
local monster = {}

monster.description = "um earth elemental"
monster.experience = 1150
monster.outfit = {
	lookType = 301,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 458
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 1300
monster.maxHealth = 1300
monster.race = "undead"
monster.corpse = 8933
monster.speed = 230
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
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 80,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
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
	{text = "Stomp.", yell = false}
}

monster.loot = {
	{id = 2148, chance = 20000, maxCount = 85},
	{id = 7885, chance = 300},
	{id = 7884, chance = 250},
	{id = 1294, chance = 9000, maxCount = 5},
	{id = 2796, chance = 2500, maxCount = 5},
	{id = 7732, chance = 2500, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -304},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -72, maxDamage = -105, range = 7, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = true},																																																	   
	{name ="combat", interval = 3100, chance = 99, minDamage = -90, maxDamage = -160, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = true},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 20, minDamage = -200, maxDamage = -260, length = 6, spread = 3, effect = CONST_ME_BIGPLANTS, target = false},	  
	{name ="combat", interval = 2150, chance = 30, minDamage = -50, maxDamage = -90, type = COMBAT_EARTHDAMAGE, length = 5, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -100, maxDamage = -140, radius = 5, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="speed", interval = 2000, chance = 10, speedChange = -330, range = 5, effect = CONST_ME_SMALLPLANTS, target = true, duration = 5000}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 60, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
