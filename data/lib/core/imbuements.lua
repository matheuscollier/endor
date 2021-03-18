MESSAGEDIALOG_IMBUEMENT_ERROR = 1
MESSAGEDIALOG_IMBUEMENT_ROLL_FAILED = 2
MESSAGEDIALOG_IMBUING_STATION_NOT_FOUND = 3
MESSAGEDIALOG_CLEARING_CHARM_SUCCESS = 10
MESSAGEDIALOG_CLEARING_CHARM_ERROR = 11

-- tables
Imbuements_Weapons = {
	["armor"] = {8890,2486,2500,7898,8878,8871,2655,2476,7884,2487,8865,7899,8883,8884,8888,8882,8881,3968,11356,2492,8867,2494,11301,8879,2466,8880,8891,12643,2472,12607,8877,18404,15406,9776,15407,12642,30883},
	["shield"] = {2515,2516,2528,2519,2537,2536,15453,2517,2534,23546,2539,2520,2514,2542,18410,2522,12644,2523,8907,8906,6433,15413},
	["boots"] = {2195,7886,5462,7457,7892,7891,11303,7893,2645,2641,1118,1117,12646,11240,18406,2646,15410},
	["helmet"] = {10298,2323,10016,2462,2499,2491,3972,2475,2497,2342,5741,2498,2501,2474,7901,23536,2496,2343,2506,10316,9778,2493,12630,11302,12645,18403,24718,2471,15408,2502},
	["helmetmage"] = {2323,10016,7901,9778},
	["bow"] = {7438,8854,8856,8855,15643,5947,5803,8853,8852,15644,25522,22418,13873,8858,8851,22421,18454},
	["wand"] = {2187,2453,7379},
	["rod"] = {2183,2184,7410},
	["scepter"] = {7424,7451,8910,7429},
	["axe"] = {2435,2430,2387,2381,2440,7419,2426,3962,7380,11323,2447,2427,7420,7388,2414,23545,2454,2443,15404,6553,2431,2415,7413,23551,18451,22406,8924,8932,25416,8931,7417,7389,7751,7770,7861,7876,25415,8926,8925},
	["club"] = {2434,2436,7437,7427,2445,7387,2424,2391,7452,11308,2444,2421,2452,7431,23549,15414,22415,7415,7756,7775,7866,7881,7414,7423,25418,7428,7450},
	["sword"] = {2383,2409,2377,7408,8930,2451,2446,7407,7391,7382,2393,18450,13838,2400,2408,2390,11307,12649,23550,18465,22403,6528,7390}
}

local equipitems = {
	["lich shroud"] = {},
	["reap"] = {"axe", "club", "sword"},
	["vampirism"] = {"axe", "club", "sword", "bow", "crossbow", "armor"},
	["cloud fabric"] = {},
	["electrify"] = {"axe", "club", "sword"},
	["swiftness"] = {"boots"},
	["snake skin"] = {},
	["venom"] = {"axe", "club", "sword"},
	["slash"] = {"sword", "helmet"},
	["chop"] = {"axe", "helmet"},
	["bash"] = {"club", "helmet"},
	["dragon hide"] = {},
	["scorch"] = {"axe", "club", "sword"},
	["void"] = {"wand", "rod", "scepter", "bow", "helmet"}, -- Mana
	["quara scale"] = {},
	["frost"] = {"axe", "club", "sword"},
	["blockade"] = {"shield", "helmet"},
	["demon presence"] = {},
	["precision"] = {"bow", "crossbow", "helmet"},
	["strike"] = {},
	["epiphany"] = {"wand", "rod", "helmetmage", "scepter"},
	["featherweight"] = {"backpack"},
}

local enablingStorages = {
	["lich shroud"] = 1,
	["reap"] = 1,
	["vampirism"] = 1,
	["cloud fabric"] = 1,
	["electrify"] = 1,
	["swiftness"] = 1,
	["snake skin"] = 1,
	["venom"] = 1,
	["slash"] = 1,
	["chop"] = 1,
	["bash"] = 1,
	["dragon hide"] = 1,
	["scorch"] = 1,
	["void"] = 1,
	["quara scale"] = 1,
	["frost"] = 1,
	["blockade"] = 1,
	["demon presence"] = 1,
	["precision"] = 1,
	["strike"] = 1,
	["epiphany"] = 1,
	["featherweight"] = -1,
}

function Player.canImbueItem(self, imbuement, item)
	local item_type = ""
	for tp, items in pairs(Imbuements_Weapons) do
		if isInArray(items, item:getId()) then
			item_type = tp
			break
		end
	end
	local imb_type = ""
	for ibt, imb_n in pairs(enablingStorages) do
		if string.find(ibt, imbuement:getName():lower()) then
			imb_type = ibt
			break
		end
	end
	if imb_type == "" then
		print(">> [Imbuement::canImbueItem] Error on search imbuement '".. imbuement:getName() .. "'")
		return false
	end

	local equip = equipitems[imb_type]
	if not equip then
		print(">> [Imbuement::canImbueItem] Error on search Weapons imbuement '" .. imbuement:getName() .. "'")
		return false
	end

	local imbuable = false
	for i, p in pairs(equip) do
		if p:lower() == item_type then
			imbuable = true
			break
		end
	end
	if not imbuable then
		return false
	end
	local stg = enablingStorages[imb_type]
	if not stg then
		print(">> [Imbuement::canImbueItem] Error on search Storage imbuement '" .. imbuement:getName() .. "'")
		return false
	end

	if imbuement:getBase().id == 3 and not self:getGroup():getAccess() and stg > -1 then
		return false
	end

	return true
end

-- Player functions
function Player.sendImbuementResult(self, errorType, message)
	local msg = NetworkMessage()
	msg:addByte(0xED)
	msg:addByte(errorType or 0x01)
	msg:addString(message)
	msg:sendToPlayer(self)
	msg:delete()
	return
end

function Player.closeImbuementWindow(self)
	local msg = NetworkMessage()
	msg:addByte(0xEC)
	msg:sendToPlayer(self)
end

-- Items functions
function Item.getImbuementDuration(self, slot)
	local info = 0
	local binfo = tonumber(self:getCustomAttribute(IMBUEMENT_SLOT + slot))
	if binfo then
		info = bit.rshift(binfo, 8)
	end

	return info
end

function Item.getImbuement(self, slot)
	local binfo = tonumber(self:getCustomAttribute(IMBUEMENT_SLOT + slot))
	if not binfo then
		return false
	end
	local id = bit.band(binfo, 0xFF)
	if id == 0 then
		return false
	end
	return Imbuement(id)
end

function Item.addImbuement(self, slot, id)
	local imbuement = Imbuement(id)
	if not imbuement then return false end
	local duration = imbuement:getBase().duration

	local imbue = bit.bor(bit.lshift(duration, 8), id)
	self:setCustomAttribute(IMBUEMENT_SLOT + slot, imbue)
	return true
end

function Item.cleanImbuement(self, slot)
	self:setCustomAttribute(IMBUEMENT_SLOT + slot, 0)
	return true
end
