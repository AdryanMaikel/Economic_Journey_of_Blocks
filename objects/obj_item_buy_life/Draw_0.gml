/// @description 
// 
var _x = x-20, _text = "+ 1 vida  = 10";
draw_self();
draw_set_font(fnt_cooper_bits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(#B75317);
draw_text(_x-3, y+2, _text);
draw_set_color(#FADB6F);
draw_text(_x, y, _text);
draw_sprite(spr_coin, image_index, x+80, y-16);
draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);