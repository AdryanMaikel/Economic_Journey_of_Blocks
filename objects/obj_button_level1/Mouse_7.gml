/// @description 
// Jogar level 1 somente se o level não tiver sido completado
if not obj_controller.level1_complete{ 
	obj_controller.play_fase1 = true; 
	//room_goto(rm_level1);
	if not instance_exists(obj_transition) {
		global.destiny = rm_level1;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}