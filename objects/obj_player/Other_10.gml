/// @description move state

image_speed = 0;
var _x_input = obj_input.right_ - obj_input.left_;
var _y_input = obj_input.down_ - obj_input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);


roll_direction_ = direction_facing_*90;


if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_*90;
}

move_movement_entity(false);
