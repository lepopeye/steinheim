--[[
****
More Ores
by Calinou
Modifier par Jat
-Plus clair :p
****
--]]

-- Blocks

minetest.register_node( "moreores:mineral_gold", {
	description = "Gold Ore",
	tiles = { "default_stone.png^moreores_mineral_gold.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "moreores:gold_lump" 1',
})


minetest.register_node( "moreores:mineral_silver", {
	description = "Silver Ore",
	tiles = { "default_stone.png^moreores_mineral_silver.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "moreores:silver_lump" 1',
})

minetest.register_node( "moreores:mineral_copper", {
	description = "Copper Ore",
	tiles = { "default_stone.png^moreores_mineral_copper.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "moreores:copper_lump" 1',
})

minetest.register_node( "moreores:mineral_tin", {
	description = "Tin Ore",
	tiles = { "default_stone.png^moreores_mineral_tin.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "moreores:tin_lump" 1',
})


minetest.register_node( "moreores:mineral_mithril", {
	description = "Mithril Ore",
	tiles = { "default_stone.png^moreores_mineral_mithril.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "moreores:mithril_lump" 1',
})

-- Items

minetest.register_craftitem( "moreores:gold_lump", {
	description = "Gold Lump",
	inventory_image = "moreores_gold_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "moreores:silver_lump", {
	description = "Silver Lump",
	inventory_image = "moreores_silver_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})


minetest.register_craftitem( "moreores:copper_lump", {
	description = "Copper Lump",
	inventory_image = "moreores_copper_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})


minetest.register_craftitem( "moreores:tin_lump", {
	description = "Tin Lump",
	inventory_image = "moreores_tin_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})



minetest.register_craftitem( "moreores:mithril_lump", {
	description = "Mithril Lump",
	inventory_image = "moreores_mithril_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = minetest.item_eat(2),
})