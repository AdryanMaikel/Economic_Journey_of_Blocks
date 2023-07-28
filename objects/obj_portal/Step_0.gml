/// @description 
// Checando se o player colidiu com o portal
var _collision_with_player = place_meeting(x, y, obj_player);

if room = rm_initial and _collision_with_player and obj_controller.amount_coins >= 10 obj_controller.complete_tutorial = true;

if not obj_controller.level1_complete and room == rm_level1 and _collision_with_player {
	//room_goto(rm_main);
	obj_controller.level1_complete = true;
	if not instance_exists(obj_transition) {
		global.destiny = rm_main;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}
if not obj_controller.level2_complete and room == rm_level2 and _collision_with_player {
	//room_goto(rm_main);
	obj_controller.level2_complete = true;
	if not instance_exists(obj_transition) {
		global.destiny = rm_main;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}
if not obj_controller.level3_complete and room == rm_level3 and _collision_with_player {
	//room_goto(rm_main);
	obj_controller.level3_complete = true;
	if not instance_exists(obj_transition) {
		global.destiny = rm_main;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}
if not obj_controller.level4_complete and room == rm_level4 and _collision_with_player {
	//room_goto(rm_main);
	obj_controller.level4_complete = true;
	if not instance_exists(obj_transition) {
		global.destiny = rm_main;
		instance_create_layer(0, 0, "Instance_transition", obj_transition);
	}
}