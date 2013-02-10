print("[maptools] loaded.")

--[[
****
Map Tools
by Calinou
Licensed under the zlib/libpng license for code and CC BY-SA 3.0 Unported for textures, see LICENSE.txt for info.
****
--]]

--[[

ITEM CODES FOR SPAWNING THE ITEMS USING /GIVE OR /GIVEME:

Items:

- admin_pick
Purple pickaxe, infinite durability, mines everything including unbreakable blocks instantly. Don't put this pickaxe in the hands of a griefer, of course. :)

- infinitefuel
Fuel lasting for a (near)-infinite time. Don't worry about the "near" - it lasts for about 50 in-real-life years.

- superapple
An apple which heals all 10 hearts.

- copper_coin
- silver_coin
- gold_coin
These have nothing to do with the More Ores mod; they can be used as a currency for trading, or as an universal currency for mods that add shops.

Blocks:
A /!\ denotes an unpointable, unbreakable block; be very careful with them, they cannot be removed by hand (they can only be removed with WorldEdit).

- (insert block name here)_u ---- example: stone_u
Unbreakable, non-flammable, non-falling, non-decaying blocks, most common blocks have their unbreakable form (examples: maptools:stone or maptools:wood for unbreakable stone/wood).

- fullgrass
Unbrakable block with the "grass" texture on all sides.

- playerclip
/!\ Invisible block, not pointable.

- fullclip
Invisible block, pointable.

- smoke_block
Some smoke.

- nobuild
/!\ Building prevention.

- nointeract
Prevents interacting through the block (interacting as in opening chests, furnaces, attacking entities...).

- damage_(insert damage in half hearts here)
/!\ Damaging blocks. The damage is in half hearts and ranges from 1 to 5 (0.5 to 2.5 hearts damage every second).

- killblock
/!\ Instant kill (deals 10 heart damage) blocks.

- lightblock
/!\ Invisible non-solid block, prevents light from passing through.

- lightbulb
/!\ Invisible non-solid block, emitting a good amount of light.

--]]

-- Aliases

minetest.register_alias("adminpick", "maptools:pick_admin")
minetest.register_alias("adminpickaxe", "maptools:pick_admin")
minetest.register_alias("admin_pick", "maptools:pick_admin")
minetest.register_alias("admin_pickaxe", "maptools:pick_admin")
minetest.register_alias("pick_admin", "maptools:pick_admin")
minetest.register_alias("pickaxe_admin", "maptools:pick_admin")
minetest.register_alias("pickadmin", "maptools:pick_admin")
minetest.register_alias("pickaxeadmin", "maptools:pick_admin")
minetest.register_alias("infinitefuel", "maptools:infinitefuel")
minetest.register_alias("infinite_fuel", "maptools:infinitefuel")
minetest.register_alias("ifuel", "maptools:infinitefuel")
minetest.register_alias("superapple", "maptools:superapple")
minetest.register_alias("super_apple", "maptools:superapple")
minetest.register_alias("sapple", "maptools:superapple")
minetest.register_alias("nobuild", "maptools:nobuild")
minetest.register_alias("nointeract", "maptools:nointeract")
minetest.register_alias("damage_1", "maptools:damage_1")
minetest.register_alias("damage_2", "maptools:damage_2")
minetest.register_alias("damage_3", "maptools:damage_3")
minetest.register_alias("damage_4", "maptools:damage_4")
minetest.register_alias("damage_5", "maptools:damage_5")
minetest.register_alias("killblock", "maptools:kill")
minetest.register_alias("kill_block", "maptools:kill")
minetest.register_alias("lightblock", "maptools:lightblock")
minetest.register_alias("light_block", "maptools:lightblock")
minetest.register_alias("lightbulb", "maptools:lightbulb")
minetest.register_alias("light_bulb", "maptools:lightbulb")
minetest.register_alias("playerclip", "maptools:playerclip")
minetest.register_alias("player_clip", "maptools:playerclip")
minetest.register_alias("pclip", "maptools:playerclip")
minetest.register_alias("fullclip", "maptools:fullclip")
minetest.register_alias("full_clip", "maptools:fullclip")
minetest.register_alias("fclip", "maptools:fullclip")

-- For people used to *Radiant :D
minetest.register_alias("weaponclip", "maptools:fullclip")
minetest.register_alias("weapon_clip", "maptools:fullclip")

-- Unbreakable block aliases

minetest.register_alias("stone_u", "maptools:stone")
minetest.register_alias("tree_u", "maptools:tree")
minetest.register_alias("cobble_u", "maptools:cobble")
minetest.register_alias("wood_u", "maptools:wood")
minetest.register_alias("sand_u", "maptools:sand")
minetest.register_alias("gravel_u", "maptools:gravel")
minetest.register_alias("brick_u", "maptools:brick")
minetest.register_alias("dirt_u", "maptools:dirt")
minetest.register_alias("glass_u", "maptools:glass")
minetest.register_alias("sandstone_u", "maptools:sandstone")
minetest.register_alias("desert_stone_u", "maptools:desert_stone")
minetest.register_alias("desertstone_u", "maptools:desert_stone")
minetest.register_alias("desert_sand_u", "maptools:desert_sand")
minetest.register_alias("desertsand_u", "maptools:desert_sand")
minetest.register_alias("leaves_u", "maptools:leaves")
minetest.register_alias("grass_u", "maptools:glass")
minetest.register_alias("fullgrass", "maptools:fullgrass")
minetest.register_alias("fullgrass_u", "maptools:fullgrass")
minetest.register_alias("mossycobble_u", "maptools:mossycobble")
minetest.register_alias("mossy_cobble_u", "maptools:mossycobble")

