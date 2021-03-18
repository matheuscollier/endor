local mType = Game.createMonsterType("Demon")
local monster = {}

monster.description = "um demon"
monster.experience = 6750
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 35
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 8200
monster.maxHealth = 8200
monster.race = "fire"
monster.corpse = 5995
monster.speed = 360
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	staticAttackChance = 70,
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

monster.summons = {
	{name = "fire elemental", chance = 10, interval = 2000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "MUHAHAHAHA!", yell = true},
	{text = "I SMELL FEEEEEAAAR!", yell = true},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
	{text = "Your resistance is futile!", yell = false},
	{text = "Your soul will be mine!", yell = true}
}

monster.loot = {
	{id = 2493, chance = 80},
	{id = 2494, chance = 80},
	{id = 2495, chance = 80},
	{id = 2520, chance = 80},
	{id = 2432, chance = 950},
	{id = 2179, chance = 1200},
	{id = 2176, chance = 2000},
	{id = 2171, chance = 2900},
	{id = 2214, chance = 3000},
	{id = 2149, chance = 600},
	{id = 2151, chance = 1000, maxCount = 5},
	{id = 5906, chance = 3000, maxCount = 2},
	{id = 5954, chance = 3000},
	{id = 2152, chance = 75000},
	{id = 2148, chance = 70000, maxCount = 100},
	{id = 2418, chance = 1800},
	{id = 2795, chance = 20000, maxCount = 6},
	{id = 2387, chance = 2000},
	{id = 2165, chance = 2400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -240, maxDamage = -480},
	{name ="combat", interval = 2700, chance = 23, minDamage = -90, maxDamage = -160, type = COMBAT_MANADRAIN, range = 8, target = false},
	{name ="combat", interval = 2250, chance = 15, minDamage = -300, maxDamage = -420, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -180, maxDamage = -390, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -110, maxDamage = -200, range = 1, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}																																	
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 55},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
