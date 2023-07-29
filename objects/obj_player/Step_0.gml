/// @description 
if room == rm_main and not obj_controller.play_fase exit;
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
var _space = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));
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
// Objetos moveis da room 3
if instance_exists(obj_collisor_rm3) {
	if place_meeting(x, y + vspeed, obj_collisor_rm3) {
		if vspeed > 0 jumped = obj_controller.amount_jumps;
		can_change_sprite = true;
		vspeed = obj_collisor_rm3.vspeed;
	}
	if place_meeting(x + hspeed, y, obj_collisor_rm3) {
		while not place_meeting(x + sign(hspeed), y, obj_collisor_rm3) {
			x += sign(hspeed)	
		}
		hspeed = 0;
	}
}
// Segunda instancia movel do level 4
if instance_exists(inst_28D9A538) {
	if place_meeting(x, y + vspeed+1, inst_28D9A538) {
		if vspeed > 0 jumped = obj_controller.amount_jumps;
		can_change_sprite = true;
		vspeed = inst_28D9A538.vspeed;
	}
}
// Terceira instancia movel do level 4
if instance_exists(inst_2A55E91) {
	if place_meeting(x, y + vspeed+1, inst_2A55E91) {
		if vspeed > 0 jumped = obj_controller.amount_jumps;
		can_change_sprite = true;
		vspeed = inst_2A55E91.vspeed;
	}
}
// Intancia do rm 5
if room == rm_level5 {
	if instance_exists(inst_117520E5) {
		if place_meeting(x, y + vspeed+.5, inst_117520E5) {
			if vspeed > 0 jumped = obj_controller.amount_jumps;
			can_change_sprite = true;
			vspeed = inst_117520E5.vspeed;
		}
	}
	if instance_exists(inst_2405FA79) {
		if place_meeting(x, y + vspeed+.5, inst_2405FA79) {
			if vspeed > 0 jumped = obj_controller.amount_jumps;
			can_change_sprite = true;
			vspeed = inst_2405FA79.vspeed;
		}
	}
}
#endregion
if sprite_index == spr_player_lowered {
	if place_meeting(x,y-sprite_height,obj_collisor) {
		can_change_sprite = false;
	}
}
// Fazendo o player se agaixar
if obj_controller.skill_lower or room == rm_initial {
	var _down = keyboard_check(ord("S"));
	if _down sprite_index = spr_player_lowered; else if can_change_sprite sprite_index = spr_player;
}
// Dizendo que não posso trocar a sprites
can_change_sprite = false;
