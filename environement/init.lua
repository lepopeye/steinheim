--Environement by Jat
--Licence GPL
--Pour ce mod modifier les joueur il faut rajouté 3 ligne 
--[[
List environement 1
Item air 10
EndInventoryList
--]]
-- Noyade
minetest.register_abm(	-- fonction permettant d'assigner une action à un bloc
    {nodenames = {"default:water_flowing","default:water_source"},	-- nom du bloc
    interval = 1.0,	-- ???
    chance = 1,	-- ???
    action = function(pos)	-- fonction associée au bloc
		local objs = minetest.env:get_objects_inside_radius(pos, 1)	-- variable d'environnement : quand le joueur est dans le bloc
		for k, obj in pairs(objs) do	-- boucle "for" :
			if obj:is_player() then
				local position = obj:getpos()
				position.y = position.y+1.5
				local nodename = minetest.env:get_node(position).name
				if string.find(nodename, "default:water") then
					if obj:get_inventory():get_stack("environement",1):get_count()>1 then
						obj:get_inventory():remove_item('environement', 'air')
					end
					if obj:get_inventory():get_stack("environement",1):get_count()<=1 then
						obj:set_hp(obj:get_hp()-0.5) -- give 1HP -- augmenter la vie HP du joueur de +1
					end
					minetest.chat_send_player(obj:get_player_name(), obj:get_inventory():get_stack("environement",1):get_count())
				else
					if obj:get_inventory():get_stack("environement",1):get_count()<10 then
						obj:get_inventory():add_item('environement', 'air 1')
					end
				end
			end
		end
    end,
})
minetest.register_abm(	-- fonction permettant d'assigner une action à un bloc
    {nodenames = {"air"},	-- nom du bloc
    interval = 1.0,	-- ???
    chance = 1,	-- ???
    action = function(pos, node, active_object_count, active_object_count_wider)	-- fonction associée au bloc
		local objs = minetest.env:get_objects_inside_radius(pos, 1)	-- variable d'environnement : quand le joueur est dans le bloc
		
		for k, obj in pairs(objs) do	-- boucle "for" :
			if obj:is_player() then
				if obj:get_inventory():get_stack("environement",1):get_count()<10 then
					obj:get_inventory():add_item('environement', 'air 1')
				end
				--minetest.chat_send_player(obj:get_player_name(), obj:get_inventory():get_stack("environement",1):get_count())
			end
		end
    end,
})
