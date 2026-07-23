if(inventario >= objetivo){
    inventario -= objetivo;
    objetivo*=2;
    lvlUP = true;
}

if(lvlUP){
    raio+=50
    repeat (objetivo) {
    	instance_create_depth(random(room_width), random(room_height), depth, oItem);
    }
    lvlUP = false;
}

var _colisao = collision_circle(x, y, raio, oPlayer, false, true);
if !safeArea and _colisao{
    time_source_reset(global.gameTimer);
}else if safeArea and !_colisao{
    time_source_start(global.gameTimer);
}

safeArea = _colisao;