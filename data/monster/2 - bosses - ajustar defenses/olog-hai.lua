local mType = Game.createMonsterType("Olog-hai")
local monster = {}

monster.description = "Olog-hai"
monster.experience = 70000
monster.outfit = {
	lookType = 55,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 35000
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 2931
monster.speed = 320
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 8000,
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
	{text = "Vou esmaga-lo!", yell = false},
	{text = "Tente correr inseto!", yell = false},
	{text = "Hahaha, isso eh tudo?!", yell = true}
}

monster.loot = {
	{id = 2149, chance = 5000, maxCount = 3},
	{id = 2496, chance = 800, unique = 1},
	{id = 2528, chance = 4000, unique = 1},
	{id = 3968, chance = 900, unique = 1},
	{id = 2645, chance = 2000, unique = 1},
	{id = 2391, chance = 7800},
	{id = 2393, chance = 2500, unique = 1},
	{id = 2138, chance = 1500, unique = 1},
	{id = 2152, chance = 20000, maxCount = 5},
	{id = 2148, chance = 20000, maxCount = 100},
	{id = 2547, chance = 20000, maxCount = 10},
	{id = 2416, chance = 100000},
	{id = 2387, chance = 40563}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -480},
	{name ="combat", interval = 2900, chance = 99, minDamage = -270, maxDamage = -415, type = COMBAT_PHYSICALDAMAGE, range = 6, ShootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 3700, chance = 33, minDamage = -180, maxDamage = -450, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="speed", interval = 6000, chance = 35, SpeedChange = 300, Duration = 5000},
	{name ="combat", interval = 1000, chance = 100, minDamage = 40, maxDamage = 70, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
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
