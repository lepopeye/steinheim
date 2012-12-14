--[[
--Annonce par Jat
Licence GPLv2 or later for code
--]]

-- Pour ajouter une ligne ecrire entre les {"une ligne"} 
-- Pour plusieurs ligne {"une ligne","deux ligne"}
-- N'oubliez pas , si il y a une autre annonce derrier
local lesmessage=	{
					{"Astuce: Pour efface des items veuillez les mettres dans votre main et fait /pulverize"},
					{"Astuce: Il y a un systeme de commerce au-dessus du spawn."},
					{"Attention minetest 0.4.4 est sortie, veuillez mettre a jour votre client."},
					{"Forum: http://steinheim.xooit.fr"}
					}
local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	-- if timer < X then  = X seconde temps que s'affiche les message 
	-- Default 300 seconde = 5 minute
	if timer < 300 then
		return
	end
	timer = 0
	local nbaleatoire = math.random(1,table.getn(lesmessage))
	for i=1,table.getn(lesmessage[nbaleatoire]) do
		minetest.chat_send_all(lesmessage[nbaleatoire][i])
	end
end)
