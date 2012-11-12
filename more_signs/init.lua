--Sign right
minetest.register_node("more_signs:wall_right", {
	description = "Sign right",
	drawtype = "signlike",
	tiles = {"sign_right.png"},
	inventory_image = "sign_right.png",
	wield_image = "sign_right.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		--local n = minetest.env:get_node(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", "hack:sign_text_input")
		meta:set_string("infotext", "\"\"")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		local meta = minetest.env:get_meta(pos)
		fields.text = fields.text or ""
		print((sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,
})
-- sign left
minetest.register_node("more_signs:wall_left", {
	description = "Sign left",
	drawtype = "signlike",
	tiles = {"sign_left.png"},
	inventory_image = "sign_left.png",
	wield_image = "sign_left.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		--local n = minetest.env:get_node(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", "hack:sign_text_input")
		meta:set_string("infotext", "\"\"")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		local meta = minetest.env:get_meta(pos)
		fields.text = fields.text or ""
		print((sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,
})
--Sign up
minetest.register_node("more_signs:wall_up", {
	description = "Sign up",
	drawtype = "signlike",
	tiles = {"sign_up.png"},
	inventory_image = "sign_up.png",
	wield_image = "sign_up.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		--local n = minetest.env:get_node(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", "hack:sign_text_input")
		meta:set_string("infotext", "\"\"")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		local meta = minetest.env:get_meta(pos)
		fields.text = fields.text or ""
		print((sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,
})
--Sign down
minetest.register_node("more_signs:wall_down", {
	description = "Sign down",
	drawtype = "signlike",
	tiles = {"sign_down.png"},
	inventory_image = "sign_down.png",
	wield_image = "sign_down.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		--local n = minetest.env:get_node(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", "hack:sign_text_input")
		meta:set_string("infotext", "\"\"")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		local meta = minetest.env:get_meta(pos)
		fields.text = fields.text or ""
		print((sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,
})
--recipes
minetest.register_craft({
	output = 'more_signs:wall_right 1',
	recipe = {
		{'', '', ''},
		{'', 'default:sign_wall', 'default:stick'},
		{'', '', ''},
	}
})
minetest.register_craft({
	output = 'more_signs:wall_left 1',
	recipe = {
		{'', '', ''},
		{'default:stick', 'default:sign_wall', ''},
		{'', '', ''},
	}
})
minetest.register_craft({
	output = 'more_signs:wall_up 1',
	recipe = {
		{'', 'default:stick', ''},
		{'', 'default:sign_wall', ''},
		{'', '', ''},
	}
})
minetest.register_craft({
	output = 'more_signs:wall_down 1',
	recipe = {
		{'', '', ''},
		{'', 'default:sign_wall', ''},
		{'', 'default:stick', ''},
	}
})
minetest.register_craft({
	output = 'default:sign_wall',
	recipe = {

		{'more_signs:wall_down'},

	}
})
minetest.register_craft({
	output = 'default:sign_wall',
	recipe = {

		{'more_signs:wall_up'},

	}
})
minetest.register_craft({
	output = 'default:sign_wall',
	recipe = {

		{'more_signs:wall_left'},

	}
})
minetest.register_craft({
	output = 'default:sign_wall',
	recipe = {

		{'more_signs:wall_right'},

	}
})