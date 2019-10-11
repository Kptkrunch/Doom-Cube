/// @description Insert description here
// You can write your code in this editor

text_border = 22;
my_items = player_inventory;
my_color = c_black;
is_empty = false;
empty_message = "No items for you.";

globalvar item_selected, scrolled_amount, inventory_end_at;
item_selected = 0;
scrolled_amount = 0;
inventory_end_at = min(ds_grid_height(my_items), 
									floor((sprite_height - (text_border * 3)) / 32));
									
inventory_on_screen = 0;
if (ds_grid_get(my_items, 0, 0) == 0)
{
		inventory_end_at = 0;
		is_empty = true;

}
