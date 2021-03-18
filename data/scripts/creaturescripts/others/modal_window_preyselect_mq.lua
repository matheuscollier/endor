local modalWindowPreySelectMQ = CreatureEvent("modalWindowPreySelectMQ")
function modalWindowPreySelectMQ.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelectMQ")
	local monstersprey = {
			[1]  = {name = "Magma Crawler"}, 
			[2]  = {name = "Mancubus"}, 
			[3]  = {name = "Medusa"}, 
			[4]  = {name = "Mephisto"}, 
			[5]  = {name = "Mercury Blob"}, 
			[6]  = {name = "Merlkin"}, 
			[7]  = {name = "Midnight Asura"}, 
			[8]  = {name = "Minotaur"}, 
			[9]  = {name = "Minotaur Amazon"}, 
			[10] = {name = "Minotaur Archer"}, 
			[11] = {name = "Minotaur Guard"}, 
			[12] = {name = "Minotaur Hunter"}, 
			[13] = {name = "Minotaur Mage"}, 
			[14] = {name = "Mooh'Tah Warrior"}, 
			[15] = {name = "Mummy"}, 
			[16] = {name = "Mutated Bat"}, 
			[17] = {name = "Necromancer"}, 
			[18] = {name = "Nightmare"}, 
			[19] = {name = "Nightstalker"}, 
			[20] = {name = "Nomad"}, 
			[21] = {name = "Novice of the Cult"}, 
			[22] = {name = "Nymph"}, 
			[23] = {name = "Orc"}, 
			[24] = {name = "Orc Berserker"}, 
			[25] = {name = "Orc Leader"}, 
			[26] = {name = "Orc Rider"}, 
			[27] = {name = "Orc Shaman"}, 
			[28] = {name = "Orc Spearman"}, 
			[29] = {name = "Orc Warlord"}, 
			[30] = {name = "Orc Warrior"}, 
			[31] = {name = "Oxyurus"}, 
			[32] = {name = "Phantasm"}, 
			[33] = {name = "Pirate Buccaneer"}, 
			[34] = {name = "Pirate Corsair"}, 
			[35] = {name = "Pirate Cutthroat"}, 
			[36] = {name = "Pirate Ghost"}, 
			[37] = {name = "Pirate Marauder"}, 
			[38] = {name = "Pirate Skeleton"}, 
			[39] = {name = "Pixie"}, 
			[40] = {name = "Plaguesmith"}, 
			[41] = {name = "Poison Spider"}, 
			[42] = {name = "Polar Bear"}, 
			[43] = {name = "Pooka"}, 
			[44] = {name = "Power Chakoya"}, 
			[45] = {name = "Priestess"}, 
			[46] = {name = "Quara Constrictor"}, 
			[47] = {name = "Quara Hydromancer"}, 
			[48] = {name = "Quara Mantassin"}, 
			[49] = {name = "Quara Pincher"}, 
			[50] = {name = "Quara Predator"}
		}
		
	if modalWindowId == 1025 then
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
modalWindowPreySelectMQ:register()
