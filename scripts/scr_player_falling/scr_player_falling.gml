/// @desc on ground and jetpack states

/// on gound

if (place_meeting(x, y + 1, obj_wall_parent))
{
		vert_state = vertical_state.on_ground;	
}



/// jetpacking

if (key_jumpDown)
{
		vert_state = vertical_state.jetpack;
}

