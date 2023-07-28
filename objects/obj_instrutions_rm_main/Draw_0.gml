/// @description 
draw_set_alpha(.85);
if room == rm_main {
	if not obj_controller.buyed {
		draw_rectangle_colour(64,64,895,room_height-64, c_black, c_black, c_black, c_black, 0);
	}
	if obj_controller.buyed and not obj_controller.play_fase1 {
		draw_rectangle_colour(64,64,600,room_height-64, c_black, c_black, c_black, c_black, 0);
		draw_rectangle_colour(836,64,room_width-64,room_height-64, c_black, c_black, c_black, c_black, 0);
		//Mexer abaixo caso tenha mais leveis
		var _y = 318;
		draw_rectangle_colour(601,_y,817+18,room_height-64, c_black, c_black, c_black, c_black, 0);
	}
}