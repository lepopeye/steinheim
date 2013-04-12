-- Nodes will be called <modname>:{stair,slab,panel,micro}_<subname>
function register_stair_slab_panel_micro(modname, subname, recipeitem, groups, images, description, drop, paramtype2, light)
	register_stair(modname, subname, recipeitem, groups, images, description, drop, light)
	register_slab(modname, subname, recipeitem, groups, images, description, drop, paramtype2, light)
	register_panel(modname, subname, recipeitem, groups, images, description, drop, light)
	register_micro(modname, subname, recipeitem, groups, images, description, drop, light)
end

-- Default stairs/slabs/panels/microblocks

register_stair_slab_panel_micro("moreblocks", "wood", "default:wood",
	{not_in_creative_inventory=1,snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	{"default_wood.png"},
	"Wooden",
	"wood",
	"facedir",
	0)

register_stair_slab_panel_micro("moreblocks", "stone", "default:stone",
	{not_in_creative_inventory=1,cracky=3},
	{"default_stone.png"},
	"Stone",
	"cobble",
	"none",
	0)

register_stair_slab_panel_micro("moreblocks", "cobble", "default:cobble",
	{not_in_creative_inventory=1,cracky=3},
	{"default_cobble.png"},
	"Cobblestone",
	"cobble",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "mossycobble", "default:mossycobble",
	{not_in_creative_inventory=1,cracky=3},
	{"default_mossycobble.png"},
	"Mossy Cobblestone",
	"mossycobble",
	"none",
	0)

register_stair_slab_panel_micro("moreblocks", "brick", "default:brick",
	{not_in_creative_inventory=1,cracky=3},
	{"default_brick.png"},
	"Brick",
	"brick",
	"facedir",
	0)

register_stair_slab_panel_micro("moreblocks", "sandstone", "default:sandstone",
	{not_in_creative_inventory=1,crumbly=2,cracky=2},
	{"default_sandstone.png"},
	"Sandstone",
	"sandstone",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "steelblock", "default:steelblock",
	{not_in_creative_inventory=1,snappy=1,bendy=2,cracky=1,melty=2,level=2},
	{"default_steel_block.png"},
	"Steel Block",
	"steelblock",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "desert_stone", "default:desert_stone",
	{not_in_creative_inventory=1,cracky=3},
	{"default_desert_stone.png"},
	"Desert Stone",
	"desert_stone",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "glass", "default:glass",
	{not_in_creative_inventory=1,snappy=2,cracky=3,oddly_breakable_by_hand=3},
	{"default_glass.png"},
	"Glass",
	"glass",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "tree", "default:tree",
	{not_in_creative_inventory=1,tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	{"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	"Tree",
	"tree",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "jungletree", "default:jungletree",
	{not_in_creative_inventory=1,tree=1,snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	{"default_jungletree_top.png", "default_jungletree_top.png", "default_jungletree.png"},
	"Jungle Tree",
	"jungletree",
	"none",
	0)

-- More Blocks stairs/slabs/panels/microblocks

register_stair_slab_panel_micro("moreblocks", "stonebrick", "default:stonebrick",
	{not_in_creative_inventory=1,cracky=3},
	{"default_stone_brick.png"},
	"Stone Bricks",
	"stone_bricks",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "circle_stone_bricks", "moreblocks:circle_stone_bricks",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_circle_stone_bricks.png"},
	"Circle Stone Bricks",
	"circle_stone_bricks",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "iron_stone_bricks", "moreblocks:iron_stone_bricks",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_iron_stone_bricks.png"},
	"Iron Stone Bricks",
	"iron_stone_bricks",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "stone_tile", "moreblocks:stone_tile",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_stone_tile.png"},
	"Stonesquare",
	"stone_tile",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "split_stone_tile", "moreblocks:split_stone_tile",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_split_stone_tile_top.png", "moreblocks_split_stone_tile.png"},
	"Split Stonesquare",
	"split_stone_tile",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "jungle_wood", "default:junglewood",
	{not_in_creative_inventory=1,snappy=1, choppy=2, oddly_breakable_by_hand=2,flammable=3},
	{"default_junglewood.png"},
	"Jungle Wood",
	"jungle_wood",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "circle_stone_bricks", "moreblocks:circle_stone_bricks",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_circle_stone_bricks.png"},
	"Circle Stone Brick",
	"circle_stone_bricks",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "plankstone", "moreblocks:plankstone",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_plankstone.png", "moreblocks_plankstone.png", "moreblocks_plankstone.png",
	"moreblocks_plankstone.png", "moreblocks_plankstone.png^[transformR90", "moreblocks_plankstone.png^[transformR90"},
	"Plankstone",
	"plankstone",
	"facedir",
	0)
	
register_stair_slab_panel_micro("moreblocks", "coal_checker", "moreblocks:coal_checker",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_coal_checker.png", "moreblocks_coal_checker.png", "moreblocks_coal_checker.png",
	"moreblocks_coal_checker.png", "moreblocks_coal_checker.png^[transformR90", "moreblocks_coal_checker.png^[transformR90"},
	"Coal Checker",
	"coal_checker",
	"facedir",
	0)

register_stair_slab_panel_micro("moreblocks", "iron_checker", "moreblocks:iron_checker",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_iron_checker.png", "moreblocks_iron_checker.png", "moreblocks_iron_checker.png",
	"moreblocks_iron_checker.png", "moreblocks_iron_checker.png^[transformR90", "moreblocks_iron_checker.png^[transformR90"},
	"Iron Checker",
	"iron_checker",
	"facedir",
	0)
	
register_stair_slab_panel_micro("moreblocks", "cactus_checker", "moreblocks:cactus_checker",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_cactus_checker.png", "moreblocks_cactus_checker.png", "moreblocks_cactus_checker.png",
	"moreblocks_cactus_checker.png", "moreblocks_cactus_checker.png^[transformR90", "moreblocks_cactus_checker.png^[transformR90"},
	"Cactus Checker",
	"cactus_checker",
	"facedir",
	0)
	
