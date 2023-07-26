/// @description 
// Movimentação para direita e esquerda
var _left = keyboard_check(ord("A")), _right = keyboard_check(ord("D"));
if _left {
	hspeed = -_speed;
	image_xscale = -1;
} else if _right {
	hspeed = _speed 
	image_xscale = 1;
} else {
	hspeed = 0;
}

// Pulos
var _space = keyboard_check_pressed(ord("W"));
if _space and jumped > 0 {
	vspeed = speed_jump;
	jumped--;
}

// Aplicando gravidade
vspeed += _gravity;

#region Colisões
if place_meeting(x, y + vspeed, obj_collisor) {
	while not place_meeting(x, y + sign(vspeed), obj_collisor) {
		y += sign(vspeed)	
	}
	if vspeed > 0 jumped = obj_controller.amount_jumps;
	can_change_sprite = true;
	vspeed = 0;
}
if place_meeting(x + hspeed, y, obj_collisor) {
	while not place_meeting(x + sign(hspeed), y, obj_collisor) {
		x += sign(hspeed)	
	}
	hspeed = 0;
}
#endregion

// Fazendo o player se agaixar
var _down = keyboard_check(ord("S"));
if _down sprite_index = spr_player_lowered; else { if can_change_sprite sprite_index = spr_player;}
// Dizendo que não posso trocar a sprite
can_change_sprite = false;
