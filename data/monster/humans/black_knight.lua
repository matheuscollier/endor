local mType = Game.createMonsterType("Black Knight")
local monster = {}

monster.description = "um black knight"
monster.experience = 1350
monster.outfit = {
	lookType = 131,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 20355
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 3
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
	{text = "MINE!", yell = true},
	{text = "NO PRISONERS!", yell = true},
	{text = "NO MERCY!", yell = true},
	{text = "By Bolg's Blood!", yell = false},
	{text = "You're no match for me!", yell = false}
}

monster.loot = {
	{id = 2476, chance = 250},
	{id = 2489, chance = 1350},
	{id = 2490, chance = 1200},
	{id = 13247, chance = 450},
	{id = 2381, chance = 1500},
	{id = 2387, chance = 1200},
	{id = 2430, chance = 1150},
	{id = 2148, chance = 90000, maxCount = 80},
	{id = 2414, chance = 650},
	{id = 2195, chance = 750},
	{id = 2133, chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -175, maxDamage = -245},
	{name ="combat", interval = 2600, chance = 60, minDamage = -145, maxDamage = -230, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_SPEAR, target = false},
	{name ="combat", interval = 3450, chance = 20, minDamage = -170, maxDamage = -290, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
