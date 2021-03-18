local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid



-- CONFIG --	
local player = Player(cid)
	if msgcontains(msg, 'lugares de caça') then
			selfSay('Você pode utilzar o comando /ir, para explorar os lugares de caça do seu level ou se prefir as cidades iniciais estão repletas de respawns para levels baixos, basta explorar em volta da cidade que você achará os respawns sem maiores problemas.', cid)
			return end
			if msgcontains(msg, 'comandos') then
			selfSay('Você pode utilizar o comando !buyhouse para compra de casas, o comando !sellhouse para vender sua casa, o comando !leavehouse para abandonar sua casa, o comando !uptime para ver o tempo do servidor online, o comando !mortes para ver suas mortes e de outro jogadores, o comando /ir para se teletraportar até hunts e cidades, o comando !stats para obter algumas informações sobre seu personagem, o comando !tradevip para vender vip para outros jogadores, o comando !coins para vender coins para outros jogadores e o comando !redskull para remover seu redskul.', cid)
			return end
			if msgcontains(msg, 'npcs') then
			selfSay('Npc de venda e compra de itens pode ser encontrado em dunedain, edoras, bellfallas e minas, npc de food proximo a saida de edoras ao oeste, npc de blank rune em forod enfrente ao depot e npcs de addons estão espalhados pelo mapa.', cid)
			return end
			if msgcontains(msg, 'sistemas') then
			selfSay('Nosso servidor conta com diversos sistemas exclusivos, para mais informações acesse: www.thethroneserver.com/?view=sistemas', cid)
			return end
			if msgcontains(msg, 'frags') then
			selfSay('Você tem direito a matar injustamente 5 jogadores por dia, você pode ver na skull bar (ao lado do quest log) seus frags, basta passar o mouse encima de cada barrinha, a 1º é os frags diarios, a 2º frags semanais e a 3º frags mensais.', cid)
			return end
			if msgcontains(msg, 'bless') then
			selfSay('você pode comprar sua bless com o padre na igreja de eriador ou em cormaya (apenas vips), para ir até lá fale /ir cormaya e vá até o npc Blessing', cid)
			return end
			if msgcontains(msg, 'aol') then
			selfSay('você pode comprar seu aol em edoras no depot inferior, ou em minas na parte superior ao oeste da cidade.', cid)
			return end
			if msgcontains(msg, 'montaria') then
			selfSay('Para adiquirir uma montaria você pode utilizar a store ou dropar o item necessario de cada monstro e usar no mesmo, você pode conferir tudo em www.thethroneserver.com/?view=montarias.', cid)
			return end
			if msgcontains(msg, 'magias') then
			selfSay('Para saber suas magias acesse: www.thethroneserver.com/?view=vocmagias', cid)
			return end
			if msgcontains(msg, 'promotions') then
			selfSay('Para saber sobre as promotions acesse: www.thethroneserver.com/?view=promotions', cid)
			return end
			if msgcontains(msg, 'itens') then
			selfSay('Para saber sobre os itens acesse: www.thethroneserver.com/?view=itens', cid)
			return end
			if msgcontains(msg, 'criaturas') then
			selfSay('Para saber sobe as criaturas acesse: www.thethroneserver.com/?view=criaturas', cid)
			return end
			if msgcontains(msg, 'stamina') then
			selfSay('Quando o personagem está online, fazendo qualquer coisa, a stamina sobe 1 minuto a cada 6 minutos, tanto na normal quanto na bônus. Quando o personagem está offline sobe 1 minuto a cada 3 minutos a stamina normal já a bonus (verde) sobe 1 minuto a cada 10 minutos.', cid)
			return end
			if msgcontains(msg, 'trainer') then
			selfSay('Os treinadores ficam localizados nas cidades de dunedain e minas, bem como na guildhouse, você só pode entrar na sala caso seja level 50+, também temos os trainer offline na cama das casas, mas atenção apenas vips podem usar o recurso de trainer offline', cid)
			return end
			
	end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())