/// @description 
// 
for(var _i=0; _i < rows; _i++) {
	for(var _j=0; _j < colluns; _j++) {
		var _image = min(max(0, image-_j), number_frames), _color = #0058FF;
		draw_sprite_ext(spr_transition, _image, _j*size, _i*size, 1, 1, 0, #ED9E0E, 1);
	}
}
