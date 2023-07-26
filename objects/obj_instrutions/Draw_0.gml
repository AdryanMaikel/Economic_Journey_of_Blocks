/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _x = room_width/2, _y = 160, _text = "Colete todas as       para completar o tutorial";
draw_set_font(fnt_cooper_bits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(#B75317);
draw_text(_x-23, _y+2, _text);
draw_set_color(#FADB6F);
draw_text(_x-20, _y, _text);
draw_sprite(spr_coin, image_index, _x-120, _y-16);

//Criado por mim <3
_y = 750;
var _created_by = "Criado por Adryan Maikel <3 Obrigado por jogar!";
draw_set_color(#B75317);
draw_text(_x-3, _y+2, _created_by);
draw_set_color(c_white);
draw_text(_x, _y, _created_by);

#region Instruções
var _instructions = "";
_x = 200; _y = 280;
draw_set_color(c_white);
draw_set_halign(fa_left);

if not pressed_a_or_d _instructions = "Aperte 'A' e 'D' para andar para esquerda e direita.";
if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D"))	pressed_a_or_d = true;
if pressed_a_or_d and not pressed_w _instructions = "Aperte 'W' para pular.";
if keyboard_check(ord("W")) pressed_w = true;
if pressed_a_or_d and pressed_w and not pressed_s _instructions = "Aperte 'S' para se abaixar.";
if keyboard_check(ord("S")) pressed_s = true;
if pressed_a_or_d and pressed_w and pressed_s _instructions = "Termine de coletar as moedas...";

if obj_controller.amount_coins >= 10 {
	_instructions = "Tutorial completo! Parabéns!!\n";
	_instructions+= "Clique em jogar e boa sorte... ";
}
draw_text(_x, _y, _instructions);
#endregion

draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);