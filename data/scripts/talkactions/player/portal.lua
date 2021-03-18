local modalWindowTeleporter = TalkAction("!teleporte")
function modalWindowTeleporter.onSay(cid, player, words, param)
	cid:registerEvent("modalWindowTeleporter")
 
    local titulo = "Pedra de Transporte" -- Esse é o titulo do ModalWindow
    local mensagem = "Para onde você deseja ser transportado?" -- Subtitulo do ModalWindow
	
	local popup = ModalWindow(1011, titulo, mensagem)
 
    popup:addButton(100, "Cidade")
	popup:addButton(101, "Hunt")
    popup:addButton(102, "Cancel")
 
    popup:setDefaultEnterButton(100)
    popup:setDefaultEscapeButton(102)
 
    popup:sendToPlayer(cid)
end

modalWindowTeleporter:register()