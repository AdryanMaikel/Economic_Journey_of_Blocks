/// @description 
draw_set_alpha(.95)
if room == rm_main {
	if not obj_controller.buyed {
		draw_rectangle_colour(50,64,906,room_height-64, c_black, c_black, c_black, c_black, 0);
	}
	if obj_controller.buyed and not obj_controller.play_fase1 {
			draw_rectangle_colour(50,64,600,room_height-50, c_black, c_black, c_black, c_black, 0);
			draw_rectangle_colour(835,64,room_width-50,room_height-50, c_black, c_black, c_black, c_black, 0);
			draw_rectangle_colour(600,318,817+18,room_height-50, c_black, c_black, c_black, c_black, 0);
	}
}