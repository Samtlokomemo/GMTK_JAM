if(inventario >= objetivo){
    inventario -= objetivo;
    objetivo*=2;
    lvlUP = true;
}

if(lvlUP){
    raio+=50
    repeat (random_range(objetivo, objetivo + 2)) {
        
        var _newR = raio + 50;
        var _len = random_range(_newR, _newR * 1.5)
        var _dir = random_range(0, 360);
        var _xFinal = _len * dcos(_dir);
        var _yFinal = _len * dsin(_dir);
    	instance_create_depth((x + _xFinal), (y + _yFinal), depth, oItem);
    }
    lvlUP = false;
}

var _colisao = collision_circle(x, y - sprite_height / 2, raio, oPlayer, true, true);
if !safeArea and _colisao{
    time_source_reset(global.gameTimer);
}else if safeArea and !_colisao{
    time_source_start(global.gameTimer);
}

safeArea = _colisao;