local mType = Game.createMonsterType("Nightstalker")
local monster = {}

monster.description = ""
monster.experience = 530
monster.outfit = {
	lookType = 320,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 700
monster.maxHealth = 700
monster.race = "undead"
monster.corpse = 9915
monster.speed = 260
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 0,
	chance = 8
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The sunlight is so depressing.", yell = true},
	{text = "Come with me, my child.", yell = true},
	{text = "I've been in the shadow under your bed last night.", yell = true},
	{text = "You never know what hides in the night.", yell = false},
	{text = "I remember your face - and I know where you sleep", yell = false}
}

monster.loot = {
	{id = 2148, chance = 25600, maxCount = 65},
	{id = 2148, chance = 26900, maxCount = 45},
	{id = 2804, chance = 10000},
	{id = 2124, chance = 500},
	{id = 2200, chance = 100},
	{id = 2171, chance = 210},
	{id = 7407, chance = 50},
	{id = 7427, chance = 20}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -80, maxDamage = -160},
	{name ="speed", interval = 3200, chance = 15, SpeedChange = -900, Duration = 2000},
	{name ="combat", interval = 2300, chance = 99, minDamage = -90, maxDamage = -160, type = COMBAT_HOLYDAMAGE, ShootEffect = CONST_ANI_HOLY, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="speed", interval = 2000, chance = 15, speedChange = 240, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_YELLOW_RINGS},
	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "nightstalker"},
	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "werewolf"},
	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "the count"},
	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "grim reaper"},
	{name ="outfit", interval = 5000, chance = 10, target = false, duration = 4000, outfitMonster = "tarantula"},
	{name ="outfit", interval = 5000, chance = 1, target = false, duration = 4000, outfitMonster = "ferumbras"}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -25},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
