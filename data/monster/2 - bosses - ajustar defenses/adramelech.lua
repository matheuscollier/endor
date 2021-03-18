local mType = Game.createMonsterType("Adramelech")
local monster = {}

monster.description = "Adramelech"
monster.experience = 150000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 123,
	lookLegs = 97,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 300
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
	{text = "COME HERE AND DIE!", yell = false},
	{text = "FLAWLESS VICTORY!", yell = false}
}

monster.loot = {
	{id = 2195, chance = 25000},
	{id = 5741, chance = 25000},
	{id = 18449, chance = 5000, unique = 1},
	{id = 2472, chance = 250, unique = 1},
	{id = 2514, chance = 2000, unique = 1},
	{id = 2408, chance = 200, unique = 1},
	{id = 2493, chance = 5000},
	{id = 2522, chance = 300, unique = 1},
	{id = 2393, chance = 50000},
	{id = 2160, chance = 50000, maxCount = 2},
	{id = 2160, chance = 10000, maxCount = 2},
	{id = 6300, chance = 20000},
	{id = 5943, chance = 15000}
}

monster.attacks = {
	{name ="melee", interval = 1700, chance = 100, minDamage = -600, maxDamage = -1000},
	{name ="combat", interval = 2324, chance = 99, minDamage = -700, maxDamage = -1200, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2211, chance = 20, minDamage = -850, maxDamage = -1200, type = COMBAT_PHYSICALDAMAGE, range = 7, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 4122, chance = 28, minDamage = -600, maxDamage = -900, type = COMBAT_PHYSICALDAMAGE, range = 7, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 3850, chance = 29, minDamage = -650, maxDamage = -850, type = COMBAT_ENERGYDAMAGE, range = 7, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 100, minDamage = 150, maxDamage = 260, type = COMBAT_HEALING, target = false},
	{name ="speed", interval = 7000, chance = 50, SpeedChange = 200, Duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
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
