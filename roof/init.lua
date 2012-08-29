--
--
-- 		Author: Nemo08
--
-- 		v 0.5

local COLORS = {	
	rose 	=	'madblocks:dye_red',
	yellow	=	'madblocks:dye_yellow',
	tulip	=	'madblocks:dye_blue',
	viola	=	'madblocks:dye_magenta',
	green	=	'madblocks:dye_green',
	glass	=	'default:sand',
	gray	=	'madblocks:dye_grey',
	black	=	'madblocks:dye_black',
	white	=	'madblocks:dye_white',
	obsidian	=	'obsidian:obsidian_block'
}

for color, src in pairs(COLORS) do

	minetest.register_craft({
		output = 'roof:tile_' .. color .. ' 4',
		recipe = {
			{'default:clay_lump', src},
			{'default:clay_lump', 'default:clay_lump'},
		}
	})

	local png = 'roof_tile_' .. color .. '.png'
	
	minetest.register_node('roof:tile_' .. color, {
		description = color .. ' tile',
		drawtype = 'raillike',
		tiles = {png,png,png,png},
		inventory_image = png,
		wield_image = png,
		paramtype = 'light',
		is_ground_content = true,
		walkable = true,
		groups = {cracky=3},
	})
end

	minetest.register_craft({
		output = 'roof:straw 9',
		recipe = {
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
			{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'}
		}
	})

	local png = 'roof_straw.png'
	minetest.register_node('roof:straw', {
		description = 'Straw',
		drawtype = 'raillike',
		tiles = {png,png,png,png},
		inventory_image = png,
		wield_image = png,
		paramtype = 'light',
		is_ground_content = true,
		walkable = true,
		groups = {cracky=3},
	})