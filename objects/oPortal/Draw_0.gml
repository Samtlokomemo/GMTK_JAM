draw_set_alpha(.3)
draw_circle_colour(x, y - sprite_height / 2, global.raio, c_aqua, c_aqua, false);

draw_set_alpha(1);
draw_self();

if(place_meeting(x, y, oPlayer)){
    draw_text(x, y - 70, $"{inventario}/{objetivo}");
}
