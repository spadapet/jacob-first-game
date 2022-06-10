var move_speed = 2;
var move_x = move_speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
var move_y = move_speed * (keyboard_check(vk_down) - keyboard_check(vk_up));

x += move_x;
y += move_y;

if (move_x > 0)
{
	sprite_index = PlayerRightSprite;
}
else if (move_x < 0)
{
	sprite_index = PlayerLeftSprite;
}

move_outside_solid_tiles(self, tiles_id)
