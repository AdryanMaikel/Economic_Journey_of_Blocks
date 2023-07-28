/// @description 
// Jogar level 2 somente se o level não tiver sido completado
if not obj_controller.level2_complete {
	//room_goto(rm_level2);
	if not instance_exists(obj_transition) {
		global.destiny = rm_level2;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}