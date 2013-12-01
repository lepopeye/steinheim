horlogeshud = {}

local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	if timer < 60 then
		return
	end
	timer=0
        for _, player in pairs(minetest.get_connected_players()) do
                local name = player:get_player_name()
                if not horlogeshud[name] then
                        horlogeshud[name] = {}
                        horlogeshud[name].id = player:hud_add({
                                hud_elem_type = "text",
                                name = "Horloges",
                                number = 0xFFFFFF,
                                position = {x=0, y=1},
                                offset = {x=5, y=-60},
                                direction = 0,
                                text = ""..os.date("%H")..":"..os.date("%M").."",
                                scale = {x=50, y=20},
                                alignment = {x=1, y=1},
                        })
                        horlogeshud[name].minute = os.date("%M")
                        return
                end
                if horlogeshud[name].minute ~= os.date("%M") then
                        player:hud_change(horlogeshud[name].id, "text",""..os.date("%H")..":"..os.date("%M").."")
                        horlogeshud[name].minute = os.date("%M")
                end
        end
end)

minetest.register_on_leaveplayer(function(player)
        horlogeshud[player:get_player_name()] = nil
end)

	