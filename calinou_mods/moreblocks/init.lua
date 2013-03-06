print("[moreblocks] loaded.")

--[[
****
More Blocks
by Calinou
Licensed under the zlib/libpng license for code and CC BY-SA 3.0 Unported for textures, see LICENSE.txt for info.
****
--]]

-- Aliases (some of them are about the default mod, some about moreblocks)

-- Additional default aliases

minetest.register_alias("woodpick", "default:pick_wood")
minetest.register_alias("woodenpick", "default:pick_wood")
minetest.register_alias("stonepick", "default:pick_stone")
minetest.register_alias("steelpick", "default:pick_steel")
minetest.register_alias("ironpick", "default:pick_steel")
minetest.register_alias("mesepick", "default:pick_mese")

minetest.register_alias("woodaxe", "default:axe_wood")
minetest.register_alias("woodenaxe", "default:axe_wood")
minetest.register_alias("stoneaxe", "default:axe_stone")
minetest.register_alias("steelaxe", "default:axe_steel")
minetest.register_alias("ironaxe", "default:axe_steel")

minetest.register_alias("woodshovel", "default:shovel_wood")
minetest.register_alias("woodenshovel", "default:shovel_wood")
minetest.register_alias("stoneshovel", "default:shovel_stone")
minetest.register_alias("steelshovel", "default:shovel_steel")
minetest.register_alias("ironshovel", "default:shovel_steel")

minetest.register_alias("woodsword", "default:sword_wood")
minetest.register_alias("woodensword", "default:sword_wood")
minetest.register_alias("stonesword", "default:sword_stone")
minetest.register_alias("steelsword", "default:sword_steel")
minetest.register_alias("ironsword", "default:sword_steel")

minetest.register_alias("grass", "default:dirt_with_grass")
minetest.register_alias("grassblock", "default:dirt_with_grass")
minetest.register_alias("grass_block", "default:dirt_with_grass")

minetest.register_alias("grassfootsteps", "default:dirt_with_grass_footsteps")
minetest.register_alias("grass_footsteps", "default:dirt_with_grass_footsteps")

minetest.register_alias("stick", "default:stick")
minetest.register_alias("sign", "default:sign_wall")
minetest.register_alias("fence", "default:fence_wood")
minetest.register_alias("coal", "default:coal_lump")
minetest.register_alias("iron", "default:iron_lump")
minetest.register_alias("clay", "default:clay_lump")
minetest.register_alias("steel", "default:steel_ingot")
minetest.register_alias("steel_block", "default:steelblock")

-- More Blocks aliases

minetest.register_alias("stonebrick", "moreblocks:stonebrick")
minetest.register_alias("stonebricks", "moreblocks:stonebrick")
minetest.register_alias("stone_brick", "moreblocks:stonebrick")
minetest.register_alias("stone_bricks", "moreblocks:stonebrick")
minetest.register_alias("stonesquare", "moreblocks:stonesquare")
minetest.register_alias("stonesquares", "moreblocks:stonesquare")
minetest.register_alias("splitstonesquare", "moreblocks:splitstonesquare")
minetest.register_alias("splitstonesquares", "moreblocks:splitstonesquare")
minetest.register_alias("stone_square", "moreblocks:stonesquare")
minetest.register_alias("stone_squares", "moreblocks:stonesquare")
minetest.register_alias("split_stone_square", "moreblocks:splitstonesquare")
minetest.register_alias("split_stone_squares", "moreblocks:splitstonesquare")
minetest.register_alias("split_stonesquare", "moreblocks:splitstonesquare")
minetest.register_alias("split_stonesquares", "moreblocks:splitstonesquare")
minetest.register_alias("coalstone", "moreblocks:coalstone")
minetest.register_alias("ironstone", "moreblocks:ironstone")
minetest.register_alias("coalglass", "moreblocks:coalglass")
minetest.register_alias("ironglass", "moreblocks:ironglass")
minetest.register_alias("glowglass", "moreblocks:glowglass")
minetest.register_alias("superglowglass", "moreblocks:superglowglass")
minetest.register_alias("plankstone", "moreblocks:plankstone")
minetest.register_alias("cactusbrick", "moreblocks:cactusbrick")
minetest.register_alias("cactuschecker", "moreblocks:cactuschecker")
minetest.register_alias("coalchecker", "moreblocks:coalchecker")
minetest.register_alias("ironchecker", "moreblocks:ironchecker")
minetest.register_alias("woodtile", "moreblocks:woodtile")
minetest.register_alias("woodentile", "moreblocks:woodtile")
minetest.register_alias("wood_tile", "moreblocks:woodtile")
minetest.register_alias("wooden_tile", "moreblocks:woodtile")

