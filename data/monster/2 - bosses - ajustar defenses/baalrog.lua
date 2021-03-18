local mType = Game.createMonsterType("Baalrog")
local monster = {}

monster.description = "Baalrog"
monster.experience = 450000
monster.outfit = {
	lookType = 243,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 65000
monster.maxHealth = 65000
monster.race = "fire"
monster.corpse = 6324
monster.speed = 350
monster.manaCost = 0
monster.maxSummons = 5

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	{name = "spirit of fire", chance = 17, interval = 2000, max = 1},
	{name = "hellfire fighter", chance = 15, interval = 2500, max = 1},
	{name = "fire elemental", chance = 35, interval = 2000, max = 3}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 8886, chance = 300, unique = 1},
	{id = 9933, chance = 250, unique = 1},
	{id = 18448, chance = 450, unique = 1},
	{id = 8867, chance = 450, unique = 1},
	{id = 2495, chance = 600, unique = 1},
	{id = 2421, chance = 450, unique = 1},
	{id = 2539, chance = 500, unique = 1},
	{id = 2160, chance = 8000, maxCount = 6},
	{id = 2156, chance = 25000},
	{id = 2138, chance = 12000},
	{id = 2353, chance = 12000},
	{id = 7899, chance = 12000},
	{id = 7891, chance = 12000},
	{id = 7894, chance = 12000},
	{id = 6550, chance = 45000}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -800, maxDamage = -1600},
	{name ="firefield", interval = 3300, chance = 55, range = 7, ShootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2200, chance = 35, minDamage = -500, maxDamage = -850, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2500, chance = 99, minDamage = -250, maxDamage = -300, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 4100, chance = 23, minDamage = -1200, maxDamage = -2000, type = COMBAT_FIREDAMAGE, range = 7, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 1800, chance = 15, minDamage = -1600, maxDamage = -2600, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 3200, chance = 38, minDamage = 500, maxDamage = 900, type = COMBAT_HEALING, effect = CONST_ME_FIREWORK_RED, target = false},
	{name ="combat", interval = 900, chance = 100, minDamage = 100, maxDamage = 200, type = COMBAT_HEALING, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
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

