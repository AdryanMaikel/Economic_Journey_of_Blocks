/// @description 
draw_set_alpha(.85);
draw_set_font(fnt_cooper_bits)
if room == rm_main {
	if not obj_controller.buyed {
		draw_rectangle_colour(64,64,895,room_height-64, c_black, c_black, c_black, c_black, 0);
	}
	if obj_controller.buyed and not obj_controller.play_fase1 {
		draw_rectangle_colour(64,64,600,room_height-64, c_black, c_black, c_black, c_black, 0);
		draw_rectangle_colour(836,64,room_width-64,room_height-64, c_black, c_black, c_black, c_black, 0);
		//Mexer abaixo caso tenha mais leveis
		var _y = 370;
		draw_rectangle_colour(601,_y,817+18,room_height-64, c_black, c_black, c_black, c_black, 0);
	}
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_alpha(1);
	if not obj_controller.skill_lower and obj_controller.first_entering_rm_main and room == rm_main {
		var _text = "Você perdeu a habilidade de poder se abaixar...";
		var _xx = 205, _yy = 400; 
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_set_color(#B75317);
		draw_text(_xx-2, _yy+1, _text);
		draw_set_color(#FADB6F);
		draw_text(_xx, _yy, _text);
		
		var _two_text = "Compre novamente na loja...       ->";
		_xx = 479; _yy = 428;
		draw_set_color(#B75317);
		draw_text(_xx-2, _yy+1, _two_text);
		draw_set_color(#FADB6F);
		draw_text(_xx, _yy, _two_text);
	}
	
	if obj_controller.buyed and not obj_controller.play_fase1 {
		var _x = 135, _y = 170, _text = "Aqui você seleciona o level ...   ->\n             Boa sorte...";
		draw_set_color(#B75317);
		draw_text(_x-2, _y+1, _text);
		draw_set_color(#FADB6F);
		draw_text(_x, _y, _text);
	}
}
draw_set_valign(-1);
draw_set_halign(-1);
