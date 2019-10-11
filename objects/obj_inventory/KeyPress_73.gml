/// @desc

if (!instance_exists(obj_inventory_GUI))
{
		inventory_display = instance_create_depth(0, 0, depth - 1000, obj_inventory_GUI);
		///inventory_display = instance_create_layer(0, 0, "Instances", obj_inventory_GUI);
		
		with(inventory_display)
		{
				x = sprite_get_xoffset(sprite_index);
				y = room_height - sprite_get_yoffset(sprite_index);
		
		}
	
}

else
{
		instance_destroy(obj_inventory_GUI);

}
