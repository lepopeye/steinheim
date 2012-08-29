
--OBSIDIAN MODIFIÉ

-- Modification de la generation du cobble
-- Correction des buckets & des torchs ( probleme sur ligtmax )

-- Modification par Rerem et turbogus

-- Mod original ( code + graphique ) par ????



--minetest.register_node("obsidian:obsidian_block", {
--    tile_images = {"obsidian_block.png"},
--    inventory_image = minetest.inventorycube("obsidian_block.png"),
--    is_ground_content = true,
    
--    material = minetest.digprop_glasslike(1.0), -- obsidian is hard as rock PUN
--    drop = {
 --       max_items = 1,
--        items = {
--            {
--                -- player will get shard with 1/15 chance
--                items = {'obsidian:obsidian_shard'},
--                rarity = 15,
 --           },
 --           {
--                items = {'obsidian:obsidian_block'},
--            }
 --       }
--    },
--}) 

minetest.register_node("obsidian:obsidian_block", {
	description = "Obsidian block",
	tiles = {"obsidian_block.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = {
        max_items = 1,
        items = {
            {
                -- player will get shard with 1/15 chance
                items = {'obsidian:obsidian_shard'},
                rarity = 15,
            },
            {
                items = {'obsidian:obsidian_block'},
            }
        }
    },
})

minetest.register_craftitem("obsidian:obsidian_shard", {
    image = "obsidian_shard.png",
    on_place_on_ground = craftitem_place_item,
})

minetest.register_craft({
    output = 'obsidian:obsidian_knife',
    recipe = {
        {'obsidian:obsidian_shard'},
        {'obsidian:rod'},
    }
})

minetest.register_tool("obsidian:obsidian_knife", {
    image = "obsidian_knife.png",
    basetime = 1.0,
    dt_weight = 0.5,
    dt_crackiness = 2,
    dt_crumbliness = 4,
    dt_cuttability = -0.5,
    basedurability = 80,
    dd_weight = 0,
    dd_crackiness = 0,
    dd_crumbliness = 0,
    dd_cuttability = 0,
})
--------------------------
--generation de l'obsidian
--------------------------
-- Si source lave touché par source source d'eau = bloc d'obsidian :

