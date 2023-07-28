/// @description 
if start_animation {
	// Animando a sprite
	image += image_velocity;

	if image - number_frames > colluns + 1 {
		//show_message("kkk");
		if room_exists(global.destiny) {
			room_goto(global.destiny);
			
			start_animation = false;
		}
	}
} else { //Saindo da animação
	image -= image_velocity;
	
	if image < -5 {
		instance_destroy();
	}
}