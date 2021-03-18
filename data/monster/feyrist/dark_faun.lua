local mType = Game.createMonsterType("Dark Faun")
local monster = {}

monster.description = "a dark faun"
monster.experience = 900
monster.outfit = {
	lookType = 980,
	lookHead = 94,
	lookBody = 114,
	lookLegs = 57,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1496
monster.Bestiary = {
	class = "Fey",
	race = BESTY_RACE_FEY,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist."
	}

monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 29101
monster.speed = 250
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
	random = 10
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
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
	{text = "Are you posing a threat to this realm? I suppose so.", yell = false},
	{text = "Hicks!", yell = false},
	{text = "This is will be your last dance!", yell = false},
	{text = "You're a threat to this realm! You have to die!", yell = false},
	{text = "This is a nightmare and you won't wake up!", yell = false}
}

monster.loot = {
	{name = "small diamond", chance = 200},
	{name = "gold coin", chance = 30000, maxCount = 112},
	{name = "wood cape", chance = 492},
	{name = "mandrake", chance = 50},
	{name = "small stone", chance = 492, maxCount = 4},
	{name = "small sapphire", chance = 1692, maxCount = 3},
	{name = "shimmering beetles", chance = 492},
	{name = "leaf legs", chance = 719},
	{name = "dark mushroom", chance = 1719},
	{name = "grapes", chance = 30100},
	{id = 2515, chance = 450},
	{id = 2195, chance = 450}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -170, maxDamage = -415},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -160, maxDamage = -235, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="drunk", interval = 2000, chance = 11, length = 4, spread = 2, effect = CONST_ME_SOUND_PURPLE, target = false, duration = 25000},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -100, range = 7, shootEffect = CONST_ANI_LEAFSTAR, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 85, maxDamage = 105, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
