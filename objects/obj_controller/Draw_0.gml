/// @description
//
draw_set_font(fnt_cooper_bits);
draw_set_color(c_white);
var _x = room_width/2, _y = 15;
draw_text(_x-160, _y, "Vidas: "+string(lifes_player));
draw_sprite_ext(spr_coin, image_index, _x, _y, 1, 1, 0, -1, 1);
_x += 32;
draw_text(_x, _y," x "+string(amount_coins));
_x += 100;
draw_text(_x, _y, "Pulos: "+string(amount_jumps));

if not skill_lower and first_entering_rm_main {
	var _text = "Você perdeu a habilidade de poder se agaixar...";
	_x = 205; _y = 370; 
	draw_set_font(fnt_cooper_bits);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_color(#B75317);
	draw_text(_x-2, _y+1, _text);
	draw_set_color(#FADB6F);
	draw_text(_x, _y, _text);
	
	var _two_text = "Compre novamente na loja com suas moedas do tutorial       ->";
	_x = 85; _y += 55;
	draw_set_color(#B75317);
	draw_text(_x-2, _y+1, _two_text);
	draw_set_color(#FADB6F);
	draw_text(_x, _y, _two_text);
	
}
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_color(-1);
draw_set_font(-1);
