local mType = Game.createMonsterType("Enlightened of the Cult")
local monster = {}

monster.description = "um enlightened of the cult"
monster.experience = 500
monster.outfit = {
	lookType = 193,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 700
monster.maxHealth = 700
monster.race = "blood"
monster.corpse = 20391
monster.speed = 215
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	staticAttackChance = 50,
	targetDistance = 3,
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
	{name = "ghoul", chance = 17, interval = 2000, max = 2},
	{name = "crypt chambler", chance = 15, interval = 2500, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 50},
	{id = 2152, chance = 9000},
	{id = 6087, chance = 300},
	{id = 10555, chance = 1500},
	{id = 2662, chance = 160},
	{id = 2656, chance = 250},
	{id = 2542, chance = 20},
	{id = 2172, chance = 800},
	{id = 2175, chance = 5000},
	{id = 2146, chance = 500},
	{id = 2167, chance = 1500},
	{id = 2169, chance = 800}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -140},
	{name ="combat", interval = 1600, chance = 18, minDamage = -120, maxDamage = -160, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="energyfield", interval = 1000, chance = 20, range = 8, ShootEffect = CONST_ANI_ENERGY, target = true},
	{name ="combat", interval = 1600, chance = 45, minDamage = -30, maxDamage = -80, type = COMBAT_ENERGYDAMAGE, range = 6, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 30, minDamage = -30, maxDamage = -80, range = 6, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
