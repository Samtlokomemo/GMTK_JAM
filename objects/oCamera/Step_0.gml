if !instance_exists(target) exit;
x = lerp(x, target.x, smooth);
y = lerp(y, target.y, smooth);

camera_set_view_pos(view_camera[0], x - resW / 2, y - resH / 2);
