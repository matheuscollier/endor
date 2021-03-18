local mType = Game.createMonsterType("Azaka")
local monster = {}

monster.description = "Azaka"
monster.experience = 45000
monster.outfit = {
	lookType = 214,
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
monster.corpse = 4304
monster.speed = 140
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	targetDistance = 2,
	runHealth = 1000,
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
	{text = "Moufasa!", yell = false},
	{text = "Shaka Zoula!", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false}
}

monster.loot = {
	{id = 2231, chance = 50000},
	{id = 2230, chance = 50000},
	{id = 2152, chance = 10000, maxCount = 22},
	{id = 2195, chance = 3000},
	{id = 2323, chance = 6000},
	{id = 2508, chance = 5000},
	{id = 7885, chance = 4000},
	{id = 2323, chance = 6000},
	{id = 8844, chance = 10000, maxCount = 3},
	{id = 2181, chance = 6000},
	{id = 2127, chance = 8000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -120, maxDamage = -160},
	{name ="combat", interval = 1433, chance = 30, minDamage = -110, maxDamage = -180, type = COMBAT_LIFEDRAIN, range = 3, target = false},
	{name ="speed", interval = 1343, chance = 22, SpeedChange = -500, Duration = 5000},
	{name ="drunk", interval = 1666, chance = 18, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="outfit", interval = 2000, chance = 10, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 5000, outfitMonster = "chicken"},
	{name ="combat", interval = 2250, chance = 50, minDamage = -156, maxDamage = -225, type = COMBAT_EARTHDAMAGE, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="poisonfield", interval = 1654, chance = 75, range = 99, ShootEffect = CONST_ANI_POISON, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 3000, chance = 50, minDamage = 50, maxDamage = 160, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 85},
	{type = COMBAT_FIREDAMAGE, percent = 39},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
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
