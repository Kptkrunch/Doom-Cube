item_selected = clamp(--item_selected, 0, ds_grid_height(my_items) - 1);

if (item_selected >= inventory_end_at)
{
		++scrolled_amount;
		++inventory_on_screen;

}

if (scrolled_amount + inventory_on_screen > ds_grid_height(my_items))
{
		--scrolled_amount;

}