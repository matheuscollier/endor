local mType = Game.createMonsterType("Jaul")
local monster = {}

monster.description = "a Jaul"
monster.experience = 950000
monster.outfit = {
	lookType = 444,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 15221
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
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
	{text = "DIE!! KENH!!", yell = false},
	{text = "QJELL AFAR GOU JEY!!", yell = false}
}

monster.loot = {
	{id = 2160, chance = 53000, maxCount = 10},
	{id = 18403, chance = 1500, unique = 1},
	{id = 15407, chance = 350, unique = 1},
	{id = 15644, chance = 1200, unique = 1},
	{id = 2123, chance = 3000, unique = 1},
	{id = 8906, chance = 400, unique = 1},
	{id = 9933, chance = 700, unique = 1},
	{id = 30884, chance = 500, unique = 1}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 200, attack = 200},
	{name ="combat", interval = 3000, chance = 50, minDamage = -900, maxDamage = -1500, type = COMBAT_FIREDAMAGE, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 100, minDamage = -1300, maxDamage = -2150, type = COMBAT_FIREDAMAGE, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="speed", interval = 1000, chance = 20, SpeedChange = -200, Duration = 10000},
	{name ="combat", interval = 1500, chance = 100, minDamage = -1900, maxDamage = -2700, type = COMBAT_EARTHDAMAGE, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="combat", interval = 1500, chance = 25, minDamage = -300, maxDamage = -450, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 30, minDamage = -1200, maxDamage = -1800, type = COMBAT_ENERGYDAMAGE, length = 7, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="speed", interval = 2000, chance = 37, SpeedChange = -400, Duration = 20000}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 5, minDamage = 2000, maxDamage = 3000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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