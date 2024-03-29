local mType = Game.createMonsterType("Twisted Pooka")
local monster = {}

monster.description = "a twisted pooka"
monster.experience = 600
monster.outfit = {
	lookType = 978,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1436
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

monster.health = 700
monster.maxHealth = 700
monster.race = "blood"
monster.corpse = 29114
monster.speed = 230
monster.manaCost = 450
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
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
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
	{text = "*sniff sniff* Mhmmm ... mortal flesh.", yell = false},
	{text = "Hoppel-di-hopp!", yell = false},
	{text = "I'll gnaw away your toes!", yell = false}
}

monster.loot = {
	{id = 13298, chance = 20},
	{id = 1294, chance = 200, maxCount = 5},
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2165, chance = 492},
	{id = 2684, chance = 5500, maxCount = 3},
	{id = 2790, chance = 1600},
	{id = 2147, chance = 3400, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -250},
	{name ="combat", interval = 2000, chance = 15, minDamage = -30, maxDamage = -185, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, target = true},
	-- earth damage
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -50, maxDamage = -100, range = 3, effect = CONST_ME_POISONAREA, target = true},
	{name ="drunk", interval = 2000, chance = 11, length = 4, spread = 2, effect = CONST_ME_STUN, target = false, duration = 5000}
}

monster.defenses = {
	defense = 38,
	armor = 38,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 40, maxDamage = 60, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
