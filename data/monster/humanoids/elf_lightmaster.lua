local mType = Game.createMonsterType("Elf Lightmaster")
local monster = {}

monster.description = " um elf lightmaster"
monster.experience = 13500
monster.outfit = {
	lookType = 63,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 2979
monster.speed = 370
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
}

monster.loot = {
	{id = 24631, chance = 2500},
	{id = 2656, chance = 1800},
	{id = 8879, chance = 80},
	{id = 7438, chance = 1250},
	{id = 2123, chance = 45},
	{id = 5922, chance = 75},
	{id = 2152, chance = 35000, maxCount = 4},
	{id = 7590, chance = 4500}
}

monster.attacks = {
	{name ="speed", interval = 5400, chance = 25, SpeedChange = -300, Duration = 4000},
	{name ="combat", interval = 1500, chance = 100, minDamage = -350, maxDamage = -420, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_ARROW, target = true},
	{name ="combat", interval = 2420, chance = 30, minDamage = -370, maxDamage = -450, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 1900, chance = 40, minDamage = -300, maxDamage = -400, type = COMBAT_HOLYDAMAGE, range = 7, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2650, chance = 20, minDamage = -600, maxDamage = -900, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 4220, chance = 35, minDamage = 190, maxDamage = 450, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
