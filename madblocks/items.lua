
BRICKLIKE('bluecyanbrick', 'Blue-Cyan Odd Brick')
BRICKLIKE('magentabrick','Magenta Brick')
BRICKLIKE('greenbrick','Green Brick')
BRICKLIKE('blackbrick','Black Brick')
BRICKLIKE('bluebrick','Blue Brick')
BRICKLIKE('yellowbrick','Yellow Brick')
BRICKLIKE('brownbrick','Brown Brick')
BRICKLIKE('cyanbrick','Cyan Brick')
BRICKLIKE('oddbrick','Oddly Coloured Brick')
BRICKLIKE('mossystonebrick','Mossy Stone Brick')
BRICKLIKE('culturedstone','Cultured Stone')
BRICKLIKE('marblestonebrick','Marble Stone Brick')
BRICKLIKE('shinystonebrick','Sand-Blasted Stone Brick')
BRICKLIKE('cinderblock','Cinderblock')
BRICKLIKE('blackstonebrick','Black Stonebrick')
BRICKLIKE('roundstonebrick','Round Stonebrick')
BRICKLIKE('slimstonebrick','Slim Stonebrick')
BRICKLIKE('greystonebrick','Grey Stonebrick')
BRICKLIKE('medistonebrick','Mediterranean Stonebrick')
BRICKLIKE('whitestonebrick','White Stonebrick')
BRICKLIKE('cement','Cement')
BRICKLIKE('countrystonebrick','Country Stonebrick')
BRICKLIKE('asphalte','Asphalte')
WOODLIKE('woodshingles','Wood Shingles')
WOODLIKE('magentawood','Magenta Stained Wood',true)
WOODLIKE('bluewood','Blue Stained Wood',true)
WOODLIKE('blackwood','Black Stained Wood',true)
WOODLIKE('yellowwood','Yellow Stained Wood',true)
WOODLIKE('cyanwood','Cyan Stained Wood',true)
WOODLIKE('greenwood','Green Stained Wood',true)
WOODLIKE('redwood','Red Stained Wood',true)
WOODLIKE('dye_cyan','Cyan Dye')
WOODLIKE('dye_magenta','Magenta Dye')
WOODLIKE('dye_yellow','Yellow Dye')
WOODLIKE('dye_red','Red Dye')
WOODLIKE('dye_blue','Blue Dye')
WOODLIKE('dye_green','Green Dye')
WOODLIKE('dye_black','Black Dye')

--Ajouté par Jat
WOODLIKE('dye_white','White Dye')
WOODLIKE('dye_pink','Pink Dye')
WOODLIKE('dye_orange','Orange Dye')
WOODLIKE('dye_grey','Grey Dye')
--Fin

SIGNLIKE('cafe',7)
SIGNLIKE('drpepper')
SIGNLIKE('dangermines')
SIGNLIKE('hucksfoodfuel')
SIGNLIKE('enjoycoke')
PLANTLIKE('flowers1','Flower Arrangement #1','veg')
PLANTLIKE('flowers2','Flower Arrangement #2','veg')
PLANTLIKE('hangingflowers','Hanging Flower Basket','cri')
PLANTLIKE('stool','Bar Stool','cri',true)
PLANTLIKE('gnome','Garden Gnome','cri')
PLANTLIKE('statue','Statuette','cri')
PLANTLIKE('gargoyle','Gargoyle','cri')
PLANTLIKE('wine','Wine Bottle','eat',1)
PLANTLIKE('coffeecup','Coffee Cup','eat',2)
SOUNDNODE('siren','Loud Siren')
SOUNDNODE('churchbells','Church Bells')

-- ***********************************************************************************
--		ASSORTED DEFS						**************************************************
-- ***********************************************************************************

minetest.register_node("madblocks:drum", {
	description = "Drum",
	drawtype = 'plantlike',
	tile_images = {"madblocks_drum.png"},
	inventory_image = "madblocks_drum.png",
	wield_image =  "madblocks_drum.png",
	paramtype = "light",

	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"invsize[8,9;]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
    on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_move_allow_all(
				pos, from_list, from_index, to_list, to_index, count, player)
	end,
    on_metadata_inventory_offer = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_offer_allow_all(
				pos, listname, index, stack, player)
	end,
    on_metadata_inventory_take = function(pos, listname, index, count, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_take_allow_all(
				pos, listname, index, count, player)
	end,
})

minetest.register_node("madblocks:pylon", {
	description = "Pylon",
	drawtype = "glasslike",
	tile_images = {"madblocks_power_pylon.png"},
	inventory_image = minetest.inventorycube("madblocks_power_pylon.png"),
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("madblocks:safetyladder", {
	description = "Ladder",
	drawtype = "signlike",
	tile_images = {"madblocks_power_polepegs.png"},
	inventory_image = "madblocks_power_polepegs.png",
	wield_image = "madblocks_power_polepegs.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {	type = "wallmounted" },
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node(":madblocks:lampling", {
	description = "Lampling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tile_images = {"madblocks_lampling.png"},
	inventory_image = "madblocks_lampling.png",
	wield_image = "madblocks_lampling.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=2,dig_immediate=3},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("madblocks:sheetmetal", {
	description = "Sheet Metal",
	tile_images = {"madblocks_sheetmetal_top.png","madblocks_sheetmetal_top.png","madblocks_sheetmetal.png"},
	is_ground_content = true,
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("madblocks:rosebush", {
	description = "Rose Bush",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tile_images = {"madblocks_rosebush.png"},
	paramtype = "light",
	groups = {snappy=3,  flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("madblocks:bigben", {
	description = "Big Ben",
	tile_images = {"madblocks_bigben_top.png","madblocks_bigben_top.png","madblocks_bigben.png"},
	is_ground_content = true,
	groups = {snappy=2,choppy=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("madblocks:coffee", {
	description = "Roasted Coffee",
	tile_images = {"madblocks_coffee.png"},
	inventory_image = minetest.inventorycube("madblocks_coffee.png"),
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("madblocks:fancybracket", {
	description = "Fancy Support Bracket",
	drawtype = "torchlike",
	tile_images = {"madblocks_fancybracket.png", "madblocks_fancybracket.png", "madblocks_fancybracket.png"},
	inventory_image = "madblocks_fancybracket.png",
	wield_image = "madblocks_fancybracket.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})
minetest.register_node("madblocks:cinderblock_planter", {
	description = "Cinderblock Planter",
	tile_images = {"madblocks_cinderblock_planter.png","madblocks_cinderblock.png"},
	inventory_image = minetest.inventorycube("madblocks_cinderblock_planter.png","madblocks_cinderblock.png","madblocks_cinderblock.png"),
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("madblocks:awning", {
	drawtype = "raillike",
	visual_scale = 1.0,
	paramtype = "light",
	description = "Awning",
	tile_images = {"madblocks_awning.png","madblocks_awning2.png"},
	inventory_image  = "madblocks_awning.png",
	light_propagates = true,
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=3},
})


