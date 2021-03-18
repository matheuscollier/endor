local mType = Game.createMonsterType("Ancalagon")
local monster = {}

monster.description = "Ancalagon"
monster.experience = 60000
monster.outfit = {
	lookType = 928,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "undead"
monster.corpse = 6306
monster.speed = 310
monster.manaCost = 0
monster.maxSummons = 3

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

monster.summons = {
	{name = "dragon lord", chance = 15, interval = 1000},
	{name = "dragon", chance = 15, interval = 1000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 7898, chance = 2000, unique = 1},
	{id = 2646, chance = 300, unique = 1},
	{id = 5741, chance = 6000},
	{id = 7894, chance = 4000},
	{id = 2520, chance = 2500, unique = 1},
	{id = 2408, chance = 800, unique = 1},
	{id = 6500, chance = 10000},
	{id = 2152, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2547, chance = 40000, maxCount = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -640},
	{name ="combat", interval = 1850, chance = 30, minDamage = -400, maxDamage = -650, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2600, chance = 99, minDamage = -400, maxDamage = -700, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2700, chance = 35, minDamage = -300, maxDamage = -600, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="speed", interval = 5000, chance = 30, SpeedChange = -700, Duration = 4000}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 500, chance = 100, minDamage = 70, maxDamage = 100, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
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
