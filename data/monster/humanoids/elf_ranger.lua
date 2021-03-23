local mType = Game.createMonsterType("Elf Ranger")
local monster = {}

monster.description = "um elf ranger"
monster.experience = 550
monster.outfit = {
	lookType = 64,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4011
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}


monster.health = 600
monster.maxHealth = 600
monster.race = "blood"
monster.corpse = 2981
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	{text = "For Illuvatar!", yell = false}
}

monster.loot = {
	{id = 7438, chance = 220},
	{id = 2505, chance = 650},
	{id = 2507, chance = 700},
	{id = 2533, chance = 1200},
	{id = 2664, chance = 400},
	{id = 2456, chance = 1200},
	{id = 2198, chance = 120},
	{id = 12420, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2669, chance = 2000},
	{id = 2667, chance = 9000, maxCount = 3},
	{id = 2668, chance = 3000, maxCount = 3},
	{id = 2127, chance = 800},
	{id = 2352, chance = 350},
	{id = 2011, chance = 1000},
	{id = 2374, chance = 800}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, minDamage = -70, maxDamage = -150, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = false},
	{name ="combat", interval = 2700, chance = 15, minDamage = -150, maxDamage = -200, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_SHIVERARROW, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 3600, chance = 20, minDamage = 75, maxDamage = 90, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
