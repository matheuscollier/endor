local mType = Game.createMonsterType("Ice Of Eru Iluvatar")
local monster = {}

monster.description = "Ice Of Eru Iluvatar"
monster.experience = 900000
monster.outfit = {
	lookType = 11,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 95000
monster.maxHealth = 95000
monster.race = "undead"
monster.corpse = 8307
monster.speed = 280
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
	{text = "You shall face the wrath of the ocean!", yell = false},
	{text = "No sane human would dare to face me!", yell = false},
	{text = "Your lifeless bodies shall feed my spawns!", yell = false}
}

monster.loot = {
	{id = 2145, chance = 500},
	{id = 7902, chance = 50000},
	{id = 8887, chance = 25000},
	{id = 8878, chance = 50000},
	{id = 7730, chance = 25000},
	{id = 7892, chance = 500000},
	{id = 8907, chance = 12500},
	{id = 11117, chance = 80000},
	{id = 7893, chance = 70000},
	{id = 2396, chance = 50000},
	{id = 2445, chance = 50000},
	{id = 2542, chance = 50000}
}

monster.attacks = {
	{name ="melee", interval = 2900, chance = 100, minDamage = -1650, maxDamage = -2150},
	{name ="speed", interval = 2400, chance = 35, SpeedChange = -450, Duration = 10000},
	{name ="combat", interval = 2750, chance = 60, minDamage = -580, maxDamage = -900, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="combat", interval = 1300, chance = 85, minDamage = -1450, maxDamage = -1950, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 900, chance = 75, minDamage = -520, maxDamage = -850, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE, target = true},
	{name ="combat", interval = 2800, chance = 65, minDamage = -1900, maxDamage = -2300, type = COMBAT_ICEDAMAGE, length = 8, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 4220, chance = 35, minDamage = 190, maxDamage = 450, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
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
