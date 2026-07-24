function SpawnItem(){
    var _newR = global.raio + 50;
    var _len = random_range(_newR, _newR * 1.5)
    var _dir = random_range(0, 360);
    var _xFinal = _len * dcos(_dir);
    var _yFinal = _len * dsin(_dir);
    instance_create_layer((x + _xFinal), (y + _yFinal), "Instances", oItem);
}