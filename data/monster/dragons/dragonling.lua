local mType = Game.createMonsterType("Dragonling")
local monster = {}

monster.description = "dragonling"
monster.experience = 3150
monster.outfit = {
	lookType = 505,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 894
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 1,
	Locations = "x."
	}
	
monster.health = 4500	
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 18438
monster.speed = 460
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 900,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
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
	{text = "FCHHHHH", yell = false},
	{text = "SQUAWK!", yell = false},
	{text = "FIYAH", yell = false},
	{text = "FI?", yell = false}
}

monster.loot = {
	{id = 2672, chance = 80000, maxCount = 5},
	{id = 18400, chance = 200},
	{id = 8880, chance = 250},
	{id = 2195, chance = 500},
	{id = 2149, chance = 833},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 7420, chance = 300},
	{id = 2146, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -400},
	{name ="dragonling wave", interval = 2000, chance = 10, minDamage = -120, maxDamage = -250, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -115, maxDamage = -180, radius = 3, effect = CONST_ME_PURPLEENERGY, target = false},																																								
	{name ="firefield", interval = 1000, chance = 15, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 18, minDamage = -300, maxDamage = -450, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -700, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_STUN, target = true, duration = 16000}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
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
