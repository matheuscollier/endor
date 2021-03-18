local mType = Game.createMonsterType("Juggernaut")
local monster = {}

monster.description = "um juggernaut"
monster.experience = 11200
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 296
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

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 6336
monster.speed = 340
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
	staticAttackChance = 60,
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
	{text = "WAHHHH!", yell = false},
	{text = "RAAARRR!", yell = false},
	{text = "GRRRRRR!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 10000, maxCount = 10},
	{id = 2452, chance = 150},
	{id = 2472, chance = 50},
	{id = 7895, chance = 150},
	{id = 7898, chance = 250},
	{id = 7901, chance = 200},
	{id = 2408, chance = 20},
	{id = 5944, chance = 1333},
	{id = 2416, chance = 40563},
	{id = 2387, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -190, maxDamage = -470, condition = {type = CONDITION_DAZZLED, startDamage = 100, interval = 1000}},
	{name ="combat", interval = 1900, chance = 99, minDamage = -230, maxDamage = -450, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 3700, chance = 33, minDamage = -200, maxDamage = -400, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="speed", interval = 2000, chance = 15, speedChange = 520, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
