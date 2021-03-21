/// @description Insert description here
// You can write your code in this editor
speed = global.speed

if (keyboard_check(vk_space)) {
	speed += 0.1;	
} else if (speed > 0) {
	speed -= 0.1;
} else {
	speed = 0;
}
	