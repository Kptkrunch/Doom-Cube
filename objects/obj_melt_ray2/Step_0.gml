/// @description Insert description here
// You can write your code in this editor

ray.x = x + lengthdir_x(melt_ray_range, melt_ray_rotation);
ray.y = y + lengthdir_y(melt_ray_range, melt_ray_rotation);
		
melt_ray_rotation = point_direction(x, y, mouse_x, mouse_y);
image_angle = melt_ray_rotation;


if (mouse_check_button(mb_left))
{
		sprite_index = spr_melt_ray;
		image_speed = 0;
		
		part_particles_create(part_ray, ray.x, ray.y, part_sphere_flash, 1);
		
		if (!audio_is_playing(snd_ray))
		{
				snd_ray = audio_play_sound(snd_melt_ray, 1, true);
		
		}
		
		
		var target = obj_enemy;
		length = 0;
		
		
		while (!collision_point(ray.x + lengthdir_x(length, melt_ray_rotation), ray.y + lengthdir_y(length, melt_ray_rotation), obj_wall, true, true))
		{
				if (length < 100)
				{
						length += .5;
				}
				else 
				
				break;
		}
		
		ray.image_xscale = length;
		ray.image_angle = melt_ray_rotation;
		
		
		part_particles_create(part_ray, ray.x + lengthdir_x(length, melt_ray_rotation), ray.y + lengthdir_y(length, melt_ray_rotation), part_sphere_flash, 1);
		
		
		
}

else
{
		ray.image_xscale = 0;
		audio_stop_sound(snd_ray);


}





