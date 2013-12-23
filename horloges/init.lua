local horlogeshud = {}

local timer = 0

minetest.register_on_joinplayer(function(player)
	minetest.after(0.5, function ( self )
		local name = player:get_player_name()
		horlogeshud[name] = {}
		horlogeshud[name].id = player:hud_add({
				hud_elem_type = "text",
				name = "Horloges",
				number = 0xFFFFFF,
				position = {x=1, y=1},
				offset = {x=-80, y=-30},
				direction = 0,
				text = ""..os.date("%H")..":"..os.date("%M").."",
				alignment = {x=1, y=1},
		})
	end)
end)

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	if timer < 60 then
		return
	end
	timer=0
	for _, player in pairs(minetest.get_connected_players()) do
		local name = player:get_player_name()
		player:hud_change(horlogeshud[name].id, "text",""..os.date("%H")..":"..os.date("%M").."")
	end
end)

minetest.register_on_leaveplayer(function(player)
	horlogeshud[player:get_player_name()] = nil
end)