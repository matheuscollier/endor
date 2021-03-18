local mType = Game.createMonsterType("Behemoth")
local monster = {}

monster.description = "um behemoth"
monster.experience = 2900
monster.outfit = {
	lookType = 55,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 55
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 1500,
	FirstUnlock = 100,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 5999
monster.speed = 340
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
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
	{text = "You're so little!", yell = false},
	{text = "Human flesh - delicious!", yell = false},
	{text = "Crush the intruders!", yell = true}
}

monster.loot = {
	{id = 12403, chance = 1800},
	{id = 5893, chance = 5000},
	{id = 2393, chance = 350},
	{id = 2666, chance = 20000, maxCount = 6},
	{id = 2645, chance = 450},
	{id = 2174, chance = 800},
	{id = 2148, chance = 50000, maxCount = 80},
	{id = 2377, chance = 3200},
	{id = 2125, chance = 450},
	{id = 2387, chance = 1200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -146, maxDamage = -350},
	{name ="combat", interval = 2000, chance = 35, minDamage = -120, maxDamage = -450, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
