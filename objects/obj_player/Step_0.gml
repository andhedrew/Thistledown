/// @description Move Player


//Shortcut to Quit
if(keyboard_check_pressed(vk_escape)){ game_end(); }


//---------------------UPDATE INPUT (Returns true (1) or false (0))
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);


//---------------------RESET MOVE VARIABLES
moveX = 0;
moveY = 0;



//---------------------INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
if(moveX == 0) {moveY = (input_down - input_up) * spd;}


//---------------------COLLISION CHECKS
//Horizontal
if(moveX != 0){
	if(place_meeting(x+moveX, y, obj_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)){ 
				x += sign(moveX);
				} else { 
					break;
				}
		}
		moveX = 0;
	}
}

//Vertical
if(moveY != 0){
	if(place_meeting(x, y+moveY, obj_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)){ 
				y += sign(moveY);
				} else { 
					break;
				}
		}
		moveY = 0;
	}
}


//---------------------APPLY MOVEMENT

x += moveX;
y += moveY;

//Clamp Player's position to be inside the (tiled) room space
var xbuf=37; var ybuf = 34;
x = clamp(x, xbuf, room_width-xbuf); 
y = clamp(y, ybuf, room_height-ybuf+2);