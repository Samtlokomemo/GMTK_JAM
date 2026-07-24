if(inventario >= objetivo){
    inventario -= objetivo;
    objetivo*=2;
    lvlUP = true;
}

if(lvlUP){
    global.level += 1;
    global.raio += 50;
    var _chance = irandom(9);
    if(_chance == 2){
        room_width += 10;
        room_height += 10;
    }
    Controller.lvlUP = true;
    lvlUP = false;
}

var _colisao = collision_circle(x, y - sprite_height / 2, global.raio, oPlayer, true, true);
if !safeArea and _colisao{
    time_source_reset(global.gameTimer);
}else if safeArea and !_colisao{
    time_source_start(global.gameTimer);
}

safeArea = _colisao;