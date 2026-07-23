// Iniciando os objetos
centerX = room_width / 2;
centerY = room_height / 2;
instance_create_depth(centerX, centerY, depth, oPlayer);
instance_create_depth(centerX, centerY, depth + 10, oPortal);

function reset(){
    instance_destroy(oPlayer);
    instance_create_depth(room_width / 2, room_height / 2, 0, oPlayer);

}


// TIMER  E SAFE AREA
global.gameTimer = time_source_create(time_source_game, 10, time_source_units_seconds, reset, [], -1);
time_source_start(global.gameTimer);