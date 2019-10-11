if (mouse_check_button(mb_right))
{
		fire_ice_ray = true;	
				
		if (!instance_exists(obj_ice_ray))
		{			

			instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_ice_ray);
			
		}
}


if (!mouse_check_button(mb_right))
{
		fire_ice_ray = false;

}

