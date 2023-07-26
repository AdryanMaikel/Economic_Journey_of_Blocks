/// @description
// 
var _x = 1115, _y = 100;
// Setando fonte e alinhamentos
draw_set_font(fnt_cooper_bits);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_color(#B75317);
draw_text(_x-3, _y, "LOJA");
draw_set_color(#FADB6F);
draw_text(_x, _y, "LOJA");

// Restando valores
draw_set_color(-1);
draw_set_valign(-1);
draw_set_halign(-1);