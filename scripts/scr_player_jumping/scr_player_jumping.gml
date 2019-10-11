/// @desc falling and jumping states

///falling

if (vert_speed >= 1)
{
		 vert_state = vertical_state.falling;

}

/// jetpack 

if (key_jumpDown)
{
		vert_state = vertical_state.jetpack;
}