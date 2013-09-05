--Par turbogus licence code : gpl2 ou supérieur

minetest.register_craft(
{
	output = "fire:basic_flame";
	recipe = 
		{
			{"default:stick"},
			{"bucket:bucket_lava"},
		};
	replacements = 
		{
			{"bucket:bucket_lava","bucket:bucket_empty"},
		};
});