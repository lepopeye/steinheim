--[[
--Cadeaux par Jat
Licence GPLv2 or later for code
Licence CC-BY-SA for image
--]]

minetest.register_node("cadeaux:1", {
	description = "Cadeaux",
	tiles = {"cadeaux_1_dessu.png","cadeaux_1_fond.png","cadeaux_1_cote.png","cadeaux_1_cote.png","cadeaux_1_cote.png","cadeaux_1_cote.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1},
	after_place_node = function(pos, placer)
		local listeplayer={}
		listeplayer[placer:get_player_name()] = true
		minetest.env:get_meta(pos):set_string("player",minetest.serialize(listeplayer))
		minetest.env:get_meta(pos):set_string("objet",minetest.serialize({{"default:wood",9,27},{"default:stone",9,27},{"default:steel_ingot",9,27},{"moreores:gold_ingot",9,27},{"moreores:silver_ingot",9,27},{"moreores:bronze_ingot",9,27},{"moreores:mithril_ingot",9,27},{"obsidian:obsidian_block",9,27},{"default:mese",9,27}}))
	end,
    on_punch = function(pos, node, puncher)
		local listeplayer=minetest.deserialize(minetest.env:get_meta(pos):get_string("player"))
		local listeobjet=minetest.deserialize(minetest.env:get_meta(pos):get_string("objet"))
		if listeplayer[puncher:get_player_name()] == nil then
			local nombre = math.random(1,table.getn(listeobjet))
			puncher:get_inventory():add_item('main',''..listeobjet[nombre][1]..' '..math.random(listeobjet[nombre][2],listeobjet[nombre][3])..'')
			listeplayer[puncher:get_player_name()] = true
			minetest.env:get_meta(pos):set_string("player",minetest.serialize(listeplayer))
		end
    end,	
})