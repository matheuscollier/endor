local mType = Game.createMonsterType("Ironblight")
local monster = {}

monster.description = "ironblight"
monster.experience = 5350
monster.outfit = {
	lookType = 498,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 890
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "x."
	}

monster.health = 6600
monster.maxHealth = 6600
monster.race = "undead"
monster.corpse = 17424
monster.speed = 286
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
	runHealth = 260,
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
	{text = "Clonk!", yell = false},
	{text = "Yowl!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 199},												   
	{id = 2152, chance = 99900, maxCount = 3},
	{id = 5880, chance = 30000, maxCount = 10},
	{name = "platinum coin", chance = 100000, maxCount = 8},													 
	{id = 11221, chance = 2500},
	{id = 10571, chance = 280}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 80},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -460, maxDamage = -480, radius = 6, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -200, maxDamage = -320, type = COMBAT_ICEDAMAGE, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_LOSEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -180, maxDamage = -350, radius = 2, shootEffect = CONST_ANI_GREENSTAR, effect = CONST_ME_BIGPLANTS, target = true},
	{name ="speed", interval = 2000, chance = 10, speedChange = -800, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 30000}
}


monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
