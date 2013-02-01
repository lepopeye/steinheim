--[[
Bucheron V0.2 par Jat
Licence GPLv2 or later for code

Coupe un tronc si il y a des feuille sur la cime
Coupe les cactus
Coupe papyrus 

--]]
minetest.register_on_dignode(function(p, node, player)
	if node.name=="default:tree" or  node.name=="default:cactus" or node.name=="default:papyrus" or node.name=="madblocks:cactus_winter" then
		local y=p.y
		local f=true
		local name=node.name
		local bois=false
		while f do
			p.y=p.y+1
			node=minetest.env:get_node(p)
			if not(node.name == name) then
				f=false
			end	
		end
		if node.name=="default:leaves" or node.name=="farming_plus:cocoa_leaves" or node.name=="farming_plus:banana_leaves" or node.name=="farming_plus:rubber_leaves" then
			bois=true
		end
		fin=(p.y-y)-1
		if bois or not(name=="default:tree") then
			while p.y>y do
				minetest.env:remove_node(p)
				p.y=p.y-1
			end
			player:get_inventory():add_item('main', ''..name..' '..fin..'')
		end
	end
-- minetest.get_node_drops(n0.name)
--[[
	if node.name=="default:tree" then
		local y=p.y
		local f=true
		while f do
			p.y=p.y+1
			node=minetest.env:get_node(p)
			if not(node.name == "default:tree") then
				f=false
			end	
		end
		if node.name=="default:leaves" then
			local fin=(p.y-y)-1
			while p.y>y do
				minetest.env:remove_node(p)
				p.y=p.y-1
			end
			player:get_inventory():add_item('main', 'default:tree '..fin..'')
		end
	end
--]]
end)