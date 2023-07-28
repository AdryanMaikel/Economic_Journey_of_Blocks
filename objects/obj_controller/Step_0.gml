/// @description
// 

if not instance_exists(obj_player) and not player_is_dead {
	player_is_dead = true;
	alarm[0] = game_get_speed(gamespeed_fps);
	//show_debug_message(alarm[0]);
}
if instance_exists(obj_player) and player_is_dead {
	player_is_dead = false;
}
if lifes_player <= 0 {
	//game_restart();
	//if room == rm_main room_restart(); else room_goto(rm_main);
	if not instance_exists(obj_transition) {
		global.destiny = rm_main;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
	game_over = true;
	lifes_player = 3;
	amount_coins = 0;
	amount_jumps = 1;
	
	winned_coins = 1;
	
	level1_complete = false;
	level2_complete = false;
	level3_complete = false;
	
}

if skill_lower first_entering_rm_main = false;
if not audio_is_playing(snd_background) audio_play_sound(snd_background, 1, true);