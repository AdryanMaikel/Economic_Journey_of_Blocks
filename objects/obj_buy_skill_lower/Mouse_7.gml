/// @description 
// 
if buyed exit;
if obj_controller.amount_coins >= 10 {
	obj_controller.amount_coins-=10;
	obj_controller.skill_lower = true;
	buyed = true;
}