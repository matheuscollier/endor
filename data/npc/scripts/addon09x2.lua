local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
local talk_state = 0

local nome = 'summoner'
local looktype = 133
local looktypef = 141
local addon = 2
local ordem = 'primeiro'

if addon == 2 then
	ordem = 'segundo'
end

function onThingMove(creature, thing, oldpos, oldstackpos)

end

function onCreatureAppear(creature)

end

function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Adeus.')
          focus = 0
          talk_start = 0
  	end
end

function onCreatureTurn(creature)

end

function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceTo(cid) < 3 then
 		selfSay('Voce quer receber o '..ordem..' addon para a roupa de '..nome..'?')
 		focus = cid
 		talk_start = os.clock()
	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceTo(cid) < 3 then
  		selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Estou ocupado.')
		talk_state = 0
		
  	elseif focus == cid then
		
		if getPlayerSex(focus,true) == 0 then
			looktype = looktypef
		end
		
		if msgcontains(msg, 'yes') or msgcontains(msg, 'sim') then
			if getPlayerSex(focus,true) > 1 then
				selfSay('Nao tenho nada para voce')
				focus = 0
				talk_start = 0
			else
			doPlayerAddOutfit(focus, looktype, addon)
				selfSay('Ficou lindo!')
			focus = 0
			end
 		end
		
	elseif msgcontains(msg, 'bye') and getDistanceTo(cid) < 3 then
  		selfSay('Ate mais, ' .. getCreatureName(cid) .. '!')
  		focus = 0
  		talk_start = 0
  	end
end

function onCreatureChangeOutfit(creature)

end


function onThink()

 	if (os.clock() - talk_start) > 15 then
 		if focus > 0 then
 			selfSay('Proximo...')
		end
 		
		focus = 0
	end

	if focus > 0 then
		if getDistanceTo(focus) > 3 then
			selfSay('Ate mais ' .. getCreatureName(focus) .. '.')
			focus = 0
			item = 0
			talk_start = 0
		end
 	end


	if focus > 0 then 
		lookAtPlayer(focus)
	end
end
