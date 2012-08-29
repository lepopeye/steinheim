--Mod Name: Uranium Mod
--Author: LandMine
--Last Edit: 06.29.2012
--About Mod: Adds various items to Minetest
--MineTest Version: MineTest-C55 0.4.dev-20120606-c57e508


--
-- Fuels
--

minetest.register_craft({
	type = "fuel",
	recipe = "uranium:uranium_dust",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "uranium:radioactive_coal",
	burntime = 80,
})

uranium = {}
---------------------------------------------------------------------------------------------------------

--01. Uranium Ore:

minetest.register_node( "uranium:uranium_ore", {
	description = "Uranium Ore",
	tile_images = { "default_stone.png^uranium_ore.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "uranium:uranium_dust" 3',
})

---------------------------------------------------------------------------------------------------------

--02.Uranium Dust:

minetest.register_craftitem( "uranium:uranium_dust", {
	description = "Uranium Dust",
	inventory_image = "uranium_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

---------------------------------------------------------------------------------------------------------

--03.Uranium Block:

minetest.register_node( "uranium:uranium_block", {
	description = "Uranium Block",
	tile_images = { "uranium_block.png" },
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 15,
	is_ground_content = true,
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft( {
	output = 'node "uranium:uranium_block" 1',
	recipe = {
		{ 'uranium:uranium_dust', 'uranium:uranium_dust', 'uranium:uranium_dust' },
		{ 'uranium:uranium_dust', 'uranium:uranium_dust', 'uranium:uranium_dust' },
		{ 'uranium:uranium_dust', 'uranium:uranium_dust', 'uranium:uranium_dust' },
	}
})
---------------------------------------------------------------------------------------------------------

--04.Radioactive Coal:

minetest.register_craftitem( "uranium:radioactive_coal", {
	description = "Radioactive Coal",
	inventory_image = "uranium_coal.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
    type = "cooking",
    output = "uranium:radioactive_coal",
    recipe = "default:coal_lump",
})

---------------------------------------------------------------------------------------------------------

--05.Uranium Gem:

minetest.register_craftitem( "uranium:uranium_gem", {
	description = "Uranium Gem",
	inventory_image = "uranium_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
    type = "cooking",
    output = "uranium:uranium_gem",
    recipe = "default:steel_ingot",
})
---------------------------------------------------------------------------------------------------------

--05.Uranium Tools:

--Uranium Pick
minetest.register_tool("uranium:uranium_pick", {
	description = "Uranium Pickaxe",
	inventory_image = "uranium_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3}
		}
	},
})

minetest.register_craft( {
	output = 'craft "uranium:uranium_pick" 1',
	recipe = {
		{ 'uranium:uranium_gem', 'uranium:uranium_gem', 'uranium:uranium_gem' },
		{ '', 'Stick', '' },
		{ '', 'Stick', '' },
	}
})

--Uranium Shovel
minetest.register_tool("uranium:uranium_shovel", {
	description = "Uranium Shovel",
	inventory_image = "uranium_shovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
		}
	},
})

minetest.register_craft( {
	output = 'craft "uranium:uranium_shovel" 1',
	recipe = {
		{ '', 'uranium:uranium_gem', '' },
		{ '', 'Stick', '' },
		{ '', 'Stick', '' },
	}
})

--Uranium Axe
minetest.register_tool("uranium:uranium_axe", {
	description = "Uranium Axe",
	inventory_image = "uranium_axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
			fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})

minetest.register_craft( {
	output = 'craft "uranium:uranium_axe" 1',
	recipe = {
		{ 'uranium:uranium_gem', 'uranium:uranium_gem', '' },
		{ 'uranium:uranium_gem', 'Stick', '' },
		{ '', 'Stick', '' },
	}
})

--Uranium Sword
minetest.register_tool("uranium:uranium_sword", {
	description = "Uranium Sword",
	inventory_image = "uranium_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.65, [3]=0.25}, uses=200, maxlevel=1},
			snappy={times={[2]=0.70, [3]=0.25}, uses=200, maxlevel=1},
			choppy={times={[3]=0.65}, uses=200, maxlevel=0}
		}
	}
})

