local modalWindowTeleporterCidade = CreatureEvent("modalWindowTeleporterCidade")
function modalWindowTeleporterCidade.onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalWindowTeleporterCidade")
	
	local lugar = {
		[1] = { -- edoras
		pos = {x=1066, y=1008, z=5}},
		[2] = { -- dol
		pos = {x=1206, y=753, z=7}},
		[3] = { -- bree
		pos = {x=742, y=537, z=7}},
		[4] = { -- rivendell
		pos = {x=1052, y=541, z=4}},
		[5] = { -- mordor
		pos = {x=1519, y=1236, z=7}},
		[6] = { -- moria
		pos = {x=1018, y=636, z=7}},
		[7] = { -- forod
		pos = {x=709, y=105, z=7}},
		[8] = { -- minas tirith
		pos = {x=1345, y=1371, z=6}},
		[9] = { -- minas ithil
		pos = {x=1679, y=985, z=7}},
		[10] = { -- dunedain
		pos = {x=1591, y=371, z=6}},
		[11] = { -- belfallas
		pos = {x=1187, y=1514, z=7}},
		[12] = { -- ashenport
		pos = {x=334, y=611, z=6}},
		[13] = { -- esg
		pos = {x=1413, y=502, z=7}},
		[14] = { -- argond
		pos = {x=607, y=867, z=7}},
		[15] = { -- condado
		pos = {x=621, y=533, z=7}},
		[16] = { -- anfallas
		pos = {x=982, y=1298, z=7}}
	}
	
	if modalWindowId == 1012 then
		if buttonId == 100 then
			for x = 1,#lugar do
				if choiceId == x then
					local a = lugar[x]
					doSendMagicEffect(getPlayerPosition(cid), 28)
					doTeleportThing(cid, a.pos)
					doSendMagicEffect(getPlayerPosition(cid), CONST_ME_BIGCLOUDS)	
				end
			end	
		end
	end
	
	
end
modalWindowTeleporterCidade:register()
