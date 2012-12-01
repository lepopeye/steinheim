--OBSIDIAN MODIFIÉ
-- Modification de la generation du cobble
-- Correction des buckets & des torchs ( probleme sur ligtmax )
-- Modification par Rerem et turbogus et Jat
-- Mod original ( code + graphique ) par ????


--------------------------
--generation de l'obsidian
--------------------------
-- Si de l'eau touche une source de lave = obsidian
-- Si de l'eau touche de la lave qui coule = cobble

minetest.register_abm({
nodenames = {"default:lava_source","default:lava_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local lava_flowing=true
		if node.name=="default:lava_source" then
			lava_flowing=false
		end
		local c=0
		position={{x=pos.x+1, y=pos.y, z=pos.z},{x=pos.x-1, y=pos.y, z=pos.z},{x=pos.x, y=pos.y, z=pos.z+1},{x=pos.x, y=pos.y, z=pos.z-1},{x=pos.x, y=pos.y+1, z=pos.z},{x=pos.x, y=pos.y-1, z=pos.z}}
		for c=1,table.getn(position) do	
			if minetest.env:get_node(position[c]).name=="default:water_flowing" or minetest.env:get_node(position[c]).name=="default:water_source" then
				if lava_flowing then
					minetest.env:add_node(pos, {name="default:cobble"})
				else
					minetest.env:add_node(pos, {name="obsidian:obsidian_block"})
				end
				return
			end
		end
	end,
})

-- Node

minetest.register_node("obsidian:fence_obsidian", {
    description = "Obsidian Fence",
    drawtype = "fencelike",
    tiles = {"obsidian_block.png"},
    inventory_image = "obsidian_fence.png",
    wield_image = "obsidian_fence.png",
    paramtype = "light",
    is_ground_content = true,
    selection_box = {
        type = "fixed",
        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
    },
    groups = {cracky=1,level=3},
})
minetest.register_node("obsidian:obsidian_block", {
	description = "Obsidian block",
	tiles = {"obsidian_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=3},
	drop = "obsidian:obsidian_block",
})

-- Crafting

minetest.register_craft({
    output = 'obsidian:obsidian_sword',
    recipe = {
        {'obsidian:obsidian_block'},
        {'obsidian:obsidian_block'},
        {'default:stick'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_axe',
    recipe = {
        {'obsidian:obsidian_block', 'obsidian:obsidian_block'},
        {'obsidian:obsidian_block', 'default:stick'},
        {'', 'default:stick'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_shovel',
    recipe = {
        {'obsidian:obsidian_block'},
        {'default:stick'},
        {'default:stick'},
    }
})
minetest.register_craft({
    output = 'obsidian:obsidian_pick',
    recipe = {
        {'obsidian:obsidian_block', 'obsidian:obsidian_block', 'obsidian:obsidian_block'},
        {'', 'default:stick', ''},
        {'', 'default:stick', ''},
    }
})
minetest.register_craft({
    output = 'tool "obsidian:fence_obsidian"',
    recipe = {
            {'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"'},
            {'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"', 'node "obsidian:obsidian_block"'},
    }
})



-- Tools

minetest.register_tool("obsidian:obsidian_sword", {
	description = "Obsidian Sword",
	inventory_image = "os.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[2]=0.65, [3]=0.25}, uses=400, maxlevel=1},
			snappy={times={[2]=0.70, [3]=0.25}, uses=400, maxlevel=1},
			choppy={times={[3]=0.65}, uses=400, maxlevel=0}
		}
	},
})
minetest.register_tool("obsidian:obsidian_shovel", {
	description = "Obsidian Shovel",
	inventory_image = "osh.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.70, [2]=0.35, [3]=0.20}, uses=400, maxlevel=1}
		}
	},
})
minetest.register_tool("obsidian:obsidian_pick", {
	description = "Obsidian Pick",
	inventory_image = "op.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.0, [2]=0.55, [3]=0.35}, uses=400, maxlevel=1}
		}
	},
})
minetest.register_tool("obsidian:obsidian_axe", {
	description = "Obsidian Axe",
	inventory_image = "ob.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.75, [2]=0.45, [3]=0.45}, uses=400, maxlevel=1},
			fleshy={times={[2]=0.95, [3]=0.30}, uses=400, maxlevel=1}
		}
	},
})

-- Door

local WALLMX = 3
local WALLMZ = 5
local WALLPX = 2
local WALLPZ = 4

minetest.register_node( 'obsidian:door', {
    description         = 'Door',
    drawtype            = 'signlike',
    tiles         = { 'ob_door.png' },
    inventory_image     = 'ob_door.png',
    wield_image         = 'ob_door.png',
    paramtype2          = 'wallmounted',
    selection_box       = { type = 'wallmounted' },
    groups              = { choppy=2, dig_immediate=2 },
})
minetest.register_craft( {
    output              = 'obsidian:door',
    recipe = {
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
        { 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
    },
})
minetest.register_node( 'obsidian:door_a_c', {
    Description         = 'Top Closed Door',
    drawtype            = 'signlike',
    tiles         = { 'ob_door_a.png' },
    inventory_image     = 'ob_door_a.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = true,
    selection_box       = { type = "wallmounted", },
    groups              = { choppy=2, dig_immediate=2 },
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})
minetest.register_node( 'obsidian:door_b_c', {
    Description         = 'Bottom Closed Door',
    drawtype            = 'signlike',
    tiles         = { 'ob_door_b.png' },
    inventory_image     = 'ob_door_b.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = true,
    selection_box       = { type = "wallmounted", },
   groups              = { choppy=2, dig_immediate=2 },
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})
minetest.register_node( 'obsidian:door_a_o', {
    Description         = 'Top Open Door',
    drawtype            = 'signlike',
    tiles         = { 'ob_door_a_r.png' },
    inventory_image     = 'ob_door_a_r.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = false,
    selection_box       = { type = "wallmounted", },
    groups              = { choppy=2, dig_immediate=2 },
    legacy_wallmounted  = true,
    drop                = 'obsidian:door',
})
minetest.register_node( 'obsidian:door_b_o', {
    Description         = 'Bottom Open Door',
    drawtype            = 'signlike',
    tiles         = { 'ob_door_b_r.png' },
    inventory_image     = 'ob_door_b_r.png',
    paramtype           = 'light',
    paramtype2          = 'wallmounted',
    walkable            = false,
    selection_box       = { type = "wallmounted", },
    groups              = { choppy=2, dig_immediate=2 },
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
