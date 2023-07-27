/// @description 
// 
if not obj_controller.buyed exit;
if obj_controller.amount_coins >= 10 {
	obj_controller.amount_coins-=10;
	obj_controller.amount_jumps++;
}