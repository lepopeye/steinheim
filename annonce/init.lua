--[[
--Anonce par Jat
Licence GPLv2 or later for code
--]]

-- Pour ajouter un message ecrire entre les {"blabla"} et pour les suivant ,"blabla"
local lesmessage={"Attention minetest 0.4.4 est sortie, veuillez mettre a jour votre client.","Forum: http://steinheim.xooit.fr"}
local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	-- if timer < X then  = X seconde temps que s'affiche les message
	if timer < 300 then
		return
	end
	timer = 0
	minetest.chat_send_all(lesmessage[math.random(1,table.getn(lesmessage))])
end)
