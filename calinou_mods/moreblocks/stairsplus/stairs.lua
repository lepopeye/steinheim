-- Load translation library if intllib is installed

local S
if (minetest.get_modpath("intllib")) then
	dofile(minetest.get_modpath("intllib").."/intllib.lua")
	S = intllib.Getter(minetest.get_current_modname())
	else
	S = function ( s ) return s end
end

-- Node will be called <modname>:stair_<subname>

function register_stair(modname, subname, recipeitem, groups, images, description, drop, light)
	minetest.register_node(":" .. modname .. ":stair_" .. subname, {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":" .. modname .. ":stair_" .. subname .. "_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":" .. modname .. ":stair_" .. subname .. "_half", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_half_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_right_half", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_right_half_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_wall", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_wall_half", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_wall_half",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_wall_half_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_wall_half",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_inner", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_inner",
	paramtype = "light",
	paramtype2 = "facedir",
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_outer", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_outer",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_inner_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_inner",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

	minetest.register_node(":"..modname .. ":stair_" .. subname .. "_outer_inverted", {
	description = S("%s Stairs"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":stair_" .. drop .. "_outer",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
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

-- Unregister default recipes

minetest.register_craft({
	output = "moreblocks:nothing 1",
	recipe = {
		{recipeitem, "", ""},
		{recipeitem, recipeitem, ""},
		{recipeitem, recipeitem, recipeitem},
	},
})

minetest.register_craft({
	output = "moreblocks:nothing 1",
	recipe = {
		{"", "", recipeitem},
		{"", recipeitem, recipeitem},
		{recipeitem, recipeitem, recipeitem},
	},
})
end
