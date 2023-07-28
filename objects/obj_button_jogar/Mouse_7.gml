/// @description 
// room_goto(rm_main);
if image_alpha <= 0 exit;
if not instance_exists(obj_transition) {
	global.destiny = rm_main;
	instance_create_layer(0, 0, "Instance_transition", obj_transition);
}