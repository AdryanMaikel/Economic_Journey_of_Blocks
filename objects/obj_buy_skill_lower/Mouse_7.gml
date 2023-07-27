/// @description 
// 
if buyed exit;
if obj_controller.amount_coins >= 10 {
	buyed = true;
	obj_controller.amount_coins-=10;
	obj_controller.skill_lower = true;
	obj_controller.buyed = true;
}