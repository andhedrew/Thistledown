/// @description Move Player

//Shortcut to Quit
if(keyboard_check_pressed(vk_escape)){ game_end(); }

//Input + Movement
if(keyboard_check(vk_right)){
	x += spd;
	sprite_index = spr_player_side;
	image_xscale = 1;
	image_speed = 1;
} else if(keyboard_check(vk_left)){
	x -= spd;
	sprite_index = spr_player_side;
	image_xscale = -1;
	image_speed = 1;
} else if(keyboard_check(vk_up)){
	y -= spd;
	sprite_index = spr_player_up;
	image_speed = 1;
} else if(keyboard_check(vk_down)){
	y += spd;
	sprite_index = spr_player;
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}

//Clamp Player's position to be inside the (tiled) room space
var xbuf=37; var ybuf = 34;
x = clamp(x, xbuf, room_width-xbuf); 
y = clamp(y, ybuf, room_height-ybuf+2);