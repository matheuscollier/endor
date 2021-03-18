local mType = Game.createMonsterType("Deepling Master")
local monster = {}

monster.description = "um deepling master"
monster.experience = 16000
monster.outfit = {
	lookType = 443,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 860
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 2,
	Locations = "Atlantida."
	}	
	
monster.health = 14000	
monster.maxHealth = 14000
monster.race = "blood"
monster.corpse = 15211
monster.speed = 670
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 250,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "Jey obu giotja!!", yell = false}
}

monster.loot = {
	{id = 7730, chance = 35},
	{id = 2149, chance = 300},
	{id = 15430, chance = 5000},
	{id = 13870, chance = 5500},
	{id = 15545, chance = 300},
	{id = 7901, chance = 250},
	{id = 2640, chance = 15},
	{id = 2148, chance = 31000, maxCount = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 55, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 100, minDamage = -400, maxDamage = -500, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="speed", interval = 1000, chance = 20, SpeedChange = -200, Duration = 10000},
	{name ="combat", interval = 2000, chance = 100, minDamage = -400, maxDamage = -500, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -800, maxDamage = -900, type = COMBAT_DEATHDAMAGE, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 2000, chance = 37, SpeedChange = -400, Duration = 20000},
	{name ="deepling spellsinger skill reducer", interval = 2000, chance = 10, range = 5, target = false}
}

monster.defenses = {
	defense = 20,
	armor = 45,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 40, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
