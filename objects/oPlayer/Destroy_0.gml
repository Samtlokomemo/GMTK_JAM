for (var i = 0; i < array_length(mochila); i++) {
	if mochila[i] != noone{
        var _xx = x + irandom_range(50, -50);
        var _yy = y + irandom_range(30, -30)
        instance_create_depth(_xx, _yy, depth, mochila[i]);
    }
}