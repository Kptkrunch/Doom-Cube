/// @desc jump state and ceiling collision

if (vert_speed > -max_jet_speed && !place_meeting(x, y - 1, obj_wall_parent))
{
		vert_speed -= jet_power + weight + max(0, abs(vert_speed) / 20);

}

if (keyboard_check_released(key_jump))
{
		vert_state = vertical_state.falling;
		
}
