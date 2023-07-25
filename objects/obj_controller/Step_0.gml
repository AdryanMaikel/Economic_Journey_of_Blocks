/// @description
// 
if not instance_exists(obj_player) and not dead {
	dead = true;
	alarm[0] = game_get_speed(gamespeed_fps);
	//show_debug_message(alarm[0])
}
if instance_exists(obj_player) and dead {
	dead = false;
}
if lifes_player <= 0 {
	game_restart();
}
show_debug_message(lifes_player);