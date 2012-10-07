--[[
Mort V0.2 par Jat
Licence GPLv2 or later for code

Nettoye tout l'inventaire
Nettoye la partie craft
Ajout d'un message dans le ALL quand quelqu'un meurt.
--]]
minetest.register_on_dieplayer(function(player)
	player:get_inventory():set_size('main', 0)
	player:get_inventory():set_size('main', 32)
	player:get_inventory():set_size('craft', 0)
	player:get_inventory():set_size('craft', 9)
	minetest.chat_send_all(''..player:get_player_name()..' est mort.')
end)
