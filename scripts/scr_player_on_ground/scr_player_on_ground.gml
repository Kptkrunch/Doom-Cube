/// @desc falling and jumping states

if (!place_meeting(x, y + 1, obj_wall_parent))
{
		vert_state = vertical_state.falling;
}

if (key_jumpDown)
{
		vert_speed = -jump_power;
		vert_state = vertical_state.jumping;
}

