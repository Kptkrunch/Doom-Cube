/// this will allow us to change controllers easilly


/// keyboard commands

global.key_jump				 = (vk_space);
global.key_rightmove		 = (ord("D"));
global.key_leftmove		 = (ord("A"));
global.key_attack		 = (mouse_check_button(mb_left));
global.key_attack2		 =(mouse_check_button(mb_right));

global.key_menu		 = ord("M");

global.main_layer	 = "Instances";

/// STATES

enum vertical_state {
	
		on_ground, 
		jumping,
		jetpack,
		falling,
		///arial,
		///running,
			
}

/// randomize for idle animations
randomize();

/// camera follow player 
instance_create_layer(0, 0, global.main_layer, obj_camera);








