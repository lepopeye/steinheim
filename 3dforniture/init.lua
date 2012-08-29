--[[
 Mod	3D FORNITURE
 Author	Tonyka
--]]

--alias

minetest.register_alias('table', '3dforniture:table')
minetest.register_alias('chair', '3dforniture:chair')

--crafting

minetest.register_craft( {
	output = '3dforniture:table',
	recipe = {
		{ 'default:wood','default:wood', 'default:wood' },
		{ 'default:stick', '', 'default:stick' },
	},
})

minetest.register_craft( {
	output = '3dforniture:chair',
	recipe = {
		{ 'default:stick',''},
		{ 'default:wood','default:wood' },
		{ 'default:stick','default:stick' },
	},
})


--fuel

minetest.register_craft({
	type = 'fuel',
	recipe = '3dforniture:table',
	burntime = 30,
})

minetest.register_craft({
	type = 'fuel',
	recipe = '3dforniture:chair',
	burntime = 30,
})


--nodes

minetest.register_node("3dforniture:table", {
	description = 'Table',
	tiles = {'default_wood.png'},
	drawtype = "nodebox",
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = "facedir",
		node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4, -0.3,0.4,-0.3},
			{0.3,-0.5,-0.4, 0.4,0.4,-0.3},
			{-0.4,-0.5,0.3, -0.3,0.4,0.4},
			{0.3,-0.5,0.3, 0.4,0.4,0.4},
			{-0.5,0.4,-0.5, 0.5,0.5,0.5},
			{-0.4,-0.3,-0.3, -0.3,-0.2,0.3},
			{0.3,-0.2,-0.4, 0.4,-0.1,0.3},
			{-0.3,-0.3,-0.4, 0.4,-0.2,-0.3},
			{-0.3,-0.3,0.3, 0.3,-0.2,0.4},
		},
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2}
})

minetest.register_node("3dforniture:chair", {
	description = 'Chair',
	tiles = {'default_wood.png'},
	drawtype = "nodebox",
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = "facedir",
		node_box = {
		type = "fixed",
		fixed = {
			{-0.3,-0.5,0.2, -0.2,0.5,0.3},
			{0.2,-0.5,0.2, 0.3,0.5,0.3},
			{-0.3,-0.5,-0.3, -0.2,-0.1,-0.2},
			{0.2,-0.5,-0.3, 0.3,-0.1,-0.2},
			{-0.3,-0.1,-0.3, 0.3,0,0.2},
			{-0.2,0.1,0.25, 0.2,0.4,0.26}
		},
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2}
})
