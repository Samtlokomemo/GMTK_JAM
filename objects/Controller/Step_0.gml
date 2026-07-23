timer-=1;
if timer <= 1 
{
    timer = 10 * game_get_speed(gamespeed_fps);
    instance_destroy(oPlayer);
    instance_create_depth(room_width /2, room_height / 2, depth, oPlayer);

}