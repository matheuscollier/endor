local mType = Game.createMonsterType("Gaz'Haragoth")
local monster = {}

monster.description = "Gaz'Haragoth"
monster.experience = 1500000
monster.outfit = {
	lookType = 591,
	lookHead = 0,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 500000
monster.maxHealth = 500000
monster.race = "undead"
monster.corpse = 22562
monster.speed = 500
monster.manaCost = 0
monster.maxSummons = 3

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
	{name = "Minion of Gaz'haragoth", chance = 33, interval = 4000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NO ONE WILL ESCAPE ME!", yell = true},
	{text = "I've beaten tougher demons then you even know", yell = true},
	{text = "You puny humans will be my snacks!", yell = true}
}

monster.loot = {
	{id = 8886, chance = 12000, maxCount = 10},
	{id = 8885, chance = 12000, maxCount = 10},
	{id = 8889, chance = 12000, maxCount = 10},
	{id = 22424, chance = 2000, unique = 1},
	{id = 2160, chance = 53000, maxCount = 10},
	{id = 7590, chance = 53000, maxCount = 100},
	{id = 7590, chance = 53000, maxCount = 100},
	{id = 15406, chance = 1800, unique = 1},
	{id = 15408, chance = 2500, unique = 1},
	{id = 15409, chance = 2200, unique = 1},
	{id = 15410, chance = 4000, unique = 1},
	{id = 15413, chance = 300, unique = 1},
	{id = 13498, chance = 100000, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5000},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -1000, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -800, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -4000, maxDamage = -6000, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1600, maxDamage = -3400, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -480, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="gaz'haragoth iceball", interval = 2000, chance = 24, minDamage = -1000, maxDamage = -1000, target = false},
	{name ="gaz'haragoth death", interval = 4000, chance = 6, target = false},
	{name ="gaz'haragoth paralyze", interval = 2000, chance = 12, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 3000, chance = 35, minDamage = 1500, maxDamage = 3000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 4000, chance = 80, SpeedChange = 700, Duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
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
