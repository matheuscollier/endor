local modalWindowPreySelectFL = CreatureEvent("modalWindowPreySelectFL")
function modalWindowPreySelectFL.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelectFL")
	local monstersprey = {
			[1]  = {name = "Falcon Knight"}, 
			[2]  = {name = "Falcon Paladin"}, 
			[3]  = {name = "Faun"}, 
			[4]  = {name = "Fire Devil"}, 
			[5]  = {name = "Fire Elemental"}, 
			[6]  = {name = "Frazzlemaw"}, 
			[7]  = {name = "Frost Dragon"}, 
			[8]  = {name = "Frost Flower Asura"}, 
			[9]  = {name = "Frost Giant"}, 
			[10] = {name = "Frost Giantess"}, 
			[11] = {name = "Frost Torog"}, 
			[12] = {name = "Fury"}, 
			[13] = {name = "Gargoyle"}, 
			[14] = {name = "Ghastly Dragon"}, 
			[15] = {name = "Ghost"}, 
			[16] = {name = "Ghoul"}, 
			[17] = {name = "Giant Spider"}, 
			[18] = {name = "Glooth Anemone"}, 
			[19] = {name = "Goblin"}, 
			[20] = {name = "Goblin Assassin"}, 
			[21] = {name = "Gravedigger"}, 
			[22] = {name = "Grim Reaper"}, 
			[23] = {name = "Guzzlemaw"}, 
			[24] = {name = "Hand of Cursed Fate"}, 
			[25] = {name = "Haunted Treeling"}, 
			[26] = {name = "Hellfire Fighter"}, 
			[27] = {name = "Hellforger Cyclops"}, 
			[28] = {name = "Hellhound"}, 
			[29] = {name = "Hellspawn"}, 
			[30] = {name = "Hero"}, 
			[31] = {name = "High Elf"}, 
			[32] = {name = "Hunter"}, 
			[33] = {name = "Hydra"}, 
			[34] = {name = "Ice Serpente"},
			[35] = {name = "Ice Witch"}, 
			[36] = {name = "Insectoid Worker"}, 
			[37] = {name = "Ironblight"}, 
			[38] = {name = "Istari Follower"}, 
			[39] = {name = "Juggernaut"}, 
			[40] = {name = "Kongra"}, 
			[41] = {name = "Larva"}, 
			[42] = {name = "Lich"}, 
			[43] = {name = "Lizard Chosen"}, 
			[44] = {name = "Lizard Dragon Priest"}, 
			[45] = {name = "Lizard High Guard"}, 
			[46] = {name = "Lizard Legionnaire"}, 
			[47] = {name = "Lizard Sentinel"}, 
			[48] = {name = "Lizard Snakecharmer"}, 
			[49] = {name = "Lizard Templar"}, 
			[50] = {name = "Lizard Zaogun"}, 
			[51] = {name = "Lost Soul"}
		}
		
	if modalWindowId == 1024 then
		if buttonId == 100 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(0, a.name)
					cid:setPreyState(0, 2)
					cid:setPreyMonsterList(0, "")
					cid:setPreyTimeLeft(0, 7200)
					cid:sendPreyData(0)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		elseif buttonId == 101 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(1, a.name)
					cid:setPreyState(1, 2)
					cid:setPreyMonsterList(1, "")
					cid:setPreyTimeLeft(1, 7200)
					cid:sendPreyData(1)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		elseif buttonId == 102 then
			for x = 1, #monstersprey do
				if choiceId == x then
					local a = monstersprey[x]
					cid:setPreyCurrentMonster(2, a.name)
					cid:setPreyState(2, 2)
					cid:setPreyMonsterList(2, "")
					cid:setPreyTimeLeft(2, 7200)
					cid:sendPreyData(2)
					-- Removing bonus rerolls back
					cid:setPreyBonusRerolls(cid:getPreyBonusRerolls() - 5)
					-- Send resources
					cid:sendResource("prey", cid:getPreyBonusRerolls())
				end
			end
		end
	end
	
end
modalWindowPreySelectFL:register()
