/// @description 
// Jogar level 3 somente se o level não tiver sido completado
if not obj_controller.level3_complete {
	//room_goto(rm_level3);
	if not instance_exists(obj_transition) {
		global.destiny = rm_level3;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}