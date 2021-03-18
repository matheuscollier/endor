local mType = Game.createMonsterType("Vampire Bride")
local monster = {}

monster.description = "a vampire bride"
monster.experience = 1100
monster.outfit = {
	lookType = 312,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 9660
monster.speed = 265
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
	staticAttackChance = 90,
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
	{text = "Kneel before your Mistress!", yell = false},
	{text = "Dead is the new alive.", yell = false},
	{text = "Come, let me kiss you, darling. Oh wait, I meant kill.", yell = false},
	{text = "Enjoy the pain - I know you love it.", yell = false}
}

monster.loot = {
	{id = 2396, chance = 550},
	{id = 2534, chance = 450},
	{id = 9019, chance = 450},
	{id = 5905, chance = 3000},
	{id = 7379, chance = 350},
	{id = 2127, chance = 500},
	{id = 2186, chance = 1800},
	{id = 10602, chance = 1500},
	{id = 2145, chance = 4000},
	{id = 2148, chance = 400000, maxCount = 84},
	{id = 2148, chance = 400000, maxCount = 84},
	{id = 9837, chance = 2000},
	{id = 2144, chance = 500, maxCount = 4},
	{id = 2151, chance = 1200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -64, maxDamage = -168},
	{name ="combat", interval = 2800, chance = 25, minDamage = -40, maxDamage = -110, type = COMBAT_LIFEDRAIN, range = 1, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 3000, chance = 16, minDamage = -100, maxDamage = -160, type = COMBAT_DEATHDAMAGE, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
