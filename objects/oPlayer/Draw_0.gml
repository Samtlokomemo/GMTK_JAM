draw_self()
for (var i = 0; i < array_length(mochila); i++) {
	if(mochila[i] != noone){
        var _spr = object_get_sprite(mochila[i]);
        draw_sprite(_spr, 0, x - 10 * image_xscale, y - 18 * i);
    }
}