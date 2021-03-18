local mType = Game.createMonsterType("Cliff Strider")
local monster = {}

monster.description = "um cliff strider"
monster.experience = 13500
monster.outfit = {
	lookType = 497,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 889
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

monster.health = 9400
monster.maxHealth = 9400
monster.race = "undead"
monster.corpse = 17420
monster.speed = 270
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
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
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
	{text = "Knorrrr!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2152, chance = 33333, maxCount = 3},
	{id = 18435, chance = 366, maxCount = 8},
	{id = 2477, chance = 350},
	{id = 2393, chance = 300},
	{id = 18450, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, skill = 100, attack = 120},
	{name ="combat", interval = 2000, chance = 30, minDamage = -270, maxDamage = -320, type = COMBAT_PHYSICALDAMAGE, length = 7, spread = 3, effect = CONST_ME_STONES, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -250, maxDamage = -350, type = COMBAT_ENERGYDAMAGE, range = 4, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="cliff strider skill reducer", interval = 2000, chance = 10, target = false},
	{name ="cliff strider electrify", interval = 2000, chance = 15, range = 1, target = false},																						
	{name ="combat", interval = 2000, chance = 35, minDamage = -200, maxDamage = -350, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 25, minDamage = -150, maxDamage = -300, type = COMBAT_EARTHDAMAGE, range = 4, effect = CONST_ME_BIGPLANTS, target = true}
}

monster.defenses = {
	defense = 55,
	armor = 55
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
