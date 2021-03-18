local mType = Game.createMonsterType("Reality Reaver")
local monster = {}

monster.description = "um spark of destruction"
monster.experience = 21000
monster.outfit = {
	lookType = 879,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1224
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Otherworld."
	}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "venom"
monster.corpse = 26068
monster.speed = 340
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
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
	canWalkOnEnergy = true,
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
	{text = "Ssshhh!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 100},
	{id = 2152, chance = 50000, maxCount = 2},
	{id = 26201, chance = 2000},
	{id = 26164, chance = 100},
	{id = 26191, chance = 2000},
	{id = 26174, chance = 1000},
	{id = 26163, chance = 700},
	{id = 26167, chance = 1000},
	{id = 26162, chance = 1000},
	{id = 26170, chance = 1000},
	{id = 18418, chance = 900, maxCount = 2},
	{id = 18419, chance = 1300},
	{id = 18413, chance = 1300},
	{id = 18415, chance = 1500},
	{id = 8879, chance = 120},
	{id = 2474, chance = 330},
	{id = 2123, chance = 90},
	{id = 7893, chance = 300},
	{id = 7895, chance = 300},
	{id = 7901, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -560, maxDamage = -968},
	{name ="combat", interval = 2200, chance = 65, minDamage = -750, maxDamage = -920, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 50, minDamage = -450, maxDamage = -560, type = COMBAT_PHYSICALDAMAGE, range = 1, target = false},
	{name ="reality reaver wave", interval = 2000, chance = 20, minDamage = -700, maxDamage = -950, target = false},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 20, minDamage = -400, maxDamage = -800, radius = 5, effect = CONST_ME_STUN, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_POFF},
	{name ="speed", interval = 2000, chance = 10, speedChange = 380, effect = CONST_ME_HITAREA, target = false, duration = 8000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
