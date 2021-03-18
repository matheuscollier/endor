local modalWindowPreySelectRZ = CreatureEvent("modalWindowPreySelectRZ")
function modalWindowPreySelectRZ.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelectRZ")
	local monstersprey = {
			[1] = {name = "Retching Horror"}, 
			[2] = {name = "Rohirim"}, 
			[3] = {name = "Rotworm"}, 
			[4] = {name = "Rustheap Golem"}, 
			[5] = {name = "Saurons Possessed Beholder"}, 
			[6] = {name = "Scarab"}, 
			[7] = {name = "Serpent Spawn"}, 
			[8] = {name = "Shade of Akama"}, 
			[9] = {name = "Shock Head"}, 
			[10] = {name = "Sibang"}, 
			[11] = {name = "Sight of Surrender"}, 
			[12] = {name = "Silencer"}, 
			[13] = {name = "Skeleton"}, 
			[14] = {name = "Skeleton Elite Warrior"}, 
			[15] = {name = "Skeleton Miner"}, 
			[16] = {name = "Slime"}, 
			[17] = {name = "Slug"}, 
			[18] = {name = "Smuggler"}, 
			[19] = {name = "Solarian"}, 
			[20] = {name = "Soul Burner"}, 
			[21] = {name = "Reality Reaver"}, 
			[22] = {name = "Spectre"}, 
			[23] = {name = "Spider"}, 
			[24] = {name = "Spirit Of Fire"}, 
			[25] = {name = "Stalker"}, 
			[26] = {name = "Stampor"}, 
			[27] = {name = "Stone Devourer"}, 
			[28] = {name = "Stone Golem"}, 
			[29] = {name = "Stone Rhino"}, 
			[30] = {name = "Succubus"}, 
			[31] = {name = "Swampling"}, 
			[32] = {name = "Swan Maiden"}, 
			[33] = {name = "Swarmer"}, 
			[34] = {name = "Tarantula"}, 
			[35] = {name = "Terminator"}, 
			[36] = {name = "Terror Bird"}, 
			[37] = {name = "Thornback Tortoise"}, 
			[38] = {name = "Tiger"}, 
			[39] = {name = "Tortoise"}, 
			[40] = {name = "Troll"}, 
			[41] = {name = "True Dawnfire Asura"}, 
			[42] = {name = "True Frost Flower Asura"}, 
			[43] = {name = "True Midnight Asura"}, 
			[44] = {name = "Twisted Pooka"}, 
			[45] = {name = "Undead Dragon"}, 
			[46] = {name = "Undead Elite Gladiator"}, 
			[47] = {name = "Uruk-hai"}, 
			[48] = {name = "Uruloki"}, 
			[49] = {name = "Valkyrie"}, 
			[50] = {name = "Vampire"}, 
			[51] = {name = "Vampire Bride"}, 
			[52] = {name = "Vampire Viscount"}, 
			[53] = {name = "Wailing Widow"}, 
			[54] = {name = "War Wolf"}, 
			[55] = {name = "Warlock"}, 
			[56] = {name = "Waspoid"}, 
			[57] = {name = "Water Buffalo"}, 
			[58] = {name = "Weakened Frazzlemaw"}, 
			[59] = {name = "Werewolf"}, 
			[60] = {name = "Wild Warrior"}, 
			[61] = {name = "Winter Wolf"}, 
			[62] = {name = "Witch"}, 
			[63] = {name = "Wolf"}, 
			[64] = {name = "Worm Priestess"}, 
			[65] = {name = "Wyrm"}, 
			[66] = {name = "Wyvern"}, 
			[67] = {name = "Yeti"}
		}
		
	if modalWindowId == 1026 then
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
modalWindowPreySelectRZ:register()