-- Redefinitions of some default crafting recipes

minetest.register_craft({
	output = "default:sign_wall 4",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "default:ladder 3",
	recipe = {
		{"default:stick", "", "default:stick"},
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", "default:stick"},
	}
})

minetest.register_craft({
	output = "default:paper 3",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	}
})

minetest.register_craft({
	output = "default:rail 16",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "default:axe_wood",
	recipe = {
		{"default:wood", "default:wood"},
		{"default:stick", "default:wood	"},
		{"default:stick", ""},
	}
})

minetest.register_craft({
	output = "default:axe_stone",
	recipe = {
		{"default:cobble", "default:cobble"},
		{"default:stick", "default:cobble"},
		{"default:stick", ""},
	}
})

minetest.register_craft({
	output = "default:axe_steel",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:stick", "default:steel_ingot"},
		{"default:stick", ""},
	}
})

-- Tool repair buff (15% bonus instead of 2%)

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.15,
})

-- Redefinitions of some default nodes

minetest.register_node(":default:ladder", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"default_ladder.png"},
	inventory_image = "default_ladder.png",
	wield_image = "default_ladder.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node(":default:sapling", {
	description = "Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_defaults(),
})

minetest.register_node(":default:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_dry_shrub.png"},
	inventory_image = "default_dry_shrub.png",
	wield_image = "default_dry_shrub.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy=3,flammable=3,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-1/3, -1/2, -1/3, 1/3, 1/6, 1/3},
	},
})

minetest.register_node(":default:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"default_papyrus.png"},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node(":default:fence_wood", {
	description = "Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_wood.png"},
	inventory_image = "default_fence.png",
	wield_image = "default_fence.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})

-- Crafting

minetest.register_craft({
	output = "default:stick 1",
	recipe = {
		{"default:dry_shrub"},
	}
})

minetest.register_craft({
	output = "default:dirt_with_grass 1",
	recipe = {
		{"default:junglegrass"},
		{"default:dirt"},
	}
})

minetest.register_craft({
	output = "default:dirt_with_grass 1",
	recipe = {
		{"default:mese"},
		{"default:dirt"},
	}
})

minetest.register_craft({
	output = "default:mossycobble 1",
	recipe = {
		{"default:junglegrass"},
		{"default:cobble"},
	}
})

minetest.register_craft({
	output = "default:mossycobble 1",
	recipe = {
		{"default:mese"},
		{"default:cobble"},
	}
})

minetest.register_craft({
	output = "moreblocks:junglewood 4",
	recipe = {
		{"default:jungletree"},
	}
})

minetest.register_craft({
	output = "moreblocks:woodtile 9",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
	}
})

minetest.register_craft({
	output = "moreblocks:junglestick 4",
	recipe = {
		{"moreblocks:junglewood"},
	}
})

minetest.register_craft({
	output = "moreblocks:fence_junglewood 2",
	recipe = {
		{"moreblocks:junglestick", "moreblocks:junglestick", "moreblocks:junglestick"},
		{"moreblocks:junglestick", "moreblocks:junglestick", "moreblocks:junglestick"},
	}
})

