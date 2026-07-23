objetivo = 1;
inventario = 0;

lvlUP = false;

// Safe area
raio = 0;
safeArea = false;

repeat (objetivo) { 
    instance_create_depth(random(room_width), random(room_height), depth, oItem);
}