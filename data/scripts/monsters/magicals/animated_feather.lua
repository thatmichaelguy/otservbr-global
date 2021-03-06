local mType = Game.createMonsterType("Animated Feather")
local monster = {}

monster.description = "an animated feather"
monster.experience = 9860
monster.outfit = {
	lookType = 1058,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 33325
monster.speed = 420
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "Small Sapphire", chance = 8700, maxCount = 5},
	{id = "Platinum Coin", chance = 87000, maxCount = 50},
	{id = 33317, chance = 500, maxCount = 10},
	{id = "Energy Ring", chance = 8700},
	{id = 7441, chance = 4000},
	{id = "Shard", chance = 250, maxCount = 3},
	{id = "Glacier Mask", chance = 250},
	{id = "Hailstorm Rod", chance = 250},
	{id = "Life Crystal", chance = 8700},
	{id = "Great Mana Potion", chance = 900, maxCount = 6},
	{id = "Golden Mug", chance = 500},
	{id = "Glowing Rune", chance = 500, maxCount = 10},
	{id = "Energy Ring", chance = 8700},
	{id = "Quill", chance = 250},
	{id = "Small Diamond", chance = 500, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1000, chance = 15, minDamage = -100, maxDamage = -200, type = COMBAT_ICEDAMAGE, range = 7, shootEffect = CONST_ANI_ICE, target = false},
	{name ="combat", interval = 1000, chance = 10, minDamage = -200, maxDamage = -780, type = COMBAT_ICEDAMAGE, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 10, minDamage = -200, maxDamage = -275, type = COMBAT_ICEDAMAGE, length = 3, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 12, minDamage = -230, maxDamage = -680, type = COMBAT_ICEDAMAGE, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 79
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -18},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
