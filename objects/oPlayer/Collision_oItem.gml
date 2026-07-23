for (var i = 0; i < array_length(mochila); i++) {
	if(mochila[i] == noone){
        mochila[i] = other.object_index;
        instance_destroy(other);
        break;
    }
}