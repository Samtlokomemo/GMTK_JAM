if(array_length(mochila) < maxCap){
    array_push(mochila, other.object_index);
    instance_destroy(other);
}