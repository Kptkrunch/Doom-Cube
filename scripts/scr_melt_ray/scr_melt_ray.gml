if (mouse_check_button(mb_left))
{
		fire_melt_ray = true;	
				
		if (!instance_exists(obj_melt_ray))
		{			

			instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_melt_ray);
			
		}
}


if (!mouse_check_button(mb_left))
{
		fire_melt_ray = false;

}

