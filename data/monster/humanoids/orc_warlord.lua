local mType = Game.createMonsterType("Orc Warlord")
local monster = {}

monster.description = "um orc warlord"
monster.experience = 670
monster.outfit = {
	lookType = 2,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 950
monster.maxHealth = 950
monster.race = "blood"
monster.corpse = 2967
monster.speed = 240
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
	isHealthHidden = false,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Renat Ulderek.", yell = false}
}

monster.loot = {
	{id = 11113, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2666, chance = 30000, maxCount = 3},
	{id = 2419, chance = 9000},
	{id = 2667, chance = 50000},
	{id = 2647, chance = 600},
	{id = 2399, chance = 8666, maxCount = 5},
	{id = 2428, chance = 1500},
	{id = 2478, chance = 2857},
	{id = 2463, chance = 1000},
	{id = 2165, chance = 900},
	{id = 2497, chance = 300},
	{id = 2179, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -90, maxDamage = -230},
	{name ="combat", interval = 2750, chance = 99, minDamage = -48, maxDamage = -120, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_THROWINGSTAR, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
