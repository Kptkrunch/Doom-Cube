/// @desc

draw_self();
draw_set_color(my_color);

draw_text(bbox_left + text_border, bbox_top + text_border, "Image");
draw_text(bbox_left + 125, bbox_top + text_border, "Name");
draw_text(bbox_left + 225, bbox_top + text_border, "Amount");

item_left_start = bbox_left + 120;
item_top_start = bbox_top + 48;

for (i = 0; i < inventory_end_at; ++i)
{
		for (j = 0; j < player_inventory_width; ++j)
		{			
					if (j == 0)
					{
							draw_text(item_left_start, item_top_start + (i * 32), ds_grid_get(my_items, 0, i));	
							
					}
					
					if (j == 1)
					{
							draw_text(item_left_start + 140, item_top_start + (i * 32), ds_grid_get(my_items, 1, i));
					
					}
					
					if (j == 3)
					{
							draw_sprite(ds_grid_get(my_items, j, i), 0, bbox_left + 40, item_top_start + (i * 32) + 16);
					
					}
										
		}
	
}

draw_rectangle(bbox_left + text_border, item_top_start + (item_selected * 32),
							  bbox_right - text_border, item_top_start + (item_selected * 32) + 32, true);

draw_sprite(spr_item_box, 0, bbox_right + sprite_get_xoffset(spr_item_box),
														room_height - sprite_get_yoffset(spr_item_box) - 216);

if (is_empty)
{
		draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(spr_item_box) - 212,  
									empty_message, 32, sprite_get_width(spr_item_box) - text_border);
}

else
{
		draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(spr_item_box) - 212,  
									ds_grid_get(my_items, 2, item_selected), 32, sprite_get_width(spr_item_box) - text_border);

}