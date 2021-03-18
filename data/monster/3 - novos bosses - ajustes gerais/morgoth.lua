local mType = Game.createMonsterType("Morgoth")
local monster = {}

monster.description = "Morgoth"
monster.experience = 15000
monster.outfit = {
	lookType = 665,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 46500
monster.maxHealth = 46500
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	staticAttackChance = 85,
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
	{text = "Flee as long as you can!", yell = false},
	{text = "Annihilon's might will crush you all!", yell = false},
	{text = "I am coming for you!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1707},
	{name ="combat", interval = 1000, chance = 11, minDamage = 0, maxDamage = -600, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -200, maxDamage = -700, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 3000, chance = 18, minDamage = -50, maxDamage = -255, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -50, maxDamage = -600, type = COMBAT_FIREDAMAGE, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 55,
	armor = 60,
	{name ="combat", interval = 1000, chance = 14, minDamage = 400, maxDamage = 900, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="speed", interval = 1000, chance = 4, SpeedChange = 500, Duration = 7000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 96},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
