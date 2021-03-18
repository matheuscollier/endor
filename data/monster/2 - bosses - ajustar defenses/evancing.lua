local mType = Game.createMonsterType("Evancing")
local monster = {}

monster.description = "Evancing"
monster.experience = 900000
monster.outfit = {
	lookType = 12,
	lookHead = 1,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 500
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
	chance = 30
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
	{text = "I AM EVANCING, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
	{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true},
	{text = "THE TRIANGLE OF TERROR WILL RISE!", yell = true}
}

monster.loot = {
	{id = 12649, chance = 8000, unique = 1},
	{id = 12644, chance = 1500, unique = 1},
	{id = 12646, chance = 25000},
	{id = 2123, chance = 12000},
	{id = 12607, chance = 9000, unique = 1},
	{id = 2091, chance = 100000, unique = 1, actionId = 3080}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -1050, maxDamage = -1650},
	{name ="combat", interval = 1800, chance = 35, minDamage = -1250, maxDamage = -1850, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2300, chance = 45, minDamage = -1150, maxDamage = -1750, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2380, chance = 75, minDamage = -1950, maxDamage = -2350, type = COMBAT_ENERGYDAMAGE, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY, target = true},
	{name ="combat", interval = 2800, chance = 55, minDamage = -1350, maxDamage = -2150, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_MORTAREA, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 20, minDamage = 350, maxDamage = 700, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 80, SpeedChange = 808, Duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
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
