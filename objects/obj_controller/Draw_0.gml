/// @description
//
draw_set_font(fnt_cooper_bits);
var _x = room_width/2, _y = 15;
draw_text(_x-160, _y, "Vidas: "+string(lifes_player));
draw_sprite_ext(spr_coin, image_index, _x, _y, 1, 1, 0, -1, 1);
_x += spr_coin.sprite_width;
draw_text(_x, _y," x "+string(amount_coins));
_x += 100;
draw_text(_x, _y, "Pulos: "+string(amount_jumps));
draw_set_font(-1);