-- Crafting

-- THERE ARE NO CRAFTING RECIPES, USE /GIVE OR /GIVEME COMMANDS TO SPAWN THE ITEMS INSTEAD.

minetest.register_craft({
	type = "fuel",
	recipe = "maptools:infinitefuel",
	burntime = 1000000000,
})

-- Redefine cloud so that admin pickaxe can mine it

minetest.register_node(":default:cloud", {
	description = "Cloud",
	tiles = {"default_cloud.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_defaults(),
})

-- Blocks

minetest.register_node("maptools:stone", {
	description = "Unbreakable Stone",
	tiles = {"default_stone.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:tree", {
	description = "Unbreakable Tree",
	tiles = {"default_tree.png"},
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	is_ground_content = true,
})

minetest.register_node("maptools:dirt", {
	description = "Unbreakable Dirt",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("maptools:wood", {
	description = "Unbreakable Wood",
	tiles = {"default_wood.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("maptools:glass", {
	description = "Unbreakable Glass",
	drawtype = "glasslike",
	tiles = {"default_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("maptools:leaves", {
	description = "Unbreakable Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_leaves.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("maptools:sand", {
	description = "Unbreakable Sand",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("maptools:gravel", {
	description = "Unbreakable Gravel",
	tiles = {"default_gravel.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.45},
	}),
})

minetest.register_node("maptools:desert_sand", {
	description = "Unbreakable Desert Sand",
	tiles = {"default_desert_sand.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("maptools:sandstone", {
	description = "Unbreakable Sandstone",
	tiles = {"default_sandstone.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:desert_stone", {
	description = "Unbreakable Desert Stone",
	tiles = {"default_desert_stone.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:grass", {
	description = "Unbreakable Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("maptools:fullgrass", {
	description = "Unbreakable Full Grass",
	tiles = {"default_grass.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("maptools:cobble", {
	description = "Unbreakable Cobble",
	tiles = {"default_cobble.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:mossycobble", {
	description = "Unbreakable Mossy Cobble",
	tiles = {"default_mossycobble.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:brick", {
	description = "Unbreakable Brick",
	tiles = {"default_brick.png"},
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
})

--------

minetest.register_node("maptools:playerclip", {
	description = "Player Clip",
	drawtype = "airlike",
	paramtype = "light",
	pointable = false,
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:fullclip", {
	description = "Full Clip",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:lightblock", {
	description = "Light Block",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	buildable_to = true,
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:lightbulb", {
	description = "Light Bulb",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	light_source = LIGHT_MAX - 1,
	paramtype = "light",
	buildable_to = true,
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:nobuild", {
	description = "Build Prevention",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:nointeract", {
	description = "Build Prevention",
	drawtype = "airlike",
	walkable = false,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:climb", {
	description = "Climbing Block",
	drawtype = "airlike",
	walkable = false,
	climbable = true,
	pointable = false,
	is_ground_content = true,
	buildable_to = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:damage_1", {
	description = "Damaging Block: 1",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 1,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:damage_2", {
	description = "Damaging Block: 2",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 2,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:damage_3", {
	description = "Damaging Block: 3",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 3,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:damage_4", {
	description = "Damaging Block: 4",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 4,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:damage_5", {
	description = "Damaging Block: 5",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 5,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:kill", {
	description = "Killing Block",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 20,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
})

minetest.register_node("maptools:smoke", {
	description = "Smoke Block",
	tiles = {"maptools_smoke.png"},
	drawtype = "allfaces_optional",
	walkable = false,
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {unbreakable=1, not_in_creative_inventory=1},
	post_effect_color = {a=127, r=127, g=127, b=127},
})

minetest.register_node("maptools:ladder", {
	description = "Fake Ladder",
	drawtype = "signlike",
	tiles = {"default_ladder.png"},
	inventory_image = "default_ladder.png",
	wield_image = "default_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {unbreakable=1, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

-- Items

minetest.register_craftitem("maptools:copper_coin", {
	description = "Copper Coin",
	inventory_image = "maptools_copper_coin.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("maptools:silver_coin", {
	description = "Silver Coin",
	inventory_image = "maptools_silver_coin.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("maptools:gold_coin", {
	description = "Gold Coin",
	inventory_image = "maptools_gold_coin.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("maptools:infinitefuel", {
	description = "Infinite Fuel",
	inventory_image = "maptools_infinitefuel.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("maptools:superapple", {
	description = "Super Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"maptools_superapple.png"},
	inventory_image = "maptools_superapple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3, not_in_creative_inventory=1},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_defaults(),
})

-- Tools

minetest.register_tool("maptools:pick_admin", {
	description = "Admin Pickaxe",
	inventory_image = "maptools_adminpick.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 0,
		max_drop_level=3,
		groupcaps= {
			unbreakable={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			bendy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			snappy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		}
	},
})
