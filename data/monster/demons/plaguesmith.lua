local mType = Game.createMonsterType("Plaguesmith")
local monster = {}

monster.description = "um plaguesmith"
monster.experience = 5450
monster.outfit = {
	lookType = 247,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 314
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

monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 6516
monster.speed = 320
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 500,
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
	{text = "You are looking a bit feverish!", yell = false},
	{text = "You don't look that good!", yell = false},
	{text = "Hachoo!", yell = false},
	{text = "Cough Cough", yell = false}
}

monster.loot = {
	{id = 2416, chance = 3333},
	{id = 13298, chance = 2000},
	{id = 2444, chance = 50},
	{id = 2489, chance = 1000},
	{id = 2645, chance = 150},
	{id = 2515, chance = 500},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2417, chance = 2500},
	{id = 2422, chance = 3000},
	{id = 5944, chance = 1538},
	{id = 2079, chance = 2000},
	{id = 2209, chance = 2222}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -160, maxDamage = -339, condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -314, radius = 4, effect = CONST_ME_POISONAREA, target = false},
	{name ="plaguesmith wave", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 4, effect = CONST_ME_POISONAREA, target = false, duration = 30000}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 200, maxDamage = 280, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
