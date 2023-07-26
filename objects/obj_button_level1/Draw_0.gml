/// @description 
// 
draw_self();
draw_set_font(fnt_cooper_bits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _text;
if obj_controller.level1_complete == true _text = "Completo!"; else _text = "Level 1";

draw_set_color(#B75317);
draw_text(x-3, y+2, _text);
draw_set_color(#FADB6F);
draw_text(x, y, _text);

draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);