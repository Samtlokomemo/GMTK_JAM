objetivo = 1;
inventario = 0;

lvlUP = false;

// Safe area
raio = 0;
safeArea = false;

repeat (objetivo) { 
    instance_create_depth(x + 50, y - 30, depth, oItem);
}