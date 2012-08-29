local madblocks_modpath = minetest.get_modpath("madblocks")
math.randomseed(os.time())

--		*****************************
--		SETTINGS - performance
--		*****************************
SEASON_LENGTH = 1500 -- max tested 1500
WEATHER_CHANGE_INTERVAL = 60
NATURE_GROW_INTERVAL = 700
HYDRO_GROW_INTERVAL = 100
BIRDS = false--true

NATURE_PLANTS = {	'madblocks:hydroponics_cyanflower','madblocks:hydroponics_magentaflower','madblocks:hydroponics_yellowflower',
			'madblocks:dandylions','madblocks:mushroom'}
HYDROPONICS_PLANTS = {
	tomato = {name='tomato',growtype='growtall'},
	peas = {name='peas',growtype='growtall'},
	habanero = {name='habanero',growtype='growtall'},
	grapes = {name='grapes',growtype='permaculture'},
	coffee = {name='coffee',growtype='permaculture'},            
	roses = {name='roses',growtype='growtall',give_on_harvest='madblocks:rosebush'}                          
}

--		*****************************
--		ESSENTIAL
--		*****************************
dofile (madblocks_modpath .. "/functions.lua")
dofile (madblocks_modpath .. "/items.lua")
dofile (madblocks_modpath .. "/misc.lua")
dofile (madblocks_modpath .. "/crafts.lua")

--		*****************************
--		OPTIONAL - comment to disable
--		*****************************
dofile (madblocks_modpath .. "/lights.lua")			-- glow nodes, spotlights, searchlights
dofile (madblocks_modpath .. "/nature.lua")			--	random plant growth and seasonal changes
dofile (madblocks_modpath .. "/hydroponics.lua")	-- grow food and drink under controlled conditions
dofile (madblocks_modpath .. "/bookmarks.lua")		-- public (nameable) bookmarks for POI's
dofile (madblocks_modpath .. "/multinode.lua")		-- fill, remove, replace nodes,... on large areas
dofile (madblocks_modpath .. "/new.lua")				-- experimental/testing ~ missing crafts
dofile (madblocks_modpath .. "/riven.lua")			-- linking books and hires (64p) nodes ~ missing crafts

print('mAdBlOcKs 12.6.19 loaded')


