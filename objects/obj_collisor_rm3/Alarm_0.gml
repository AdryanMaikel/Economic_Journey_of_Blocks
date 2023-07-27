/// @description
// 
if vspeed > 0 and vspeed < 2 vspeed+=.1;
vspeed *=-1;
var _time = 3 if vspeed > 1 or vspeed < -1 _time = 1.5;
alarm[0] = game_get_speed(gamespeed_fps)*_time;
