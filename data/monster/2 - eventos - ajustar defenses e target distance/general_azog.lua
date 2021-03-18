local mType = Game.createMonsterType("General Azog")
local monster = {}

monster.description = "General Azog"
monster.experience = 500000
monster.outfit = {
	lookType = 4,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 450000
monster.maxHealth = 450000
monster.race = "blood"
monster.corpse = 2972
monster.speed = 430
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
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
	rewardBoss = true,
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
	{text = "Deixarei apenas as ruinas desta cidade para tras!", yell = false},
	{text = "A montanha sera o seu tumulo!", yell = false},
	{text = "FUTCHI MURUK HUMAK! URK SNAESA JEXLOXAX HUMAK BOARC!", yell = false}
}

monster.loot = {
	{id = 3957, chance = 350},
	{id = 7388, chance = 120},
	{id = 2514, chance = 50},
	{id = 2496, chance = 300},
	{id = 3968, chance = 900},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50},
	{id = 2152, chance = 50000, maxCount = 50}
}

monster.attacks = {
	{name ="melee", interval = 1700, chance = 100, minDamage = -470, maxDamage = -700},
	{name ="combat", interval = 1600, chance = 99, minDamage = -350, maxDamage = -680, type = COMBAT_PHYSICALDAMAGE, range = 7, ShootEffect = CONST_ANI_SPEAR, target = true},
	{name ="combat", interval = 1950, chance = 35, minDamage = -590, maxDamage = -1070, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_HITAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 100, minDamage = 80, maxDamage = 110, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 70},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
