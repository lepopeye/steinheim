-- ***********************************************************************************
--		NEW METALLIC ITEMS				**************************************************
-- ***********************************************************************************

METALLIKE('brushedmetal','Brushed Metal',true)
METALLIKE('yellow_rustedmetal','Yellow Painted Rusted Metal',true)
METALLIKE('texturedmetal','Textured Metal')
METALLIKE('metalbulkhead','Metal Bulkhead')
METALLIKE('stripedmetal','Caution Striped Metal')
BRICKLIKE('brownmedistonebrick','Mediterranean Stonebrick (Brown Tones)')


-- ***********************************************************************************
--		HOLO NODES							**************************************************
-- ***********************************************************************************

minetest.register_node("madblocks:holocobble", {
	description = "Holographic Cobblestone",
	tile_images = {"default_cobble.png"},
	is_ground_content = true,
	walkable = false,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("madblocks:holostone", {
	description = "Holographic Stone",
	tile_images = {"default_stone.png"},
	is_ground_content = true,
	walkable = false,
	groups = {cracky=3},
	--drop = 'default:cobble',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- ***********************************************************************************
--		PALM TREES							**************************************************
-- ***********************************************************************************
minetest.register_node("madblocks:palmleaves", {
	description = "Rail",
	drawtype = "raillike",
	tile_images = {"madblocks_palmleaves.png", "madblocks_palmleaves_top.png", "madblocks_palmleaves_top.png", "madblocks_palmleaves_top.png"},
	inventory_image = "madblocks_palmleaves.png",
	wield_image = "madblocks_palmleaves.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		--fixed = <default>
	},
	groups = {bendy=2,snappy=1,dig_immediate=2},
})
PLANTLIKE('palmtree','Palmtree Sapling','veg')
minetest.register_abm({
		nodenames = { "madblocks:palmtree" },
		interval = 120,
		chance = 1,
		
		action = function(pos, node, active_object_count, active_object_count_wider)
			minetest.env:add_node({x=pos.x,y=pos.y,z=pos.z},{type="node",name="madblocks:slimtree_wood"})
			minetest.env:add_node({x=pos.x,y=pos.y+1,z=pos.z},{type="node",name="madblocks:slimtree_wood"})
			minetest.env:add_node({x=pos.x,y=pos.y+2,z=pos.z},{type="node",name="madblocks:slimtree_wood"})
			minetest.env:add_node({x=pos.x,y=pos.y+3,z=pos.z},{type="node",name="madblocks:slimtree_wood"})
			minetest.env:add_node({x=pos.x,y=pos.y+4,z=pos.z},{type="node",name="madblocks:slimtree_wood"})						
			minetest.env:add_node({x=pos.x,y=pos.y+5,z=pos.z},{type="node",name="madblocks:slimtree_wood"})			
			minetest.env:add_node({x=pos.x,y=pos.y+6,z=pos.z},{type="node",name="madblocks:slimtree_wood"})												
			minetest.env:add_node({x=pos.x,y=pos.y+7,z=pos.z},{type="node",name="madblocks:slimtree_wood"})						
			minetest.env:add_node({x=pos.x,y=pos.y+8,z=pos.z},{type="node",name="madblocks:slimtree_wood"})						
			minetest.env:add_node({x=pos.x+2,y=pos.y+8,z=pos.z},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x-2,y=pos.y+8,z=pos.z},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x,y=pos.y+8,z=pos.z+2},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x,y=pos.y+8,z=pos.z-2},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x,y=pos.y+9,z=pos.z},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x+1,y=pos.y+9,z=pos.z},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x-1,y=pos.y+9,z=pos.z},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x,y=pos.y+9,z=pos.z+1},{type="node",name="madblocks:palmleaves"})			
			minetest.env:add_node({x=pos.x,y=pos.y+9,z=pos.z-1},{type="node",name="madblocks:palmleaves"})			
		end
})

-- ***********************************************************************************
--		BIOFORMER							**************************************************
-- ***********************************************************************************

BIOFORM = nil
minetest.register_chatcommand("bioform", {
	params = "<biome>",
	description = "transform",
	privs = {server=true},
	func = function(name, param)
		if param == 'beach' or param == 'tallforest' then
		 BIOFORM = param 
		end
		minetest.chat_send_player(name, "bioforming to "..param)
		return
	end,
})
minetest.register_abm({
		nodenames = { "default:leaves","default:tree",'default:dirt_with_grass','default:sand' },
		interval = 20,
		chance = 2,
		action = function(pos, node, active_object_count, active_object_count_wider)
			if BIOFORM == 'beach' then
				if node.name == 'default:tree' or node.name == 'default:leaves' then minetest.env:remove_node(pos)
				elseif node.name == 'default:dirt_with_grass' then minetest.env:add_node(pos,{type="node",name='default:sand'})
				elseif node.name == 'default:sand' then 
					local air = { x=pos.x, y=pos.y+1,z=pos.z }
					local is_air = minetest.env:get_node_or_nil(air)
					if is_air ~= nil and is_air.name == 'air' and math.random(1,1000) == 1 then
						minetest.env:add_node(air,{type="node",name='madblocks:palmtree'})
					end
				end
--[[			elseif BIOFORM == 'tallforest' then
				if node.name == 'default:tree' then 
					local air = { x=pos.x, y=pos.y+1,z=pos.z }
					local is_air = minetest.env:get_node_or_nil(air)
					if is_air == nil then return end
					if is_air.name == 'air' or is_air.name == 'default:leaves' then
						minetest.env:add_node(air,{type="node",name='default:tree'})
					end
				elseif node.name == 'default:leaves' then
					local air = { x=pos.x, y=pos.y+1,z=pos.z }
					local is_air = minetest.env:get_node_or_nil(air)
					if is_air == nil then return end					
					if is_air ~= nil and is_air.name == 'air' then
						minetest.env:add_node(air,{type="node",name='default:leaves'})
					end				
				end
				]]--
			end
		end
})

