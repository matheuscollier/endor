local mType = Game.createMonsterType("Fury")
local monster = {}

monster.description = "uma fury"
monster.experience = 4750
monster.outfit = {
	lookType = 149,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 291
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

monster.health = 4100
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 20399
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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

monster.summons = {
	{name = "fire devil", chance = 15, interval = 8000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ahhhhrrrr!", yell = false},
	{text = "Waaaaah!", yell = false},
	{text = "Caaarnaaage!", yell = false},
	{text = "Dieee!", yell = false}
}

monster.loot = {
	{id = 2645, chance = 200},
	{id = 2181, chance = 900},
	{id = 5944, chance = 400},
	{id = 2470, chance = 1},
	{id = 2487, chance = 250},
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 6558, chance = 1000},
	{id = 6500, chance = 800},
	{id = 2156, chance = 650},
	{id = 2143, chance = 1000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -320},
	{name ="combat", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -140, maxDamage = -300, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -250, maxDamage = -700, type = COMBAT_PHYSICALDAMAGE, range = 7, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="fury skill reducer", interval = 2000, chance = 5, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -120, maxDamage = -300, radius = 3, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -250, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -800, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 30000}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="speed", interval = 2000, chance = 15, speedChange = 800, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
