-- BobBlocks mod by RabbiBob
-- State Changes
-- Simplify and modify by Jat

local couleurs={"black","cyan","violet","white","yellow","red","orange","pink","grey","green","blue"}
local a=0
local rulesbobblocks =	{	{x=0, y=0, z=-1},
							{x=0, y=0, z=1},
							{x=1, y=0, z=0},
							{x=-1, y=0, z=0}, 
							{x=0, y=1, z=0},
							{x=0, y=-1, z=0}
						}

local update_bobblock = function (pos, node)
    local nodename=""
    local param2=""
	local c=0
	for c=1,table.getn(couleurs) do	
		--Switch Block State
		if 
		-- Start Blocks
			node.name == "bobblocks:"..couleurs[c].."block_off" then nodename = "bobblocks:"..couleurs[c].."block" break
		elseif node.name == "bobblocks:"..couleurs[c].."block" then nodename = "bobblocks:"..couleurs[c].."block_off" break
		-- Start Poles
		elseif node.name == "bobblocks:"..couleurs[c].."pole_off" then nodename = "bobblocks:"..couleurs[c].."pole" break
		elseif node.name == "bobblocks:"..couleurs[c].."pole" then nodename = "bobblocks:"..couleurs[c].."pole_off" break
		end		
	end
    minetest.env:add_node(pos, {name = nodename})
    minetest.sound_play("bobblocks_glassblock",
	{pos = pos, gain = 1.0, max_hear_distance = 32,})
end

    
-- Punch Blocks    
local on_bobblock_punched = function (pos, node, puncher)
	local c=0
	for c=1,table.getn(couleurs) do	
		if 
		   -- Start Blocks
		   node.name == "bobblocks:"..couleurs[c].."block_off" or node.name == "bobblocks:"..couleurs[c].."block" or 		   
		   --Start Poles
		   node.name == "bobblocks:"..couleurs[c].."pole_off" or node.name == "bobblocks:"..couleurs[c].."pole" 
		then
			update_bobblock(pos, node)
			break
		end
	end
end

minetest.register_on_punchnode(on_bobblock_punched)

-- Nodes

for a=1,table.getn(couleurs) do
	--Block
	minetest.register_node("bobblocks:"..couleurs[a].."block", {
		description = ""..couleurs[a].."Block",
		drawtype = "glasslike",
		tiles = {"bobblocks_"..couleurs[a].."block.png"},
		inventory_image = minetest.inventorycube("bobblocks_"..couleurs[a].."block.png"),
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX-0,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		mesecons =	{conductor ={
					state = mesecon.state.on,
					offstate = "bobblocks:"..couleurs[a].."block_off",
					rules = rulesbobblocks
					}},
	})

	minetest.register_node("bobblocks:"..couleurs[a].."block_off", {
		description = ""..couleurs[a].." Block",
		tiles = {"bobblocks_"..couleurs[a].."block.png"},
		is_ground_content = true,
--		alpha = WATER_ALPHA,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		drop = "bobblocks:"..couleurs[a].."block",
		mesecons =	{conductor ={
					state = mesecon.state.off,
					onstate = "bobblocks:"..couleurs[a].."block",
					rules = rulesbobblocks
					}},
	})
	--Pole
	minetest.register_node("bobblocks:"..couleurs[a].."pole", {
		description = ""..couleurs[a].." Pole",
		drawtype = "fencelike",
		tiles = {"bobblocks_"..couleurs[a].."block.png"},
		inventory_image = ("bobblocks_inv"..couleurs[a].."pole.png"),
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX-0,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		mesecons =	{conductor ={
					state = mesecon.state.on,
					offstate = "bobblocks:"..couleurs[a].."pole_off",
					rules = rulesbobblocks
					}},
	})

	minetest.register_node("bobblocks:"..couleurs[a].."pole_off", {
		description = "Red Pole",
		drawtype = "fencelike",
		tiles = {"bobblocks_"..couleurs[a].."block.png"},
		inventory_image = ("bobblocks_inv"..couleurs[a].."pole.png"),
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX-10,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		drop = "bobblocks:"..couleurs[a].."pole",
				mesecons =	{conductor ={
					state = mesecon.state.off,
					onstate = "bobblocks:"..couleurs[a].."pole",
					rules = rulesbobblocks
					}},
	})
	--Craft
	--Block
	minetest.register_craft({
		output = "bobblocks:"..couleurs[a].."block 2", 
		recipe = {
			{"default:glass 1", "default:torch 1", "dye:"..couleurs[a].." 1"},
		},
	})
	--Pole
	minetest.register_craft({
		output = "bobblocks:"..couleurs[a].."pole 1",
		recipe = {
			{"bobblocks:"..couleurs[a].."block 1", "default:stick 1"},

		},
	})
end

