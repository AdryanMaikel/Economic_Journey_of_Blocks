/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _collision_with_player = place_meeting(x, y, obj_player);

if room = rm_initial and _collision_with_player and obj_controller.amount_coins >= 10 obj_controller.complete_tutorial = true;
if not obj_controller.level1_complete and room == rm_level1 and _collision_with_player{ room_goto(rm_main) obj_controller.level1_complete = true;}
if not obj_controller.level2_complete and room == rm_level2 and _collision_with_player{ room_goto(rm_main) obj_controller.level2_complete = true;}
if not obj_controller.level3_complete and room == rm_level3 and _collision_with_player{ room_goto(rm_main) obj_controller.level3_complete = true;}