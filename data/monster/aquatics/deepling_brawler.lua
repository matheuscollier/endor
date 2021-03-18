local mType = Game.createMonsterType("Deepling Brawler")
local monster = {}

monster.description = "um deepling brawler"
monster.experience = 12000
monster.outfit = {
	lookType = 413,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 859
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 250,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 1,
	Locations = "Atlantida."
	}	
	
monster.health = 12500					
monster.maxHealth = 12500
monster.race = "blood"
monster.corpse = 13840
monster.speed = 420
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 40,
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
	{text = "Njaaarh!!", yell = false}
}

monster.loot = {
	{id = 13838, chance = 500},
	{id = 15430, chance = 5000},
	{id = 13870, chance = 5500},
	{id = 2195, chance = 400},
	{id = 2148, chance = 31000, maxCount = 300}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -470, maxDamage = -510, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 4000, chance = 30, minDamage = -200, maxDamage = -360, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 28, minDamage = -400, maxDamage = -600, type = COMBAT_DEATHDAMAGE, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2500, chance = 25, minDamage = -300, maxDamage = -400, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 3000, chance = 35, minDamage = -500, maxDamage = -650, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_BIGPLANTS, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