minetest.register_abm({
nodenames = {"default:lava_source"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		
		
		
		
		--S'il y a de l'eau à coté ou au dessus de la lave, on créé de l'obsidian à la place de la lave
		local createObsidian = false
		
		local pos2={x=pos.x+1, y=pos.y, z=pos.z}
		
		if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
			createObsidian = true
		else
			pos2={x=pos.x-1, y=pos.y, z=pos.z}
			
			if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
				createObsidian = true
			else
				pos2={x=pos.x, y=pos.y, z=pos.z+1}
				
				if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
					createObsidian = true
				else
					pos2={x=pos.x, y=pos.y, z=pos.z-1}
					
					if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
						createObsidian = true
					else
						pos2={x=pos.x, y=pos.y+1, z=pos.z}
						
						if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
							createObsidian = true
						end
					end
				end
			end
		end
		
		if(createObsidian) then
			minetest.env:remove_node(pos)
			minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
			nodeupdate(pos)
			if (n.name=="default:water_flowing") or (n.name == "default:water_source") then --A
			  
		else
			--S'il y a de l'eau sous la lave, on créé de la cobble à la place de l'eau
			pos2={x=pos.x, y=pos.y-1, z=pos.z}
			if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
				minetest.env:remove_node(pos2)
				minetest.env:remove_node(pos)
				minetest.env:add_node(pos2, {name="default:cobble"})
				nodeupdate(pos)
				nodeupdate(pos2)
			end
			end
		end
		
		
	end,
})

minetest.register_abm({
nodenames = {"default:lava_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		
		--local fuelpos1={x=pos.x+1, y=pos.y, z=pos.z}
		--local fuelpos2={x=pos.x-1, y=pos.y, z=pos.z}
		--local fuelpos3={x=pos.x, y=pos.y, z=pos.z+1}
		--local fuelpos4={x=pos.x, y=pos.y, z=pos.z-1}
		--local fuelpos5={x=pos.x, y=pos.y+1, z=pos.z}
		--if minetest.env:get_node(fuelpos1).name=="default:water_source" or minetest.env:get_node(fuelpos2).name=="default:water_source" or minetest.env:get_node(fuelpos3).name=="default:water_source" or minetest.env:get_node(fuelpos4).name=="default:water_source" or minetest.env:get_node(fuelpos5).name=="default:water_source" then
			--minetest.env:remove_node(pos)
			--minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
			--nodeupdate(pos)
		--end
		
		
		--S'il y a de l'eau à coté ou au dessus de la lave, on créé de l'obsidian à la place de la lave
		local createObsidian = false
		
		local pos2={x=pos.x+1, y=pos.y, z=pos.z}
		
		if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
			createObsidian = true
		else
			pos2={x=pos.x-1, y=pos.y, z=pos.z}
			
			if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
				createObsidian = true
			else
				pos2={x=pos.x, y=pos.y, z=pos.z+1}
				
				if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
					createObsidian = true
				else
					pos2={x=pos.x, y=pos.y, z=pos.z-1}
					
					if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
						createObsidian = true
					else
						pos2={x=pos.x, y=pos.y+1, z=pos.z}
						
						if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
							createObsidian = true
						end
					end
				end
			end
		end
		
		if(createObsidian) then
			minetest.env:remove_node(pos)
			minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
			nodeupdate(pos)
		else
			--S'il y a de l'eau sous la lave, on créé de la cobble à la place de l'eau et on supprime la lave
			pos2={x=pos.x, y=pos.y-1, z=pos.z}
			if minetest.env:get_node(pos2).name=="default:water_source" or minetest.env:get_node(pos2).name=="default:water_flowing" then
				minetest.env:remove_node(pos2)
				minetest.env:remove_node(pos)
				minetest.env:add_node(pos2, {name="default:cobble"})
				nodeupdate(pos2)
				nodeupdate(pos)
			end
		end
		
		
	end,
})





-- Crafting

minetest.register_craft({
    output = 'obsidian:obsidian_sword',
    recipe = {
        {'obsidian:obsidian_block'},
        {'obsidian:obsidian_block'},
        {'obsidian:rod'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_axe',
    recipe = {
        {'obsidian:obsidian_block', 'obsidian:obsidian_block'},
        {'obsidian:obsidian_block', 'obsidian:rod'},
        {'', 'obsidian:rod'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_shovel',
    recipe = {
        {'obsidian:obsidian_block'},
        {'obsidian:rod'},
        {'obsidian:rod'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_pick',
    recipe = {
        {'obsidian:obsidian_block', 'obsidian:obsidian_block', 'obsidian:obsidian_block'},
        {'', 'obsidian:rod', ''},
        {'', 'obsidian:rod', ''},
    }
})




-- tools
minetest.register_tool("obsidian:obsidian_sword", {
    image = "os.png",
    basetime = 0,
    dt_weight = 3,
    dt_crackiness = 0,
    dt_crumbliness = 1,
    dt_cuttability = -10,
    basedurability = 1000,
    dd_weight = 0,
    dd_crackiness = 0,
    dd_crumbliness = 0,
    dd_cuttability = 0,
})
minetest.register_tool("obsidian:obsidian_shovel", {
    image = "osh.png",
    basetime = 0,
    dt_weight = 0.5,
    dt_crackiness = 2,
    dt_crumbliness = -1.5,
    dt_cuttability = 0.0,
    basedurability = 330,
    dd_weight = 0,
    dd_crackiness = 0,
    dd_crumbliness = 0,
    dd_cuttability = 0,
})
minetest.register_tool("obsidian:obsidian_pick", {
    image = "op.png",
    basetime = 0,
    dt_weight = 0,
    dt_crackiness = -0.5,
    dt_crumbliness = 2,
    dt_cuttability = 0,
    basedurability = 333,
    dd_weight = 0,
    dd_crackiness = 0,
    dd_crumbliness = 0,
    dd_cuttability = 0,
})
minetest.register_tool("obsidian:obsidian_axe", {
    image = "ob.png",
    basetime = 0,
    dt_weight = 3,
    dt_crackiness = 0,
    dt_crumbliness = 1,
    dt_cuttability = -10,
    basedurability = 1000,
    dd_weight = 0,
    dd_crackiness = 0,
    dd_crumbliness = 0,
    dd_cuttability = 0,
})

minetest.register_node("obsidian:fence_obsidian", {
    description = "Obsidian Fence",
    drawtype = "fencelike",
    tile_images = {"obsidian_block.png"},
    inventory_image = "obsidian_fence.png",
    wield_image = "obsidian_fence.png",
    paramtype = "light",
    is_ground_content = true,
    selection_box = {
        type = "fixed",
        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
    },
    material = minetest.digprop_glasslike(5.0),
})
minetest.register_craft({
    output = 'tool "obsidian:fence_obsidian"',
    recipe = {
            {'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"'},
            {'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"'},
    }
})
minetest.register_node("obsidian:obsidian_ladder", {
    description = "Obsidian Ladder",
    drawtype = "signlike",
    tile_images = {"obsidian_ladder.png"},
    inventory_image = "obsidian_ladder.png",
    wield_image = "obsidian_ladder.png",
    paramtype = "light",
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
    material = minetest.digprop_glasslike(5.0),
    legacy_wallmounted = true,
})
minetest.register_craft({
    output = 'obsidian:obsidian_ladder',
    recipe = {
        {'obsidian:obsidian_block', '', 'obsidian:obsidian_block'},
        {'obsidian:obsidian_block', 'obsidian:obsidian_block', 'obsidian:obsidian_block'},
        {'obsidian:obsidian_block', '', 'obsidian:obsidian_block'},
    }
})
minetest.register_node("obsidian:obsidian_shelf", {
    tile_images = {"obsidian_shelf_top.png", "obsidian_shelf_bottom.png",
			"obsidian_shelf_side.png", "obsidian_shelf_side.png",
			"obsidian_shelf_side.png", "obsidian_shelf_side.png"},
    is_ground_content = true,
    material = minetest.digprop_glasslike(15.0), -- obsidian is hard as rock PUN
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get shard with 1/30 chance
                items = {'obsidian:obsidian_shard'},
                rarity = 30,
            },
            {
                items = {'obsidian:obsidian_block'},
            }
        }
    },
})
minetest.register_craft({
    output = 'tool "obsidian:obsidian_shelf"',
    recipe = {
            {'node "default:mese_ore"', 'node "gemstones:gem_ruby"', 'node "default:mese_ore"'},
            {'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"'},
	    {'node "default:mese_ore"', 'node "obsidian:obsidian_block"', 'node "default:mese_ore"'},
    }
})

minetest.register_alias("obsidian_bucket", "obsidian:bucket_empty")
minetest.register_alias("obsidian_bucket_water", "obsidian:bucket_water")
minetest.register_alias("obsidian_bucket_lava", "obsidian:bucket_lava")

minetest.register_craft({
	output = 'obsidian:bucket_empty 1',
	recipe = {
		{'obsidian:obsidian_block', '', 'obsidian:obsidian_block'},
		{'', 'obsidian:obsidian_block', ''},
	}
})

bucket = {}
bucket.liquids = {}

function bucket.register_liquid(source, flowing, itemname, inventory_image)
	bucket.liquids[source] = {
		source = source,
		flowing = flowing,
		itemname = itemname,
	}
	bucket.liquids[flowing] = bucket.liquids[source]

	if itemname ~= nil then
		minetest.register_craftitem(itemname, {
			inventory_image = inventory_image,
			stack_max = 1,
			liquids_pointable = true,
			on_use = function(itemstack, user, pointed_thing)
				-- Must be pointing to node
				if pointed_thing.type ~= "node" then
					return
				end
				-- Check if pointing to a liquid
				n = minetest.env:get_node(pointed_thing.under)
				if bucket.liquids[n.name] == nil then
					-- Not a liquid
					minetest.env:add_node(pointed_thing.above, {name=source})
				elseif n.name ~= source then
					-- It's a liquid
					minetest.env:add_node(pointed_thing.under, {name=source})
				end
				return {name="obsidian:bucket_empty"}
			end
		})
	end
end

minetest.register_craftitem("obsidian:bucket_empty", {
	inventory_image = "obsidian_bucket.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end
		-- Check if pointing to a liquid source
		n = minetest.env:get_node(pointed_thing.under)
		liquiddef = bucket.liquids[n.name]
		if liquiddef ~= nil and liquiddef.source == n.name and liquiddef.itemname ~= nil then
			minetest.env:add_node(pointed_thing.under, {name="air"})
			return {name=liquiddef.itemname}
		end
	end,
})

bucket.register_liquid(
	"default:water_source",
	"default:water_flowing",
	"obsidian:bucket_water",
	"obsidian_bucket_water.png"
)

bucket.register_liquid(
	"default:lava_source",
	"default:lava_flowing",
	"obsidian:bucket_lava",
	"obsidian_bucket_lava.png"
)

minetest.register_craft({
	type = "fuel",
	recipe = "obsidian:bucket_lava",
	burntime = 60,
})

LIGHT_MAX = 14

minetest.register_node("obsidian:torch", {
	description = "Obsidian Torch",
	drawtype = "torchlike",
	tile_images = {"obsidian_torch_floor.png", "obsidian_torch_ceiling.png", "obsidian_torch.png"},
	inventory_image = "obsidian_torch.png",
	wield_image = "obsidian_torch.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = LIGHT_MAX-1,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	material = minetest.digprop_constanttime(0.0),
	legacy_wallmounted = true,
})
minetest.register_craft({
    output = 'obsidian:torch',
    recipe = {
        {'default:coal_lump'},
        {'obsidian:rod'},
    }
})
minetest.register_craftitem("obsidian:rod", {
    image = "obsidian_rod.png",
    on_place_on_ground = craftitem_place_item,
})
minetest.register_craft({
    output = 'obsidian:rod',
    recipe = {
        {'obsidian:obsidian_block'},
    }
})






local WALLMX = 3
local WALLMZ = 5
local WALLPX = 2
local WALLPZ = 4



minetest.register_node( 'obsidian:door', {
    description         = 'Door',
    drawtype            = 'signlike',
    tile_images         = { 'ob_door.png' },
    inventory_image     = 'ob_door.png',
    wield_image         = 'ob_door.png',
    paramtype2          = 'wallmounted',
    selection_box       = { type = 'wallmounted' },
    material            = minetest.digprop_constanttime(1.0),
})

minetest.register_craft( {
    output              = 'obsidian:door',
    recipe = {
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
    },
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'obsidian:door',
    burntime = 30,
})

minetest.register_node( 'obsidian:door_a_c', {
    Description         = 'Top Closed Door',
    drawtype            = 'signlike',
    tile_images         = { 'ob_door_a.png' },
    inventory_image     = 'ob_door_a.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = true,
    selection_box       = { type = "wallmounted", },
    material            = minetest.digprop_constanttime(1.0),
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})

minetest.register_node( 'obsidian:door_b_c', {
    Description         = 'Bottom Closed Door',
    drawtype            = 'signlike',
    tile_images         = { 'ob_door_b.png' },
    inventory_image     = 'ob_door_b.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = true,
    selection_box       = { type = "wallmounted", },
    material            = minetest.digprop_constanttime(1.0),
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})

minetest.register_node( 'obsidian:door_a_o', {
    Description         = 'Top Open Door',
    drawtype            = 'signlike',
    tile_images         = { 'ob_door_a_r.png' },
    inventory_image     = 'ob_door_a_r.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = false,
    selection_box       = { type = "wallmounted", },
    material            = minetest.digprop_constanttime(1.0),
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})

minetest.register_node( 'obsidian:door_b_o', {
    Description         = 'Bottom Open Door',
    drawtype            = 'signlike',
    tile_images         = { 'ob_door_b_r.png' },
    inventory_image     = 'ob_door_b_r.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = false,
    selection_box       = { type = "wallmounted", },
    material            = minetest.digprop_constanttime(1.0),
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})



local round = function( n )
    if n >= 0 then
        return math.floor( n + 0.5 )
    else
        return math.ceil( n - 0.5 )
    end
end

local on_door_placed = function( pos, node, placer )
    if node.name ~= 'obsidian:door' then return end

    upos = { x = pos.x, y = pos.y - 1, z = pos.z }
    apos = { x = pos.x, y = pos.y + 1, z = pos.z }
    und = minetest.env:get_node( upos )
    abv = minetest.env:get_node( apos )

    dir = placer:get_look_dir()

    if     round( dir.x ) == 1  then
        newparam = WALLPX
    elseif round( dir.x ) == -1 then
        newparam = WALLMX
    elseif round( dir.z ) == 1  then
        newparam = WALLPZ
    elseif round( dir.z ) == -1 then
        newparam = WALLMZ
    end

    if und.name == 'air' then
        minetest.env:add_node( pos,  { name = 'obsidian:door_a_c', param2 = newparam } )
        minetest.env:add_node( upos, { name = 'obsidian:door_b_c', param2 = newparam } )
    elseif abv.name == 'air' then
        minetest.env:add_node( pos,  { name = 'obsidian:door_b_c', param2 = newparam } )
        minetest.env:add_node( apos, { name = 'obsidian:door_a_c', param2 = newparam } )
    else
        minetest.env:remove_node( pos )
        placer:get_inventory():add_item( "main", 'obsidian:door' )
        minetest.chat_send_player( placer:get_player_name(), 'not enough space' )
    end
end

local on_door_punched = function( pos, node, puncher )
    if string.find( node.name, 'obsidian:door' ) == nil then return end

    upos = { x = pos.x, y = pos.y - 1, z = pos.z }
    apos = { x = pos.x, y = pos.y + 1, z = pos.z }

    if string.find( node.name, '_c', -2 ) ~= nil then
        if     node.param2 == WALLPX then
            newparam = WALLMZ
        elseif node.param2 == WALLMZ then
            newparam = WALLMX
        elseif node.param2 == WALLMX then
            newparam = WALLPZ
        elseif node.param2 == WALLPZ then
            newparam = WALLPX
        end
    elseif string.find( node.name, '_o', -2 ) ~= nil then
        if     node.param2 == WALLMZ then
            newparam = WALLPX
        elseif node.param2 == WALLMX then
            newparam = WALLMZ
        elseif node.param2 == WALLPZ then
            newparam = WALLMX
        elseif node.param2 == WALLPX then
            newparam = WALLPZ
        end
    end

    if ( node.name == 'obsidian:door_a_c' ) then
        minetest.env:add_node( pos,  { name = 'obsidian:door_a_o', param2 = newparam } )
        minetest.env:add_node( upos, { name = 'obsidian:door_b_o', param2 = newparam } )

    elseif ( node.name == 'obsidian:door_b_c' ) then
        minetest.env:add_node( pos,  { name = 'obsidian:door_b_o', param2 = newparam } )
        minetest.env:add_node( apos, { name = 'obsidian:door_a_o', param2 = newparam } )

    elseif ( node.name == 'obsidian:door_a_o' ) then
        minetest.env:add_node( pos,  { name = 'obsidian:door_a_c', param2 = newparam } )
        minetest.env:add_node( upos, { name = 'obsidian:door_b_c', param2 = newparam } )

    elseif ( node.name == 'obsidian:door_b_o' ) then
        minetest.env:add_node( pos,  { name = 'obsidian:door_b_c', param2 = newparam } )
        minetest.env:add_node( apos, { name = 'obsidian:door_a_c', param2 = newparam } )

    end
end

local on_door_digged = function( pos, node, digger )
    upos = { x = pos.x, y = pos.y - 1, z = pos.z }
    apos = { x = pos.x, y = pos.y + 1, z = pos.z }

    if ( node.name == 'obsidian:door_a_c' ) or ( node.name == 'obsidian:door_a_o' ) then
        minetest.env:remove_node( upos )
    elseif ( node.name == 'obsidian:door_b_c' ) or ( node.name == 'obsidian:door_b_o' ) then
        minetest.env:remove_node( apos )
    end
end



minetest.register_on_placenode( on_door_placed )
minetest.register_on_punchnode( on_door_punched )
minetest.register_on_dignode( on_door_digged )



print( 'Obsidian Mod Loaded! ' )





--        end
--        return false
--    end,
--
