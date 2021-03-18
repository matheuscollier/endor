local mType = Game.createMonsterType("Wyrm")
local monster = {}

monster.description = "um wyrm"
monster.experience = 2950
monster.outfit = {
	lookType = 291,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 461
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 2500
monster.maxHealth = 2500
monster.race = "blood"
monster.corpse = 8941
monster.speed = 300
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
	runHealth = 1,
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
	{id = 2475, chance = 900},
	{id = 10582, chance = 600},
	{id = 2492, chance = 350},
	{id = 2148, chance = 40000, maxCount = 75},
	{id = 2146, chance = 400},
	{id = 7886, chance = 1500}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -250, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 15, minDamage = -150, maxDamage = -250, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_YELLOWENERGY, target = false},
	{name ="wyrm wave", interval = 2000, chance = 40, minDamage = -230, maxDamage = -300, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -100, maxDamage = -125, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -138, maxDamage = -200, type = COMBAT_LIFEDRAIN, length = 4, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="effect", interval = 2000, chance = 10, radius = 1, effect = CONST_ME_SOUND_YELLOW, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 75},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
