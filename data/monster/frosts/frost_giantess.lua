local mType = Game.createMonsterType("Frost Giantess")
local monster = {}

monster.description = "uma frost giantess"
monster.experience = 150
monster.outfit = {
	lookType = 265,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 334
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 275
monster.maxHealth = 275
monster.race = "blood"
monster.corpse = 7330
monster.speed = 195
monster.manaCost = 490
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
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 60,
	targetDistance = 4,
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
	{text = "Ymirs Mjalle!", yell = false},
	{text = "No run so much, must stay fat!", yell = false},
	{text = "Horre, Sjan Flan!", yell = false},
	{text = "Damned fast food.", yell = false},
	{text = "Come kiss the cook!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 35},
	{id = 2406, chance = 25000},
	{id = 11224, chance = 1500},
	{id = 2381, chance = 400},
	{id = 2209, chance = 1500},
	{id = 2510, chance = 2500},
	{id = 7290, chance = 2000},
	{id = 2490, chance = 1500},
	{id = 2666, chance = 33333, maxCount = 2},
	{id = 2513, chance = 2500},
	{id = 7441, chance = 3444},
	{id = 2671, chance = 33333, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -35, maxDamage = -100},
	{name ="combat", interval = 3450, chance = 99, minDamage = -15, maxDamage = -75, type = COMBAT_PHYSICALDAMAGE, range = 5, ShootEffect = CONST_ANI_SMALLSTONE, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -3}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
