local mType = Game.createMonsterType("Cyclops Smith")
local monster = {}

monster.description = "um cyclops smith"
monster.experience = 255
monster.outfit = {
	lookType = 277,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 389
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 1500,
	FirstUnlock = 100,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 435
monster.maxHealth = 435
monster.race = "blood"
monster.corpse = 7740
monster.speed = 250
monster.manaCost = 695
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
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
	{text = "Outis emoi g' onoma.", yell = false},
	{text = "Whack da humy!", yell = false},
	{text = "Ai humy phary ty kaynon", yell = false}
}

monster.loot = {
	{id = 2513, chance = 2500},
	{id = 2490, chance = 1500},
	{id = 2148, chance = 4000, maxCount = 100},
	{id = 2148, chance = 14000, maxCount = 10},
	{id = 2671, chance = 3000},
	{id = 2666, chance = 5000, maxCount = 3},
	{id = 2510, chance = 3000},
	{id = 2391, chance = 900},
	{id = 2486, chance = 600}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 50},
	{name ="combat", interval = 2000, chance = 10, minDamage = -46, maxDamage = -74, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, target = false},
	{name ="drunk", interval = 2000, chance = 10, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_STUN, target = false, duration = 4000}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
