/// @description 
// Jogar level 5 somente se o level não tiver sido completado
if not obj_controller.level5_complete {
	obj_controller.play_fase = true;
	//room_goto(rm_level5);
	if not instance_exists(obj_transition) {
		global.destiny = rm_level5;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}