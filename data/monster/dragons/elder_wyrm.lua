local mType = Game.createMonsterType("Elder Wyrm")
local monster = {}

monster.description = "um elder wyrm"
monster.experience = 6100
monster.outfit = {
	lookType = 561,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 963
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
	
monster.health = 3300
monster.maxHealth = 3300
monster.race = "blood"
monster.corpse = 21283
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15
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
	runHealth = 250,
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
	{text = "GRRR!", yell = false},
	{text = "GROOOOAAAAAAAAR!", yell = false}
}

monster.loot = {
	{id = 2672, chance = 10000, maxCount = 3},
	{id = 2474, chance = 120},
	{id = 10582, chance = 300},
	{id = 8871, chance = 100},
	{id = 2148, chance = 40000, maxCount = 75},
	{id = 2148, chance = 40000, maxCount = 75},
	{id = 2148, chance = 40000, maxCount = 75},
	{id = 2146, chance = 200},
	{id = 2542, chance = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -90, maxDamage = -150, radius = 4, effect = CONST_ME_TELEPORT, target = true},																																								  
	{name ="combat", interval = 2000, chance = 20, minDamage = -350, maxDamage = -520, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -350, maxDamage = -520, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="elder wyrm wave", interval = 2000, chance = 10, minDamage = -430, maxDamage = -520, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 25},
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
