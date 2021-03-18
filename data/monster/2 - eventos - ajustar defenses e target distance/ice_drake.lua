local mType = Game.createMonsterType("Ice Drake")
local monster = {}

monster.description = "um ice drake"
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

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 7091
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
	{text = "Vou congelar a cidade!", yell = true}
}

monster.loot = {
	{id = 8878, chance = 700},
	{id = 2498, chance = 1200},
	{id = 2528, chance = 1350},
	{id = 2158, chance = 10000},
	{id = 2198, chance = 2000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2158, chance = 10000},
	{id = 2492, chance = 99999}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -410, maxDamage = -530},
	{name ="combat", interval = 2100, chance = 60, minDamage = -390, maxDamage = -640, type = COMBAT_ICEDAMAGE, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 1300, chance = 25, minDamage = -300, maxDamage = -470, type = COMBAT_ICEDAMAGE, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false},
	{name ="speed", interval = 6200, chance = 50, SpeedChange = -500, Duration = 5000}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 600, chance = 100, minDamage = 40, maxDamage = 70, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 75},
	{type = COMBAT_ENERGYDAMAGE, percent = 90},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 99},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 65}
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
