#macro window_scale 4
#macro view_width (1920 / window_scale)
#macro view_height (1080 / window_scale)

var new_camera_x = clamp(x - view_width / 2, 0, room_width - view_width);
var new_camera_y = clamp(y - view_height / 2, 0, room_height - view_height);
var cur_camera_x = camera_get_view_x(view_camera[0]);
var cur_camera_y = camera_get_view_y(view_camera[0]);
var camera_speed = 0.1;
	
new_camera_x = lerp(cur_camera_x, new_camera_x, camera_speed);
new_camera_y = lerp(cur_camera_y, new_camera_y, camera_speed);

camera_set_view_pos(view_camera[0], new_camera_x, new_camera_y);
