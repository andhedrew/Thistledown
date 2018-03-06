/// @description Initialise Player

initialize_movement_entity(.5, 1, obj_collision);


spd = 2;
image_speed = .5;
sprite_index = spr_player_side;
image_index = 0;
image_speed = 0;



///to clean up

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_;

// Sprite move lookup table
sprite_[player.move, dir.right] = spr_player_side;
sprite_[player.move, dir.up] = spr_player_up;
sprite_[player.move, dir.left] = spr_player_side;
sprite_[player.move, dir.down] = spr_player;