minetest.register_craft( {
	output = 'craft "uranium:uranium_sword" 1',
	recipe = {
		{ '', 'uranium:uranium_gem', '' },
		{ '', 'uranium:uranium_gem', '' },
		{ '', 'Stick', '' },
	}
})

--Uranium Paxel

minetest.register_tool("uranium:uranium_paxel", {
	description = "Uranium Paxel",
	inventory_image = "uranium_paxel.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3}
		}
	}
})

minetest.register_craft( {
	output = 'craft "uranium:uranium_paxel" 1',
	recipe = {
		{ 'uranium:uranium_shovel', 'uranium:uranium_pick', 'uranium:uranium_axe' },
		{ '', 'Stick', '' },
		{ '', 'Stick', '' },
	}
})

---------------------------------------------------------------------------------------------------------

--06.Reactor:

minetest.register_craft( {
	output = 'craft "uranium:reactor" 1',
	recipe = {
		{ 'cobble', 'cobble', 'cobble' },
		{ 'cobble', 'uranium:uranium_dust', 'cobble' },
		{ 'cobble', 'cobble', 'cobble' },
	}
})

uranium.uranium_reactor_inactive_formspec =
	"invsize[8,9;]"..
	"image[2,2;1,1;uranium_fireon.png]"..
	"list[current_name;fuel;2,3;1,1;]"..
	"list[current_name;src;2,1;1,1;]"..
	"list[current_name;dst;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"

minetest.register_node("uranium:reactor", {
	description = "Reactor",
	tiles = {"uranium_reactortop.png", "uranium_reactorside.png", "uranium_reactorside.png",
		"uranium_reactorside.png", "uranium_reactorside.png", "uranium_reactorfrontidle.png"},
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", uranium.uranium_reactor_inactive_formspec)
		meta:set_string("infotext", "Reactor")
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
})

minetest.register_node("uranium:reactor_active", {
	description = "Reactor",
	tiles = {"uranium_reactortop.png", "uranium_reactorside.png", "uranium_reactorside.png",
		"uranium_reactorside.png", "uranium_reactorside.png", "uranium_reactorfrontactive.png"},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "uranium:reactor",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", uranium.uranium_reactor_inactive_formspec)
		meta:set_string("infotext", "Furnace");
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
})

function hacky_swap_node(pos,name)
	local node = minetest.env:get_node(pos)
	local meta = minetest.env:get_meta(pos)
	local meta0 = meta:to_table()
	if node.name == name then
		return
	end
	node.name = name
	local meta0 = meta:to_table()
	minetest.env:set_node(pos,node)
	meta = minetest.env:get_meta(pos)
	meta:from_table(meta0)
end

