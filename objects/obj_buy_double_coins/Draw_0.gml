/// @description 
// 
var _x = x-20, _text = "x "+string(obj_controller.winned_coins+1)+"      = "+string(price);
draw_self();
draw_set_font(fnt_cooper_bits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(#B75317);
draw_text(_x-3, y+2, _text);
draw_set_color(#FADB6F);
draw_sprite(spr_coin, image_index, x-45, y-16);
draw_text(_x, y, _text);
draw_sprite(spr_coin, image_index, x+70, y-16);
draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);