minetest.register_craft({
	output = "moreblocks:stonebrick 4",
	recipe = {
		{"default:stone", "default:stone"},
		{"default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:circlestonebrick 8",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:allfacestree 8",
	recipe = {
		{"default:tree", "default:tree", "default:tree"},
		{"default:tree", "", "default:tree"},
		{"default:tree", "default:tree", "default:tree"},
	}
})

minetest.register_craft({
	output = "moreblocks:sweeper 3",
	recipe = {
		{"default:junglegrass"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "moreblocks:stonesquare 4",
	recipe = {
		{"default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "moreblocks:splitstonesquare 1",
	recipe = {
		{"moreblocks:stonesquare"},
	}
})

minetest.register_craft({
	output = "moreblocks:emptybookshelf 1",
	recipe = {
		{"moreblocks:sweeper"},
		{"default:bookshelf"},
	}
})

minetest.register_craft({
	output = "moreblocks:ironstonebrick 1",
	recipe = {
		{"default:steel_ingot"},
		{"moreblocks:stonebrick"},
	}
})

minetest.register_craft({
	output = "default:wood 4",
	recipe = {
		{"moreblocks:horizontaltree"},
	}
})

minetest.register_craft({
	output = "moreblocks:junglewood 4",
	recipe = {
		{"moreblocks:horizontaljungletree"},
	}
})

minetest.register_craft({
	output = "moreblocks:plankstone 4",
	recipe = {
		{"default:stone", "default:wood"},
		{"default:wood", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:plankstone 4",
	recipe = {
		{"default:wood", "default:stone"},
		{"default:stone", "default:wood"},
	}
})

minetest.register_craft({
	output = "moreblocks:coalchecker 4",
	recipe = {
		{"default:stone", "default:coal_lump"},
		{"default:coal_lump", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:coalchecker 4",
	recipe = {
		{"default:coal_lump", "default:stone"},
		{"default:stone", "default:coal_lump"},
	}
})

minetest.register_craft({
	output = "moreblocks:ironchecker 4",
	recipe = {
		{"steel_ingot", "default:stone"},
		{"default:stone", "steel_ingot"},
	}
})

minetest.register_craft({
	output = "default:chest_locked 1",
	recipe = {
		{"steel_ingot"},
		{"chest"},
	}
})

minetest.register_craft({
	output = "moreblocks:ironchecker 4",
	recipe = {
		{"default:stone", "steel_ingot"},
		{"steel_ingot", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:ironglass 1",
	recipe = {
		{"steel_ingot"},
		{"default:glass"},
	}
})

minetest.register_craft({
	output = "moreblocks:coalglass 1",
	recipe = {
		{"default:coal_lump"},
		{"default:glass"},
	}
})

minetest.register_craft({
	output = "moreblocks:cleanglass 1",
	type = "shapeless",
	recipe = {"moreblocks:sweeper", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:glowglass 1",
	type = "shapeless",
	recipe = {"default:torch", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:superglowglass 1",
	type = "shapeless",
	recipe = {"default:torch", "default:torch", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:coalstone 1",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:stone"},
})

minetest.register_craft({
	output = "moreblocks:trapstone 12",
	recipe = {
		{"default:mese"},
		{"default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:trapglass 12",
	recipe = {
		{"default:mese"},
		{"default:glass"},
	}
})

minetest.register_craft({
	output = "moreblocks:ironstone 1",
	type = "shapeless",
	recipe = {"default:iron_lump", "default:stone"},
})

minetest.register_craft({
	output = "moreblocks:cactusbrick 1",
	type = "shapeless",
	recipe = {"default:cactus", "default:brick"},
})

minetest.register_craft({
	output = "moreblocks:cactuschecker 4",
	recipe = {
		{"default:cactus", "default:stone"},
		{"default:stone", "default:cactus"},
	}
})

minetest.register_craft({
	output = "moreblocks:cactuschecker 4",
	recipe = {
		{"default:stone", "default:cactus"},
		{"default:cactus", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:oerkkiblock 9",
	recipe = {
		{"default:iron_lump", "default:coal_lump", "default:iron_lump"},
		{"default:coal_lump", "default:bookshelf", "default:coal_lump"},
		{"default:iron_lump", "default:coal_lump", "default:iron_lump"},
	}
})

minetest.register_craft({
	output = "moreblocks:oerkkiblock 9",
	recipe = {
		{"default:coal_lump", "default:iron_lump", "default:coal_lump"},
		{"default:iron_lump", "default:bookshelf", "default:iron_lump"},
		{"default:coal_lump", "default:iron_lump", "default:coal_lump"},
	}
})

minetest.register_craft({
	output = "sapling 1",
	recipe = {
		{"default:leaves", "default:leaves", "default:leaves"},
		{"default:leaves", "default:leaves", "default:leaves"},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "moreblocks:rope 1",
	recipe = {
		{"default:leaves"},
		{"default:leaves"},
		{"default:leaves"},
	}
})

minetest.register_craft({
	output = "moreblocks:rope 1",
	recipe = {
		{"default:leaves"},
		{"default:junglegrass"},
		{"default:leaves"},
	}
})

minetest.register_craft({
	output = "moreblocks:rope 1",
	recipe = {
		{"default:junglegrass"},
		{"default:junglegrass"},
		{"default:junglegrass"},
	}
})

minetest.register_craft({
	output = "moreblocks:rope 1",
	recipe = {
		{"default:junglegrass"},
		{"default:leaves"},
		{"default:junglegrass"},
	}
})

minetest.register_craft({
	output = "moreblocks:horizontaltree 2",
	recipe = {
		{"default:tree", "default:tree"},
	}
})

minetest.register_craft({
	output = "default:tree 2",
	recipe = {
		{"moreblocks:horizontaltree"},
		{"moreblocks:horizontaltree"},
	}
})

minetest.register_craft({
	output = "moreblocks:horizontaljungletree 2",
	recipe = {
		{"default:jungletree", "default:jungletree"},
	}
})

minetest.register_craft({
	output = "jungletree 2",
	recipe = {
		{"moreblocks:horizontaljungletree"},
		{"moreblocks:horizontaljungletree"},
	}
})

-- Blocks

minetest.register_node("moreblocks:junglewood", {
	description = "Jungle Wooden Planks",
	tiles = {"moreblocks_junglewood.png"},
	is_ground_content = true,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:woodtile", {
	description = "Wooden Tile",
	tiles = {"moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png^[transformR90", "moreblocks_woodtile.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:stonebrick", {
	description = "Stone Bricks",
	tiles = {"moreblocks_stonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:circlestonebrick", {
	description = "Circle Stone Bricks",
	tiles = {"moreblocks_circlestonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironstonebrick", {
	description = "Iron Stone Bricks",
	tiles = {"moreblocks_ironstonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:stonesquare", {
	description = "Stonesquare",
	tiles = {"moreblocks_stonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:splitstonesquare", {
	description = "Split Stonesquare",
	tiles = {"moreblocks_splitstonesquare_top.png", "moreblocks_splitstonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:plankstone", {
	description = "Plankstone",
	tiles = {"moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png^[transformR90", "moreblocks_plankstone.png^[transformR90"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironglass", {
	description = "Iron Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_ironglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_ironglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:coalglass", {
	description = "Coal Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_coalglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_coalglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:cleanglass", {
	description = "Clean Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_cleanglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_cleanglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})


minetest.register_node("moreblocks:cactusbrick", {
	description = "Cactus Brick",
	tiles = {"moreblocks_cactusbrick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:cactuschecker", {
	description = "Cactus Checker",
	tiles = {"moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png^[transformR90", "moreblocks_cactuschecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:emptybookshelf", {
	description = "Empty Bookshelf",
	tiles = {"default_wood.png", "default_wood.png", "moreblocks_emptybookshelf.png"},
	is_ground_content = true,
	groups = {snappy=2,choppy=3,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:oerkkiblock", {
	description = "Oerkki Block",
	tiles = {"moreblocks_oerkkiblock.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:coalstone", {
	description = "Coal Stone",
	tiles = {"moreblocks_coalstone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironstone", {
	description = "Iron Stone",
	tiles = {"moreblocks_ironstone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:coalchecker", {
	description = "Coal Checker",
	tiles = {"moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png^[transformR90", "moreblocks_coalchecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:ironchecker", {
	description = "Iron Checker",
	tiles = {"moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png^[transformR90", "moreblocks_ironchecker.png^[transformR90"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:trapstone", {
	description = "Trapstone",
	tiles = {"moreblocks_trapstone.png"},
	walkable = false,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moreblocks:trapglass", {
	description = "Trapglass",
	drawtype = "glasslike",
	tiles = {"moreblocks_trapglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_trapglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:fence_junglewood", {
	description = "Jungle Wood Fence",
	drawtype = "fencelike",
	tiles = {"moreblocks_junglewood.png"},
	inventory_image = "moreblocks_junglewood_fence.png",
	wield_image = "moreblocks_junglewood_fence.png",
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("moreblocks:horizontaltree", {
	description = "Horizontal Tree",
	tiles = {"default_tree.png", "default_tree.png", "default_tree.png^[transformR90", "default_tree.png^[transformR90", "default_tree_top.png", "default_tree_top.png"},
	paramtype2 = "facedir",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:horizontaljungletree", {
	description = "Horizontal Jungle Tree",
	tiles = {"default_jungletree.png", "default_jungletree.png", "default_jungletree.png^[transformR90", "default_jungletree.png^[transformR90", "default_jungletree_top.png", "default_jungletree_top.png"},
	paramtype2 = "facedir",
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:allfacestree", {
	description = "All-faces Tree",
	tiles = {"default_tree_top.png"},
	groups = {tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})

minetest.register_node("moreblocks:glowglass", {
	description = "Glow Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_glowglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_glowglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 12,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:superglowglass", {
	description = "Super Glow Glass",
	drawtype = "glasslike",
	tiles = {"moreblocks_superglowglass.png"},
	inventory_image = minetest.inventorycube("moreblocks_superglowglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 15,
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("moreblocks:rope", {
	description = "Rope",
	drawtype = "signlike",
	tiles = {"moreblocks_rope.png"},
	inventory_image = "moreblocks_rope.png",
	wield_image = "moreblocks_rope.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})

-- Items

minetest.register_craftitem("moreblocks:sweeper", {
	description = "Sweeper",
	inventory_image = "moreblocks_sweeper.png",
})

minetest.register_craftitem("moreblocks:junglestick", {
	description = "Jungle Stick",
	inventory_image = "moreblocks_junglestick.png",
})

-- Stairs/Slabs/Panels/Microblocks -- code imported from the Stairs+ mod. :)

moreblocks = {}

-- Node will be called <modname>:stair_<subname>

function moreblocks.register_stair(modname, subname, recipeitem, groups, images, description, drop)
		minetest.register_node(modname .. ":stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})

		minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = {cracky=3, not_in_creative_inventory=1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_right_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_right_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})

		minetest.register_node(modname .. ":stair_" .. subname .. "_right_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_wall_half_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_wall_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_inner", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		sunlight_propagates = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_inner_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_outer", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":stair_" .. subname.. "_outer_inverted")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_inner_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(modname .. ":stair_" .. subname .. "_outer_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 8",
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 8",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 2",
		recipe = {
			{modname .. ":stair_" .. subname, modname .. ":stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inverted", modname .. ":stair_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall"},
			{modname .. ":stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom", modname .. ":stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half 1"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half_inverted 1"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half", modname .. ":stair_" .. subname .. "_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half", modname .. ":stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_half_inverted 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_right_half_inverted", modname .. ":stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_right_half_inverted 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_half_inverted", modname .. ":stair_" .. subname .. "_half_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inner"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_outer"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inner 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inner_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_outer 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_outer_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half 2",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
			{modname .. ":stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_wall_half 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_wall_half_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. "_inverted 1",
		recipe = {
			{modname .. ":stair_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":stair_" .. subname .. " 1",
		recipe = {
			{modname .. ":stair_" .. subname .. "_inverted"},
		},
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone",
		recipe = modname .. ":stair_" .. subname .. "_cobble",
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone_wall",
		recipe = modname .. ":stair_" .. subname .. "_cobble_wall",
	})

	minetest.register_craft({
		type = "cooking",
		output = modname .. ":stair_" .. subname .. "_stone_wall_half",
		recipe = modname .. ":stair_" .. subname .. "_cobble_wall_half",
	})
end

-- Node will be called <modname>slab_<subname>

function moreblocks.register_slab(modname, subname, recipeitem, groups, images, description, drop, paramtype2)
	minetest.register_node(modname .. ":slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop,
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop,
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_inverted",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_three_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == modname .. ":slab_" .. subname .. "_three_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(modname .. ":slab_" .. subname .. "_three_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		paramtype2 = paramtype2,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_wall 6",
		recipe = {
			{recipeitem},
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. " 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname},
			{modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname .. "_inverted"},
			{modname .. ":slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname .. "_wall", modname .. ":slab_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{modname .. ":slab_" .. subname},
			{modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 6",
		recipe = {
			{modname .. ":slab_" .. subname, modname .. ":slab_" .. subname, modname .. ":slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter_inverted"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter_inverted 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter_inverted"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter"},
			{modname .. ":slab_" .. subname .. "_quarter"},
			{modname .. ":slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter 6",
		recipe = {
			{modname .. ":slab_" .. subname .. "_three_quarter"},
			{modname .. ":slab_" .. subname .. "_three_quarter"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_quarter_wall 6",
		recipe = {
			{modname .. ":slab_" .. subname .. "_wall"},
			{modname .. ":slab_" .. subname .. "_wall"},
			{modname .. ":slab_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":slab_" .. subname .. "_three_quarter_wall 1",
		recipe = {
			{modname .. ":slab_" .. subname .. "_quarter_wall", modname .. ":slab_" .. subname .. "_quarter_wall", modname .. ":slab_" .. subname .. "_quarter_wall"},
		},
	})


	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone",
		recipe = modname .. ":slab_" .. subname .. "_cobble",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_quarter",
		recipe = modname .. ":stair_" .. subname .. "_cobble_quarter",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_three_quarter",
		recipe = modname .. ":slab_" .. subname .. "_cobble_three_quarter",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_wall",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_quarter_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_quarter_wall",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":slab_" .. subname .. "_stone_three_quarter_wall",
		recipe = modname .. ":slab_" .. subname .. "_cobble_three_quarter_wall",
	})
end

-- Node will be called <modname>panel_<subname>

function moreblocks.register_panel(modname, subname, recipeitem, groups, images, description, drop)
	minetest.register_node(modname .. ":panel_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":panel_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(modname .. ":panel_" .. subname .. "_vertical", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 8",
		recipe = {
			{recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_vertical 8",
		recipe = {
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_top 1",
		recipe = {
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 1",
		recipe = {
			{modname .. ":panel_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_vertical 2",
		recipe = {
			{modname .. ":panel_" .. subname .. "_bottom"},
			{modname .. ":panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":panel_" .. subname .. "_bottom 2",
		recipe = {
			{modname .. ":panel_" .. subname .. "_vertical", modname .. ":panel_" .. subname .. "_vertical"},
		},
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_bottom",
		recipe = modname .. ":panel_" .. subname .. "_cobble_bottom",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_top",
		recipe = modname .. ":panel_" .. subname .. "_cobble_top",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":panel_" .. subname .. "_stone_vertical",
		recipe = modname .. ":panel_" .. subname .. "_cobble_vertical",
	})
end

-- Node will be called <modname>micro_<subname>

function moreblocks.register_micro(modname, subname, recipeitem, groups, images, description, drop)
	minetest.register_node(modname .. ":micro_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":micro_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing.type ~= "node" then
		return itemstack
	end
	
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y-1 == p1.y then
		local fakestack = ItemStack(modname .. ":micro_" .. subname.. "_top")
		local ret = minetest.item_place(fakestack, placer, pointed_thing)
		if ret:is_empty() then
			itemstack:take_item()
			return itemstack
		end
	end
	
	-- Otherwise place regularly
	return minetest.item_place(itemstack, placer, pointed_thing)
	end,
	})
	
	minetest.register_node(modname .. ":micro_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = modname .. ":micro_" .. drop .. "_top",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_bottom 8",
		recipe = {
			{"default:stick"},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_top 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = modname .. ":micro_" .. subname .. "_bottom 1",
		recipe = {
			{modname .. ":micro_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":micro_" .. subname .. "_stone_bottom",
		recipe = modname .. ":micro_" .. subname .. "_cobble_bottom",
	})
	
	minetest.register_craft({
		type = "cooking",
		output = modname .. ":micro_" .. subname .. "_stone_top",
		recipe = modname .. ":micro_" .. subname .. "_cobble_top",
	})
end

-- Nodes will be called <modname>:{stair,slab,panel,micro}_<subname>
function moreblocks.register_stair_and_slab_and_panel_and_micro(modname, subname, recipeitem, groups, images, desc_stair, desc_slab, desc_panel, desc_micro, drop, paramtype2)
	moreblocks.register_stair(modname, subname, recipeitem, groups, images, desc_stair, drop)
	moreblocks.register_slab(modname, subname, recipeitem, groups, images, desc_slab, drop, paramtype2)
	moreblocks.register_panel(modname, subname, recipeitem, groups, images, desc_panel, drop)
	moreblocks.register_micro(modname, subname, recipeitem, groups, images, desc_micro, drop)
end

moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "stonebrick", "moreblocks:stonebrick",
		{cracky=3},
		{"moreblocks_stonebrick.png"},
		"Stone Bricks Stairs",
		"Stone Bricks Slab",
		"Stone Bricks Panel",
		"Stone Bricks Microblock",
		"stonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironstonebrick", "moreblocks:ironstonebrick",
		{cracky=3},
		{"moreblocks_stonebrick.png"},
		"Iron Stone Bricks Stairs",
		"Iron Stone Bricks Slab",
		"Iron Stone Bricks Panel",
		"Iron Stone Bricks Microblock",
		"ironstonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "stonesquare", "moreblocks:stonesquare",
		{cracky=3},
		{"moreblocks_stonesquare.png"},
		"Stonesquare Stairs",
		"Stonesquare Slab",
		"Stonesquare Panel",
		"Stonesquare Microblock",
		"stonesquare",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "splitstonesquare", "moreblocks:splitstonesquare",
		{cracky=3},
		{"moreblocks_splitstonesquare_top.png", "moreblocks_splitstonesquare.png"},
		"Split Stonesquare Stairs",
		"Split Stonesquare Slab",
		"Split Stonesquare Panel",
		"Split Stonesquare Microblock",
		"splitstonesquare",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "junglewood", "moreblocks:junglewood",
		{snappy=1, choppy=2, oddly_breakable_by_hand=2,flammable=3},
		{"moreblocks_junglewood.png"},
		"Jungle Wood Stairs",
		"Jungle Wood Slab",
		"Jungle Wood Panel",
		"Jungle Wood Microblock",
		"junglewood",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "circlestonebrick", "moreblocks:circlestonebrick",
		{cracky=3},
		{"moreblocks_circlestonebrick.png"},
		"Circle Stone Brick Stairs",
		"Circle Stone Brick Slab",
		"Cricle Stone Brick Panel",
		"Circle Stone Brick Microblock",
		"circlestonebrick",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "plankstone", "moreblocks:plankstone",
		{cracky=3},
		{"moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png^[transformR90", "moreblocks_plankstone.png^[transformR90"},
		"Plankstone Stairs",
		"Plankstone Slab",
		"Plankstone Panel",
		"Plankstone Microblock",
		"plankstone",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "coalchecker", "moreblocks:coalchecker",
		{cracky=3},
		{"moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png", "moreblocks_coalchecker.png^[transformR90", "moreblocks_coalchecker.png^[transformR90"},
		"Coal Checker Stairs",
		"Coal Checker Slab",
		"Coal Checker Panel",
		"Coal Checker Microblock",
		"coalchecker",
		"facedir")

moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironchecker", "moreblocks:ironchecker",
		{cracky=3},
		{"moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png", "moreblocks_ironchecker.png^[transformR90", "moreblocks_ironchecker.png^[transformR90"},
		"Iron Checker Stairs",
		"Iron Checker Slab",
		"Iron Checker Panel",
		"Iron Checker Microblock",
		"ironchecker",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "cactuschecker", "moreblocks:cactuschecker",
		{cracky=3},
		{"moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png", "moreblocks_cactuschecker.png^[transformR90", "moreblocks_cactuschecker.png^[transformR90"},
		"Cactus Checker Stairs",
		"Cactus Checker Slab",
		"Cactus Checker Panel",
		"Cactus Checker Microblock",
		"cactuschecker",
		"facedir")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "coalstone", "moreblocks:coalstone",
		{cracky=3},
		{"moreblocks_coalstone.png"},
		"Coal Stone Stairs",
		"Coal Stone Slab",
		"Coal Stone Panel",
		"Coal Stone Microblock",
		"coalstone",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "ironstone", "moreblocks:ironstone",
		{cracky=3},
		{"moreblocks_ironstone.png"},
		"Iron Stone Stairs",
		"Iron Stone Slab",
		"Iron Stone Panel",
		"Iron Stone Microblock",
		"ironstone",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glowglass", "moreblocks:glowglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_glowglass.png"},
		"Glow Glass Stairs",
		"Glow Glass Slab",
		"Glow Glass Panel",
		"Glow Glass Microblock",
		"glowglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "superglowglass", "moreblocks:superglowglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_superglowglass.png"},
		"Super Glow Glass Stairs",
		"Super Glow Glass Slab",
		"Super Glow Glass Panel",
		"Super Glow Glass Microblock",
		"superglowglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glass", "moreblocks:coalglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_coalglass.png"},
		"Coal Glass Stairs",
		"Coal Glass Slab",
		"Coal Glass Panel",
		"Coal Glass Microblock",
		"coalglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "glass", "moreblocks:ironglass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"moreblocks_ironglass.png"},
		"Iron Glass Stairs",
		"Iron Glass Slab",
		"Iron Glass Panel",
		"Iron Glass Microblock",
		"ironglass",
		"none")
		
moreblocks.register_stair_and_slab_and_panel_and_micro("moreblocks", "woodtile", "moreblocks:woodtile",
		{snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
		{"moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png", "moreblocks_woodtile.png^[transformR90", "moreblocks_woodtile.png^[transformR90"},
		"Wooden Tile Stairs",
		"Wooden Tile Slab",
		"Wooden Tile Panel",
		"Wooden Tile Microblock",
		"woodtile",
		"facedir")
		
-- Compatibility aliases

minetest.register_alias("moreblocks:stair_stone", "stairsplus:stair_stone")
minetest.register_alias("moreblocks:stair_cobble", "stairsplus:stair_cobble")
minetest.register_alias("moreblocks:stair_wood", "stairsplus:stair_wood")
minetest.register_alias("moreblocks:stair_sandstone", "stairsplus:stair_sandstone")
minetest.register_alias("moreblocks:stair_brick", "stairsplus:stair_brick")
minetest.register_alias("moreblocks:stair_desert_stone", "stairsplus:stair_desert_stone")
minetest.register_alias("moreblocks:stair_glass", "stairsplus:stair_glass")
minetest.register_alias("moreblocks:stair_mossycobble", "stairsplus:stair_mossycobble")
minetest.register_alias("moreblocks:stair_steelblock", "stairsplus:stair_steelblock")

minetest.register_alias("moreblocks:slab_stone", "stairsplus:slab_stone")
minetest.register_alias("moreblocks:slab_cobble", "stairsplus:slab_cobble")
minetest.register_alias("moreblocks:slab_wood", "stairsplus:slab_wood")
minetest.register_alias("moreblocks:slab_sandstone", "stairsplus:slab_sandstone")
minetest.register_alias("moreblocks:slab_brick", "stairsplus:slab_brick")
minetest.register_alias("moreblocks:slab_desert_stone", "stairsplus:slab_desert_stone")
minetest.register_alias("moreblocks:slab_glass", "stairsplus:slab_glass")
minetest.register_alias("moreblocks:slab_mossycobble", "stairsplus:slab_mossycobble")
minetest.register_alias("moreblocks:slab_steelblock", "stairsplus:slab_steelblock")

minetest.register_alias("moreblocks:stair_stone_inverted", "stairsplus:stair_stone_inverted")
minetest.register_alias("moreblocks:stair_cobble_inverted", "stairsplus:stair_cobble_inverted")
minetest.register_alias("moreblocks:stair_wood_inverted", "stairsplus:stair_wood_inverted")
minetest.register_alias("moreblocks:stair_sandstone_inverted", "stairsplus:stair_sandstone_inverted")
minetest.register_alias("moreblocks:stair_brick_inverted", "stairsplus:stair_brick_inverted")
minetest.register_alias("moreblocks:stair_desert_stone_inverted", "stairsplus:stair_desert_stone_inverted")
minetest.register_alias("moreblocks:stair_glass_inverted", "stairsplus:stair_glass_inverted")
minetest.register_alias("moreblocks:stair_mossycobble_inverted", "stairsplus:stair_mossycobble_inverted")
minetest.register_alias("moreblocks:stair_steelblock_inverted", "stairsplus:stair_steelblock_inverted")

minetest.register_alias("moreblocks:slab_stone_inverted", "stairsplus:slab_stone_inverted")
minetest.register_alias("moreblocks:slab_cobble_inverted", "stairsplus:slab_cobble_inverted")
minetest.register_alias("moreblocks:slab_wood_inverted", "stairsplus:slab_wood_inverted")
minetest.register_alias("moreblocks:slab_sandstone_inverted", "stairsplus:slab_sandstone_inverted")
minetest.register_alias("moreblocks:slab_brick_inverted", "stairsplus:slab_brick_inverted")
minetest.register_alias("moreblocks:slab_desert_stone_inverted", "stairsplus:slab_desert_stone_inverted")
minetest.register_alias("moreblocks:slab_glass_inverted", "stairsplus:slab_glass_inverted")
minetest.register_alias("moreblocks:slab_mossycobble_inverted", "stairsplus:slab_mossycobble_inverted")
minetest.register_alias("moreblocks:slab_steelblock_inverted", "stairsplus:slab_steelblock_inverted")
		
