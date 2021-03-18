local mType = Game.createMonsterType("Deepling Warrior")
local monster = {}

monster.description = "um deepling warrior"
monster.experience = 15000
monster.outfit = {
	lookType = 441,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 769
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Atlantida."
	}
	
monster.health = 16000					 
monster.maxHealth = 16000
monster.race = "blood"
monster.corpse = 15175
monster.speed = 450
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 30,
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
	{text = "Jou wjil ajll djie!", yell = false}
}

monster.loot = {
	{id = 2168, chance = 6000},
	{id = 15404, chance = 100},
	{id = 2149, chance = 300},
	{id = 15425, chance = 700},
	{id = 15453, chance = 600},
	{id = 15430, chance = 5000},
	{id = 13870, chance = 5500},
	{id = 2475, chance = 800},
	{id = 5949, chance = 80000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -200, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 20, minDamage = -550, maxDamage = -650, type = COMBAT_LIFEDRAIN, range = 1, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 3000, chance = 25, minDamage = -250, maxDamage = -450, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2500, chance = 50, minDamage = -400, maxDamage = -700, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_STUN, target = true},
	{name ="speed", interval = 2000, chance = 35, SpeedChange = -500, Duration = 80000},
	{name ="combat", interval = 2000, chance = 30, minDamage = -500, maxDamage = -600, type = COMBAT_LIFEDRAIN, length = 7, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE, target = false}
}


monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
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
