local mType = Game.createMonsterType("Nymph")
local monster = {}

monster.description = "a nymph"
monster.experience = 850
monster.outfit = {
	lookType = 989,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1485
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

monster.health = 900
monster.maxHealth = 900
monster.race = "blood"
monster.corpse = 29094
monster.speed = 250
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
	{text = "Looking at a nymph can blind you. Be careful, mortal being!", yell = false},
	{text = "Come here, sweetheart! I won't hurt you! *giggle*", yell = false},
	{text = "Are you one of those evil nightmare creatures? Leave this realm alone!", yell = false},
	{text = "I'm just protecting nature's beauty!", yell = false}
}

monster.loot = {
	{name = "boots of haste", chance = 600},
	{name = "emerald bangle", chance = 400},
	{name = "gold coin", chance = 30000, maxCount = 105},
	{name = "strong mana potion", chance = 5000},
	{name = "small amethyst", chance = 5155},
	{name = "small topaz", chance = 1591},
	{name = "wild flowers", chance = 5800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -90, maxDamage = -270},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -85, maxDamage = -135, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -85, maxDamage = -135, range = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_HEARTS, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -85, maxDamage = -135, range = 7, effect = CONST_ME_HEARTS, target = true}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 90, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
