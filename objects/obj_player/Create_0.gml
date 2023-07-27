/// @description 
// Velocidades
_speed = 2;
_gravity = .2;
// Pulos
speed_jump = obj_controller.speed_jump;
jumped = obj_controller.amount_jumps;
can_change_sprite = false;

dead_player = function() {
	var _spr_w = sprite_width/2;
	repeat 100 instance_create_layer(x+irandom_range(-_spr_w, _spr_w), y+irandom_range(0, -sprite_height),"Instance_player", obj_player_dead);
	if not audio_is_playing(snd_damage) audio_play_sound(snd_damage, 1, false);
	instance_destroy();
}

power_up = false;
