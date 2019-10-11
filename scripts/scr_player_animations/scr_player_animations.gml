/// @desc player animations

///if (moving == false) sprite_index = spr_player;

switch (vert_state) 
{
	
	#region on_ground
		case vertical_state.on_ground:
		{
				if (hor_speed == 0)
				{
					
					scr_handle_player_idle_animations();

				}
				
				else 
				{
					sprite_index = spr_player_run;
					image_speed = (hor_speed / max_run_speed);
					 
				}
				
							
				idle_flag = false;
				 
				break;
				
		}
	#endregion
		
	#region falling
		
		case vertical_state.falling:
		{		
				if (vert_speed > 1)
				{					
					sprite_index = spr_falling;
					image_index = 1;					
					image_speed = 0;
				}
								
				idle_flag = false;
				
				break;
				
		}
			#endregion
			
	#region jumping
			
		case vertical_state.jumping:
		{
				sprite_index = spr_player_jumping;
				image_index = 8;
				image_speed = 1;
				
				idle_flag = false;
				
				break;
				
		}	
	#endregion
	
	#region jetpacking
	
		case vertical_state.jetpack:
		{		
				sprite_index = spr_player_jetpacking;
				image_speed = 1;
				
				idle_flag = false;
				
				break;
				
		}	
	#endregion	
}