if(array_length(mochila) > 0){
    deployTime--;
    if(deployTime <= 0){
        deployTime = 30;
        array_shift(mochila);
        other.inventario+=1;
    }
}