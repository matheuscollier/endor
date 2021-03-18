local mType = Game.createMonsterType("Draken Abomination")
local monster = {}

monster.description = "a draken abomination"
monster.experience = 9000
monster.outfit = {
	lookType = 357,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 673
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}

monster.health = 8100
monster.maxHealth = 8100
monster.race = "venom"
monster.corpse = 12623
monster.speed = 350
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
	canPushCreatures = false,
	staticAttackChance = 70,
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
	{name = "Death Blob", chance = 10, interval = 2000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Uhhhg!", yell = false},
	{text = "Hmmnn!", yell = false},
	{text = "Aaag!", yell = false},
	{text = "Gll", yell = false}
}

monster.loot = {
	{id = 2148, chance = 40825, maxCount = 100},
	{id = 2148, chance = 40825, maxCount = 100},
	{id = 2666, chance = 50450, maxCount = 4},
	{id = 2152, chance = 28900, maxCount = 8},
	{id = 12627, chance = 9250},
	{id = 12628, chance = 6400},
	{id = 12629, chance = 1167},
	{id = 12646, chance = 150},
	{id = 12630, chance = 60},
	{id = 12645, chance = 135},
	{id = 11301, chance = 135},
	{id = 8880, chance = 835},
	{id = 2123, chance = 30}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -400, maxDamage = -480},
	{name ="combat", interval = 2000, chance = 20, minDamage = -470, maxDamage = -630, type = COMBAT_FIREDAMAGE, length = 4, spread = 3, ShootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="draken abomination curse", interval = 2000, chance = 10, range = 5, target = false},																						 
	{name ="combat", interval = 2000, chance = 30, minDamage = -450, maxDamage = -620, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="drunk", interval = 2000, chance = 15, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false, duration = 9000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, range = 7, radius = 3, effect = CONST_ME_HITBYPOISON, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 650, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
