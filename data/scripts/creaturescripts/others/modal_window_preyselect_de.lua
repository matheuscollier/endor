local modalWindowPreySelectDE = CreatureEvent("modalWindowPreySelectDE")
function modalWindowPreySelectDE.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowPreySelectDE")
	local monstersprey = {
			[1]  = {name = "Dark Faun"}, 
			[2]  = {name = "Dark Monk"}, 
			[3]  = {name = "Dark Torturer"}, 
			[4]  = {name = "Dawnfire Asura"}, 
			[5]  = {name = "Death Blob"}, 
			[6]  = {name = "Deepling Brawler"}, 
			[7]  = {name = "Deepling Master"}, 
			[8]  = {name = "Deepling Warrior"}, 
			[9]  = {name = "Defiler"}, 
			[10] = {name = "Demon"}, 
			[11] = {name = "Demon Outcast"}, 
			[12] = {name = "Demon Skeleton"}, 
			[13] = {name = "Destroyer"}, 
			[14] = {name = "Diabolic Imp"}, 
			[15] = {name = "Draco"}, 
			[16] = {name = "Dragon"}, 
			[17] = {name = "Dragon Hatchling"}, 
			[18] = {name = "Dragon Lord"}, 
			[19] = {name = "Dragon Lord Hatchling"}, 
			[20] = {name = "Dragonling"}, 
			[21] = {name = "Draken Abomination"}, 
			[22] = {name = "Draken Elite"}, 
			[23] = {name = "Draken Spellweaver"}, 
			[24] = {name = "Draken Warmaster"}, 
			[25] = {name = "Dread Intruder"}, 
			[26] = {name = "Dwarf"}, 
			[27] = {name = "Dwarf Geomancer"}, 
			[28] = {name = "Dwarf Guard"}, 
			[29] = {name = "Dwarf Miner"}, 
			[30] = {name = "Dwarf Soldier"}, 
			[31] = {name = "Dworc Fleshhunter"}, 
			[32] = {name = "Dworc Venomsniper"}, 
			[33] = {name = "Dworc Voodoomaster"}, 
			[34] = {name = "Earth Elemental"}, 
			[35] = {name = "Elder Beholder"}, 
			[36] = {name = "Elder Wyrm"}, 
			[37] = {name = "Elephant"}, 
			[38] = {name = "Elf"}, 
			[39] = {name = "Elf Arcanist"}, 
			[40] = {name = "Elf Citizen"}, 
			[41] = {name = "Elf Lightmaster"}, 
			[42] = {name = "Elf Ranger"}, 
			[43] = {name = "Elf Scout"}, 
			[44] = {name = "Elf Soldier"}, 
			[45] = {name = "Energy Elemental"}, 
			[46] = {name = "Enfeebled Silencer"}, 
			[47] = {name = "Enlightened of the Cult"}, 
			[48] = {name = "Enyd"}
		}
		
	if modalWindowId == 1023 then
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
modalWindowPreySelectDE:register()
