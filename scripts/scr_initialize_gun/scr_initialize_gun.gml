image_angle = point_direction(x, y, mouse_x, mouse_y);
image_speed = 1;

if (image_angle > 90 && image_angle < 270)
{
		image_yscale = -1;

}

else
{
		image_yscale = 1;

}