register_stair_slab_panel_micro("moreblocks", "coal_stone", "moreblocks:coal_stone",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_coal_stone.png"},
	"Coal Stone",
	"coal_stone",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "iron_stone", "moreblocks:iron_stone",
	{not_in_creative_inventory=1,cracky=3},
	{"moreblocks_iron_stone.png"},
	"Iron Stone",
	"iron_stone",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "glow_glass", "moreblocks:glow_glass",
	{not_in_creative_inventory=1,snappy=2,cracky=3,oddly_breakable_by_hand=3},
	{"moreblocks_glow_glass.png"},
	"Glow Glass",
	"glow_glass",
	"none",
	11)
	
register_stair_slab_panel_micro("moreblocks", "super_glow_glass", "moreblocks:super_glow_glass",
	{not_in_creative_inventory=1,snappy=2, cracky=3, oddly_breakable_by_hand=3},
	{"moreblocks_super_glow_glass.png"},
	"Super Glow Glass",
	"super_glow_glass",
	"none",
	15)
	
register_stair_slab_panel_micro("moreblocks", "coal_glass", "moreblocks:coal_glass",
	{not_in_creative_inventory=1,snappy=2, cracky=3, oddly_breakable_by_hand=3},
	{"moreblocks_coal_glass.png"},
	"Coal Glass",
	"coal_glass",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "iron_glass", "moreblocks:iron_glass",
	{not_in_creative_inventory=1,snappy=2,cracky=3,oddly_breakable_by_hand=3},
	{"moreblocks_iron_glass.png"},
	"Iron Glass",
	"iron_glass",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "wood_tile", "moreblocks:wood_tile",
	{not_in_creative_inventory=1,snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	{"moreblocks_wood_tile.png", "moreblocks_wood_tile.png", "moreblocks_wood_tile.png",
	"moreblocks_wood_tile.png", "moreblocks_wood_tile.png^[transformR90", "moreblocks_wood_tile.png^[transformR90"},
	"Wooden Tile",
	"wood_tile",
	"facedir",
	0)
	
register_stair_slab_panel_micro("moreblocks", "wood_tile_center", "moreblocks:wood_tile_center",
	{not_in_creative_inventory=1,snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	{"moreblocks_wood_tile_center.png", "moreblocks_wood_tile_center.png", "moreblocks_wood_tile_center.png",
	"moreblocks_wood_tile_center.png", "moreblocks_wood_tile_center.png^[transformR90", "moreblocks_wood_tile_center.png^[transformR90"},
	"Centered Wooden Tile",
	"wood_tile_center",
	"facedir",
	0)

register_stair_slab_panel_micro("moreblocks", "wood_tile_full", "moreblocks:wood_tile_full",
	{not_in_creative_inventory=1,snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	{"moreblocks_wood_tile_full.png", "moreblocks_wood_tile_full.png", "moreblocks_wood_tile_full.png",
	"moreblocks_wood_tile_full.png", "moreblocks_wood_tile_full.png^[transformR90", "moreblocks_wood_tile_full.png^[transformR90"},
	"Full Wooden Tile",
	"wood_tile_full",
	"facedir",
	0)
	
register_stair_slab_panel_micro("moreblocks", "obsidian", "default:obsidian",
	{not_in_creative_inventory=1,cracky=1,level=2},
	{"default_obsidian.png"},
	"Obsidian",
	"obsidian",
	"none",
	0)
	
register_stair_slab_panel_micro("moreblocks", "obsidian_glass", "default:obsidian_glass",
	{not_in_creative_inventory=1,cracky=3,oddly_breakable_by_hand=3},
	{"default_obsidian_glass.png"},
	"Obsidian Glass",
	"obsidian_glass",
	"none",
	0)
