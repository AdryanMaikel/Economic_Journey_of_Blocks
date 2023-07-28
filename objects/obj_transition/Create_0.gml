/// @description 
// 
size = sprite_get_width(spr_transition);
colluns = ceil(room_width/size);
rows = ceil(room_height/size);

// Animação da sprite
image = 0;
image_velocity = sprite_get_speed(spr_transition)/game_get_speed(gamespeed_fps);
number_frames = sprite_get_number(spr_transition)-1;

// Entrando na animação
start_animation = true;
