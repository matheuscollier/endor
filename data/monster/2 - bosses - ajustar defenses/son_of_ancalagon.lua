local mType = Game.createMonsterType("Son Of Ancalagon")
local monster = {}

monster.description = "Son Of Ancalagon"
monster.experience = 50000
monster.outfit = {
	lookType = 239,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 6302
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 7000,
	chance = 8
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
	{text = "WIIHHHHHHHH!!!", yell = true}
}

monster.loot = {
	{id = 2672, chance = 20000, maxCount = 10},
	{id = 2655, chance = 3000, unique = 1},
	{id = 2474, chance = 2000, unique = 1},
	{id = 2516, chance = 6000, unique = 1},
	{id = 2187, chance = 6000, unique = 1},
	{id = 2647, chance = 5000, unique = 1},
	{id = 7408, chance = 5000, unique = 1},
	{id = 2127, chance = 5000, unique = 1},
	{id = 2352, chance = 25000},
	{id = 2352, chance = 25000},
	{id = 2173, chance = 8000, unique = 1},
	{id = 2547, chance = 25000, maxCount = 3},
	{id = 2146, chance = 25000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 1900, chance = 100, minDamage = -280, maxDamage = -456, condition = {type = CONDITION_POISON, startDamage = 25, interval = 4000}},
	{name ="combat", interval = 3100, chance = 18, minDamage = -300, maxDamage = -520, length = 6, spread = 3, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2300, chance = 12, minDamage = -400, maxDamage = -520, type = COMBAT_PHYSICALDAMAGE, length = 7, spread = 3, effect = CONST_ME_SOUND_RED, target = false},
	{name ="speed", interval = 11000, chance = 35, SpeedChange = -500, Duration = 10000},
	{name ="drunk", interval = 4000, chance = 2, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_SOUND_RED, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 1000, chance = 30, minDamage = 30, maxDamage = 80, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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
