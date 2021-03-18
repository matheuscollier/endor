local mType = Game.createMonsterType("Ferumbras")
local monster = {}

monster.description = "Ferumbras"
monster.experience = 100000
monster.outfit = {
	lookType = 229,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 6078
monster.speed = 320
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 6000,
	chance = 12
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
	targetDistance = 3,
	runHealth = 2500,
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
	{name = "demon", chance = 15, interval = 15000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
	{text = "THE POWER IS MINE!", yell = true}
}

monster.loot = {
	{id = 2187, chance = 100000},
	{id = 2514, chance = 15000, unique = 1},
	{id = 2472, chance = 350, unique = 1},
	{id = 2171, chance = 50000},
	{id = 2415, chance = 2000},
	{id = 2421, chance = 2000},
	{id = 5903, chance = 30000},
	{id = 2195, chance = 25000},
	{id = 2662, chance = 8000, unique = 1},
	{id = 8890, chance = 20000},
	{id = 2151, chance = 80000, maxCount = 4},
	{id = 2149, chance = 25000, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -900},
	{name ="combat", interval = 2380, chance = 1000, minDamage = -450, maxDamage = -680, type = COMBAT_FIREDAMAGE, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2700, chance = 20, minDamage = -450, maxDamage = -650, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2150, chance = 24, minDamage = -450, maxDamage = -650, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 1950, chance = 25, minDamage = -600, maxDamage = -720, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2650, chance = 22, minDamage = -600, maxDamage = -850, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="condition", type = CONDITION_FIRE, interval = 2000, chance = 10, minDamage = -400, maxDamage = -500, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2350, chance = 22, minDamage = 450, maxDamage = 750, type = COMBAT_HEALING, target = false},
	{name ="speed", interval = 3000, chance = 30, SpeedChange = 360, Duration = 7000},
	{name ="invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
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
