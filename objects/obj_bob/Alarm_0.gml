/// @description Start Moving Bob

switch(x){
	case p1:
		move = 1;
		break;
	case p2:
		move = -1;
		break;
}
image_xscale	= move;
image_speed		= 1;
sprite_index	= spr_bob_side;
image_index		= 0;