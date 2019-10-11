/// @function scr_add_item
/// @description add an item to a grid
/// @argument0 DSGrid_To_Add
/// @argument1 String Item_Name
/// @argument2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script

grid_to_add_to = argument0;
new_item_name = argument1;
new_item_amount = argument2;
new_item_description = argument3;
new_item_sprite = argument4;
new_item_script = argument5;

///Case 1 - Item is already in the inventory

for (i = 0; i < ds_grid_height(grid_to_add_to); ++i)
{
		if (ds_grid_get(grid_to_add_to, 0, i) == new_item_name)
		{
				ds_grid_set(grid_to_add_to, 1, i, ds_grid_get(grid_to_add_to, 1, i) + new_item_amount);
				return true;
		
		}

}


///Case 2 - It's not in the inventory

if (ds_grid_get(grid_to_add_to, 0, 0) != 0)
{
		ds_grid_resize(grid_to_add_to, player_inventory_width, ds_grid_height(grid_to_add_to) + 1);

}

new_item_spot = ds_grid_height(grid_to_add_to) - 1;
ds_grid_set(grid_to_add_to, 0, new_item_spot, new_item_name);
ds_grid_set(grid_to_add_to, 1, new_item_spot, new_item_amount);
ds_grid_set(grid_to_add_to, 2, new_item_spot, new_item_description);
ds_grid_set(grid_to_add_to, 3, new_item_spot, new_item_sprite);
ds_grid_set(grid_to_add_to, 4, new_item_spot, new_item_script);

return true;