minetest.register_abm({
	nodenames = {"uranium:reactor","uranium:reactor_active"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = minetest.env:get_meta(pos)
		for i, name in ipairs({
				"fuel_totaltime",
				"fuel_time",
				"src_totaltime",
				"src_time"
		}) do
			if meta:get_string(name) == "" then
				meta:set_float(name, 0.0)
			end
		end

		local inv = meta:get_inventory()

		local srclist = inv:get_list("src")
		local cooked = nil
		
		if srclist then
			cooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		
		local was_active = false
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			was_active = true
			meta:set_float("fuel_time", meta:get_float("fuel_time") + 1)
			meta:set_float("src_time", meta:get_float("src_time") + 1)
			if cooked and cooked.item and meta:get_float("src_time") >= cooked.time then
				-- check if there's room for output in "dst" list
				if inv:room_for_item("dst",cooked.item) then
					-- Put result in "dst" list
					inv:add_item("dst", cooked.item)
					-- take stuff from "src" list
					srcstack = inv:get_stack("src", 1)
					srcstack:take_item()
					inv:set_stack("src", 1, srcstack)
				else
					print("Could not insert '"..cooked.item.."'")
				end
				meta:set_string("src_time", 0)
			end
		end
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			local percent = math.floor(meta:get_float("fuel_time") /
					meta:get_float("fuel_totaltime") * 100)
			meta:set_string("infotext","Reactor active: "..percent.."%")
			hacky_swap_node(pos,"uranium:reactor_active")
			meta:set_string("formspec",
				"invsize[8,9;]"..
				"image[2,2;1,1;uranium_fireon.png^[lowpart:"..
						(100-percent)..":uranium_fireoff.png]"..
				"list[current_name;fuel;2,3;1,1;]"..
				"list[current_name;src;2,1;1,1;]"..
				"list[current_name;dst;5,1;2,2;]"..
				"list[current_player;main;0,5;8,4;]")
			return
		end

		local fuel = nil
		local cooked = nil
		local fuellist = inv:get_list("fuel")
		local srclist = inv:get_list("src")
		
		if srclist then
			cooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		if fuellist then
			fuel = minetest.get_craft_result({method = "fuel", width = 1, items = fuellist})
		end

		if fuel.time <= 0 then
			meta:set_string("infotext","Reactor out of fuel")
			hacky_swap_node(pos,"uranium:reactor")
			meta:set_string("formspec", uranium.uranium_reactor_inactive_formspec)
			return
		end

		if cooked.item:is_empty() then
			if was_active then
				meta:set_string("infotext","Reactor is empty")
				hacky_swap_node(pos,"uranium:reactor")
				meta:set_string("formspec", uranium.uranium_reactor_inactive_formspec)
			end
			return
		end

		meta:set_string("fuel_totaltime", fuel.time)
		meta:set_string("fuel_time", 0)
		
		local stack = inv:get_stack("fuel", 1)
		stack:take_item()
		inv:set_stack("fuel", 1, stack)
	end,
})

---------------------------------------------------------------------------------------------------------

--06.Toxic Waste:

minetest.register_node("uranium:toxic_waste_flowing", {
	description = "Flowing Waste",
	inventory_image = minetest.inventorycube("uranium_waste.png"),
	drawtype = "flowingliquid",
	tiles = {"uranium_waste.png"},
	special_tiles = {
		{
			image="uranium_waste_source_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="uranium_waste_source_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	paramtype = "light",
	light_source = LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "flowing",
	liquid_alternative_flowing = "uranium:toxic_waste_flowing",
	liquid_alternative_source = "uranium:nuclear_waste",
	liquid_viscosity = LAVA_VISC,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=2},
})

minetest.register_node("uranium:nuclear_waste", {
	description = "Nuclear Waste",
	inventory_image = minetest.inventorycube("uranium_waste.png"),
	drawtype = "liquid",
	tiles = {
		{name="uranium_waste_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	special_tiles = {
		-- New-style waste source material (mostly unused)
		{name="uranium_waste.png", backface_culling=false},
	},
	paramtype = "light",
	light_source = LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquidtype = "source",
	liquid_alternative_flowing = "uranium:toxic_waste_flowing",
	liquid_alternative_source = "uranium:nuclear_waste",
	liquid_viscosity = LAVA_VISC,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=2},
})


-------------------------------------------		
-- Ore generation

local function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, ore_per_chunk, height_min, height_max)
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local chunk_size = 3
	if ore_per_chunk <= 4 then
		chunk_size = 2
	end
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	--print("generate_ore num_chunks: "..dump(num_chunks))
	for i=1,num_chunks do
	if (y_max-chunk_size+1 <= y_min) then return end
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.env:get_node(p2).name == wherein then
						minetest.env:set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
	--print("generate_ore done")
end

minetest.register_on_generated(function(minp, maxp, seed)
generate_ore("uranium:uranium_ore", "default:stone", minp, maxp, seed+21,   1/13/13/13,    5, -31000,  -150)

end)
