local loginEvents = CreatureEvent("LoginEvents")
function loginEvents.onLogin(player)

	local events = {
		--Others
		"AdvanceSave",
		"BestiaryOnKill",
		"BossParticipation",
		"DropLoot",
		"PlayerDeath",
		"PreyLootBonusKill",
		"RookgaardAdvance",
		"FamiliarLogin",
		"AdvanceFamiliar",
		"taskSystem",
		"autolootkill"
	}
	
	local storagesQuests = {
	5010, 5020, 5030, 5040, 5050, 5060, 5070, 5080, 1114, 87580, 1036, 1096, 1087, 1111, 1112, 1113, 1115, 1048, 1116, 1039, 1109, 1086, 1049, 1118, 1117,
	1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145,
	1049, 1050, 1038, 1065, 1044, 1004, 1067, 1047, 1027, 1022, 1040, 1010, 1031, 1030, 1005, 1066, 1061, 1088, 1069, 1045, 1089, 1020, 1093, 1026, 1077, 1081, 
	1095, 1035, 1072, 1075, 1033, 1070, 1006, 1062, 1076, 1034, 1017, 1064, 1041, 1079, 1002, 1082, 1092, 1029, 1032, 1021, 1018, 1037, 1105, 1083, 1099, 1046, 
	1000, 1098, 1019, 1051, 1014, 1012, 1043, 1094, 1084, 1001, 1042, 1106, 1078, 1008, 1104, 1013, 1090, 1011, 1052, 1080, 1101, 1010, 1003, 1028, 1007, 1073, 
	1074, 1102, 1071, 1063, 1097, 1053, 1068, 1091, 1085, 1009, 1023, 1024, 1025, 1103, 50084, 5000, 587423, 506050, 506051, 506052, 800000
}

local storagesRingofSauron = {
	587426, 587427, 587428, 587429, 587430, 587431, 587432, 587433, 587434, 506034
}


local storageSoma = 100000

	for _, storage in ipairs(storagesQuests) do
		if player:getStorageValue(storage) == -1 then
			player:setStorageValue(storage, 0)
		end
	end

	local x = 0
	for _, storage in ipairs(storagesQuests) do
		if player:getStorageValue(storage) == 1 then
			x = x + 1
		end
	end
	
	for _, storage in ipairs(storagesRingofSauron) do
		if player:getStorageValue(storage) == 1 then
			x = x + 1
		end
	end

	player:setStorageValue(storageSoma, x)

	local playerId = player:getGuid()
	db.query("UPDATE `players` SET `quests_feitas` = " .. x .. " WHERE `id` = " .. playerId)
	
	for _, task in pairs(task_monsters) do
		if player:getStorageValue(task.storage) == -1 then
			player:setStorageValue(task.storage, 0)
		end
	end
	
	local playerId = player:getGuid()
	db.query("UPDATE `players` SET `task_points` = " .. player:getStorageValue(task_points) .. " WHERE `id` = " .. playerId)

	for i = 1, #events do
		player:registerEvent(events[i])
	end
	
	return true
end
loginEvents:register()
