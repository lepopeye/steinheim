-- Load translation library if intllib is installed

local S
if (minetest.get_modpath("intllib")) then
	dofile(minetest.get_modpath("intllib").."/intllib.lua")
	S = intllib.Getter(minetest.get_current_modname())
	else
	S = function ( s ) return s end
end

-- Node will be called <modname>slab_<subname>

function register_slab(modname, subname, recipeitem, groups, images, description, drop, paramtype2, light)
	minetest.register_node(":" .. modname .. ":slab_" .. subname, {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop,
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		-- If it's being placed on an another similar one, replace it with
		-- a full block
		local slabpos = nil
		local slabnode = nil
		local p1 = pointed_thing.above
		p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
		local n1 = minetest.env:get_node(p1)
		if n1.name == modname .. ":slab_" .. subname then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(recipeitem)
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end

		-- Otherwise place regularly
		return minetest.item_place(itemstack, placer, pointed_thing)
	end,
})

minetest.register_node(":stairs:slab_" .. subname, {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	drop = modname .. ":slab_" .. drop,
	paramtype = "light",
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_inverted", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_inverted",
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		-- If it's being placed on an another similar one, replace it with
		-- a full block
		local slabpos = nil
		local slabnode = nil
		local p1 = pointed_thing.above
		p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
		local n1 = minetest.env:get_node(p1)
		if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(recipeitem)
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end

		-- Otherwise place regularly
		return minetest.item_place(itemstack, placer, pointed_thing)
	end,
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_wall", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	drop = modname .. ":slab_" .. drop .. "_wall",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_quarter_wall", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_quarter_wall",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_three_quarter_wall", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_three_quarter_wall",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.25, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_quarter", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_quarter",
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		-- If it's being placed on an another similar one, replace it with
		-- a full block
		local slabpos = nil
		local slabnode = nil
		local p1 = pointed_thing.above
		p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
		local n1 = minetest.env:get_node(p1)
		if n1.name == modname .. ":slab_" .. subname .. "_quarter" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname)
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter")
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname .. "_three_quarter" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(recipeitem)
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end

		-- Otherwise place regularly
		return minetest.item_place(itemstack, placer, pointed_thing)
	end,
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_quarter_inverted", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_quarter",
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		-- If it's being placed on an another similar one, replace it with
		-- a full block
		local slabpos = nil
		local slabnode = nil
		local p1 = pointed_thing.above
		p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
		local n1 = minetest.env:get_node(p1)
		if n1.name == modname .. ":slab_" .. subname .. "_quarter_inverted" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_inverted")
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname .. "_inverted" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(modname .. ":slab_" .. subname .. "_three_quarter_inverted")
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end
		
		if n1.name == modname .. ":slab_" .. subname .. "_three_quarter_inverted" then
			slabpos = p1
			slabnode = n1
		end
		if slabpos then
			-- Remove the slab at slabpos
			minetest.env:remove_node(slabpos)
			-- Make a fake stack of a single item and try to place it
			local fakestack = ItemStack(recipeitem)
			pointed_thing.above = slabpos
			fakestack = minetest.item_place(fakestack, placer, pointed_thing)
			-- If the item was taken from the fake stack, decrement original
			if not fakestack or fakestack:is_empty() then
				itemstack:take_item(1)
			-- Else put old node back
			else
				minetest.env:set_node(slabpos, slabnode)
			end
			return itemstack
		end

		-- Otherwise place regularly
		return minetest.item_place(itemstack, placer, pointed_thing)
	end,
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_three_quarter", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_three_quarter",
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":"..modname .. ":slab_" .. subname .. "_three_quarter_inverted", {
	description = S("%s Slab"):format(S(description)),
	drawtype = "nodebox",
	tiles = images,
	light_source = light,
	drop = modname .. ":slab_" .. drop .. "_three_quarter",
	paramtype = "light",
	paramtype2 = paramtype2,
	sunlight_propagates = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Unregister default recipes

minetest.register_craft({
	output = "moreblocks:nothing 1",
	recipe = {
		{recipeitem, recipeitem, recipeitem},
	},
})
end
