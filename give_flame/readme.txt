Ce mod permet de crafter une flamme dans minetest. 

Si vous souhaitez que celle-ci dur éternellement sans endommager vos constructions

1- Ajouter cette ligne à minetest.conf : disable_fire = true

2- dans ./minetest/game/minetest_game/mods/fire/init.lua  commentez cette partie du code :

--[[
-- Remove flammable nodes and flame
minetest.register_abm({
	nodenames = {"fire:basic_flame"},
	interval = 1,
	chance = 2,
	action = function(p0, node, _, _)
		-- If there is water or stuff like that around flame, remove flame
		if fire.flame_should_extinguish(p0) then
			minetest.remove_node(p0)
			fire.on_flame_remove_at(p0)
			return
		end
		-- Make the following things rarer
		if math.random(1,3) == 1 then
			return
		end
		-- If there are no flammable nodes around flame, remove flame
		if not minetest.find_node_near(p0, 1, {"group:flammable"}) then
			minetest.remove_node(p0)
			fire.on_flame_remove_at(p0)
			return
		end
		if math.random(1,4) == 1 then
			-- remove a flammable node around flame
			local p = minetest.find_node_near(p0, 1, {"group:flammable"})
			if p then
				-- If there is water or stuff like that around flame, don't remove
				if fire.flame_should_extinguish(p0) then
					return
				end
				minetest.remove_node(p)
				nodeupdate(p)
			end
		else
			-- remove flame
			minetest.remove_node(p0)
			fire.on_flame_remove_at(p0)
		end
	end,
})

]]--

