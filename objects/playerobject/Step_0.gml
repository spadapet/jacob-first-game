var _speed = 2;
var move_x = _speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
var move_y = _speed * (keyboard_check(vk_down) - keyboard_check(vk_up));

x += move_x;
y += move_y;
