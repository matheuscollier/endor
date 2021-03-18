local mType = Game.createMonsterType("Eddie")
local monster = {}

monster.description = "Eddie"
monster.experience = 150000
monster.outfit = {
	lookType = 90,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 55000
monster.maxHealth = 55000
monster.race = "blood"
monster.corpse = 6025
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 10

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

monster.summons = {
	{name = "Crypt Shambler", chance = 100, interval = 2100},
	{name = "Mummy", chance = 100, interval = 2000},
	{name = "Demon Skeleton", chance = 100, interval = 1850}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The evil that men do lives on!", yell = false},
	{text = "Eddie is gonna get you no matter how far!", yell = false},
	{text = "Show them no fear! Show them no pain!", yell = false},
	{text = "Enter the risen Osiris", yell = false}
}

monster.loot = {
	{id = 2443, chance = 2500},
	{id = 2176, chance = 40000},
	{id = 2539, chance = 1300},
	{id = 8865, chance = 1200},
	{id = 11240, chance = 1200},
	{id = 8853, chance = 8889},
	{id = 2185, chance = 38000},
	{id = 2663, chance = 38000},
	{id = 7885, chance = 15000},
	{id = 7893, chance = 12000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -800},
	{name ="combat", interval = 2750, chance = 35, minDamage = -650, maxDamage = -950, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2320, chance = 65, minDamage = -900, maxDamage = -1200, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2100, chance = 20, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISONARROW, target = false, condition = {type = CONDITION_POISON, totalDamage = 840, interval = 4000}},
	{name ="combat", interval = 1900, chance = 99, minDamage = -450, maxDamage = -850, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="speed", interval = 2350, chance = 20, SpeedChange = -600, Duration = 5000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1500, chance = 100, minDamage = 150, maxDamage = 300, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
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
