/// @description 
// 
if not obj_controller.buyed exit;
price = obj_controller.winned_coins*10;
if obj_controller.amount_coins >= price {
	obj_controller.amount_coins-=price;
	obj_controller.winned_coins++;
}