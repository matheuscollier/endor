local modalWindowTeleporter = CreatureEvent("modalWindowTeleporter")
function modalWindowTeleporter.onModalWindow(cid, modalWindowId, buttonId)
	cid:unregisterEvent("ModalWindowTeleporter")
	
	if modalWindowId == 1011 then
		if buttonId == 100 then
		
			cid:registerEvent("modalWindowTeleporterCidade")
	 
			local titulo = "Pedra de Transporte - Cidades" -- Esse é o titulo do ModalWindow
			local mensagem = "Para onde você deseja ser transportado?" -- Subtitulo do ModalWindow
		
			local popup = ModalWindow(1012, titulo, mensagem)
		 
			popup:addButton(100, "Confirm")
			popup:addButton(101, "Cancel")
			
			popup:addChoice(1, "Edoras") 
			popup:addChoice(2, "Dol'Guldur")
			popup:addChoice(3, "Bree")
			popup:addChoice(4, "Rivendell")
			popup:addChoice(5, "Mordor")
			popup:addChoice(6, "Moria")
			popup:addChoice(7, "Forodwaith")
			popup:addChoice(8, "Minas Tirith")
			popup:addChoice(9, "Minas Ithil")
			popup:addChoice(10, "Dunedain")
			popup:addChoice(11, "Belfallas")
			popup:addChoice(12, "Ashenport")
			popup:addChoice(13, "Esgaroth")
			popup:addChoice(14, "Argond")
			popup:addChoice(15, "Condado")
			popup:addChoice(16, "Anfallas")
		 
			popup:setDefaultEnterButton(100)
			popup:setDefaultEscapeButton(101)
		 
			popup:sendToPlayer(cid)
		
		elseif buttonId == 101 then
		
			cid:registerEvent("modalWindowTeleporterHunt")
	 
			local titulo = "Pedra de Transporte - Hunts" -- Esse é o titulo do ModalWindow
			local mensagem = "Para onde você deseja ser transportado?" -- Subtitulo do ModalWindow
			
			local popup = ModalWindow(1013, titulo, mensagem)
		 
			popup:addButton(100, "Confirm")
			popup:addButton(101, "Cancel")
			
			popup:addChoice(1, "Trolls") -- Aqui é onde voce vai adicionar as perguntas, basta seguir a sequencia
			popup:addChoice(2, "Dwarfs")
		 
			popup:setDefaultEnterButton(100)
			popup:setDefaultEscapeButton(101)
		 
			popup:sendToPlayer(cid)
		
		end
	end
	
	
end
modalWindowTeleporter:register()
