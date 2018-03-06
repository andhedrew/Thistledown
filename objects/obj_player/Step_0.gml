/// @description

event_user(state_);
sprite_index = sprite_[state_, direction_facing_];


//Shortcut to Quit
if(keyboard_check_pressed(vk_escape)){ game_end(); }

//paste here

//Clamp Player's position to be inside the (tiled) room space
var xbuf=37; var ybuf = 34;
x = clamp(x, xbuf, room_width-xbuf); 
y = clamp(y, ybuf, room_height-ybuf+2);


