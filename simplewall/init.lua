--simplewall by turbogus

--siplewall_desert_sand_stone

minetest.register_craft({
	output = 'node "simplewall:desert_sandstone" 1',
	recipe = {
		{'node "default:desert_sand"', 'node "default:desert_sand"' },
		{'node "default:desert_sand"', 'node "default:desert_sand"'},
	}
})

minetest.register_node("simplewall:desert_sandstone", {
	description = "desert sandstone",
	tiles = {"simplewall_desert_sandstone.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_bitume
minetest.register_craft({
	output = 'node "simplewall:bitume" 49',
	recipe = {
		{'node "default:dirt"'},
		{'node "default:dirt"'},
		{'node "default:gravel"'},
	}
})

minetest.register_node("simplewall:bitume", {
	description = "bloc de bitume",
	tiles = {"simplewall_bitume.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_blue
minetest.register_craft({
	output = 'node "simplewall:blue" 20',
	recipe = {
		{'node "dye:blue"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:blue", {
	description = "bloc bleu",
	tiles = {"simplewall_blue.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_green
minetest.register_craft({
	output = 'node "simplewall:green" 20',
	recipe = {
		{'node "dye:green"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:green", {
	description = "bloc vert",
	tiles = {"simplewall_green.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_red
minetest.register_craft({
	output = 'node "simplewall:red" 20',
	recipe = {
		{'node "dye:red"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:red", {
	description = "bloc rouge",
	tiles = {"simplewall_red.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_violet
minetest.register_craft({
	output = 'node "simplewall:violet" 20',
	recipe = {
		{'node "dye:violet"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:violet", {
	description = "bloc violet",
	tiles = {"simplewall_violet.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_white
minetest.register_craft({
	output = 'node "simplewall:white" 20',
	recipe = {
		{'node "dye:white"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:white", {
	description = "bloc blanc",
	tiles = {"simplewall_white.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_yellow
minetest.register_craft({
	output = 'node "simplewall:yellow" 20',
	recipe = {
		{'node "dye:yellow"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:yellow", {
	description = "bloc jaune",
	tiles = {"simplewall_yellow.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--simplewall_orange
minetest.register_craft({
	output = 'node "simplewall:orange" 20',
	recipe = {
		{'node "dye:orange"'},
		{'node "default:sandstone"'},
	}
})

minetest.register_node("simplewall:orange", {
	description = "bloc orange",
	tiles = {"simplewall_orange.png"},
	is_ground_content = true,
	walkable = true,
	pointable = true,
	diggable = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


