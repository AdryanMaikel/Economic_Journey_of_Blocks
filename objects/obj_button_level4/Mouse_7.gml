/// @description 
// Jogar level 4 somente se o level não tiver sido completado
if not obj_controller.level4_complete {
	//room_goto(rm_level4);
	if not instance_exists(obj_transition) {
		global.destiny = rm_level4;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}