local mType = Game.createMonsterType("Demon Outcast")
local monster = {}

monster.description = "um demon outcast"
monster.experience = 5800
monster.outfit = {
	lookType = 590,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1019
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Roshamuul."
	}

monster.health = 6900
monster.maxHealth = 6900
monster.race = "blood"
monster.corpse = 22549
monster.speed = 296
monster.manaCost = 0
monster.maxSummons = 2

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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "energy elemental", chance = 10, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Back in the evil business!", yell = false},
	{text = "This prison break will have casualties!", yell = false},
	{text = "At last someone to hurt", yell = false},
	{text = "No one will imprison me again!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 6},
	{id = 2145, chance = 5000, maxCount = 3},
	{id = 2146, chance = 600},
	{id = 2147, chance = 500},
	{id = 2149, chance = 500},
	{id = 2165, chance = 1300},
	{id = 2171, chance = 1000},
	{id = 2214, chance = 3000},
	{id = 2393, chance = 1200},
	{id = 2462, chance = 910},
	{id = 2497, chance = 540},
	{id = 2519, chance = 350},
	{id = 2520, chance = 80},
	{id = 6550, chance = 800},
	{id = 2795, chance = 20600, maxCount = 6},
	{id = 7368, chance = 8340, maxCount = 10},
	{id = 9970, chance = 300, maxCount = 5},
	{id = 22396, chance = 180}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -190, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 10, minDamage = -250, maxDamage = -350, type = COMBAT_ENERGYDAMAGE, length = 6, spread = 3, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -350, maxDamage = -420, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -180, maxDamage = -250, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="demon outcast skill reducer", interval = 2000, chance = 10, range = 5, target = false},																							
	{name ="combat", interval = 2000, chance = 10, minDamage = -80, maxDamage = -150, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 425, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
