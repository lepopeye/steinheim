local old_nodes = {"hydro:wild_tomato","hydro:wild_peas","hydro:wild_habanero","hydro:wild_grapes","hydro:wild_coffee","hydro:wild_roses"}
local old_entities = {}

for _,node_name in ipairs(old_nodes) do
	minetest.register_node(":"..node_name, {
		groups = {old=1},
	})
end

minetest.register_abm({
	nodenames = {"group:old"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		minetest.env:remove_node(pos)
	end,
})

for _,entity_name in ipairs(old_entities) do
	minetest.register_entity(":"..entity_name, {
		on_activate = function(self, staticdata)
			self.object:remove()
		end,
	})
end