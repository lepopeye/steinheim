-- Healing Node

minetest.register_node("bobblocks:health_off", {
	description = "Health Pack 1",
	tiles = {"bobblocks_health_off.png"},
	inventory_image = minetest.inventorycube("bobblocks_health_off.png"),
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	is_ground_content = true,
	walkable = false,
	climbable = false,
	on_punch = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "bobblocks:health_on"})
	end,
})

minetest.register_node("bobblocks:health_on", {
	description = "Health Pack 1",
	tiles = {"bobblocks_health_on.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	light_source = LIGHT_MAX-0,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	is_ground_content = true,
	walkable = false,
    climbable = false,
	on_punch = function(pos, node, puncher)
		minetest.env:add_node(pos, {name = "bobblocks:health_off"})
	end,	
    drop = "bobblocks:health_off",
})


minetest.register_abm(
	{nodenames = {"bobblocks:health_on"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
			minetest.sound_play("bobblocks_health",{pos = pos, gain = 1.0, max_hear_distance = 32,})
			obj:set_hp(obj:get_hp()+10)     -- give 10HP
			minetest.env:remove_node(pos)  -- remove the node after use
		end
    end,
     
})

--- Health

minetest.register_craft({
	output = 'NodeItem "bobblocks:health_off" 1',
	recipe = {
		{'node "default:dirt" 1', 'node "default:paper" 1', 'node "default:apple" 2'},
	},
})

