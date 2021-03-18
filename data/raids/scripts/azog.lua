function onRaid()
	local monster = Game.createMonster("General Azog", Position(1334, 1360, 2))  -- x="1334" y="1360" z="2"
	if monster then
		monster:setReward(true)
	end
end
