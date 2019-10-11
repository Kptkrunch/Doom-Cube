	
if (!idle_flag == false) 
{
			sprite_index = spr_player_idle;
			idle_flag = true;
			idle_animation_timer = 120 + round(random(150));
			
}

if (--idle_animation_timer <= 0)
{
			idle_animation_timer = 240 + round(random(150));
		
			if (choose(true, false, false, false))
			{
						sprite_index = spr_player_idle2;
						image_speed = .6;
					
			}
		
			else 
			{
						sprite_index = choose(spr_player_idle1, spr_player_blink);
						image_speed = 1;

			}
}

else
{
		if (sprite_index = spr_player_blink)
		{
				if (image_index >= image_number - .3)
				{
						sprite_index = spr_player_idle1;
				}
		}

}









	