/// @description 
// Jogar level 1 somente se o level não tiver sido completado
if not obj_controller.level1_complete{ obj_controller.play_fase1 = true; room_goto(rm_level1);}