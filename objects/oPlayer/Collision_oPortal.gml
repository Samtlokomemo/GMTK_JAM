if(array_length(mochila) > 0){
    deployTime--;
    if(deployTime <= 0){
        deployTime = 30;
        array_shift(mochila);
        repeat(choose(1, 2)){ 
            SpawnItem();
        }
        other.inventario+=1;
    }
}