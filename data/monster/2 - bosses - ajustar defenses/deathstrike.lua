local mType = Game.createMonsterType("Deathstrike")
local monster = {}

monster.description = "Deathstrike"
monster.experience = 800000
monster.outfit = {
	lookType = 500,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 18384
monster.speed = 380
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
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
	{text = "Deeestructiooon!", yell = false},
	{text = "Maaahhhrrr!", yell = false},
	{text = "You are nothing!", yell = false},
	{text = "Taaake ... this!", yell = false}
}

monster.loot = {
	{id = 2160, chance = 53000, maxCount = 10},
	{id = 18415, chance = 53000, maxCount = 10},
	{id = 2472, chance = 500, unique = 1},
	{id = 12645, chance = 1200, unique = 1},
	{id = 15414, chance = 150, unique = 1},
	{id = 18451, chance = 150, unique = 1},
	{id = 18465, chance = 150, unique = 1},
	{id = 18406, chance = 1800, unique = 1},
	{id = 18410, chance = 1500, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 1300, chance = 100, skill = 110, attack = 120},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -400, Duration = 2500},
	{name ="combat", interval = 2000, chance = 100, minDamage = -850, maxDamage = -1250, type = COMBAT_FIREDAMAGE, range = 7, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -1500, type = COMBAT_FIREDAMAGE, range = 4, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 750, chance = 10, minDamage = -650, maxDamage = -900, type = COMBAT_ENERGYDAMAGE, range = 4, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 1000, chance = 12, minDamage = -650, maxDamage = -1200, type = COMBAT_ENERGYDAMAGE, range = 4, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 1000, chance = 10, minDamage = -800, maxDamage = -1500, type = COMBAT_PHYSICALDAMAGE, length = 7, spread = 2, effect = CONST_ME_STUN, target = false},
	{name ="combat", interval = 3000, chance = 25, minDamage = -600, maxDamage = -950, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 1000, chance = 15, minDamage = 3000, maxDamage = 5000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
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
