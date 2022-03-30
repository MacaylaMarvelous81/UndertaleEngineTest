/// @description Change animation frame

if (!b_action && !jumping) {
	frame = frame == 0 ? 1 : 0;
} else {
	frame = frame == 3 ? 4 : 3;
}

if (jumping) {
	frame = 2;
}

alarm[1] = 30;