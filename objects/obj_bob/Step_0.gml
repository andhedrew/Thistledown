/// @description Move Bob

x += move;
if((move != 0) and (x == p1 or x == p2)){
	move = 0;
	alarm[0] = random_range(120,300);
	image_speed = 0;
	image_index = 1;
} else { 
	if(move == 0){ 
		//Look up or down randomly
		var i = random_range(0,1);
		if(i < 0.003){ sprite_index = spr_bob; image_index = 0; }
		else if(i > 0.997){ sprite_index = spr_bob; image_index = 1; }
	}
}