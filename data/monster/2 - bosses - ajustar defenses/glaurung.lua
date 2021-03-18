local mType = Game.createMonsterType("Glaurung")
local monster = {}

monster.description = "Glaurung"
monster.experience = 450000
monster.outfit = {
	lookType = 947,
	lookHead = 5,
	lookBody = 5,
	lookLegs = 5,
	lookFeet = 5,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 27854
monster.speed = 310
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
}

monster.loot = {
	{id = 7898, chance = 3000, unique = 1},
	{id = 2522, chance = 750, unique = 1},
	{id = 12645, chance = 2000},
	{id = 5741, chance = 25000},
	{id = 7894, chance = 10000},
	{id = 2520, chance = 6000},
	{id = 2408, chance = 5000},
	{id = 6500, chance = 10000},
	{id = 2152, chance = 100000, maxCount = 100},
	{id = 2152, chance = 100000, maxCount = 100},
	{id = 2547, chance = 40000, maxCount = 50}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -900, maxDamage = -1500},
	{name ="combat", interval = 1850, chance = 30, minDamage = -850, maxDamage = -1400, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2100, chance = 25, minDamage = -500, maxDamage = -720, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2600, chance = 99, minDamage = -800, maxDamage = -1200, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2700, chance = 35, minDamage = -500, maxDamage = -800, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="speed", interval = 5000, chance = 30, SpeedChange = -700, Duration = 4000}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 500, chance = 100, minDamage = 70, maxDamage = 100, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
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
