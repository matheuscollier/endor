local mType = Game.createMonsterType("The Necromancer")
local monster = {}

monster.description = "The Necromancer"
monster.experience = 450000
monster.outfit = {
	lookType = 9,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 65000
monster.maxHealth = 65000
monster.race = "blood"
monster.corpse = 20455
monster.speed = 300
monster.manaCost = 0
monster.maxSummons = 5

monster.changeTarget = {
	interval = 4000,
	chance = 50
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 20,
	color = 20
}

monster.summons = {
	{name = "banshee", chance = 25, interval = 3000, max = 3},
	{name = "blightwalker", chance = 15, interval = 2500, max = 1},
	{name = "warlock", chance = 13, interval = 3800, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Nos vemos no Inferno!", yell = false},
	{text = "Se renda ao poder de Sauron!", yell = false}
}

monster.loot = {
	{id = 2138, chance = 18000},
	{id = 2495, chance = 3000, unique = 1},
	{id = 2493, chance = 3000, unique = 1},
	{id = 2494, chance = 3000, unique = 1},
	{id = 8865, chance = 3000, unique = 1},
	{id = 2640, chance = 1500, unique = 1},
	{id = 6433, chance = 50, unique = 1},
	{id = 5930, chance = 20500, maxCount = 10},
	{id = 4863, chance = 30500},
	{id = 5944, chance = 45000},
	{id = 2197, chance = 22000},
	{id = 2197, chance = 20000},
	{id = 5809, chance = 15400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1200,},
	{name ="combat", interval = 2550, chance = 20, minDamage = -800, maxDamage = -1100, type = COMBAT_LIFEDRAIN, range = 1, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 2230, chance = 30, minDamage = -650, maxDamage = -950, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_YELLOW_RINGS, target = true},
	{name ="condition", type = CONDITION_POISON, interval = 4000, chance = 20, minDamage = -840, maxDamage = -1680, range = 7, radius = 7, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="combat", interval = 2860, chance = 20, minDamage = -1300, maxDamage = -1650, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2530, chance = 40, minDamage = -350, maxDamage = -650, type = COMBAT_EARTHDAMAGE, range = 8, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 800, chance = 100, minDamage = 120, maxDamage = 150, type = COMBAT_HEALING, target = false},
	{name ="invisible", interval = 6000, chance = 30, effect = CONST_ME_POFF}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
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