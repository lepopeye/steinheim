--[[
Mort V0.3 par Jat
Licence GPLv2 or later for code

Nettoye tout l'inventaire
Nettoye la partie craft
Ajout d'un message dans le ALL quand quelqu'un meurt.
Efface les ce qui y a dans les sacs, sans effacé ces dernier.
--]]
minetest.register_on_dieplayer(function(player)
	local function mort(list)
		local taille=player:get_inventory():get_size(list)	
		player:get_inventory():set_size(list, 0)
		player:get_inventory():set_size(list, taille)
	end
	mort("craft")
	mort("main")
	for i=1,4 do
		if not(player:get_inventory():is_empty('bag'..i..'')) then
			mort("bag"..i.."contents")
--			Impossible de supprimé les sacs a causse d'un bug de bags ou inventory plus dans le Gui (rafraichisement)
--			player:get_inventory():set_size('bag1', 0)
--			player:get_inventory():set_size('bag1', 1)
--			player:get_inventory():remove_item('bag1', "bags:small")
		end
	end
	minetest.chat_send_all(''..player:get_player_name()..' est mort.')
end)
