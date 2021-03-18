local mType = Game.createMonsterType("Scatha")
local monster = {}

monster.description = "Scatha"
monster.experience = 120000
monster.outfit = {
	lookType = 248,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 40000
monster.maxHealth = 40000
monster.race = "blood"
monster.corpse = 7091
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 6000,
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
	{name = "frost dragon", chance = 8, interval = 5000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Congelarei suas almas!", yell = true}
}

monster.loot = {
	{id = 13539, chance = 200, unique = 1},
	{id = 2396, chance = 8000},
	{id = 18450, chance = 2000, unique = 1},
	{id = 2640, chance = 400, unique = 1},
	{id = 2123, chance = 200, unique = 1},
	{id = 2445, chance = 3000, unique = 1},
	{id = 7455, chance = 3000, unique = 1},
	{id = 7407, chance = 3000, unique = 1},
	{id = 7898, chance = 400, unique = 1},
	{id = 7895, chance = 400, unique = 1},
	{id = 2536, chance = 1500, unique = 1},
	{id = 2158, chance = 5500, unique = 1},
	{id = 2198, chance = 3000, unique = 1},
	{id = 2146, chance = 25000, maxCount = 3},
	{id = 2547, chance = 25000, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -840, maxDamage = -940},
	{name ="combat", interval = 2300, chance = 99, minDamage = -450, maxDamage = -600, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2150, chance = 25, minDamage = -500, maxDamage = -800, type = COMBAT_ICEDAMAGE, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false},
	{name ="speed", interval = 5200, chance = 50, SpeedChange = -800, Duration = 5000}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 1000, chance = 100, minDamage = 50, maxDamage = 80, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 35},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
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
