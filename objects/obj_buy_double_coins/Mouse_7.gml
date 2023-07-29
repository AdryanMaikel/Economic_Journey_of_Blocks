/// @description 
// 
if not obj_controller.buyed exit;
if obj_controller.amount_coins >= price {
	obj_controller.amount_coins-=price;
	obj_controller.winned_coins++;
	price = obj_controller.winned_coins*10;
}