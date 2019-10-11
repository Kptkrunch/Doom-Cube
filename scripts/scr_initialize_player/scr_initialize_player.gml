/// @desc player controls and player physics variables verticalstate
/// this script is called by the player object
/// global key varaibles

key_jump		= global.key_jump;
key_right		= global.key_rightmove;
key_left		= global.key_leftmove;
key_shoot		= global.key_attack;
key_shoot2	= global.key_attack2;

/// physics variables

max_run_speed		= 4.8;
max_fall_speed	= 12;
max_jet_speed	    = 4;

hor_speed			= 0;
vert_speed		= 0;

frict		= .2;
accel		= .4;

weight				= .5;
jet_power			= .10;
jump_power		= 10;

depth = -10;

/// initial starting state

vert_state = vertical_state.falling;

/// idle animations variables

idle_flag = false;
idle_animation_timer = 0;


/// abilities active

meltRay = true;












