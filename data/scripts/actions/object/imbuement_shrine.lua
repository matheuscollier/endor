local imbuement = Action()

function imbuement.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	player:sendImbuementPanel(target, true)
	return true
end

imbuement:id(27716, 27717, 27728, 27729, 27830, 27831, 27838, 27850, 27851)
imbuement:register()
