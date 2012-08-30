--[[
Environement by Jat
Licence GPLv2 or later
--]]
-- Noyade
local lestimer={}
local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	if timer < 1 then
		return
	end
	timer = 0

	for _,obj in ipairs(minetest.get_connected_players()) do
		local position = obj:getpos()
		position.y = position.y+1.5
		local nodename = minetest.env:get_node(position).name
		if string.find(nodename, "default:water") then
			if lestimer[""..obj:get_player_name()..""]==nil then
				lestimer[""..obj:get_player_name()..""]= os.clock()
			end
			if os.clock()>=lestimer[""..obj:get_player_name()..""]+10 then
				obj:set_hp(obj:get_hp()-0.5)
			end
		else
			if not(lestimer[""..obj:get_player_name()..""]==nil) then
				lestimer[""..obj:get_player_name()..""] = nil
			end
		end
	end
end)





	