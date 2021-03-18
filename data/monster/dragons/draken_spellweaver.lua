local mType = Game.createMonsterType("Draken Spellweaver")
local monster = {}

monster.description = "a draken spellweaver"
monster.experience = 6700
monster.outfit = {
	lookType = 340,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 618
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "x."
	}
	
monster.health = 5700
monster.maxHealth = 5700
monster.race = "blood"
monster.corpse = 11316
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Kazzzzzzuuum!", yell = false},
	{text = "Fissziss!", yell = false},
	{text = "Zzzzzooom!", yell = false}
}

monster.loot = {
	{id = 2152, chance = 6600, maxCount = 5},
	{id = 2148, chance = 41300, maxCount = 100},
	{id = 2148, chance = 41300, maxCount = 98},
	{id = 2147, chance = 725},
	{id = 8871, chance = 600},
	{id = 2666, chance = 30400},
	{id = 11303, chance = 400},
	{id = 2187, chance = 800},
	{id = 11314, chance = 15525},
	{id = 2123, chance = 20},
	{id = 11304, chance = 300}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -240, maxDamage = -360},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -240, maxDamage = -480, length = 4, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false},																																												  
	{name ="combat", interval = 2000, chance = 15, minDamage = -280, maxDamage = -350, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1800, chance = 40, minDamage = -280, maxDamage = -420, type = COMBAT_FIREDAMAGE, length = 4, spread = 3, ShootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -300, maxDamage = -380, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="soulfire", interval = 2000, chance = 10, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 10, minDamage = -280, maxDamage = -360, shootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 270, maxDamage = 530, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 75}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}
mType:register(monster)
