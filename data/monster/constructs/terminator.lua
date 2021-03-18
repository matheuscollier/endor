local mType = Game.createMonsterType("Terminator")
local monster = {}

monster.description = "um terminator"
monster.experience = 10000
monster.outfit = {
	lookType = 326,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4004
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 5,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "venom"
monster.corpse = 10005
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hasta la vista", yell = false},
	{text = "Talk to the hand", yell = false}
}

monster.loot = {
	{id = 10571, chance = 350},
	{id = 2472, chance = 15},
	{id = 2475, chance = 600},
	{id = 2470, chance = 15},
	{id = 13938, chance = 20},
	{id = 2645, chance = 450},
	{id = 2408, chance = 300},
	{id = 8822, chance = 850},
	{id = 2147, chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 1750, chance = 100, minDamage = -450, maxDamage = -580},
	{name ="combat", interval = 2000, chance = 60, minDamage = -300, maxDamage = -420, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2320, chance = 80, minDamage = -300, maxDamage = -500, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1810, chance = 55, minDamage = -300, maxDamage = -500, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="war golem electrify", interval = 2000, chance = 15, range = 1, target = false},
	{name ="war golem skill reducer", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
