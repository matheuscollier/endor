local mType = Game.createMonsterType("Venom Drake")
local monster = {}

monster.description = "um venom drake"
monster.experience = 120000
monster.outfit = {
	lookType = 34,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 2844
monster.speed = 200
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
	{text = "Todos vao morrer!", yell = true}
}

monster.loot = {
	{id = 2506, chance = 300},
	{id = 2469, chance = 500},
	{id = 2492, chance = 500},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 7379, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 7379, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 7379, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -330, maxDamage = -570},
	{name ="combat", interval = 2100, chance = 60, minDamage = -290, maxDamage = -560, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="poisonfield", interval = 1300, chance = 25, length = 7, spread = 4, target = false},
	{name ="combat", interval = 3800, chance = 50, range = 7, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, target = true, condition = {type = CONDITION_POISON, totalDamage = 840, interval = 4000}},
	{name ="speed", interval = 6200, chance = 50, SpeedChange = -400, Duration = 5000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 600, chance = 100, minDamage = 40, maxDamage = 80, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 60},
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
