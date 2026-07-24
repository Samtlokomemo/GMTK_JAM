// Iniciando os objetos
centerX = room_width / 2;
centerY = room_height / 2;

instance_create_layer(centerX, centerY, "Instances", oPlayer);
instance_create_layer(0, 0, "Controllers", oCamera);

instance_create_layer(centerX, centerY, "Instances", oPortal);

function reset(_target){
    instance_destroy(oPlayer);
    instance_create_layer(_target.x, _target.y, "Instances", oPlayer);

}

global.level = 0;

// TIMER  E SAFE AREA
global.gameTimer = time_source_create(time_source_game, 10, time_source_units_seconds, reset, [oPortal], -1);
time_source_start(global.gameTimer);

lvlUP = false;