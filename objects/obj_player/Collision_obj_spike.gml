/// @description Insert description here
// You can write your code in this editor
repeat(50) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}

with (obj_main) {
	startTimer = true;	
}

instance_destroy();