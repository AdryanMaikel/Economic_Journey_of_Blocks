/// @description
//
if not skill_lower and first_entering_rm_main and room == rm_main {
	var _text = "Você perdeu a habilidade de poder se abaixar...";
	var _xx = 205, _yy = 400; 
	draw_set_font(fnt_cooper_bits);
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
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_color(-1);
draw_set_font(-1);
