/// @desc update player input

key_jumpDown   = keyboard_check_pressed(key_jump);
key_rightDown = keyboard_check(key_right);
key_leftDown   = keyboard_check(key_left);
key_shootDown = keyboard_check(key_shoot);

/// character facing

#region character facing

if (hor_speed > 0) 
{
	image_xscale = 1;
	
}

else if (hor_speed < 0) 
{
	image_xscale = -1;

}

#endregion

/// horizontal move and collision

#region horizontal collision

if (key_rightDown && !place_meeting(x +1, y, obj_wall_parent)) 
{
	
	if (hor_speed < max_run_speed)
		   hor_speed += accel;	
		   
}
else if (key_leftDown && !place_meeting(x -1, y, obj_wall_parent))
{
	
	if (hor_speed > -max_run_speed)
		   hor_speed -= accel;		   
}

#endregion

/// state machine for vertical movement

#region vert states

switch (vert_state) 
{
		case vertical_state.on_ground:
		scr_player_on_ground();
		break;
		
		case vertical_state.jumping:
		scr_player_jumping();
		break;
		
		case vertical_state.jetpack:
		scr_player_jetpacking();
		break;
		
		case vertical_state.falling:
		scr_player_falling();
		break;


}

#endregion

/// friction

#region friction

if (!key_rightDown && !key_leftDown)
{
	
	if (hor_speed != 0)
		   hor_speed -= sign(hor_speed) * frict;	

}	

if (!place_meeting(x + hor_speed, y, obj_wall_parent))
{
	
			x += hor_speed;
			
}

else
{
	
		while (!place_meeting(x + sign(hor_speed), y, obj_wall_parent)) 
		{
				x += sign(hor_speed);		 
		}
			
		hor_speed = 0;
			
}

#endregion

/// gravity

#region gravity

if (vert_state != vertical_state.on_ground)
{			
		if (vert_speed < max_fall_speed)
			   vert_speed += weight;
}

if (!place_meeting(x, y + vert_speed, obj_wall_parent))
{
		y += vert_speed;
	
}

else
{
		move_contact_solid(point_direction(x, y, x, y + vert_speed), max_fall_speed);
		vert_speed = 0;

}

#endregion