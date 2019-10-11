/// @desc melt ray create event

melt_ray_range = 0;
melt_ray_rotation = 0;
length = 0;

snd_ray = noone;

///depth = -11;



ray = instance_create_layer(x, y, "Instances_1", obj_ray);
ray.image_yscale = 0.15;

/// create the partical system

part_ray = part_system_create();
part_system_depth(part_ray, -100);

part_sphere_flash = part_type_create();
var pt = part_sphere_flash;

part_type_shape(pt, pt_shape_sphere);
part_type_size(pt, .1, .1, 0.1, 0);
part_type_color2(pt, c_red, c_black);
part_type_alpha3(pt, .3, .5, 0);
part_type_life(pt, 3, 5);





