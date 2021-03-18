local mType = Game.createMonsterType("Hellforger Cyclops")
local monster = {}

monster.description = "um hellforger cyclops"
monster.experience = 2600
monster.outfit = {
	lookType = 277,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 4006
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 1500,
	FirstUnlock = 100,
	SecondUnlock = 750,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 4100					
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 7740
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
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
	{text = "Forjarei seus ossos!!!", yell = false}
}

monster.loot = {
	{id = 2463, chance = 900},
	{id = 2643, chance = 15000},
	{id = 2671, chance = 2000, maxCount = 3},
	{id = 2666, chance = 5000, maxCount = 3},
	{id = 2459, chance = 1400},
	{id = 2391, chance = 800},
	{id = 2422, chance = 3200},
	{id = 7427, chance = 300},
	{id = 2148, chance = 4000, maxCount = 100},
	{id = 2148, chance = 14000, maxCount = 50},
	{id = 2148, chance = 14000, maxCount = 50},
	{id = 2148, chance = 14000, maxCount = 50},
	{id = 6529, chance = 9000, maxCount = 6},
	{id = 2149, chance = 200},
	{id = 2146, chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -96, maxDamage = -256},
	{name ="combat", interval = 3300, chance = 99, minDamage = -100, maxDamage = -160, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_WHIRLWINDCLUB, target = false},
	{name ="drunk", interval = 2000, chance = 10, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_STUN, target = false, duration = 4000}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
