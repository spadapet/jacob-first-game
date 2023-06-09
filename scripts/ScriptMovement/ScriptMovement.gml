function move_outside_solid_tiles_x_internal(obj_id, obj_x, obj_y, tiles_id) 
{
	var tile = tilemap_get_at_pixel(tiles_id, obj_x, obj_y);
	
	if (tile > 0)
	{
		var tile_width = tilemap_get_tile_width(tiles_id);
		var tile_x = tilemap_get_cell_x_at_pixel(tiles_id, obj_x, 0);
		
		if (obj_x >= obj_id.bbox_right)
		{
			obj_id.x = tile_x * tile_width - object_get_sprite(obj_id).bbox_right + object_get_sprite(obj_id).bbox_left;
		}
		else if (obj_x <= obj_id.bbox_left)
		{
			obj_id.x = tile_x * tile_width + tile_width + object_get_sprite(obj_id).bbox_right - object_get_sprite(obj_id).bbox_left;
		}
	}
}

function move_outside_solid_tiles_y_internal(obj_id, obj_x, obj_y, tiles_id) 
{
	var tile = tilemap_get_at_pixel(tiles_id, obj_x, obj_y);
	
	if (tile > 0)
	{
		var tile_height = tilemap_get_tile_height(tiles_id);
		var tile_y = tilemap_get_cell_y_at_pixel(tiles_id, 0, obj_y);
		
		if (obj_x >= obj_id.bbox_bottom)
		{
			obj_id.y = tile_y * tile_height - object_get_sprite(obj_id).bbox_bottom + object_get_sprite(obj_id).bbox_top;
		}
		else if (obj_x <= obj_id.bbox_top)
		{
			obj_id.y = tile_y * tile_height + tile_height + object_get_sprite(obj_id).bbox_bottom - object_get_sprite(obj_id).bbox_top;
		}
	}
}

function move_outside_solid_tiles(obj_id, tiles_id) 
{
	move_outside_solid_tiles_x_internal(obj_id, obj_id.bbox_right, obj_id.bbox_top, tiles_id);
	move_outside_solid_tiles_x_internal(obj_id, obj_id.bbox_right, obj_id.bbox_bottom, tiles_id);
	move_outside_solid_tiles_x_internal(obj_id, obj_id.bbox_left, obj_id.bbox_top, tiles_id);
	move_outside_solid_tiles_x_internal(obj_id, obj_id.bbox_left, obj_id.bbox_bottom, tiles_id);
	
	move_outside_solid_tiles_y_internal(obj_id, obj_id.bbox_left, obj_id.bbox_top, tiles_id);
	move_outside_solid_tiles_y_internal(obj_id, obj_id.bbox_right, obj_id.bbox_top, tiles_id);
	move_outside_solid_tiles_y_internal(obj_id, obj_id.bbox_left, obj_id.bbox_bottom, tiles_id);
	move_outside_solid_tiles_y_internal(obj_id, obj_id.bbox_right, obj_id.bbox_bottom, tiles_id);
}
