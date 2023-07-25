/// @description 
// Velocidades
_speed = 2;
_gravity = .2;
// Pulos
speed_jump = -6;
amount_jumps = 1;
jumped = amount_jumps;

dead_player = function() {
	var _spr_h = sprite_height/2;
	repeat 100 instance_create_layer(x+irandom_range(-_spr_h, _spr_h), y+irandom_range(0, -sprite_height),"Instance_player", obj_player_dead);
	obj_controller.lifes_player--;
	instance_destroy();
}