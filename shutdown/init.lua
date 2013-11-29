--[[

shutdown par turbogus, code sous licence gpl2 ou sup
déclaration du "timer" par Jat ( du mod annonce )

Affiche l'heure dans le chat toute les minutes et
arrête votre serveur "proprement" à une heure précise afin de créer
une sauvegarde

]]--

local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer+dtime
	-- if timer < X then  = X seconde temps que s'affiche les message 
	-- Default 300 seconde = 5 minute
	if timer < 60 then
		return
	end
	timer = 0
	heure = os.date("%H")
	minute = os.date("%M")
	if heure == "4" and minute == "30" then        --modifier ici à  vos besoin
		minetest.chat_send_all("Arret du serveur pour sauvegarde dans 30min --- Veuillez vous deconnecter.")
	elseif heure == "4" and minute == "45" then         --modifier ici à  vos besoin
		minetest.chat_send_all("Arret du serveur pour sauvegarde dans 15min --- Veuillez vous deconnecter.")
	elseif heure == "4" and minute == "55" then         --modifier ici à  vos besoin
		minetest.chat_send_all("Arret du serveur pour sauvegarde dans 5min --- Veuillez vous deconnecter.")
	elseif heure == "5" and minute == "0" then           --modifier ici à  vos besoin
		minetest.chat_send_all("=== ARRET DU SERVEUR POUR SAUVEGARDE ===")
		minetest.request_shutdown()
	end

end)