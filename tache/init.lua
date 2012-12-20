--[[
--Tache par Jat
Licence GPLv2 or later for code
--]]

local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	if timer <= 1 then
		return
	end
	timer = 0
	if os.date("%H:%M:%S")=="04:55:00" then
		minetest.chat_send_all("Suppresion des objets sur la carte dans 5 min et redemarrage")
		return
	end
	if os.date("%H:%M:%S")=="05:00:00" then
		minetest.chat_send_all("Nettoyage des objets sur la carte")
		minetest.env:clear_objects()
		minetest.chat_send_all("Redemarrage")
		minetest.request_shutdown() 
		return
	end
end)
