/// @description  
//
vspeed = .5;
if room == rm_level3 {
	alarm[0] = game_get_speed(gamespeed_fps)*3;
}
if room == rm_level4 and not mobile {
	alarm[1] = game_get_speed(gamespeed_fps)*4;
}
if room == rm_level4 and mobile {
	vspeed = -.5;
	alarm[2] = game_get_speed(gamespeed_fps)*12;
}