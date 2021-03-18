local mType = Game.createMonsterType("World Devourer")
local monster = {}

monster.description = "a world devourer"
monster.experience = 660000
monster.outfit = {
	lookType = 875,
	lookHead = 82,
	lookBody = 79,
	lookLegs = 120,
	lookFeet = 94,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 26220
monster.speed = 525
monster.manaCost = 200
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
	chance = 10
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
	{name = "Breach Brood", chance = 15, interval = 3000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I AM DEVOURER!", yell = true}
}

monster.loot = {
	{id = 2086, chance = 1000000, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -780, maxDamage = -1150},
	{name ="combat", interval = 1500, chance = 7, minDamage = -200, maxDamage = -300, type = COMBAT_MANADRAIN, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 1800, chance = 10, minDamage = -1650, maxDamage = -2150, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 1000, chance = 9, range = 7, type = COMBAT_ENERGYDAMAGE, ShootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -1650, maxDamage = -2300, range = 1, type = COMBAT_PHYSICALDAMAGE, target = false},
	{name ="combat", interval = 2000, chance = 8, minDamage = -1050, maxDamage = -1850, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 12, minDamage = -245, maxDamage = -490, type = COMBAT_MANADRAIN, effect = CONST_ME_YELLOW_RINGS, target = false},
	{name ="drunk", interval = 2000, chance = 15, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 1000, chance = 20, minDamage = -780, maxDamage = -1130, type = COMBAT_LIFEDRAIN, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -820, maxDamage = -1270, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -690, maxDamage = -900, type = COMBAT_DEATHDAMAGE, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 1000, chance = 10, minDamage = -500, maxDamage = -700, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="speed", interval = 1000, chance = 12, SpeedChange = -1900, Duration = 60000},
	{name ="combat", interval = 1000, chance = 34, minDamage = -900, maxDamage = -1250, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="anomaly break", interval = 2000, chance = 40, target = false},
	{name ="devourer summon", interval = 2000, chance = 25, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 50
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 75},
	{type = COMBAT_ENERGYDAMAGE, percent = 75},
	{type = COMBAT_EARTHDAMAGE, percent = 75},
	{type = COMBAT_FIREDAMAGE, percent = 75},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 75},
	{type = COMBAT_HOLYDAMAGE , percent = 75},
	{type = COMBAT_DEATHDAMAGE , percent = 75}
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
